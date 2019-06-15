///
module spasm.rt.allocator;

nothrow:

import stdx.allocator.building_blocks.bitmapped_block : BitmappedBlock;
import stdx.allocator.building_blocks.allocator_list : AllocatorList;
import stdx.allocator.building_blocks.null_allocator : NullAllocator;
import stdx.allocator.internal : Ternary;
import stdx.allocator.common : chooseAtRuntime;
import stdx.allocator.common : reallocate;
import stdx.allocator.common : alignedReallocate;
import std.typecons : Flag, Yes, No;

version (unittest) {
  struct WasmAllocator {
    enum uint alignment = platformAlignment;

    static __gshared typeof(this) instance = WasmAllocator();

    auto owns(void[] b) {
      return Ternary.yes;
    }

    bool deallocate(void[] b) nothrow {
      return true;
    }

    void[] allocate(size_t n) {
      return new ubyte[n];
    }
  }
} else {
  private __gshared void* begin, current, end;
  struct WasmAllocator {
    import spasm.intrinsics;
    import spasm.rt.memory : wasmPageSize;
    enum uint alignment = platformAlignment;

    nothrow:
    static __gshared typeof(this) instance = WasmAllocator();

    Ternary owns(void[] b) {
      return Ternary(b.ptr >= begin);
    }

    @trusted static void init(uint heap_base) {
      begin = cast(void*)heap_base;
      current = begin;
      end = cast(void*)(wasmMemorySize * wasmPageSize);
    }

    void[] allocate(size_t n) {
      if (current + n > end)
        grow(1 + n / wasmPageSize);
      void* mem = current;
      current += n;
      return mem[0..n];
    }

    // NOTE: temporary until we front this with a FreeTree
    bool deallocate(void[] data) {
      return true;
    }

    private void grow(size_t pages) {
      wasmMemoryGrow(pages);
      end += pages * wasmPageSize;
    }
  }
 }

/**
   Returns `true` if `ptr` is aligned at `alignment`.
*/
@nogc nothrow pure bool alignedAt(T)(T* ptr, uint alignment)
{
  return cast(size_t) ptr % alignment == 0;
}

// NOTE: had to copy this from stdx.allocator.common
@safe @nogc nothrow pure
package uint trailingZeros(ulong x)
{
  uint result;
  while (result < 64 && !(x & (1UL << result)))
    {
      ++result;
    }
  return result;
}

// NOTE: had to copy this from stdx.allocator.common
@safe @nogc nothrow pure
package size_t divideRoundUp()(size_t a, size_t b)
{
  assert(b);
  return (a + b - 1) / b;
}

// NOTE: had to copy this from the BitmappedBlock
pure nothrow @safe @nogc
private auto totalBitmappedBlockAllocation(size_t capacity, size_t blockSize) {
  import spasm.ct : tuple;
  auto blocks = capacity.divideRoundUp(blockSize);
  auto leadingUlongs = blocks.divideRoundUp(64);
  import std.algorithm.comparison : min;
  immutable initialAlignment = min(platformAlignment,
                                   1U << min(31U, trailingZeros(leadingUlongs * 8)));
  auto maxSlack = platformAlignment <= initialAlignment
    ? 0
    : platformAlignment - initialAlignment;
  return tuple!("leadingUlongs", "blocks","bytes")(leadingUlongs, blocks, leadingUlongs * 8 + maxSlack + blockSize * blocks);
}

nothrow
auto initPool(size_t blockSize, size_t capacity) {
  import spasm.ct : tuple;
  auto poolSize = totalBitmappedBlockAllocation(capacity, blockSize);
  size_t metaDataSize = ((uint.sizeof*2) + poolSize.leadingUlongs * ulong.sizeof).roundUpToMultipleOf(platformAlignment);
  return tuple!("markerUlongs", "blocks", "memory", "metaDataSize")(poolSize.leadingUlongs, poolSize.blocks, WasmAllocator.instance.allocate(metaDataSize + poolSize.bytes), metaDataSize);
}

struct PoolAllocatorBacking {
  nothrow:
  void* pool;

  MarkResult mark(void* ptr) {
    // TODO; we can get the marking a little bit faster by precalculating all this stuff
    uint blockSize = (cast(uint*)pool)[0];
    uint blockCount = (cast(uint*)pool)[1];
    uint leadingMarkerUlongs = blockCount.divideRoundUp(64);
    uint offset = (uint.sizeof * 2 + leadingMarkerUlongs * ulong.sizeof).roundUpToMultipleOf(platformAlignment);
    void* startOfBitmappedBlock = pool + offset;
    auto vector = BitVector((cast(ulong*)(pool + uint.sizeof * 2))[0..leadingMarkerUlongs]);
    void* startOfBlocks = startOfBitmappedBlock + leadingMarkerUlongs * ulong.sizeof;
    auto index = cast(uint)(ptr - startOfBlocks) / blockSize;
    auto wasSet = vector.markBit(index);
    // NOTE: it is actually a little faster not to take this information into account (but maybe not with bigger sized objects. For now we assume that is true.)
    return wasSet ? MarkResult.AlreadyMarked : MarkResult.WasUnmarked;
  }

  void freeUnmarked() {
    // TODO; we can get the marking a little bit faster by precalculating all this stuff
    uint blockSize = (cast(uint*)pool)[0];
    uint blockCount = (cast(uint*)pool)[1];
    uint leadingMarkerUlongs = blockCount.divideRoundUp(64);
    uint offset = (uint.sizeof * 2 + leadingMarkerUlongs * ulong.sizeof).roundUpToMultipleOf(platformAlignment);
    void* startOfBitmappedBlock = pool + offset;
    ulong[] markers = (cast(ulong*)(pool + uint.sizeof * 2))[0..leadingMarkerUlongs];
    ulong[] control = (cast(ulong*)startOfBitmappedBlock)[0..leadingMarkerUlongs];
    control[] = markers[];
    markers[] = 0;
  }
}

enum MarkResult {
  WasUnmarked,
  AlreadyMarked
}

struct PoolAllocatorIndex {
  nothrow:
  void*[] addresses;
  uint lastFree = 0;

  private void ensureSpace() {
    if (addresses.length > lastFree)
      return;
    if (addresses.length == 0) {
      addresses = (cast(void**)WasmAllocator.instance.allocate(32 * (void*).sizeof).ptr)[0..32];
      return;
    }
    size_t n = (void*).sizeof * addresses.length * 2;
    void*[] biggerList = (cast(void**)WasmAllocator.instance.allocate(n).ptr)[0..addresses.length*2];
    biggerList[0..lastFree] = addresses[0..lastFree];
    WasmAllocator.instance.deallocate(addresses);
    addresses = biggerList;
  }

  bool owns(void* ptr) {
    if (addresses.length == 0)
      return false;
    return addresses[0] <= ptr;
  }

  MarkResult mark(void* ptr) {
    if (owns(ptr)) {
      return findAllocator(ptr).mark(ptr);
    }
    return MarkResult.WasUnmarked;
  }

  auto findAllocator(void* ptr) {
    import std.range : assumeSorted;
    assert(addresses.length > 0);
    auto lower = addresses[0..lastFree].assumeSorted.lowerBound(ptr);
    return PoolAllocatorBacking(addresses[lower.length - 1]);
  }

  void freeUnmarked() {
    import std.algorithm : map, each;
    addresses[0..lastFree].map!(p => PoolAllocatorBacking(p)).each!(p => p.freeUnmarked());
  }

  void add(void* start) {
    import std.range : assumeSorted;
    ensureSpace();

    if (lastFree == 0 || addresses[lastFree-1] < start) {
      addresses[lastFree++] = start;
      return;
    }
    auto lower = addresses[0..lastFree].assumeSorted.lowerBound(start);

    if (lower.length == addresses.length) {
      addresses[lastFree++] = start;
    } else {
      auto offset = lower.length;
      addresses[offset+1 .. lastFree+1] = addresses[offset .. lastFree];
      addresses[offset] = start;
      lastFree++;
    }
  }

  void remove(void* start) {
    import std.range : assumeSorted;
    auto lower = addresses[0..lastFree].assumeSorted.lowerBound(start);
    auto offset = lower.length;
    if (offset == lastFree)
      return;
    addresses[offset .. lastFree-1] = addresses[offset+1 .. lastFree];
    lastFree--;
  }

  version (SPASM_GC_DEBUG) {
    static auto getAllocatorStats(void* ptr) {
      import spasm.ct : tuple;
      uint blockSize = (cast(uint*)ptr)[0];
      uint blockCount = (cast(uint*)ptr)[1];
      uint leadingMarkerUlongs = blockCount.divideRoundUp(64);
      uint offset = (uint.sizeof * 2 + leadingMarkerUlongs * ulong.sizeof).roundUpToMultipleOf(platformAlignment);
      void* startOfBitmappedBlock = ptr + offset;
      ulong[] markers = (cast(ulong*)(ptr + uint.sizeof * 2))[0..leadingMarkerUlongs];
      ulong[] control = (cast(ulong*)startOfBitmappedBlock)[0..leadingMarkerUlongs];
      return tuple!("blockSize", "blockCount", "markers", "control")(blockSize, blockCount, markers, control);
    }

    auto getStats() {
      import std.algorithm : map;
      return addresses[0..lastFree].map!(PoolAllocatorIndex.getAllocatorStats);
    }
  }
}

static __gshared auto poolAllocatorIndex = PoolAllocatorIndex();

struct PoolAllocator {
  nothrow:
  import stdx.allocator.common : chooseAtRuntime;
  alias Block = BitmappedBlock!(chooseAtRuntime, platformAlignment, NullAllocator);
  alias alignment = platformAlignment;
  private Block block;
  void[] memory;
  this(uint blockSize, size_t capacity) {
    auto pool = initPool(blockSize, capacity);
    memory = pool.memory;
    (cast(uint*)memory.ptr)[0] = blockSize;
    (cast(uint*)memory.ptr)[1] = pool.blocks;
    block = Block(cast(ubyte[])pool.memory[pool.metaDataSize..$], blockSize);
    poolAllocatorIndex.add(memory.ptr);
  }
  // TODO: need to figure out how to release this PoolAllocator when AllocatorList kills it
  // this destructor doesn't work since this object gets moved somewhere
  // ~this() {
  //   import spasm.types;
  //   doLog(-1);
  //   poolAllocatorIndex.remove(memory.ptr);
  // }
  void[] allocate(size_t n) {
    return block.allocate(n);
  }
  bool deallocate(void[] b) {
    return block.deallocate(b);
  }
  Ternary owns(void[] b) const {
    return block.owns(b);
  }
}

unittest {
  import stdx.allocator.common : chooseAtRuntime;
  alias Block = BitmappedBlock!(32, platformAlignment, NullAllocator);
  auto block = Block(new ubyte[128]);
  void[] mem = block.allocate(16);
  assert(block.owns(mem) == Ternary.yes);
  assert(block.deallocate(mem) == true);
}

unittest {
  auto allocator = PoolAllocator(32, 128);
  void[] mem = allocator.allocate(16);
  assert(allocator.owns(mem) == Ternary(true));
  assert(allocator.deallocate(mem) == true);
}

auto getGoodCapacity(uint blockSize) {
  return 8 * 1024;
}

static struct PoolAllocatorFactory {
  private uint blockSize;
  this(uint blockSize) {
    this.blockSize = blockSize;
  }
  auto opCall(size_t n) {
    auto capacity = getGoodCapacity(blockSize);
    return PoolAllocator(blockSize, capacity);
  }
}

struct PoolAllocatorList(size_t blockSize) {
  auto allocator = AllocatorList!(PoolAllocatorFactory, WasmAllocator)(PoolAllocatorFactory(blockSize));
  alias allocator this;
}

import std.traits : hasMember;
static assert(hasMember!(WasmAllocator, "deallocate"));
static assert(hasMember!(PoolAllocatorList!8, "deallocate"));
static assert(hasMember!(PoolAllocatorList!16, "empty"));

@safe @nogc nothrow pure size_t roundUpToMultipleOf(size_t s, uint base)
{
  assert(base);
  auto rem = s % base;
  return rem ? s + base - rem : s;
}
import std.algorithm.comparison : max;

enum uint platformAlignment = max(double.alignof, real.alignof);

/**
   Returns the size in bytes of the state that needs to be allocated to hold an
   object of type $(D T). $(D stateSize!T) is zero for $(D struct)s that are not
   nested and have no nonstatic member variables.
*/
template stateSize(T)
{
  import std.traits : Fields, isNested;
  static if (is(T == class) || is(T == interface))
    enum stateSize = __traits(classInstanceSize, T);
  else static if (is(T == struct) || is(T == union))
    enum stateSize = Fields!T.length || isNested!T ? T.sizeof : 0;
  else static if (is(T == void))
    enum size_t stateSize = 0;
  else
    enum stateSize = T.sizeof;
}

private struct BitVector
{
  ulong[] _rep;

  @safe pure nothrow @nogc:

  this(ulong[] data) { _rep = data; }

  auto markBit(ulong x) {
    assert(x / 64 <= size_t.max);
    immutable i = cast(size_t) (x / 64);
    immutable j = 0x8000_0000_0000_0000UL >> (x % 64);
    const wasSet = (_rep[i] & j) > 0;

    _rep[i] |= j;
    return wasSet;
  }
}
