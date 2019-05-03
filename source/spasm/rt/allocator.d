///
module spasm.rt.allocator;

import stdx.allocator.building_blocks.null_allocator : NullAllocator;


/**
Returns `true` if `ptr` is aligned at `alignment`.
*/
@nogc nothrow pure bool alignedAt(T)(T* ptr, uint alignment)
{
  return cast(size_t) ptr % alignment == 0;
}
/**
$(D KRRegion) draws inspiration from the $(MREF_ALTTEXT region allocation
strategy, std,experimental,allocator,building_blocks,region) and also the
$(HTTP stackoverflow.com/questions/13159564/explain-this-implementation-of-malloc-from-the-kr-book,
famed allocator) described by Brian Kernighan and Dennis Ritchie in section 8.7
of the book $(HTTP amazon.com/exec/obidos/ASIN/0131103628/classicempire, "The C
Programming Language"), Second Edition, Prentice Hall, 1988.

$(H4 `KRRegion` = `Region` + Kernighan-Ritchie Allocator)

Initially, `KRRegion` strts in "region" mode: allocations are served from
the memory chunk in a region fashion. Thus, as long as there is enough memory
left, $(D KRRegion.allocate) has the performance profile of a region allocator.
Deallocation inserts (in $(BIGOH 1) time) the deallocated blocks in an
unstructured freelist, which is not read in region mode.

Once the region cannot serve an $(D allocate) request, $(D KRRegion) switches
to "free list" mode. It sorts the list of previously deallocated blocks by
address and serves allocation requests off that free list. The allocation and
deallocation follow the pattern described by Kernighan and Ritchie.

The recommended use of `KRRegion` is as a $(I region with deallocation). If the
`KRRegion` is dimensioned appropriately, it could often not enter free list
mode during its lifetime. Thus it is as fast as a simple region, whilst
offering deallocation at a small cost. When the region memory is  exhausted,
the previously deallocated memory is still usable, at a performance  cost. If
the region is not excessively large and fragmented, the linear  allocation and
deallocation cost may still be compensated for by the good locality
characteristics.

If the chunk of memory managed is large, it may be desirable to switch
management to free list from the beginning. That way, memory may be used in a
more compact manner than region mode. To force free list mode, call $(D
switchToFreeList) shortly after construction or when deemed appropriate.

The smallest size that can be allocated is two words (16 bytes on 64-bit
systems, 8 bytes on 32-bit systems). This is because the free list management
needs two words (one for the length, the other for the next pointer in the
singly-linked list).

The $(D ParentAllocator) type parameter is the type of the allocator used to
allocate the memory chunk underlying the $(D KRRegion) object. Choosing the
default ($(D NullAllocator)) means the user is responsible for passing a buffer
at construction (and for deallocating it if necessary). Otherwise, $(D KRRegion)
automatically deallocates the buffer during destruction. For that reason, if
$(D ParentAllocator) is not $(D NullAllocator), then $(D KRRegion) is not
copyable.

$(H4 Implementation Details)

In free list mode, $(D KRRegion) embeds a free blocks list onto the chunk of
memory. The free list is circular, coalesced, and sorted by address at all
times. Allocations and deallocations take time proportional to the number of
previously deallocated blocks. (In practice the cost may be lower, e.g. if
memory is deallocated in reverse order of allocation, all operations take
constant time.) Memory utilization is good (small control structure and no
per-allocation overhead). The disadvantages of freelist mode include proneness
to fragmentation, a minimum allocation size of two words, and linear worst-case
allocation and deallocation times.

Similarities of `KRRegion` (in free list mode) with the
Kernighan-Ritchie allocator:

$(UL
$(LI Free blocks have variable size and are linked in a singly-linked list.)
$(LI The freelist is maintained in increasing address order, which makes
coalescing easy.)
$(LI The strategy for finding the next available block is first fit.)
$(LI The free list is circular, with the last node pointing back to the first.)
$(LI Coalescing is carried during deallocation.)
)

Differences from the Kernighan-Ritchie allocator:

$(UL
$(LI Once the chunk is exhausted, the Kernighan-Ritchie allocator allocates
another chunk using operating system primitives. For better composability, $(D
KRRegion) just gets full (returns $(D null) on new allocation requests). The
decision to allocate more blocks is deferred to a higher-level entity. For an
example, see the example below using $(D AllocatorList) in conjunction with $(D
KRRegion).)
$(LI Allocated blocks do not hold a size prefix. This is because in D the size
information is available in client code at deallocation time.)
)

*/
// struct KRRegion(ParentAllocator = NullAllocator)
// {
//     import stdx.allocator.common : stateSize;
//     import std.traits : hasMember;
//     import stdx.allocator.internal : Ternary;

//     private static struct Node
//     {
//         import std.typecons : tuple, Tuple;

//         Node* next;
//         size_t size;

//         this(this) @disable;

//         void[] payload() inout
//         {
//             return (cast(ubyte*) &this)[0 .. size];
//         }

//         bool adjacent(in Node* right) const
//         {
//             assert(right);
//             auto p = payload;
//             return p.ptr < right && right < p.ptr + p.length + Node.sizeof;
//         }

//         bool coalesce(void* memoryEnd = null)
//         {
//             // Coalesce the last node before the memory end with any possible gap
//             if (memoryEnd
//                 && memoryEnd < payload.ptr + payload.length + Node.sizeof)
//             {
//                 size += memoryEnd - (payload.ptr + payload.length);
//                 return true;
//             }

//             if (!adjacent(next)) return false;
//             size = (cast(ubyte*) next + next.size) - cast(ubyte*) &this;
//             next = next.next;
//             return true;
//         }

//         Tuple!(void[], Node*) allocateHere(size_t bytes)
//         {
//             assert(bytes >= Node.sizeof);
//             assert(bytes % Node.alignof == 0);
//             assert(next);
//             assert(!adjacent(next));
//             if (size < bytes) return Tuple!(void[], Node*)();
//             assert(size >= bytes);
//             immutable leftover = size - bytes;

//             if (leftover >= Node.sizeof)
//             {
//                 // There's room for another node
//                 auto newNode = cast(Node*) ((cast(ubyte*) &this) + bytes);
//                 newNode.size = leftover;
//                 newNode.next = next == &this ? newNode : next;
//                 assert(next);
//                 return tuple(payload, newNode);
//             }

//             // No slack space, just return next node
//             return tuple(payload, next == &this ? null : next);
//         }
//     }

//     // state
//     /**
//     If $(D ParentAllocator) holds state, $(D parent) is a public member of type
//     $(D KRRegion). Otherwise, $(D parent) is an $(D alias) for
//     `ParentAllocator.instance`.
//     */
//     static if (stateSize!ParentAllocator) ParentAllocator parent;
//     else alias parent = ParentAllocator.instance;
//     private void[] payload;
//     private Node* root;
//     private bool regionMode = true;

//     auto byNodePtr()
//     {
//         static struct Range
//         {
//             Node* start, current;
//             @property bool empty() { return !current; }
//             @property Node* front() { return current; }
//             void popFront()
//             {
//                 assert(current && current.next);
//                 current = current.next;
//                 if (current == start) current = null;
//             }
//             @property Range save() { return this; }
//         }
//         import std.range : isForwardRange;
//         static assert(isForwardRange!Range);
//         return Range(root, root);
//     }

//     string toString()
//     {
//         import std.format : format;
//         string s = "KRRegion@";
//         s ~= format("%s-%s(0x%s[%s] %s", &this, &this + 1,
//             payload.ptr, payload.length,
//             regionMode ? "(region)" : "(freelist)");

//         Node* lastNode = null;
//         if (!regionMode)
//         {
//             foreach (node; byNodePtr)
//             {
//                 s ~= format(", %sfree(0x%s[%s])",
//                     lastNode && lastNode.adjacent(node) ? "+" : "",
//                     cast(void*) node, node.size);
//                 lastNode = node;
//             }
//         }
//         else
//         {
//             for (auto node = root; node; node = node.next)
//             {
//                 s ~= format(", %sfree(0x%s[%s])",
//                     lastNode && lastNode.adjacent(node) ? "+" : "",
//                     cast(void*) node, node.size);
//                 lastNode = node;
//             }
//         }

//         s ~= ')';
//         return s;
//     }

//     private void assertValid(string s)
//     {
//         assert(!regionMode);
//         if (!payload.ptr)
//         {
//             assert(!root, s);
//             return;
//         }
//         if (!root)
//         {
//             return;
//         }
//         assert(root >= payload.ptr, s);
//         assert(root < payload.ptr + payload.length, s);

//         // Check that the list terminates
//         size_t n;
//         foreach (node; byNodePtr)
//         {
//             assert(node.next);
//             assert(!node.adjacent(node.next));
//             assert(n++ < payload.length / Node.sizeof, s);
//         }
//     }

//     private Node* sortFreelist(Node* root)
//     {
//         // Find a monotonic run
//         auto last = root;
//         for (;;)
//         {
//             if (!last.next) return root;
//             if (last > last.next) break;
//             assert(last < last.next);
//             last = last.next;
//         }
//         auto tail = last.next;
//         last.next = null;
//         tail = sortFreelist(tail);
//         return merge(root, tail);
//     }

//     private Node* merge(Node* left, Node* right)
//     {
//         assert(left != right);
//         if (!left) return right;
//         if (!right) return left;
//         if (left < right)
//         {
//             auto result = left;
//             result.next = merge(left.next, right);
//             return result;
//         }
//         auto result = right;
//         result.next = merge(left, right.next);
//         return result;
//     }

//     private void coalesceAndMakeCircular()
//     {
//         for (auto n = root;;)
//         {
//             assert(!n.next || n < n.next);
//             if (!n.next)
//             {
//                 // Convert to circular
//                 n.next = root;
//                 break;
//             }
//             if (n.coalesce) continue; // possibly another coalesce
//             n = n.next;
//         }
//     }

//     /**
//     Create a $(D KRRegion). If $(D ParentAllocator) is not $(D NullAllocator),
//     $(D KRRegion)'s destructor will call $(D parent.deallocate).

//     Params:
//     b = Block of memory to serve as support for the allocator. Memory must be
//     larger than two words and word-aligned.
//     n = Capacity desired. This constructor is defined only if $(D
//     ParentAllocator) is not $(D NullAllocator).
//     */
//     this(ubyte[] b)
//     {
//         if (b.length < Node.sizeof)
//         {
//             // Init as empty
//             assert(root is null);
//             assert(payload is null);
//             return;
//         }
//         assert(b.length >= Node.sizeof);
//         assert(b.ptr.alignedAt(Node.alignof));
//         assert(b.length >= 2 * Node.sizeof);
//         payload = b;
//         root = cast(Node*) b.ptr;
//         // Initialize the free list with all list
//         assert(regionMode);
//         root.next = null;
//         root.size = b.length;
//         debug(KRRegion) writefln("KRRegion@%s: init with %s[%s]", &this,
//             b.ptr, b.length);
//     }

//     /// Ditto
//     static if (!is(ParentAllocator == NullAllocator))
//     this(size_t n)
//     {
//         assert(n > Node.sizeof);
//         this(cast(ubyte[])(parent.allocate(n)));
//     }

//     /// Ditto
//     static if (!is(ParentAllocator == NullAllocator)
//         && hasMember!(ParentAllocator, "deallocate"))
//     ~this()
//     {
//         parent.deallocate(payload);
//     }

//     /**
//     Forces free list mode. If already in free list mode, does nothing.
//     Otherwise, sorts the free list accumulated so far and switches strategy for
//     future allocations to KR style.
//     */
//     void switchToFreeList()
//     {
//         if (!regionMode) return;
//         regionMode = false;
//         if (!root) return;
//         root = sortFreelist(root);
//         coalesceAndMakeCircular;
//     }

//     /*
//     Noncopyable
//     */
//     @disable this(this);

//     /**
//     Word-level alignment.
//     */
//     enum alignment = Node.alignof;

//     /**
//     Allocates $(D n) bytes. Allocation searches the list of available blocks
//     until a free block with $(D n) or more bytes is found (first fit strategy).
//     The block is split (if larger) and returned.

//     Params: n = number of bytes to _allocate

//     Returns: A word-aligned buffer of $(D n) bytes, or $(D null).
//     */
//     void[] allocate(size_t n)
//     {
//         if (!n || !root) return null;
//         const actualBytes = goodAllocSize(n);

//         // Try the region first
//         if (regionMode)
//         {
//             // Only look at the head of the freelist
//             if (root.size >= actualBytes)
//             {
//                 // Enough room for allocation
//                 void* result = root;
//                 immutable balance = root.size - actualBytes;
//                 if (balance >= Node.sizeof)
//                 {
//                     auto newRoot = cast(Node*) (result + actualBytes);
//                     newRoot.next = root.next;
//                     newRoot.size = balance;
//                     root = newRoot;
//                 }
//                 else
//                 {
//                     root = null;
//                     switchToFreeList;
//                 }
//                 return result[0 .. n];
//             }

//             // Not enough memory, switch to freelist mode and fall through
//             switchToFreeList;
//         }

//         // Try to allocate from next after the iterating node
//         for (auto pnode = root;;)
//         {
//             assert(!pnode.adjacent(pnode.next));
//             auto k = pnode.next.allocateHere(actualBytes);
//             if (k[0] !is null)
//             {
//                 // awes
//                 assert(k[0].length >= n);
//                 if (root == pnode.next) root = k[1];
//                 pnode.next = k[1];
//                 return k[0][0 .. n];
//             }

//             pnode = pnode.next;
//             if (pnode == root) break;
//         }
//         return null;
//     }

//     /**
//     Deallocates $(D b), which is assumed to have been previously allocated with
//     this allocator. Deallocation performs a linear search in the free list to
//     preserve its sorting order. It follows that blocks with higher addresses in
//     allocators with many free blocks are slower to deallocate.

//     Params: b = block to be deallocated
//     */
//     bool deallocate(void[] b)
//     {
//         debug(KRRegion) writefln("KRRegion@%s: deallocate(%s[%s])", &this,
//             b.ptr, b.length);
//         if (!b.ptr) return true;
//         assert(owns(b) == Ternary.yes);
//         assert(b.ptr.alignedAt(Node.alignof));

//         // Insert back in the freelist, keeping it sorted by address. Do not
//         // coalesce at this time. Instead, do it lazily during allocation.
//         auto n = cast(Node*) b.ptr;
//         n.size = goodAllocSize(b.length);
//         auto memoryEnd = payload.ptr + payload.length;

//         if (regionMode)
//         {
//             assert(root);
//             // Insert right after root
//             n.next = root.next;
//             root.next = n;
//             return true;
//         }

//         if (!root)
//         {
//             // What a sight for sore eyes
//             root = n;
//             root.next = root;

//             // If the first block freed is the last one allocated,
//             // maybe there's a gap after it.
//             root.coalesce(memoryEnd);
//             return true;
//         }

//         version(assert) foreach (test; byNodePtr)
//         {
//             assert(test != n);
//         }
//         // Linear search
//         auto pnode = root;
//         do
//         {
//             assert(pnode && pnode.next);
//             assert(pnode != n);
//             assert(pnode.next != n);
//             if (pnode < pnode.next)
//             {
//                 if (pnode >= n || n >= pnode.next) continue;
//                 // Insert in between pnode and pnode.next
//                 n.next = pnode.next;
//                 pnode.next = n;
//                 n.coalesce;
//                 pnode.coalesce;
//                 root = pnode;
//                 return true;
//             }
//             else if (pnode < n)
//             {
//                 // Insert at the end of the list
//                 // Add any possible gap at the end of n to the length of n
//                 n.next = pnode.next;
//                 pnode.next = n;
//                 n.coalesce(memoryEnd);
//                 pnode.coalesce;
//                 root = pnode;
//                 return true;
//             }
//             else if (n < pnode.next)
//             {
//                 // Insert at the front of the list
//                 n.next = pnode.next;
//                 pnode.next = n;
//                 n.coalesce;
//                 root = n;
//                 return true;
//             }
//         }
//         while ((pnode = pnode.next) != root);
//         assert(0, "Wrong parameter passed to deallocate");
//     }

//     /**
//     Allocates all memory available to this allocator. If the allocator is empty,
//     returns the entire available block of memory. Otherwise, it still performs
//     a best-effort allocation: if there is no fragmentation (e.g. $(D allocate)
//     has been used but not $(D deallocate)), allocates and returns the only
//     available block of memory.

//     The operation takes time proportional to the number of adjacent free blocks
//     at the front of the free list. These blocks get coalesced, whether
//     $(D allocateAll) succeeds or fails due to fragmentation.
//     */
//     void[] allocateAll()
//     {
//         if (regionMode) switchToFreeList;
//         if (root && root.next == root)
//             return allocate(root.size);
//         return null;
//     }

//     /**
//     Deallocates all memory currently allocated, making the allocator ready for
//     other allocations. This is a $(BIGOH 1) operation.
//     */
//     bool deallocateAll()
//     {
//         debug(KRRegion) assertValid("deallocateAll");
//         debug(KRRegion) scope(exit) assertValid("deallocateAll");
//         root = cast(Node*) payload.ptr;
//         // Initialize the free list with all list
//         if (root)
//         {
//             root.next = root;
//             root.size = payload.length;
//         }
//         return true;
//     }

//     /**
//     Checks whether the allocator is responsible for the allocation of $(D b).
//     It does a simple $(BIGOH 1) range check. $(D b) should be a buffer either
//     allocated with $(D this) or obtained through other means.
//     */
//     Ternary owns(void[] b)
//     {
//         debug(KRRegion) assertValid("owns");
//         debug(KRRegion) scope(exit) assertValid("owns");
//         return Ternary(b.ptr >= payload.ptr
//             && b.ptr < payload.ptr + payload.length);
//     }

//     /**
//     Adjusts $(D n) to a size suitable for allocation (two words or larger,
//     word-aligned).
//     */
//     static size_t goodAllocSize(size_t n)
//     {
//         import stdx.allocator.common : roundUpToMultipleOf;
//         return n <= Node.sizeof
//             ? Node.sizeof : n.roundUpToMultipleOf(alignment);
//     }

//     /**
//     Returns: `Ternary.yes` if the allocator is empty, `Ternary.no` otherwise.
//     Never returns `Ternary.unknown`.
//     */
//     Ternary empty()
//     {
//         return Ternary(root && root.size == payload.length);
//     }
// }


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
