/**
 * Dynamic Array
 * Copyright: © 2015 Economic Modeling Specialists, Intl.
 * Authors: Brian Schott
 * License: $(LINK2 http://www.boost.org/LICENSE_1_0.txt, Boost License 1.0)
 */

module spasm.rt.array;
import spasm.rt.memory;
import spasm.rt.gc : SpasmGCAllocator;

/* an optimized version of DynamicArray when T is an pointer
 *
 * to reduce template bloat all PointerArray!T* are backed by a
 * DynamicArray!(void*)
 */
struct PointerArray(T, Allocator = SpasmGCAllocator) if (is(T : U*, U)) {
  static if (!is(Allocator == SpasmGCAllocator)) {
    private DynamicArray!(void*, Allocator) array = void;
    this(ref Allocator allocator) {
      array = DynamicArray!(void*, Allocator)(allocator);
    }
  } else {
    private DynamicArray!(void*, Allocator) array;
  }

  alias array this;

  /// Slice operator overload
  pragma(inline, true) auto opSlice(this This)() @nogc
  {
    return opSlice!(This)(0, l);
  }

  /// ditto
  pragma(inline, true) auto opSlice(this This)(size_t a, size_t b) @nogc
  {
    alias ET = ContainerElementType!(This, T);
    return cast(ET[]) array.arr[a .. b];
  }

  /// Index operator overload
  pragma(inline, true) auto opIndex(this This)(size_t i) @nogc
  {
    return cast(T)array[i];
  }

  void insertBack(T value) {
    array.insertBack(cast(void*)value);
  }

  void shrinkTo(int idx) {
    array.shrinkTo(idx);
  }

  alias insert = insertBack;

  /// ditto
  alias insertAnywhere = insertBack;

  /// ditto
  alias put = insertBack;

  /// Index assignment support
  void opIndexAssign(T value, size_t i) @nogc
  {
    array.arr[i] = cast(void*)value;
  }

  /// Slice assignment support
  void opSliceAssign(T value) @nogc
  {
    array.arr[0 .. l] = cast(void*)value;
  }

  /// ditto
  void opSliceAssign(T value, size_t i, size_t j) @nogc
  {
    array.arr[i .. j] = cast(void*)value;
  }
  auto ref T front() pure @property
  {
    return cast(T)array.front();
  }

  /// Returns: the back element of the DynamicArray.
  auto ref T back() pure @property
  {
    return cast(T)array.back();
  }

  size_t length() const nothrow pure @property @safe @nogc
  {
    return array.l;
  }
  /// Ditto
  alias opDollar = length;

  void remove(const size_t i) {
    array.remove(i);
  }
}
/**
 * Array that is able to grow itself when items are appended to it. Uses
 * malloc/free/realloc to manage its storage.
 *
 * Params:
 *     T = the array element type
 *     Allocator = the allocator to use. Defaults to `Mallocator`.
 */

struct DynamicArray(T, Allocator = SpasmGCAllocator)
{
  static if (!is(Allocator == SpasmGCAllocator)) {
    Allocator* allocator;
    this(ref Allocator allocator) {
      this.allocator = &allocator;
    }
  }

	this(this) @disable;

	private import spasm.rt.allocator: stateSize;

	static if (is(typeof((T[] a, const T[] b) => a[0 .. b.length] = b[0 .. $])))
	{
		/// Either `const(T)` or `T`.
		alias AppendT = const(T);

		/// Either `const(typeof(this))` or `typeof(this)`.
		alias AppendTypeOfThis = const(typeof(this));
	}
	else
	{
		alias AppendT = T;
		alias AppendTypeOfThis = typeof(this);
	}

	~this()
	{
		if (arr is null)
			return;

		static if ((is(T == struct) || is(T == union))
			&& __traits(hasMember, T, "__xdtor"))
		{
			foreach (ref item; arr[0 .. l])
			{
				item.__xdtor();
			}
		}
		allocator.deallocate(arr);
	}

	/// Slice operator overload
	pragma(inline, true)
	auto opSlice(this This)() @nogc
	{
		return opSlice!(This)(0, l);
	}

	/// ditto
	pragma(inline, true)
	auto opSlice(this This)(size_t a, size_t b) @nogc
	{
		alias ET = ContainerElementType!(This, T);
		return cast(ET[]) arr[a .. b];
	}

	/// Index operator overload
	pragma(inline, true)
	auto opIndex(this This)(size_t i) @nogc
	{
		return opSlice!(This)(i, i + 1)[0];
	}

	/**
	 * Inserts the given value into the end of the array.
	 */
	void insertBack(T value)
	{
		if (arr.length == 0)
		{
			arr = allocator.make!(typeof(arr))(4);
		}
		else if (l >= arr.length)
		{
			immutable size_t c = arr.length > 512 ? arr.length + 1024 : arr.length << 1;
			void[] a = cast(void[]) arr;
      import std.experimental.allocator.common : reallocate;
			allocator.reallocate(a, c * T.sizeof);
			arr = cast(typeof(arr)) a;
		}
		import std.traits: hasElaborateAssign, hasElaborateDestructor;
		static if (is(T == struct) && (hasElaborateAssign!T || hasElaborateDestructor!T))
		{
			// If a destructor is run before blit or assignment involves
			// more than just a blit, ensure that arr[l] is in a valid
			// state before assigning to it.
			import core.stdc.string : memcpy, memset;
			const init = typeid(T).initializer();
			if (init.ptr is null) // null pointer means initialize to 0s
				(() @trusted => memset(arr.ptr + l, 0, T.sizeof))();
			else
				(() @trusted => memcpy(arr.ptr + l, init.ptr, T.sizeof))();
		}
		emplace(arr[l++], value);
	}

	/// ditto
	alias insert = insertBack;

	/// ditto
	alias insertAnywhere = insertBack;

	/// ditto
	alias put = insertBack;

	/**
	 * ~= operator overload
	 */
	scope ref typeof(this) opOpAssign(string op)(T value) if (op == "~")
	{
		insert(value);
		return this;
	}

	/**
	* ~= operator overload for an array of items
	*/
	scope ref typeof(this) opOpAssign(string op, bool checkForOverlap = true)(AppendT[] rhs)
		if (op == "~" && !is(T == AppendT[]))
	{
		// Disabling checkForOverlap when this function is called from opBinary!"~"
		// is not just for efficiency, but to avoid circular function calls that
		// would prevent inference of @nogc, etc.
		static if (checkForOverlap)
		if ((() @trusted => arr.ptr <= rhs.ptr && arr.ptr + arr.length > rhs.ptr)())
		{
			// Special case where rhs is a slice of this array.
			this = this ~ rhs;
			return this;
		}
		reserve(l + rhs.length);
		import std.traits: hasElaborateAssign, hasElaborateDestructor;
		static if (is(T == struct) && (hasElaborateAssign!T || hasElaborateDestructor!T))
		{
			foreach (ref value; rhs)
				emplace(arr[l++], value);
		}
		else
		{
			arr[l .. l + rhs.length] = rhs[0 .. rhs.length];
			l += rhs.length;
		}
		return this;
	}

	/// ditto
	scope ref typeof(this) opOpAssign(string op)(ref AppendTypeOfThis rhs)
		if (op == "~")
	{
		return this ~= rhs.arr[0 .. rhs.l];
	}

	/**
	 * ~ operator overload
	 */
	typeof(this) opBinary(string op)(ref AppendTypeOfThis other) if (op == "~")
	{
		typeof(this) ret;
		ret.reserve(l + other.l);
		ret.opOpAssign!("~", false)(arr[0 .. l]);
		ret.opOpAssign!("~", false)(other.arr[0 .. other.l]);
		return ret;
	}

	/// ditto
	typeof(this) opBinary(string op)(AppendT[] values) if (op == "~")
	{
		typeof(this) ret;
		ret.reserve(l + values.length);
		ret.opOpAssign!("~", false)(arr[0 .. l]);
		ret.opOpAssign!("~", false)(values);
		return ret;
	}

	/**
	 * Ensures sufficient capacity to accommodate `n` elements.
	 */
	void reserve(size_t n)
	{
		if (arr.length >= n)
			return;
		if (arr.ptr is null)
		{
			size_t c = 4;
			if (c < n)
				c = n;
			arr = allocator.make!(typeof(arr))(c);
		}
		else
		{
			size_t c = arr.length > 512 ? arr.length + 1024 : arr.length << 1;
			if (c < n)
				c = n;
			void[] a = cast(void[]) arr;
      import std.experimental.allocator.common : reallocate;
      allocator.reallocate(a, c * T.sizeof);
			arr = cast(typeof(arr)) a;
		}
	}

	static if (is(typeof({T value;}))) // default construction is allowed
	{
		/**
		 * Change the array length.
		 * When growing, initialize new elements to the default value.
		 */
		void resize(size_t n)
		{
			resize(n, T.init);
		}
	}

	/**
	 * Change the array length.
	 * When growing, initialize new elements to the given value.
	 */
	void resize(size_t n, T value)
	{
		if (arr.length < n)
			reserve(n);

		if (l < n) // Growing?
		{
			import std.traits: hasElaborateAssign, hasElaborateDestructor;
			static if (is(T == struct) && (hasElaborateAssign!T || hasElaborateDestructor!T))
			{
				foreach (i; l..n)
					emplace(arr[l], value);
			}
			else
				arr[l..n] = value;
		}
		else
		{
			static if ((is(T == struct) || is(T == union))
				&& __traits(hasMember, T, "__xdtor"))
			{
				foreach (i; n..l)
					arr[i].__xdtor();
			}
		}

		l = n;
	}

	/**
	 * Remove the item at the given index from the array.
	 */
	void remove(const size_t i)
	{
    assert(i < this.l);
    auto next = i + 1;
    while (next < this.l)
    {
      arr[next - 1] = arr[next];
      ++next;
    }

    --l;
    static if ((is(T == struct) || is(T == union)) && __traits(hasMember, T, "__xdtor"))
    {
      arr[l].__xdtor();
    }
	}

	/**
	 * Removes the last element from the array.
	 */
	void removeBack()
	{
    assert(l > 0);
    --l;
    static if ((is(T == struct) || is(T == union)) && __traits(hasMember, T, "__xdtor"))
    {
      arr[l].__xdtor();
    }
	}

  void shrinkTo(const size_t nl) {
    assert(l >= nl);
    static if ((is(T == struct) || is(T == union)) && __traits(hasMember, T, "__xdtor"))
    {
      foreach_reverse(i; nl..l)
        arr[i].__xdtor();
    }

    l = nl;
  }

	/// Index assignment support
	void opIndexAssign(T value, size_t i) @nogc
	{
		arr[i] = value;
	}

	/// Slice assignment support
	void opSliceAssign(T value) @nogc
	{
		arr[0 .. l] = value;
	}

	/// ditto
	void opSliceAssign(T value, size_t i, size_t j) @nogc
	{
		arr[i .. j] = value;
	}

	/// Returns: the number of items in the array
	size_t length() const nothrow pure @property @safe @nogc { return l; }

	/// Ditto
	alias opDollar = length;

	/// Returns: whether or not the DynamicArray is empty.
	bool empty() const nothrow pure @property @safe @nogc { return l == 0; }

	/**
	 * Returns: a slice to the underlying array.
	 *
	 * As the memory of the array may be freed, access to this array is
	 * highly unsafe.
	 */
	auto ptr(this This)() @nogc @property
	{
		alias ET = ContainerElementType!(This, T);
		return cast(ET) arr.ptr;
	}

	/// Returns: the front element of the DynamicArray.
	auto ref T front() pure @property
	{
		return arr[0];
	}

	/// Returns: the back element of the DynamicArray.
	auto ref T back() pure @property
	{
		return arr[l - 1];
	}

private:

	static void emplace(ref ContainerStorageType!T target, ref AppendT source)
	{
		(cast(void[])((&target)[0..1]))[] = cast(void[])((&source)[0..1]);
		static if (__traits(hasMember, T, "__xpostblit"))
			target.__xpostblit();
	}

	enum bool useGC = false;
	ContainerStorageType!(T)[] arr;
	size_t l;
}

template removePred(alias pred) {
  auto removePred(T)(ref DynamicArray!T arr) {
    size_t target = 0;
    auto len = arr.l < arr.arr.length ? arr.l : arr.arr.length;
    foreach (i; 0 .. len)
    {
      if (pred(arr.arr[i]))
      {
        static if ((is(T == struct) || is(T == union)) && __traits(hasMember, T, "__xdtor"))
        {
          arr.arr[l].__xdtor();
        }
        continue;
      }
      else
      {
        arr.arr[target] = arr.arr[i];
        target++;
      }
    }
    arr.l = target;
  }
}

template ContainerStorageType(T)
{
	import std.traits : hasElaborateCopyConstructor, hasElaborateDestructor,
		hasElaborateAssign, isBasicType, isDynamicArray, isPointer, Unqual;
	import std.typecons : Rebindable;
	static if (is (T == const) || is (T == immutable))
	{
		static if (isBasicType!T || isDynamicArray!T || isPointer!T)
			alias ContainerStorageType = Unqual!T;
		else static if (is (T == class) || is (T == interface))
			alias ContainerStorageType = Rebindable!T;
		else static if (is (T == struct))
		{
			alias U = Unqual!T;
			static if (hasElaborateAssign!U || hasElaborateCopyConstructor!U || hasElaborateDestructor!U)
				static assert (false, "Cannot store " ~ T.stringof ~ " because of postblit, opAssign, or ~this");
			else
				alias ContainerStorageType = U;
		}
		else
			static assert (false, "Don't know how to handle type " ~ T.stringof);
	}
	else
		alias ContainerStorageType = T;
}

///
unittest
{
	static assert (is (ContainerStorageType!(int) == int));
	static assert (is (ContainerStorageType!(const int) == int));
}

///
unittest
{
	import std.typecons : Rebindable;
	static assert (is (ContainerStorageType!(Object) == Object));
	static assert (is (ContainerStorageType!(const(Object)) == Rebindable!(const(Object))));
}

///
unittest
{
	struct A { int foo; }
	struct B { void opAssign(typeof(this)) { this.foo *= 2; }  int foo;}

	// A can be stored easily because it is plain data
	static assert (is (ContainerStorageType!(A) == A));
	static assert (is (ContainerStorageType!(const(A)) == A));

	// const(B) cannot be stored in the container because of its
	// opAssign. Casting away const could lead to some very unexpected
	// behavior.
	static assert (!is (typeof(ContainerStorageType!(const(B)))));
	// Mutable B is not a problem
	static assert (is (ContainerStorageType!(B) == B));

	// Arrays can be stored because the entire pointer-length pair is moved as
	// a unit.
	static assert (is (ContainerStorageType!(const(int[])) == const(int)[]));
}

///
unittest
{
	static assert (is (ContainerStorageType!(const(int*)) == const(int)*));
}

template ContainerElementType(ContainerType, ElementType)
{
	import std.traits : isMutable, hasIndirections, PointerTarget, isPointer, Unqual;

	template ET(bool isConst, T)
	{
		static if (isPointer!ElementType)
		{
			enum PointerIsConst = is(ElementType == const);
			enum PointerIsImmutable = is(ElementType == immutable);
			enum DataIsConst = is(PointerTarget!(ElementType) == const);
			enum DataIsImmutable = is(PointerTarget!(ElementType) == immutable);
			static if (isConst)
			{
				static if (PointerIsConst)
					alias ET = ElementType;
				else static if (PointerIsImmutable)
					alias ET = ElementType;
				else
					alias ET = const(PointerTarget!(ElementType))*;
			}
			else
			{
				static assert(DataIsImmutable, "An immutable container cannot reference const or mutable data");
				static if (PointerIsConst)
					alias ET = immutable(PointerTarget!ElementType)*;
				else
					alias ET = ElementType;
			}
		}
		else
		{
			static if (isConst)
			{
				static if (is(ElementType == immutable))
					alias ET = ElementType;
				else
					alias ET = const(Unqual!ElementType);
			}
			else
				alias ET = immutable(Unqual!ElementType);
		}
	}

	static if (isMutable!ContainerType)
		alias ContainerElementType = ElementType;
	else
	{
		static if (hasIndirections!ElementType)
			alias ContainerElementType = ET!(is(ContainerType == const), ElementType);
		else
			alias ContainerElementType = ElementType;
	}
}

mixin template AllocatorState(Allocator)
{
  static if (stateSize!Allocator == 0)
    alias allocator = Allocator.instance;
  else
    Allocator allocator;
}

struct StringAppender(Allocator = SpasmGCAllocator) {
  static if (!is(Allocator == SpasmGCAllocator)) {
    DynamicArray!(char, Allocator) arr = void;
    this(ref Allocator allocator) {
      arr = DynamicArray!(char, Allocator)(allocator);
    }
  } else {
    DynamicArray!(char, Allocator) arr;
  }
  alias arr this;
  void put(string s) {
    foreach(c; s)
      arr.put(c);
  }
  void put(char c) {
    arr.put(c);
  }
  void put(char[] cs) {
    foreach(c; cs)
      arr.put(c);
  }
}

string text(Allocator, T...)(ref Allocator allocator, T t) {
  auto app = StringAppender!(Allocator)(allocator);
  write(app, t);
  auto end = app.length;
  return cast(string)app[0..end];
}

string text(T...)(T t) {
  StringAppender!() app;
  write(app, t);
  auto end = app.length;
  return cast(string)app[0..end];
}

char[] unsignedToTempString()(ulong value, return scope char[] buf, uint radix = 10) @safe
{
  if (radix < 2) // not a valid radix, just return an empty string
    return buf[$ .. $];

  size_t i = buf.length;
  do
  {
    if (value < radix)
    {
      ubyte x = cast(ubyte) value;
      buf[--i] = cast(char)((x < 10) ? x + '0' : x - 10 + 'a');
      break;
    }
    else
    {
      ubyte x = cast(ubyte)(value % radix);
      value = value / radix;
      buf[--i] = cast(char)((x < 10) ? x + '0' : x - 10 + 'a');
    }
  }
  while (value);
  return buf[i .. $];
}

private struct TempStringNoAlloc
{
  // need to handle 65 bytes for radix of 2 with negative sign.
  private char[65] _buf = 0;
  private ubyte _len;
  auto get() return
  {
    return _buf[$ - _len .. $];
  }

  alias get this;
}

auto unsignedToTempString()(ulong value, uint radix = 10) @safe
{
  TempStringNoAlloc result = void;
  result._len = unsignedToTempString(value, result._buf, radix).length & 0xff;
  return result;
}

char[] signedToTempString(long value, return scope char[] buf, uint radix = 10) @safe
{
  bool neg = value < 0;
  if (neg)
    value = cast(ulong)-value;
  auto r = unsignedToTempString(value, buf, radix);
  if (neg)
  {
    // about to do a slice without a bounds check
    auto trustedSlice(return char[] r) @trusted
    {
      assert(r.ptr > buf.ptr);
      return (r.ptr - 1)[0 .. r.length + 1];
    }

    r = trustedSlice(r);
    r[0] = '-';
  }
  return r;
}

auto signedToTempString(long value, uint radix = 10) @safe
{
  bool neg = value < 0;
  if (neg)
    value = cast(ulong)-value;
  auto r = unsignedToTempString(value, radix);
  if (neg)
  {
    r._len++;
    r.get()[0] = '-';
  }
  return r;
}

import std.traits : isIntegral;
import std.range.primitives : isOutputRange;
void toTextRange(T, W)(T value, auto ref W writer)
    if (isIntegral!T && isOutputRange!(W, char))
{
  import core.internal.string : SignedStringBuf,
    UnsignedStringBuf;
  import std.range.primitives : put;

  if (value < 0)
  {
    SignedStringBuf buf = void;
    put(writer, signedToTempString(value, buf, 10));
  }
  else
  {
    UnsignedStringBuf buf = void;
    put(writer, unsignedToTempString(value, buf, 10));
  }
}

void write(Sink, S...)(auto ref Sink sink, S args) {
  import std.traits : isBoolean, isIntegral, isAggregateType, isSomeString, isSomeChar;

  foreach (arg; args)
  {
    alias A = typeof(arg);
    static if (isAggregateType!A || is(A == enum))
    {
      sink.put(arg.toString());
    }
    else static if (isSomeString!A)
    {
      sink.put(arg);
    }
    else static if (isIntegral!A)
    {
      toTextRange(arg, sink);
    }
    else static if (isBoolean!A)
    {
      sink.put(arg ? "true" : "false");
    }
    else static if (isSomeChar!A)
    {
      sink.put(arg);
    }
    else
    {
      static assert(0);
    }
  }
}
