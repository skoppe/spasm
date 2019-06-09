///
module spasm.rt.allocator;

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

    bool deallocate(void[] b) {
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

    static __gshared typeof(this) instance = WasmAllocator();

    Ternary owns(void[] b) {
      return Ternary(b.ptr >= begin);
    }

    static void init(uint heap_base) {
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

auto initPool(size_t blockSize, size_t capacity) {
  import spasm.ct : tuple;
  auto poolSize = totalBitmappedBlockAllocation(capacity, blockSize);
  size_t metaDataSize = ((uint.sizeof*2) + poolSize.leadingUlongs * ulong.sizeof).roundUpToMultipleOf(platformAlignment);
  return tuple!("markerUlongs", "blocks", "memory", "metaDataSize")(poolSize.leadingUlongs, poolSize.blocks, WasmAllocator.instance.allocate(metaDataSize + poolSize.bytes), metaDataSize);
}

struct PoolAllocatorBacking {
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
  void*[] addresses;
  uint lastFree = 0;

  private void ensureSpace() {
    if (addresses.length > lastFree)
      return;
    if (addresses.length == 0) {
      addresses = cast(void*[])(cast(void**)WasmAllocator.instance.allocate(32 * (void*).sizeof).ptr)[0..32];
      return;
    }
    size_t n = (void*).sizeof * addresses.length * 2;
    void*[] biggerList = (cast(void**)WasmAllocator.instance.allocate(n).ptr)[0..addresses.length*2];
    biggerList[0..lastFree] = addresses[0..lastFree];
    WasmAllocator.instance.deallocate(addresses);
    addresses = biggerList;
  }

  bool owns(void* ptr) {
    assert(addresses.length > 0);
    return addresses[0] <= ptr;
  }

  MarkResult mark(void* ptr) {
    if (owns(cast(void*)ptr)) {
      return findAllocator(cast(void*)ptr).mark(cast(void*)ptr);
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


@safe @nogc nothrow pure bool isGoodStaticAlignment(uint x)
{
  import stdx.allocator.internal : isPowerOf2;

  return x.isPowerOf2;
}

@safe @nogc nothrow pure bool isGoodDynamicAlignment(uint x)
{
  import stdx.allocator.internal : isPowerOf2;

  return x.isPowerOf2 && x >= (void*).sizeof;
}

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

@safe @nogc nothrow pure size_t roundUpToAlignment(size_t n, uint alignment)
{
  import stdx.allocator.internal : isPowerOf2;

  assert(alignment.isPowerOf2);
  immutable uint slack = cast(uint) n & (alignment - 1);
  const result = slack ? n + alignment - slack : n;
  assert(result >= n);
  return result;
}

@nogc nothrow pure package void[] roundUpToAlignment(void[] b, uint a)
{
  auto e = b.ptr + b.length;
  auto p = cast(void*) roundUpToAlignment(cast(size_t) b.ptr, a);
  if (e <= p)
    return null;
  return p[0 .. e - p];
}

@safe @nogc nothrow pure package size_t roundDownToAlignment(size_t n, uint alignment)
{
  import stdx.allocator.internal : isPowerOf2;

  assert(alignment.isPowerOf2);
  return n & ~size_t(alignment - 1);
}

@nogc nothrow pure package void* alignUpTo(void* ptr, uint alignment)
{
  import stdx.allocator.internal : isPowerOf2;

  assert(alignment.isPowerOf2);
  immutable uint slack = cast(size_t) ptr & (alignment - 1U);
  return slack ? ptr + alignment - slack : ptr;
}

size_t goodAllocSize(A)(auto ref A a, size_t n)
{
  return n.roundUpToMultipleOf(a.alignment);
}

struct AllocatorList(Factory, BookkeepingAllocator)
{
  import std.conv : emplace;
  import stdx.allocator.building_blocks.stats_collector
  : StatsCollector, Options;
  import std.traits : hasMember;
  import std.typecons : Ternary;

  private enum ouroboros = is(BookkeepingAllocator == NullAllocator);

  /**
     Alias for `typeof(Factory()(1))`, i.e. the type of the individual
     allocators.
  */
  alias Allocator = typeof(Factory.init(1));
  // Allocator used internally
  private alias SAllocator = StatsCollector!(Allocator, Options.bytesUsed);

  private static struct Node
  {
    // Allocator in this node
    SAllocator a;
    Node* next;

    @disable this(this);

    // Is this node unused?
    void setUnused() { next = &this; }
    bool unused() const { return next is &this; }

    // Just forward everything to the allocator
    alias a this;
  }

  /**
     If `BookkeepingAllocator` is not `NullAllocator`, `bkalloc` is
     defined and accessible.
  */

  // State is stored in an array, but it has a list threaded through it by
  // means of "nextIdx".

  // state
  static if (!ouroboros)
    {
      static if (stateSize!BookkeepingAllocator) BookkeepingAllocator bkalloc;
      else alias bkalloc = BookkeepingAllocator.instance;
    }
  static if (stateSize!Factory)
    {
      Factory factory;
    }
  private Node[] allocators;
  private Node* root;

  static if (stateSize!Factory)
    {
      private auto make(size_t n) { return factory(n); }
    }
  else
    {
      private auto make(size_t n) { Factory f; return f(n); }
    }

  /**
     Constructs an `AllocatorList` given a factory object. This constructor is
     defined only if `Factory` has state.
  */
  static if (stateSize!Factory)
    this(ref Factory plant)
      {
        factory = plant;
      }
  /// Ditto
  static if (stateSize!Factory)
    this(Factory plant)
      {
        factory = plant;
      }

  static if (hasMember!(Allocator, "deallocateAll")
             && hasMember!(Allocator, "owns"))
    ~this()
      {
        deallocateAll;
      }

  /**
     The alignment offered.
  */
  enum uint alignment = Allocator.alignment;

  /**
     Allocate a block of size `s`. First tries to allocate from the existing
     list of already-created allocators. If neither can satisfy the request,
     creates a new allocator by calling `make(s)` and delegates the request
     to it. However, if the allocation fresh off a newly created allocator
     fails, subsequent calls to `allocate` will not cause more calls to $(D
     make).
  */
  void[] allocate(size_t s)
  {
    for (auto p = &root, n = *p; n; p = &n.next, n = *p)
      {
        auto result = n.allocate(s);
        if (result.length != s) continue;
        // Bring to front if not already
        if (root != n)
          {
            *p = n.next;
            n.next = root;
            root = n;
          }
        return result;
      }

    // Add a new allocator
    if (auto a = addAllocator(s))
      {
        auto result = a.allocate(s);
        assert(owns(result) == Ternary.yes || !result.ptr);
        return result;
      }
    return null;
  }

  static if (hasMember!(Allocator, "allocateZeroed"))
    package(std) void[] allocateZeroed()(size_t s)
      {
        for (auto p = &root, n = *p; n; p = &n.next, n = *p)
          {
            auto result = n.allocateZeroed(s);
            if (result.length != s) continue;
            // Bring to front if not already
            if (root != n)
              {
                *p = n.next;
                n.next = root;
                root = n;
              }
            return result;
          }

        // Add a new allocator
        if (auto a = addAllocator(s))
          {
            auto result = a.allocateZeroed(s);
            assert(owns(result) == Ternary.yes || !result.ptr);
            return result;
          }
        return null;
      }

  /**
     Allocate a block of size `s` with alignment `a`. First tries to allocate
     from the existing list of already-created allocators. If neither can
     satisfy the request, creates a new allocator by calling `make(s + a - 1)`
     and delegates the request to it. However, if the allocation fresh off a
     newly created allocator fails, subsequent calls to `alignedAllocate`
     will not cause more calls to `make`.
  */
  static if (hasMember!(Allocator, "alignedAllocate"))
    void[] alignedAllocate(size_t s, uint theAlignment)
    {
      import std.algorithm.comparison : max;
      import core.checkedint : addu;

      if (theAlignment == 0 || s == 0)
        return null;

      for (auto p = &root, n = *p; n; p = &n.next, n = *p)
        {
          auto result = n.alignedAllocate(s, theAlignment);
          if (result.length != s) continue;
          // Bring to front if not already
          if (root != n)
            {
              *p = n.next;
              n.next = root;
              root = n;
            }
          return result;
        }

      bool overflow = false;
      size_t maxSize = addu(s - 1, cast(size_t) theAlignment, overflow);
      assert(!overflow, "Requested size is too large");
      if (overflow)
        return null;

      // Add a new allocator
      if (auto a = addAllocator(maxSize))
        {
          auto result = a.alignedAllocate(s, theAlignment);
          assert(owns(result) == Ternary.yes || !result.ptr);
          return result;
        }
      return null;
    }

  private void moveAllocators(void[] newPlace)
  {
    assert(newPlace.ptr.alignedAt(Node.alignof));
    assert(newPlace.length % Node.sizeof == 0);
    auto newAllocators = cast(Node[]) newPlace;
    assert(allocators.length <= newAllocators.length);

    // Move allocators
    foreach (i, ref e; allocators)
      {
        if (e.unused)
          {
            newAllocators[i].setUnused;
            continue;
          }
        import core.stdc.string : memcpy;
        memcpy(&newAllocators[i].a, &e.a, e.a.sizeof);
        if (e.next)
          {
            newAllocators[i].next = newAllocators.ptr
              + (e.next - allocators.ptr);
          }
        else
          {
            newAllocators[i].next = null;
          }
      }

    // Mark the unused portion as unused
    foreach (i; allocators.length .. newAllocators.length)
      {
        newAllocators[i].setUnused;
      }
    auto toFree = allocators;

    // Change state
    root = newAllocators.ptr + (root - allocators.ptr);
    allocators = newAllocators;

    // Free the olden buffer
    static if (ouroboros)
      {
        static if (hasMember!(Allocator, "deallocate")
                   && hasMember!(Allocator, "owns"))
          deallocate(toFree);
      }
    else
      {
        bkalloc.deallocate(toFree);
      }
  }

  static if (ouroboros)
    private Node* addAllocator(size_t atLeastBytes)
    {
      void[] t = allocators;
      static if (hasMember!(Allocator, "expand")
                 && hasMember!(Allocator, "owns"))
        {
          immutable bool expanded = t && this.expand(t, Node.sizeof);
        }
      else
        {
          enum expanded = false;
        }
      if (expanded)
        {
          import core.stdc.string : memcpy;
          assert(t.length % Node.sizeof == 0);
          assert(t.ptr.alignedAt(Node.alignof));
          allocators = cast(Node[]) t;
          allocators[$ - 1].setUnused;
          auto newAlloc = SAllocator(make(atLeastBytes));
          memcpy(&allocators[$ - 1].a, &newAlloc, newAlloc.sizeof);
          emplace(&newAlloc);
        }
      else
        {
          immutable toAlloc = (allocators.length + 1) * Node.sizeof
            + atLeastBytes + 128;
          auto newAlloc = SAllocator(make(toAlloc));
          auto newPlace = newAlloc.allocate(
                                            (allocators.length + 1) * Node.sizeof);
          if (!newPlace) return null;
          moveAllocators(newPlace);
          import core.stdc.string : memcpy;
          memcpy(&allocators[$ - 1].a, &newAlloc, newAlloc.sizeof);
          emplace(&newAlloc);
          assert(allocators[$ - 1].owns(allocators) == Ternary.yes);
        }
      // Insert as new root
      if (root != &allocators[$ - 1])
        {
          allocators[$ - 1].next = root;
          root = &allocators[$ - 1];
        }
      else
        {
          // This is the first one
          root.next = null;
        }
      assert(!root.unused);
      return root;
    }

  static if (!ouroboros)
    private Node* addAllocator(size_t atLeastBytes)
    {
      void[] t = allocators;
      static if (hasMember!(BookkeepingAllocator, "expand"))
        immutable bool expanded = bkalloc.expand(t, Node.sizeof);
      else
        immutable bool expanded = false;
      if (expanded)
        {
          assert(t.length % Node.sizeof == 0);
          assert(t.ptr.alignedAt(Node.alignof));
          allocators = cast(Node[]) t;
          allocators[$ - 1].setUnused;
        }
      else
        {
          // Could not expand, create a new block
          t = bkalloc.allocate((allocators.length + 1) * Node.sizeof);
          assert(t.length % Node.sizeof == 0);
          if (!t.ptr) return null;
          moveAllocators(t);
        }
      assert(allocators[$ - 1].unused);
      auto newAlloc = SAllocator(make(atLeastBytes));
      import core.stdc.string : memcpy;
      memcpy(&allocators[$ - 1].a, &newAlloc, newAlloc.sizeof);
      emplace(&newAlloc);
      // Creation succeeded, insert as root
      if (allocators.length == 1)
        allocators[$ - 1].next = null;
      else
        allocators[$ - 1].next = root;
      assert(allocators[$ - 1].a.bytesUsed == 0);
      root = &allocators[$ - 1];
      return root;
    }

  /**
     Defined only if `Allocator` defines `owns`. Tries each allocator in
     turn, in most-recently-used order. If the owner is found, it is moved to
     the front of the list as a side effect under the assumption it will be used
     soon.
     Returns: `Ternary.yes` if one allocator was found to return `Ternary.yes`,
     `Ternary.no` if all component allocators returned `Ternary.no`, and
     `Ternary.unknown` if no allocator returned `Ternary.yes` and at least one
     returned  `Ternary.unknown`.
  */
  static if (hasMember!(Allocator, "owns"))
    Ternary owns(void[] b)
    {
      auto result = Ternary.no;
      for (auto p = &root, n = *p; n; p = &n.next, n = *p)
        {
          immutable t = n.owns(b);
          if (t != Ternary.yes)
            {
              if (t == Ternary.unknown) result = t;
              continue;
            }
          // Move the owner to front, speculating it'll be used
          if (n != root)
            {
              *p = n.next;
              n.next = root;
              root = n;
            }
          return Ternary.yes;
        }
      return result;
    }

  /**
     Defined only if `Allocator.expand` is defined. Finds the owner of `b`
     and calls `expand` for it. The owner is not brought to the head of the
     list.
  */
  static if (hasMember!(Allocator, "expand")
             && hasMember!(Allocator, "owns"))
    bool expand(ref void[] b, size_t delta)
    {
      if (!b) return delta == 0;
      for (auto p = &root, n = *p; n; p = &n.next, n = *p)
        {
          if (n.owns(b) == Ternary.yes) return n.expand(b, delta);
        }
      return false;
    }

  /**
     Defined only if `Allocator.reallocate` is defined. Finds the owner of
     `b` and calls `reallocate` for it. If that fails, calls the global
     `reallocate`, which allocates a new block and moves memory.
  */
  static if (hasMember!(Allocator, "reallocate"))
    bool reallocate(ref void[] b, size_t s)
    {
      // First attempt to reallocate within the existing node
      if (!b.ptr)
        {
          b = allocate(s);
          return b.length == s;
        }
      for (auto p = &root, n = *p; n; p = &n.next, n = *p)
        {
          if (n.owns(b) == Ternary.yes) return n.reallocate(b, s);
        }
      // Failed, but we may find new memory in a new node.
      return .reallocate(this, b, s);
    }

  /**
     Defined if `Allocator.deallocate` and `Allocator.owns` are defined.
  */
  static if (hasMember!(Allocator, "deallocate")
             && hasMember!(Allocator, "owns"))
    bool deallocate(void[] b)
    {
      if (!b.ptr) return true;
      assert(allocators.length);
      assert(owns(b) == Ternary.yes);
      bool result;
      for (auto p = &root, n = *p; ; p = &n.next, n = *p)
        {
          assert(n);
          if (n.owns(b) != Ternary.yes) continue;
          result = n.deallocate(b);
          // Bring to front
          if (n != root)
            {
              *p = n.next;
              n.next = root;
              root = n;
            }
          if (n.empty != Ternary.yes) return result;
          break;
        }
      // Hmmm... should we return this allocator back to the wild? Let's
      // decide if there are TWO empty allocators we can release ONE. This
      // is to avoid thrashing.
      // Note that loop starts from the second element.
      for (auto p = &root.next, n = *p; n; p = &n.next, n = *p)
        {
          if (n.unused || n.empty != Ternary.yes) continue;
          // Used and empty baby, nuke it!
          n.a.destroy;
          *p = n.next;
          n.setUnused;
          break;
        }
      return result;
    }

  /**
     Defined only if `Allocator.owns` and `Allocator.deallocateAll` are
     defined.
  */
  static if (ouroboros && hasMember!(Allocator, "deallocateAll")
             && hasMember!(Allocator, "owns"))
    bool deallocateAll()
    {
      Node* special;
      foreach (ref n; allocators)
        {
          if (n.unused) continue;
          if (n.owns(allocators) == Ternary.yes)
            {
              special = &n;
              continue;
            }
          n.a.deallocateAll;
          n.a.destroy;
        }
      assert(special || !allocators.ptr);
      if (special)
        {
          static if (stateSize!SAllocator)
            {
              import core.stdc.string : memcpy;
              SAllocator specialCopy;
              assert(special.a.sizeof == specialCopy.sizeof);
              memcpy(&specialCopy, &special.a, specialCopy.sizeof);
              emplace(&special.a);
              specialCopy.deallocateAll();
            }
          else
            {
              special.deallocateAll();
            }
        }
      allocators = null;
      root = null;
      return true;
    }

  static if (!ouroboros && hasMember!(Allocator, "deallocateAll")
             && hasMember!(Allocator, "owns"))
    bool deallocateAll()
    {
      foreach (ref n; allocators)
        {
          if (n.unused) continue;
          n.a.deallocateAll;
          n.a.destroy;
        }
      bkalloc.deallocate(allocators);
      allocators = null;
      root = null;
      return true;
    }

  /**
     Returns `Ternary.yes` if no allocators are currently active,
     `Ternary.no` otherwise. This methods never returns `Ternary.unknown`.
  */
  pure nothrow @safe @nogc
  Ternary empty() const
  {
    return Ternary(!allocators.length);
  }
}

template AllocatorList(alias factoryFunction,
                       BookkeepingAllocator)
{
  alias A = typeof(factoryFunction(1));
  static assert(
                // is a template function (including literals)
                is(typeof({A function(size_t) @system x = factoryFunction!size_t;}))
                ||
                // or a function (including literals)
                is(typeof({A function(size_t) @system x = factoryFunction;}))
                ,
                "Only function names and function literals that take size_t"
                ~ " and return an allocator are accepted, not "
                ~ typeof(factoryFunction).stringof
                );
  static struct Factory
  {
    A opCall(size_t n) { return factoryFunction(n); }
  }
  alias AllocatorList = .AllocatorList!(Factory, BookkeepingAllocator);
}

struct BitmappedBlock(size_t theBlockSize, uint theAlignment = platformAlignment,
                      ParentAllocator = NullAllocator)
{
  import stdx.allocator.internal : Ternary;
  import mir.functional : RefTuple;
  // for internal API only
  private alias Tuple = RefTuple!(size_t, uint);

  @system unittest
  {
    import mir.utility : max;
    import stdx.allocator.mallocator : AlignedMallocator;
    import stdx.allocator.common : testAllocator;
    auto m = cast(ubyte[])(AlignedMallocator.instance.alignedAllocate(1024 * 64,
                                                                      max(theAlignment, cast(uint) size_t.sizeof)));
    scope(exit) AlignedMallocator.instance.deallocate(m);
    static if (theBlockSize == chooseAtRuntime)
      {
        testAllocator!(() => BitmappedBlock!(theBlockSize, theAlignment, NullAllocator)(m, 64) );
      }
    else
      {
        testAllocator!(() => BitmappedBlock!(theBlockSize, theAlignment, NullAllocator)(m) );
      }
  }
  static assert(theBlockSize > 0 && theAlignment.isGoodStaticAlignment);
  static assert(theBlockSize == chooseAtRuntime
                || theBlockSize % theAlignment == 0,
                "Block size must be a multiple of the alignment");

  /**
     If $(D blockSize == chooseAtRuntime), $(D BitmappedBlock) offers a read/write
     property $(D blockSize). It must be set before any use of the allocator.
     Otherwise (i.e. $(D theBlockSize) is a legit constant), $(D blockSize) is
     an alias for $(D theBlockSize). Whether constant or variable, must also be
     a multiple of $(D alignment). This constraint is $(D assert)ed statically
     and dynamically.
  */
  static if (theBlockSize != chooseAtRuntime)
    {
      alias blockSize = theBlockSize;
    }
  else
    {
      @property uint blockSize() { return _blockSize; }
      @property void blockSize(uint s)
      {
        assert(_control.allAre0() && s % alignment == 0);
        _blockSize = s;
      }
      private uint _blockSize;
    }

  static if (is(ParentAllocator == NullAllocator))
    {
      private enum parentAlignment = platformAlignment;
    }
  else
    {
      private alias parentAlignment = ParentAllocator.alignment;
      static assert(parentAlignment >= ulong.alignof);
    }

  /**
     The _alignment offered is user-configurable statically through parameter
     $(D theAlignment), defaulted to $(D platformAlignment).
  */
  alias alignment = theAlignment;

  // state {
  /**
     The _parent allocator. Depending on whether $(D ParentAllocator) holds state
     or not, this is a member variable or an alias for
     `ParentAllocator.instance`.
  */
  static if (stateSize!ParentAllocator)
    {
      ParentAllocator parent;
    }
  else
    {
      alias parent = ParentAllocator.instance;
    }
  private size_t _blocks;
  private BitVector _control;
  private void[] _payload;
  private size_t _startIdx;
  // }

  private size_t totalAllocation(size_t capacity)
  {
    auto blocks = capacity.divideRoundUp(blockSize);
    auto leadingUlongs = blocks.divideRoundUp(64);
    import mir.utility : min;
    immutable initialAlignment = min(parentAlignment,
                                     1U << trailingZeros(leadingUlongs * 8));
    auto maxSlack = alignment <= initialAlignment
      ? 0
      : alignment - initialAlignment;
    //writeln(maxSlack);
    return leadingUlongs * 8 + maxSlack + blockSize * blocks;
  }

  /**
     Constructs a block allocator given a hunk of memory, or a desired capacity
     in bytes.
     $(UL
     $(LI If $(D ParentAllocator) is $(D NullAllocator), only the constructor
     taking $(D data) is defined and the user is responsible for freeing $(D
     data) if desired.)
     $(LI Otherwise, both constructors are defined. The $(D data)-based
     constructor assumes memory has been allocated with the parent allocator.
     The $(D capacity)-based constructor uses $(D ParentAllocator) to allocate
     an appropriate contiguous hunk of memory. Regardless of the constructor
     used, the destructor releases the memory by using $(D
     ParentAllocator.deallocate).)
     )
  */
  this(ubyte[] data)
  {
    immutable a = data.ptr.effectiveAlignment;
    assert(a >= size_t.alignof || !data.ptr,
           "Data must be aligned properly");

    immutable ulong totalBits = data.length * 8;
    immutable ulong bitsPerBlock = blockSize * 8 + 1;
    // Get a first estimate
    _blocks = cast(size_t)(totalBits / bitsPerBlock);

    // Reality is a bit more complicated, iterate until a good number of
    // blocks found.
    for (; _blocks; --_blocks)
      {
        immutable controlWords = _blocks.divideRoundUp(64);
        auto payload = data[controlWords * 8 .. $].roundStartToMultipleOf(
                                                                          alignment);
        if (payload.length < _blocks * blockSize)
          {
            // Overestimated
            continue;
          }
        _control = BitVector((cast(ulong*) data.ptr)[0 .. controlWords]);
        _control[] = 0;
        _payload = payload;
        break;
      }
  }

  /// Ditto
  static if (!is(ParentAllocator == NullAllocator))
    this(size_t capacity)
      {
        size_t toAllocate = totalAllocation(capacity);
        auto data = cast(ubyte[])(parent.allocate(toAllocate));
        this(data);
        assert(_blocks * blockSize >= capacity);
      }

  static if (chooseAtRuntime == theBlockSize)
    this(ubyte[] data, uint blockSize)
      {
        this._blockSize = blockSize;
        this(data);
      }

  /**
     If $(D ParentAllocator) is not $(D NullAllocator) and defines $(D
     deallocate), the destructor is defined to deallocate the block held.
  */
  static if (!is(ParentAllocator == NullAllocator)
             && __traits(hasMember, ParentAllocator, "deallocate"))
    ~this()
      {
        auto start = _control.rep.ptr, end = cast(ulong*)(_payload.ptr + _payload.length);
        parent.deallocate(start[0 .. end - start]);
      }

  /*
    Adjusts the memoized _startIdx to the leftmost control word that has at
    least one zero bit. Assumes all control words to the left of $(D
    _control[_startIdx]) are already occupied.
  */
  private void adjustStartIdx()
  {
    while (_startIdx < _control.rep.length
           && _control.rep[_startIdx] == ulong.max)
      {
        ++_startIdx;
      }
  }

  /*
    Returns the blocks corresponding to the control bits starting at word index
    wordIdx and bit index msbIdx (MSB=0) for a total of howManyBlocks.
  */
  private void[] blocksFor(size_t wordIdx, uint msbIdx, size_t howManyBlocks)
  {
    assert(msbIdx <= 63);
    const start = (wordIdx * 64 + msbIdx) * blockSize;
    const end = start + blockSize * howManyBlocks;
    if (end <= _payload.length) return _payload[start .. end];
    // This could happen if we have more control bits than available memory.
    // That's possible because the control bits are rounded up to fit in
    // 64-bit words.
    return null;
  }

  /**
     Returns the actual bytes allocated when $(D n) bytes are requested, i.e.
     $(D n.roundUpToMultipleOf(blockSize)).
  */
  size_t goodAllocSize(size_t n)
  {
    return n.roundUpToMultipleOf(blockSize);
  }

  /**
     Allocates $(D s) bytes of memory and returns it, or $(D null) if memory
     could not be allocated.
     The following information might be of help with choosing the appropriate
     block size. Actual allocation occurs in sizes multiple of the block size.
     Allocating one block is the fastest because only one 0 bit needs to be
     found in the metadata. Allocating 2 through 64 blocks is the next cheapest
     because it affects a maximum of two $(D ulong)s in the metadata.
     Allocations greater than 64 blocks require a multiword search through the
     metadata.
  */
  @trusted void[] allocate(const size_t s)
  {
    const blocks = s.divideRoundUp(blockSize);
    void[] result = void;

  switcharoo:
    switch (blocks)
      {
      case 1:
        // inline code here for speed
        // find the next available block
        foreach (i; _startIdx .. _control.rep.length)
          {
            const w = _control.rep[i];
            if (w == ulong.max) continue;
            uint j = leadingOnes(w);
            assert(j < 64);
            assert((_control.rep[i] & ((1UL << 63) >> j)) == 0);
            _control.rep[i] |= (1UL << 63) >> j;
            if (i == _startIdx)
              {
                adjustStartIdx();
              }
            result = blocksFor(i, j, 1);
            break switcharoo;
          }
        goto case 0; // fall through
      case 0:
        return null;
      case 2: .. case 64:
        result = smallAlloc(cast(uint) blocks);
        break;
      default:
        result = hugeAlloc(blocks);
        break;
      }
    return result.ptr ? result.ptr[0 .. s] : null;
  }

  /**
     Allocates a block with specified alignment $(D a). The alignment must be a
     power of 2. If $(D a <= alignment), function forwards to $(D allocate).
     Otherwise, it attempts to overallocate and then adjust the result for
     proper alignment. In the worst case the slack memory is around two blocks.
  */
  void[] alignedAllocate(size_t n, uint a)
  {
    import stdx.allocator.internal : isPowerOf2;
    assert(a.isPowerOf2);
    if (a <= alignment) return allocate(n);

    // Overallocate to make sure we can get an aligned block
    auto b = allocate((n + a - alignment).roundUpToMultipleOf(blockSize));
    if (!b.ptr) return null;
    auto result = b.roundStartToMultipleOf(a);
    assert(result.length >= n);
    result = result.ptr[0 .. n]; // final result

    // Free any blocks that might be slack at the beginning
    auto slackHeadingBlocks = (result.ptr - b.ptr) / blockSize;
    if (slackHeadingBlocks)
      {
        deallocate(b[0 .. slackHeadingBlocks * blockSize]);
      }

    // Free any blocks that might be slack at the end
    auto slackTrailingBlocks = ((b.ptr + b.length)
                                - (result.ptr + result.length)) / blockSize;
    if (slackTrailingBlocks)
      {
        deallocate(b[$ - slackTrailingBlocks * blockSize .. $]);
      }

    return result;
  }

  /**
     If the $(D BitmappedBlock) object is empty (has no active allocation), allocates
     all memory within and returns a slice to it. Otherwise, returns $(D null)
     (i.e. no attempt is made to allocate the largest available block).
  */
  void[] allocateAll()
  {
    if (empty != Ternary.yes) return null;
    _control[] = 1;
    return _payload;
  }

  /**
     Returns `Ternary.yes` if `b` belongs to the `BitmappedBlock` object,
     `Ternary.no` otherwise. Never returns `Ternary.unkown`. (This
     method is somewhat tolerant in that accepts an interior slice.)
  */
  Ternary owns(void[] b) const
  {
    //if (!b.ptr) return Ternary.no;
    assert(b.ptr !is null || b.length == 0, "Corrupt block.");
    return Ternary(b.ptr >= _payload.ptr &&
                   b.ptr + b.length <= _payload.ptr + _payload.length);
  }

  /*
    Tries to allocate "blocks" blocks at the exact position indicated by the
    position wordIdx/msbIdx (msbIdx counts from MSB, i.e. MSB has index 0). If
    it succeeds, fills "result" with the result and returns tuple(size_t.max,
    0). Otherwise, returns a tuple with the next position to search.
  */
  private Tuple allocateAt(size_t wordIdx, uint msbIdx,
                           size_t blocks, ref void[] result)
  {
    assert(blocks > 0);
    assert(wordIdx < _control.rep.length);
    assert(msbIdx <= 63);
    if (msbIdx + blocks <= 64)
      {
        // Allocation should fit this control word
        if (setBitsIfZero(_control.rep[wordIdx],
                          cast(uint) (64 - msbIdx - blocks), 63 - msbIdx))
          {
            // Success
            result = blocksFor(wordIdx, msbIdx, blocks);
            return Tuple(size_t.max, 0u);
          }
        // Can't allocate, make a suggestion
        return msbIdx + blocks == 64
          ? Tuple(wordIdx + 1, 0u)
          : Tuple(wordIdx, cast(uint) (msbIdx + blocks));
      }
    // Allocation spans two control words or more
    immutable mask = ulong.max >> msbIdx;
    if (_control.rep[wordIdx] & mask)
      {
        // We can't allocate the rest of this control word,
        // return a suggestion.
        return Tuple(wordIdx + 1, 0u);
      }
    // We can allocate the rest of this control word, but we first need to
    // make sure we can allocate the tail.
    if (wordIdx + 1 == _control.rep.length)
      {
        // No more memory
        return Tuple(_control.rep.length, 0u);
      }
    auto hint = allocateAt(wordIdx + 1, 0, blocks - 64 + msbIdx, result);
    if (hint[0] == size_t.max)
      {
        // We did it!
        _control.rep[wordIdx] |= mask;
        result = blocksFor(wordIdx, msbIdx, blocks);
        return Tuple(size_t.max, 0u);
      }
    // Failed, return a suggestion that skips this whole run.
    return hint;
  }

  /* Allocates as many blocks as possible at the end of the blocks indicated
     by wordIdx. Returns the number of blocks allocated. */
  private uint allocateAtTail(size_t wordIdx)
  {
    assert(wordIdx < _control.rep.length);
    const available = trailingZeros(_control.rep[wordIdx]);
    _control.rep[wordIdx] |= ulong.max >> available;
    return available;
  }

  private void[] smallAlloc(uint blocks)
  {
    assert(blocks >= 2 && blocks <= 64);
    foreach (i; _startIdx .. _control.rep.length)
      {
        // Test within the current 64-bit word
        const v = _control.rep[i];
        if (v == ulong.max) continue;
        auto j = findContigOnes(~v, blocks);
        if (j < 64)
          {
            // yay, found stuff
            setBits(_control.rep[i], 64 - j - blocks, 63 - j);
            return blocksFor(i, j, blocks);
          }
        // Next, try allocations that cross a word
        auto available = trailingZeros(v);
        if (available == 0) continue;
        if (i + 1 >= _control.rep.length) break;
        assert(available < blocks); // otherwise we should have found it
        auto needed = blocks - available;
        assert(needed > 0 && needed < 64);
        if (allocateAtFront(i + 1, needed))
          {
            // yay, found a block crossing two words
            _control.rep[i] |= (1UL << available) - 1;
            return blocksFor(i, 64 - available, blocks);
          }
      }
    return null;
  }

  private void[] hugeAlloc(size_t blocks)
  {
    assert(blocks > 64);
    if (_startIdx == _control._rep.length)
      {
        assert(_control.allAre1);
        return null;
      }
    auto i = _control.findZeros(blocks, _startIdx * 64);
    if (i == i.max) return null;
    // Allocate those bits
    _control[i .. i + blocks] = 1;
    return _payload[cast(size_t) (i * blockSize)
                    .. cast(size_t) ((i + blocks) * blockSize)];
  }

  // Rounds sizeInBytes to a multiple of blockSize.
  private size_t bytes2blocks(size_t sizeInBytes)
  {
    return (sizeInBytes + blockSize - 1) / blockSize;
  }

  /* Allocates given blocks at the beginning blocks indicated by wordIdx.
     Returns true if allocation was possible, false otherwise. */
  private bool allocateAtFront(size_t wordIdx, uint blocks)
  {
    assert(wordIdx < _control.rep.length && blocks >= 1 && blocks <= 64);
    const mask = (1UL << (64 - blocks)) - 1;
    if (_control.rep[wordIdx] > mask) return false;
    // yay, works
    _control.rep[wordIdx] |= ~mask;
    return true;
  }

  /**
     Expands an allocated block in place.
  */
  @trusted bool expand(ref void[] b, immutable size_t delta)
  {
    // Dispose with trivial corner cases
    if (delta == 0) return true;
    if (b is null) return false;

    /* To simplify matters, refuse to expand buffers that don't start at a block start (this may be the case for blocks allocated with alignedAllocate).
     */
    if ((b.ptr - _payload.ptr) % blockSize) return false;

    const blocksOld = bytes2blocks(b.length);
    const blocksNew = bytes2blocks(b.length + delta);
    assert(blocksOld <= blocksNew);

    // Possibly we have enough slack at the end of the block!
    if (blocksOld == blocksNew)
      {
        b = b.ptr[0 .. b.length + delta];
        return true;
      }

    assert((b.ptr - _payload.ptr) % blockSize == 0);
    const blockIdx = (b.ptr - _payload.ptr) / blockSize;
    const blockIdxAfter = blockIdx + blocksOld;

    // Try the maximum
    const wordIdx = blockIdxAfter / 64,
      msbIdx = cast(uint) (blockIdxAfter % 64);
    void[] p;
    auto hint = allocateAt(wordIdx, msbIdx,  blocksNew - blocksOld, p);
    if (hint[0] != size_t.max)
      {
        return false;
      }
    // Expansion successful
    assert(p.ptr == b.ptr + blocksOld * blockSize);
    b = b.ptr[0 .. b.length + delta];
    return true;
  }

  /**
     Reallocates a previously-allocated block. Contractions occur in place.
  */
  @system bool reallocate(ref void[] b, size_t newSize)
  {
    if (!b.ptr)
      {
        b = allocate(newSize);
        return b.length == newSize;
      }
    if (newSize == 0)
      {
        deallocate(b);
        b = null;
        return true;
      }
    if (newSize < b.length)
      {
        // Shrink. Will shrink in place by deallocating the trailing part.
        auto newCapacity = bytes2blocks(newSize) * blockSize;
        deallocate(b[newCapacity .. $]);
        b = b[0 .. newSize];
        return true;
      }
    // Go the slow route
    return .reallocate(this, b, newSize);
  }

  /**
     Reallocates a block previously allocated with $(D alignedAllocate). Contractions do not occur in place.
  */
  @system bool alignedReallocate(ref void[] b, size_t newSize, uint a)
  {
    if (newSize == 0)
      {
        deallocate(b);
        b = null;
        return true;
      }
    // Go the slow route
    return .alignedReallocate(this, b, newSize, a);
  }

  /**
     Deallocates a block previously allocated with this allocator.
  */
  bool deallocate(void[] b)
  {
    if (b is null) return true;

    // Locate position
    immutable pos = b.ptr - _payload.ptr;
    immutable blockIdx = pos / blockSize;

    // Adjust pointer, might be inside a block due to alignedAllocate
    auto begin = _payload.ptr + blockIdx * blockSize,
      end = b.ptr + b.length;
    b = begin[0 .. end - begin];
    // Round up size to multiple of block size
    auto blocks = b.length.divideRoundUp(blockSize);

    // Get into details
    auto wordIdx = blockIdx / 64, msbIdx = cast(uint) (blockIdx % 64);
    if (_startIdx > wordIdx) _startIdx = wordIdx;

    // Three stages: heading bits, full words, leftover bits
    if (msbIdx)
      {
        if (blocks + msbIdx <= 64)
          {
            resetBits(_control.rep[wordIdx],
                      cast(uint) (64 - msbIdx - blocks),
                      63 - msbIdx);
            return true;
          }
        else
          {
            _control.rep[wordIdx] &= ulong.max << 64 - msbIdx;
            blocks -= 64 - msbIdx;
            ++wordIdx;
            msbIdx = 0;
          }
      }

    // Stage 2: reset one word at a time
    for (; blocks >= 64; blocks -= 64)
      {
        _control.rep[wordIdx++] = 0;
      }

    // Stage 3: deal with leftover bits, if any
    assert(wordIdx <= _control.rep.length);
    if (blocks)
      {
        _control.rep[wordIdx] &= ulong.max >> blocks;
      }
    return true;
  }

  /**
     Forcibly deallocates all memory allocated by this allocator, making it
     available for further allocations. Does not return memory to $(D
     ParentAllocator).
  */
  bool deallocateAll()
  {
    _control[] = 0;
    _startIdx = 0;
    return true;
  }

  /**
     Returns `Ternary.yes` if no memory is currently allocated with this
     allocator, otherwise `Ternary.no`. This method never returns
     `Ternary.unknown`.
  */
  Ternary empty()
  {
    return Ternary(_control.allAre0());
  }
}
private struct BitVector
{
  ulong[] _rep;

  @safe pure nothrow @nogc:

  auto rep() { return _rep; }

  this(ulong[] data) { _rep = data; }

  void opSliceAssign(bool b) { _rep[] = b ? ulong.max : 0; }

  void opSliceAssign(bool b, ulong x, ulong y)
  {
    assert(x <= y && y <= _rep.length * 64);
    if (x == y) return;
    --y;
    assert(x / 64 <= size_t.max);
    immutable i1 = cast(size_t) (x / 64);
    immutable uint b1 = 63 - x % 64;
    assert(y / 64 <= size_t.max);
    immutable i2 = cast(size_t) (y / 64);
    immutable uint b2 = 63 - y % 64;
    assert(i1 <= i2 && i2 < _rep.length);
    if (i1 == i2)
      {
        // Inside the same word
        assert(b1 >= b2);
        if (b) setBits(_rep[i1], b2, b1);
        else resetBits(_rep[i1], b2, b1);
      }
    else
      {
        // Spans multiple words
        assert(i1 < i2);
        if (b) setBits(_rep[i1], 0, b1);
        else resetBits(_rep[i1], 0, b1);
        _rep[i1 + 1 .. i2] = b;
        if (b) setBits(_rep[i2], b2, 63);
        else resetBits(_rep[i2], b2, 63);
      }
  }

  bool opIndex(ulong x)
  {
    assert(x < length);
    return (_rep[cast(size_t) (x / 64)]
            & (0x8000_0000_0000_0000UL >> (x % 64))) != 0;
  }

  void opIndexAssign(bool b, ulong x)
  {
    assert(x / 64 <= size_t.max);
    immutable i = cast(size_t) (x / 64);
    immutable j = 0x8000_0000_0000_0000UL >> (x % 64);
    if (b) _rep[i] |= j;
    else _rep[i] &= ~j;
  }

  auto markBit(ulong x) {
    assert(x / 64 <= size_t.max);
    immutable i = cast(size_t) (x / 64);
    immutable j = 0x8000_0000_0000_0000UL >> (x % 64);
    const wasSet = (_rep[i] & j) > 0;
    _rep[i] |= j;
    return wasSet;
  }

  ulong length() const
  {
    return _rep.length * 64;
  }

  /* Returns the index of the first 1 to the right of i (including i itself),
     or length if not found.
  */
  ulong find1(ulong i)
  {
    assert(i < length);
    assert(i / 64 <= size_t.max);
    auto w = cast(size_t) (i / 64);
    immutable b = i % 64; // 0 through 63, 0 when i == 0
    immutable mask = ulong.max >> b;
    if (auto current = _rep[w] & mask)
      {
        // Great, found
        return w * 64 + leadingOnes(~current);
      }
    // The current word doesn't have the solution, find the leftmost 1
    // going to the right.
    for (++w; w < _rep.length; ++w)
      {
        if (auto current = _rep[w])
          {
            return w * 64 + leadingOnes(~current);
          }
      }
    return length;
  }

  /* Returns the index of the first 1 to the left of i (including i itself),
     or ulong.max if not found.
  */
  ulong find1Backward(ulong i)
  {
    assert(i < length);
    auto w = cast(size_t) (i / 64);
    immutable b = 63 - (i % 64); // 0 through 63, 63 when i == 0
    immutable mask = ~((1UL << b) - 1);
    assert(mask != 0);
    // First, let's see if the current word has a bit larger than ours.
    if (auto currentWord = _rep[w] & mask)
      {
        // Great, this word contains the result.
        return w * 64 + 63 - currentWord.trailingZeros;
      }
    // The current word doesn't have the solution, find the rightmost 1
    // going to the left.
    while (w >= 1)
      {
        --w;
        if (auto currentWord = _rep[w])
          return w * 64 + (63 - currentWord.trailingZeros);
      }
    return ulong.max;
  }

  /// Are all bits zero?
  bool allAre0() const
  {
    foreach (w; _rep) if (w) return false;
    return true;
  }

  /// Are all bits one?
  bool allAre1() const
  {
    foreach (w; _rep) if (w != ulong.max) return false;
    return true;
  }

  ulong findZeros(immutable size_t howMany, ulong start)
  {
    assert(start < length);
    assert(howMany > 64);
    auto i = cast(size_t) (start / 64);
    while (_rep[i] & 1)
      {
        // No trailing zeros in this word, try the next one
        if (++i == _rep.length) return ulong.max;
        start = i * 64;
      }
    // Adjust start to have only trailing zeros after it
    auto prefixLength = 64;
    while (_rep[i] & (ulong.max >> (64 - prefixLength)))
      {
        assert(prefixLength > 0);
        --prefixLength;
        ++start;
      }

    assert(howMany > prefixLength);
    auto needed = howMany - prefixLength;
    for (++i; needed >= 64; needed -= 64, ++i)
      {
        if (i >= _rep.length) return ulong.max;
        if (_rep[i] != 0) return findZeros(howMany, i * 64);
      }
    // Leftover < 64 bits
    assert(needed < 64);
    if (!needed) return start;
    if (i >= _rep.length) return ulong.max;
    if (leadingOnes(~_rep[i]) >= needed) return start;
    return findZeros(howMany, i * 64);
  }
}
// Assigns bits in w from lsb through msb to zero.
private void resetBits()(ref ulong w, uint lsb, uint msb)
{
  assert(lsb <= msb && msb < 64);
  const mask = (ulong.max << lsb) & (ulong.max >> (63 - msb));
  w &= ~mask;
}

private bool setBitsIfZero()(ref ulong w, uint lsb, uint msb)
{
  assert(lsb <= msb && msb < 64);
  const mask = (ulong.max << lsb) & (ulong.max >> (63 - msb));
  if (w & mask) return false;
  w |= mask;
  return true;
}

private void setBits()(ref ulong w, uint lsb, uint msb)
{
  assert(lsb <= msb && msb < 64);
  const mask = (ulong.max << lsb) & (ulong.max >> (63 - msb));
  w |= mask;
}

uint leadingOnes()(ulong x)
{
  import mir.bitop: ctlz;
  x = ~x;
  if (x)
    return cast(uint) x.ctlz;
  return 64;
}

@nogc nothrow pure
package void[] roundStartToMultipleOf()(void[] s, uint base)
{
  assert(base);
  auto p = cast(void*) roundUpToMultipleOf(
                                           cast(size_t) s.ptr, base);
  auto end = s.ptr + s.length;
  return p[0 .. end - p];
}

private uint findContigOnes()(ulong x, uint n)
{
  while (n > 1)
    {
      immutable s = n >> 1;
      x &= x << s;
      n -= s;
    }
  return leadingOnes(~x);
}
@nogc nothrow pure
package uint effectiveAlignment()(void* ptr)
{
  return 1U << trailingZeros(cast(size_t) ptr);
}
