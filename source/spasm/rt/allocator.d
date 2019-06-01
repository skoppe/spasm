///
module spasm.rt.allocator;

import stdx.allocator.building_blocks.null_allocator : NullAllocator;
import stdx.allocator.internal : Ternary;

private __gshared void* begin, current, end;

struct WasmAllocator {
  import spasm.intrinsics;
  import spasm.rt.memory : wasmPageSize;
  enum owns = Ternary.yes;
  enum uint alignment = platformAlignment;

  static __gshared typeof(this) instance = WasmAllocator();

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

  private void grow(size_t pages) {
    wasmMemoryGrow(pages);
    end += pages * wasmPageSize;
  }
}

/**
Returns `true` if `ptr` is aligned at `alignment`.
*/
@nogc nothrow pure bool alignedAt(T)(T* ptr, uint alignment)
{
  return cast(size_t) ptr % alignment == 0;
}


// import stdx.allocator.building_blocks.null_allocator : NullAllocator;
// import stdx.allocator.common;
import std.typecons : Flag, Yes, No;

/**
A $(D Region) allocator allocates memory straight from one contiguous chunk.
There is no deallocation, and once the region is full, allocation requests
return $(D null). Therefore, $(D Region)s are often used (a) in conjunction with
more sophisticated allocators; or (b) for batch-style very fast allocations
that deallocate everything at once.
The region only stores three pointers, corresponding to the current position in
the store and the limits. One allocation entails rounding up the allocation
size for alignment purposes, bumping the current pointer, and comparing it
against the limit.
If $(D ParentAllocator) is different from $(D NullAllocator), $(D Region)
deallocates the chunk of memory during destruction.
The $(D minAlign) parameter establishes alignment. If $(D minAlign > 1), the
sizes of all allocation requests are rounded up to a multiple of $(D minAlign).
Applications aiming at maximum speed may want to choose $(D minAlign = 1) and
control alignment externally.
*/
struct Region(ParentAllocator = NullAllocator,
    uint minAlign = platformAlignment,
    Flag!"growDownwards" growDownwards = No.growDownwards)
{
    static assert(minAlign.isGoodStaticAlignment);
    static assert(ParentAllocator.alignment >= minAlign);

    import std.traits : hasMember;
    import stdx.allocator.internal : Ternary;

    // state
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
    private void* _current, _begin, _end;

    /**
    Constructs a region backed by a user-provided store. Assumes $(D store) is
    aligned at $(D minAlign). Also assumes the memory was allocated with $(D
    ParentAllocator) (if different from $(D NullAllocator)).
    Params:
    store = User-provided store backing up the region. $(D store) must be
    aligned at $(D minAlign) (enforced with $(D assert)). If $(D
    ParentAllocator) is different from $(D NullAllocator), memory is assumed to
    have been allocated with $(D ParentAllocator).
    n = Bytes to allocate using $(D ParentAllocator). This constructor is only
    defined If $(D ParentAllocator) is different from $(D NullAllocator). If
    $(D parent.allocate(n)) returns $(D null), the region will be initialized
    as empty (correctly initialized but unable to allocate).
    */
    this(ubyte[] store)
    {
        store = cast(ubyte[])(store.roundUpToAlignment(alignment));
        store = store[0 .. $.roundDownToAlignment(alignment)];
        assert(store.ptr.alignedAt(minAlign));
        assert(store.length % minAlign == 0);
        _begin = store.ptr;
        _end = store.ptr + store.length;
        static if (growDownwards)
            _current = _end;
        else
            _current = store.ptr;
    }

    /// Ditto
    static if (!is(ParentAllocator == NullAllocator))
    this(size_t n)
    {
        this(cast(ubyte[])(parent.allocate(n.roundUpToAlignment(alignment))));
    }

    /*
    TODO: The postblit of $(D BasicRegion) should be disabled because such objects
    should not be copied around naively.
    */

    /**
    If `ParentAllocator` is not `NullAllocator` and defines `deallocate`, the region defines a destructor that uses `ParentAllocator.delete` to free the
    memory chunk.
    */
    static if (!is(ParentAllocator == NullAllocator)
        && hasMember!(ParentAllocator, "deallocate"))
    ~this()
    {
        parent.deallocate(_begin[0 .. _end - _begin]);
    }


    /**
    Alignment offered.
    */
    alias alignment = minAlign;

    /**
    Allocates $(D n) bytes of memory. The shortest path involves an alignment
    adjustment (if $(D alignment > 1)), an increment, and a comparison.
    Params:
    n = number of bytes to allocate
    Returns:
    A properly-aligned buffer of size $(D n) or $(D null) if request could not
    be satisfied.
    */
    void[] allocate(size_t n)
    {
        static if (growDownwards)
        {
            if (available < n) return null;
            static if (minAlign > 1)
                const rounded = n.roundUpToAlignment(alignment);
            else
                alias rounded = n;
            assert(available >= rounded);
            auto result = (_current - rounded)[0 .. n];
            assert(result.ptr >= _begin);
            _current = result.ptr;
            assert(owns(result) == Ternary.yes);
            return result;
        }
        else
        {
            auto result = _current[0 .. n];
            static if (minAlign > 1)
                const rounded = n.roundUpToAlignment(alignment);
            else
                alias rounded = n;
            _current += rounded;
            if (_current <= _end) return result;
            // Slow path, backtrack
            _current -= rounded;
            return null;
        }
    }

    /**
    Allocates $(D n) bytes of memory aligned at alignment $(D a).
    Params:
    n = number of bytes to allocate
    a = alignment for the allocated block
    Returns:
    Either a suitable block of $(D n) bytes aligned at $(D a), or $(D null).
    */
    void[] alignedAllocate(size_t n, uint a)
    {
        import stdx.allocator.internal : isPowerOf2;
        assert(a.isPowerOf2);
        static if (growDownwards)
        {
            const available = _current - _begin;
            if (available < n) return null;
            auto result = (_current - n).alignDownTo(a)[0 .. n];
            if (result.ptr >= _begin)
            {
                _current = result.ptr;
                return result;
            }
        }
        else
        {
            // Just bump the pointer to the next good allocation
            auto save = _current;
            _current = _current.alignUpTo(a);
            auto result = allocate(n);
            if (result.ptr)
            {
                assert(result.length == n);
                return result;
            }
            // Failed, rollback
            _current = save;
        }
        return null;
    }

    /// Allocates and returns all memory available to this region.
    void[] allocateAll()
    {
        static if (growDownwards)
        {
            auto result = _begin[0 .. available];
            _current = _begin;
        }
        else
        {
            auto result = _current[0 .. available];
            _current = _end;
        }
        return result;
    }

    /**
    Expands an allocated block in place. Expansion will succeed only if the
    block is the last allocated. Defined only if `growDownwards` is
    `No.growDownwards`.
    */
    static if (growDownwards == No.growDownwards)
    bool expand(ref void[] b, size_t delta)
    {
        assert(owns(b) == Ternary.yes || b.ptr is null);
        assert(b.ptr + b.length <= _current || b.ptr is null);
        if (!b.ptr) return delta == 0;
        auto newLength = b.length + delta;
        if (_current < b.ptr + b.length + alignment)
        {
            // This was the last allocation! Allocate some more and we're done.
            if (this.goodAllocSize(b.length) == this.goodAllocSize(newLength)
                || allocate(delta).length == delta)
            {
                b = b.ptr[0 .. newLength];
                assert(_current < b.ptr + b.length + alignment);
                return true;
            }
        }
        return false;
    }

    /**
    Deallocates $(D b). This works only if $(D b) was obtained as the last call
    to $(D allocate); otherwise (i.e. another allocation has occurred since) it
    does nothing. This semantics is tricky and therefore $(D deallocate) is
    defined only if $(D Region) is instantiated with $(D Yes.defineDeallocate)
    as the third template argument.
    Params:
    b = Block previously obtained by a call to $(D allocate) against this
    allocator ($(D null) is allowed).
    */
    bool deallocate(void[] b)
    {
        assert(owns(b) == Ternary.yes || b.ptr is null);
        static if (growDownwards)
        {
            if (b.ptr == _current)
            {
                _current += this.goodAllocSize(b.length);
                return true;
            }
        }
        else
        {
            if (b.ptr + this.goodAllocSize(b.length) == _current)
            {
                assert(b.ptr !is null || _current is null);
                _current = b.ptr;
                return true;
            }
        }
        return false;
    }

    /**
    Deallocates all memory allocated by this region, which can be subsequently
    reused for new allocations.
    */
    bool deallocateAll()
    {
        static if (growDownwards)
        {
            _current = _end;
        }
        else
        {
            _current = _begin;
        }
        return true;
    }

    /**
    Queries whether $(D b) has been allocated with this region.
    Params:
    b = Arbitrary block of memory ($(D null) is allowed; $(D owns(null))
    returns $(D false)).
    Returns:
    $(D true) if $(D b) has been allocated with this region, $(D false)
    otherwise.
    */
    Ternary owns(void[] b) const
    {
        return Ternary(b.ptr >= _begin && b.ptr + b.length <= _end);
    }

    /**
    Returns `Ternary.yes` if no memory has been allocated in this region,
    `Ternary.no` otherwise. (Never returns `Ternary.unknown`.)
    */
    Ternary empty() const
    {
        return Ternary(_current == _begin);
    }

    /// Nonstandard property that returns bytes available for allocation.
    size_t available() const
    {
        static if (growDownwards)
        {
            return _current - _begin;
        }
        else
        {
            return _end - _current;
        }
    }
}

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
