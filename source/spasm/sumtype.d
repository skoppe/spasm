/++
A sum type for modern D.

[SumType] is an alternative to `std.variant.Algebraic` that features:

$(LIST
    * [match|Improved pattern-matching.]
    * Full attribute correctness (`pure`, `@safe`, `@nogc`, and `nothrow` are
      inferred whenever possible).
    * A type-safe and memory-safe API compatible with DIP 1000 (`scope`).
    * No dependency on runtime type information (`TypeInfo`).
)

License: MIT
Authors: Paul Backus, Atila Neves
+/
module spasm.sumtype;

/// $(H3 Basic usage)
version (D_BetterC) {} else
@safe unittest {
    import std.math: approxEqual;

    struct Fahrenheit { double degrees; }
    struct Celsius { double degrees; }
    struct Kelvin { double degrees; }

    alias Temperature = SumType!(Fahrenheit, Celsius, Kelvin);

    // Construct from any of the member types.
    Temperature t1 = Fahrenheit(98.6);
    Temperature t2 = Celsius(100);
    Temperature t3 = Kelvin(273);

    // Use pattern matching to access the value.
    pure @safe @nogc nothrow
    Fahrenheit toFahrenheit(Temperature t)
    {
        return Fahrenheit(
            t.match!(
                (Fahrenheit f) => f.degrees,
                (Celsius c) => c.degrees * 9.0/5 + 32,
                (Kelvin k) => k.degrees * 9.0/5 - 459.4
            )
        );
    }

    assert(toFahrenheit(t1).degrees.approxEqual(98.6));
    assert(toFahrenheit(t2).degrees.approxEqual(212));
    assert(toFahrenheit(t3).degrees.approxEqual(32));

    // Use ref to modify the value in place.
    pure @safe @nogc nothrow
    void freeze(ref Temperature t)
    {
        t.match!(
            (ref Fahrenheit f) => f.degrees = 32,
            (ref Celsius c) => c.degrees = 0,
            (ref Kelvin k) => k.degrees = 273
        );
    }

    freeze(t1);
    assert(toFahrenheit(t1).degrees.approxEqual(32));

    // Use a catch-all handler to give a default result.
    pure @safe @nogc nothrow
    bool isFahrenheit(Temperature t)
    {
        return t.match!(
            (Fahrenheit f) => true,
            _ => false
        );
    }

    assert(isFahrenheit(t1));
    assert(!isFahrenheit(t2));
    assert(!isFahrenheit(t3));
}

/** $(H3 Introspection-based matching)
 *
 * In the `length` and `horiz` functions below, the handlers for `match` do not
 * specify the types of their arguments. Instead, matching is done based on how
 * the argument is used in the body of the handler: any type with `x` and `y`
 * properties will be matched by the `rect` handlers, and any type with `r` and
 * `theta` properties will be matched by the `polar` handlers.
 */
version (D_BetterC) {} else
@safe unittest {
    import std.math: approxEqual, cos, PI, sqrt;

    struct Rectangular { double x, y; }
    struct Polar { double r, theta; }
    alias Vector = SumType!(Rectangular, Polar);

    pure @safe @nogc nothrow
    double length(Vector v)
    {
        return v.match!(
            rect => sqrt(rect.x^^2 + rect.y^^2),
            polar => polar.r
        );
    }

    pure @safe @nogc nothrow
    double horiz(Vector v)
    {
        return v.match!(
            rect => rect.x,
            polar => polar.r * cos(polar.theta)
        );
    }

    Vector u = Rectangular(1, 1);
    Vector v = Polar(1, PI/4);

    assert(length(u).approxEqual(sqrt(2.0)));
    assert(length(v).approxEqual(1));
    assert(horiz(u).approxEqual(1));
    assert(horiz(v).approxEqual(sqrt(0.5)));
}

/// `This` placeholder, for use in self-referential types.
public import std.variant: This;

import std.meta: NoDuplicates;

/**
 * A tagged union that can hold a single value from any of a specified set of
 * types.
 *
 * The value in a `SumType` can be operated on using [match|pattern matching].
 *
 * To avoid ambiguity, duplicate types are not allowed (but see the
 * [sumtype#basic-usage|"basic usage" example] for a workaround).
 *
 * The special type `This` can be used as a placeholder to create
 * self-referential types, just like with `Algebraic`. See the
 * [sumtype#arithmetic-expression-evaluator|"Arithmetic expression evaluator" example] for
 * usage.
 *
 * A `SumType` is initialized by default to hold the `.init` value of its
 * first member type, just like a regular union. The version identifier
 * `SumTypeNoDefaultCtor` can be used to disable this behavior.
 *
 * Bugs:
 *   Types with `@disable`d `opEquals` overloads cannot be members of a
 *   `SumType`.
 *
 * See_Also: `std.variant.Algebraic`
 */
template FlattenSumTypes(Types...) {
  import std.meta : staticMap;
  static template Impl(Type) {
    static if (is(Type : SumType!(Ts), Ts))
      alias Impl = Type.Types;
    else
      alias Impl = Type;
  }
  alias FlattenSumTypes = staticMap!(Impl, Types);
}

struct SumType(TypeArgs...)
	if (is(NoDuplicates!TypeArgs == TypeArgs) && TypeArgs.length > 0)
{
	import std.meta: AliasSeq, Filter, anySatisfy, allSatisfy, staticIndexOf;
	import std.traits: hasElaborateCopyConstructor, hasElaborateDestructor;
	import std.traits: isAssignable, isCopyable, isStaticArray;

	/// The types a `SumType` can hold.
	alias Types = FlattenSumTypes!(TypeArgs);//AliasSeq!(ReplaceTypeUnless!(isSumType, This, typeof(this), TypeArgs));

private:

	enum bool canHoldTag(T) = Types.length <= T.max;
	alias unsignedInts = AliasSeq!(ubyte, ushort, uint, ulong);

	alias Tag = Filter!(canHoldTag, unsignedInts)[0];

	union Storage
	{
		template memberName(T)
			if (staticIndexOf!(T, Types) >= 0)
		{
			mixin("enum memberName = `values_", staticIndexOf!(T, Types), "`;");
		}

		static foreach (T; Types) {
			mixin("T ", memberName!T, ";");
		}
	}

	Tag tag;
	Storage storage;

	@trusted
	ref inout(T) get(T)() inout
		if (staticIndexOf!(T, Types) >= 0)
	{
		enum tid = staticIndexOf!(T, Types);
		assert(tag == tid);
		return __traits(getMember, storage, Storage.memberName!T);
	}

public:

	static foreach (tid, T; Types) {
		/// Constructs a `SumType` holding a specific value.
		this()(auto ref T value)
		{
			import core.lifetime: forward;

			static if (isCopyable!T) {
				mixin("Storage newStorage = { ", Storage.memberName!T, ": value };");
			} else {
				mixin("Storage newStorage = { ", Storage.memberName!T, " : forward!value };");
			}

			storage = newStorage;
			tag = tid;
		}

		static if (isCopyable!T) {
			/// ditto
			this()(auto ref const(T) value) const
			{
				mixin("const(Storage) newStorage = { ", Storage.memberName!T, ": value };");
				storage = newStorage;
				tag = tid;
			}

			/// ditto
			this()(auto ref immutable(T) value) immutable
			{
				mixin("immutable(Storage) newStorage = { ", Storage.memberName!T, ": value };");
				storage = newStorage;
				tag = tid;
			}
		} else {
			@disable this(const(T) value) const;
			@disable this(immutable(T) value) immutable;
		}
	}

	static if (allSatisfy!(isCopyable, Types)) {
		static if (anySatisfy!(hasElaborateCopyConstructor, Types)) {
			/// Constructs a `SumType` that's a copy of another `SumType`
			this(ref SumType other)
			{
				storage = other.match!((ref value) {
					alias T = typeof(value);

					mixin("Storage newStorage = { ", Storage.memberName!T, ": value };");
					return newStorage;
				});

				tag = other.tag;
			}

			/// ditto
			this(ref const(SumType) other) const
			{
				import std.meta: staticMap;
				import std.traits: ConstOf;

				storage = other.match!((ref value) {
					alias OtherTypes = staticMap!(ConstOf, Types);
					enum tid = staticIndexOf!(typeof(value), OtherTypes);
					alias T = Types[tid];

					mixin("const(Storage) newStorage = { ", Storage.memberName!T, ": value };");
					return newStorage;
				});

				tag = other.tag;
			}

			/// ditto
			this(ref immutable(SumType) other) immutable
			{
				import std.meta: staticMap;
				import std.traits: ImmutableOf;

				storage = other.match!((ref value) {
					alias OtherTypes = staticMap!(ImmutableOf, Types);
					enum tid = staticIndexOf!(typeof(value), OtherTypes);
					alias T = Types[tid];

					mixin("immutable(Storage) newStorage = { ", Storage.memberName!T, ": value };");
					return newStorage;
				});

				tag = other.tag;
			}
		}
	} else {
		/// `@disable`d if any member type is non-copyable.
		@disable this(this);
	}

	version(SumTypeNoDefaultCtor) {
		@disable this();
	}

	static foreach (tid, T; Types) {
		static if (isAssignable!T) {
			/**
			 * Assigns a value to a `SumType`.
			 *
			 * Assigning to a `SumType` is `@system` if any of the
			 * `SumType`'s members contain pointers or references, since
			 * those members may be reachable through external references,
			 * and overwriting them could therefore lead to memory
			 * corruption.
			 *
			 * An individual assignment can be `@trusted` if the caller can
			 * guarantee that there are no outstanding references to $(I any)
			 * of the `SumType`'s members when the assignment occurs.
			 */
			void opAssign()(auto ref T rhs)
			{
				import core.lifetime: forward;
				import std.traits: hasIndirections, hasNested;
				import std.meta: Or = templateOr;

				enum mayContainPointers =
					anySatisfy!(Or!(hasIndirections, hasNested), Types);

				static if (mayContainPointers) {
					cast(void) () @system {}();
				}

				this.match!((ref value) {
					static if (hasElaborateDestructor!(typeof(value))) {
						destroy(value);
					}
				});

				mixin("Storage newStorage = { ", Storage.memberName!T, ": forward!rhs };");
				storage = newStorage;
				tag = tid;
			}
		}
	}

	static if (allSatisfy!(isAssignable, Types)) {
		static if (allSatisfy!(isCopyable, Types)) {
			/**
			 * Copies the value from another `SumType` into this one.
			 *
			 * See the value-assignment overload for details on `@safe`ty.
			 *
			 * Copy assignment is `@disable`d if any of `Types` is non-copyable.
			 */
			void opAssign(ref SumType rhs)
			{
				rhs.match!((ref value) { this = value; });
			}
		} else {
			@disable void opAssign(ref SumType rhs);
		}

		/**
		 * Moves the value from another `SumType` into this one.
		 *
		 * See the value-assignment overload for details on `@safe`ty.
		 */
		void opAssign(SumType rhs)
		{
			import core.lifetime: move;

			rhs.match!((ref value) { this = move(value); });
		}
	}

	/**
	 * Compares two `SumType`s for equality.
	 *
	 * Two `SumType`s are equal if they are the same kind of `SumType`, they
	 * contain values of the same type, and those values are equal.
	 */
	bool opEquals(const SumType rhs) const {
		return this.match!((ref value) {
			return rhs.match!((ref rhsValue) {
				static if (is(typeof(value) == typeof(rhsValue))) {
					return value == rhsValue;
				} else {
					return false;
				}
			});
		});
	}

	// Workaround for dlang issue 19407
	static if (__traits(compiles, anySatisfy!(hasElaborateDestructor, Types))) {
		// If possible, include the destructor only when it's needed
		private enum includeDtor = anySatisfy!(hasElaborateDestructor, Types);
	} else {
		// If we can't tell, always include it, even when it does nothing
		private enum includeDtor = true;
	}

	static if (includeDtor) {
		/// Calls the destructor of the `SumType`'s current value.
		~this()
		{
			this.match!((ref value) {
				static if (hasElaborateDestructor!(typeof(value))) {
					destroy(value);
				}
			});
		}
	}

	invariant {
		this.match!((ref value) {
			static if (is(typeof(value) == class)) {
				if (value !is null) {
					assert(value);
				}
			} else static if (is(typeof(value) == struct)) {
				assert(&value);
			}
		});
	}

	static if (allSatisfy!(isCopyable, Types)) {
		/**
		 * Returns a string representation of a `SumType`'s value.
		 *
		 * Not available when compiled with `-betterC`.
		 */
		version (D_BetterC) {} else
		string toString(this T)() {
			import std.conv: text;
			return this.match!((auto ref value) {
				return value.text;
			});
		}
	}
}

// Construction
@safe unittest {
	alias MySum = SumType!(int, float);

	assert(__traits(compiles, MySum(42)));
	assert(__traits(compiles, MySum(3.14)));
}

// Assignment
@safe unittest {
	alias MySum = SumType!(int, float);

	MySum x = MySum(42);

	assert(__traits(compiles, x = 3.14));
}

// Self assignment
@safe unittest {
	alias MySum = SumType!(int, float);

	MySum x = MySum(42);
	MySum y = MySum(3.14);

	assert(__traits(compiles, y = x));
}

// Equality
@safe unittest {
	alias MySum = SumType!(int, float);

	MySum x = MySum(123);
	MySum y = MySum(123);
	MySum z = MySum(456);
	MySum w = MySum(123.0);
	MySum v = MySum(456.0);

	assert(x == y);
	assert(x != z);
	assert(x != w);
	assert(x != v);
}

// Imported types
@safe unittest {
	import std.typecons: Tuple;

	assert(__traits(compiles, {
		alias MySum = SumType!(Tuple!(int, int));
	}));
}

// const and immutable types
@safe unittest {
	assert(__traits(compiles, {
		alias MySum = SumType!(const(int[]), immutable(float[]));
	}));
}

// Works alongside Algebraic
version (D_BetterC) {} else
@safe unittest {
	import std.variant;

	alias Bar = Algebraic!(This*);

	assert(is(Bar.AllowedTypes[0] == Bar*));
}

// Types with destructors and postblits
@system unittest {
	int copies;

	static struct Test
	{
		bool initialized = false;
		int* copiesPtr;

		this(this) { (*copiesPtr)++; }
		~this() { if (initialized) (*copiesPtr)--; }
	}

	alias MySum = SumType!(int, Test);

	Test t = Test(true, &copies);

	{
		MySum x = t;
		assert(copies == 1);
	}
	assert(copies == 0);

	{
		MySum x = 456;
		assert(copies == 0);
	}
	assert(copies == 0);

	{
		MySum x = t;
		assert(copies == 1);
		x = 456;
		assert(copies == 0);
	}

	{
		MySum x = 456;
		assert(copies == 0);
		x = t;
		assert(copies == 1);
	}

	{
		MySum x = t;
		MySum y = x;
		assert(copies == 2);
	}

	{
		MySum x = t;
		MySum y;
		y = x;
		assert(copies == 2);
	}
}

// Doesn't destroy reference types
version (D_BetterC) {} else
@system unittest {
	bool destroyed;

	class C
	{
		~this()
		{
			destroyed = true;
		}
	}

	struct S
	{
		~this() {}
	}

	alias MySum = SumType!(S, C);

	C c = new C();
	{
		MySum x = c;
		destroyed = false;
	}
	assert(!destroyed);

	{
		MySum x = c;
		destroyed = false;
		x = S();
		assert(!destroyed);
	}
}

// Types with @disable this()
@safe unittest {
	static struct NoInit
	{
		@disable this();
	}

	alias MySum = SumType!(NoInit, int);

	assert(!__traits(compiles, MySum()));
	assert(__traits(compiles, MySum(42)));
}

// const SumTypes
@safe unittest {
	assert(__traits(compiles,
		const(SumType!(int[]))([1, 2, 3])
	));
}

// Equality of const SumTypes
@safe unittest {
	alias MySum = SumType!int;

	assert(__traits(compiles,
		const(MySum)(123) == const(MySum)(456)
	));
}

// Compares reference types using value equality
@safe unittest {
	import std.array: staticArray;

	static struct Field {}
	static struct Struct { Field[] fields; }
	alias MySum = SumType!Struct;

	static arr1 = staticArray([Field()]);
	static arr2 = staticArray([Field()]);

	auto a = MySum(Struct(arr1[]));
	auto b = MySum(Struct(arr2[]));

	assert(a == b);
}

// toString
version (D_BetterC) {} else
@safe unittest {
	import std.conv: text;

	static struct Int { int i; }
	static struct Double { double d; }
	alias Sum = SumType!(Int, Double);

	assert(Sum(Int(42)).text == Int(42).text, Sum(Int(42)).text);
	assert(Sum(Double(33.3)).text == Double(33.3).text, Sum(Double(33.3)).text);
	assert((const(Sum)(Int(42))).text == (const(Int)(42)).text, (const(Sum)(Int(42))).text);
}

// Stale pointers
version (D_BetterC) {} else
@system unittest {
	alias MySum = SumType!(ubyte, void*[2]);

	MySum x = [null, cast(void*) 0x12345678];
	void** p = &x.get!(void*[2])[1];
	x = ubyte(123);

	assert(*p != cast(void*) 0x12345678);
}

// Exception-safe assignment
version (D_BetterC) {} else
@safe unittest {
	static struct A
	{
		int value = 123;
	}

	static struct B
	{
		int value = 456;
		this(this) { throw new Exception("oops"); }
	}

	alias MySum = SumType!(A, B);

	MySum x;
	try {
		x = B();
	} catch (Exception e) {}

	assert(
		(x.tag == 0 && x.get!A.value == 123) ||
		(x.tag == 1 && x.get!B.value == 456)
	);
}

// Types with @disable this(this)
@safe unittest {
	import std.algorithm.mutation: move;

	static struct NoCopy
	{
		@disable this(this);
	}

	alias MySum = SumType!NoCopy;

	NoCopy lval = NoCopy();

	MySum x = NoCopy();
	MySum y = NoCopy();

	assert(__traits(compiles, SumType!NoCopy(NoCopy())));
	assert(!__traits(compiles, SumType!NoCopy(lval)));

	assert(__traits(compiles, y = NoCopy()));
	assert(__traits(compiles, y = move(x)));
	assert(!__traits(compiles, y = lval));
	assert(!__traits(compiles, y = x));
}

// Github issue #22
version (D_BetterC) {} else
@safe unittest {
	import std.typecons;
	assert(__traits(compiles, {
		static struct A {
			SumType!(Nullable!int) a = Nullable!int.init;
		}
	}));
}

// Static arrays of structs with postblits
version (D_BetterC) {} else
@safe unittest {
	static struct S
	{
		int n;
		this(this) { n++; }
	}

	assert(__traits(compiles, SumType!(S[1])()));

	SumType!(S[1]) x = [S(0)];
	SumType!(S[1]) y = x;

	auto xval = x.get!(S[1])[0].n;
	auto yval = y.get!(S[1])[0].n;

	assert(xval != yval);
}

// Replacement does not happen inside SumType
version (D_BetterC) {} else
@safe unittest {
	import std.typecons : Tuple;
	alias A = Tuple!(This*,SumType!(This*))[SumType!(This*,string)[This]];
	alias TR = ReplaceTypeUnless!(isSumType, This, int, A);
	static assert(is(TR == Tuple!(int*,SumType!(This*))[SumType!(This*, string)[int]]));
}

// Supports nested self-referential SumTypes
@safe unittest {
	import std.typecons : Tuple, Flag;
	alias Nat = SumType!(Flag!"0", Tuple!(This*));
	static assert(__traits(compiles, SumType!(Nat)));
	static assert(__traits(compiles, SumType!(Nat*, Tuple!(This*, This*))));
}

// Doesn't call @system postblits in @safe code
@safe unittest {
	static struct SystemCopy { @system this(this) {} }
	SystemCopy original;

	assert(!__traits(compiles, () @safe {
		SumType!SystemCopy copy = original;
	}));

	assert(!__traits(compiles, () @safe {
		SumType!SystemCopy copy; copy = original;
	}));
}

// Doesn't overwrite pointers in @safe code
@safe unittest {
	alias MySum = SumType!(int*, int);

	MySum x;

	assert(!__traits(compiles, () @safe {
		x = 123;
	}));

	assert(!__traits(compiles, () @safe {
		x = MySum(123);
	}));
}

// Types with invariants
version (D_BetterC) {} else
@system unittest {
	import std.exception: assertThrown;
	import core.exception: AssertError;

	struct S
	{
		int i;
		invariant { assert(i >= 0); }
	}

	class C
	{
		int i;
		invariant { assert(i >= 0); }
	}

	SumType!S x;
	x.match!((ref v) { v.i = -1; });
	assertThrown!AssertError(assert(&x));

	SumType!C y = new C();
	y.match!((ref v) { v.i = -1; });
	assertThrown!AssertError(assert(&y));
}

// Calls value postblit on self-assignment
@safe unittest {
	static struct S
	{
		int n;
		this(this) { n++; }
	}

	SumType!S x = S();
	SumType!S y;
	y = x;

	auto xval = x.get!S.n;
	auto yval = y.get!S.n;

	assert(xval != yval);
}

// Github issue #29
@safe unittest {
	assert(__traits(compiles, () @safe {
		alias A = SumType!string;

		@safe A createA(string arg) {
		return A(arg);
		}

		@safe void test() {
		A a = createA("");
		}
	}));
}

version(none) {
	// Known bug; needs fix for dlang issue 19902
	// Types with copy constructors
	@safe unittest {
		static struct S
		{
			int n;
			this(ref return scope inout S other) inout { n++; }
		}

		SumType!S x = S();
		SumType!S y = x;

		auto xval = x.get!S.n;
		auto yval = y.get!S.n;

		assert(xval != yval);
	}
}

version(none) {
	// Known bug; needs fix for dlang issue 19458
	// Types with disabled opEquals
	@safe unittest {
		static struct S
		{
			@disable bool opEquals(const S rhs) const;
		}

		assert(__traits(compiles, SumType!S(S())));
	}
}

version(none) {
	// Known bug; needs fix for dlang issue 19458
	@safe unittest {
		static struct S
		{
			int i;
			bool opEquals(S rhs) { return i == rhs.i; }
		}

		assert(__traits(compiles, SumType!S(S(123))));
	}
}

/// True if `T` is an instance of `SumType`, otherwise false.
enum isSumType(T) = is(T == SumType!Args, Args...);

unittest {
	static struct Wrapper
	{
		SumType!int s;
		alias s this;
	}

	assert(isSumType!(SumType!int));
	assert(!isSumType!Wrapper);
}

/**
 * Calls a type-appropriate function with the value held in a [SumType].
 *
 * For each possible type the [SumType] can hold, the given handlers are
 * checked, in order, to see whether they accept a single argument of that type.
 * The first one that does is chosen as the match for that type.
 *
 * Every type must have a matching handler, and every handler must match at
 * least one type. This is enforced at compile time.
 *
 * Handlers may be functions, delegates, or objects with opCall overloads. If a
 * function with more than one overload is given as a handler, all of the
 * overloads are considered as potential matches.
 *
 * Templated handlers are also accepted, and will match any type for which they
 * can be [implicitly instantiated](https://dlang.org/glossary.html#ifti). See
 * [sumtype#introspection-based-matching|"Introspection-based matching"] for an
 * example of templated handler usage.
 *
 * Returns:
 *   The value returned from the handler that matches the currently-held type.
 *
 * See_Also: `std.variant.visit`
 */
template match(handlers...)
{
	import std.typecons: Yes;

	/**
	 * The actual `match` function.
	 *
	 * Params:
	 *   self = A [SumType] object
	 */
	auto match(Self)(auto ref Self self)
		if (is(Self : SumType!TypeArgs, TypeArgs...))
	{
		return self.matchImpl!(Yes.exhaustive, handlers);
	}
}

/**
 * Attempts to call a type-appropriate function with the value held in a
 * [SumType], and throws on failure.
 *
 * Matches are chosen using the same rules as [match], but are not required to
 * be exhaustive—in other words, a type is allowed to have no matching handler.
 * If a type without a handler is encountered at runtime, a [MatchException]
 * is thrown.
 *
 * Not available when compiled with `-betterC`.
 *
 * Returns:
 *   The value returned from the handler that matches the currently-held type,
 *   if a handler was given for that type.
 *
 * Throws:
 *   [MatchException], if the currently-held type has no matching handler.
 *
 * See_Also: `std.variant.tryVisit`
 */
version (D_Exceptions)
template tryMatch(handlers...)
{
	import std.typecons: No;

	/**
	 * The actual `tryMatch` function.
	 *
	 * Params:
	 *   self = A [SumType] object
	 */
	auto tryMatch(Self)(auto ref Self self)
		if (is(Self : SumType!TypeArgs, TypeArgs...))
	{
		return self.matchImpl!(No.exhaustive, handlers);
	}
}

/**
 * Thrown by [tryMatch] when an unhandled type is encountered.
 *
 * Not available when compiled with `-betterC`.
 */
version (D_Exceptions)
class MatchException : Exception
{
	pure @safe @nogc nothrow
	this(string msg, string file = __FILE__, size_t line = __LINE__)
	{
		super(msg, file, line);
	}
}

/**
 * True if `handler` is a potential match for `T`, otherwise false.
 *
 * See the documentation for [match] for a full explanation of how matches are
 * chosen.
 */
enum bool canMatch(alias handler, T) = is(typeof((T arg) { handler(arg); }));

// Includes all overloads of the given handler
@safe unittest {
	static struct OverloadSet
	{
		static void fun(int n) {}
		static void fun(double d) {}
	}

	assert(canMatch!(OverloadSet.fun, int));
	assert(canMatch!(OverloadSet.fun, double));
}

import std.typecons: Flag;

private template matchImpl(Flag!"exhaustive" exhaustive, handlers...)
{
	auto matchImpl(Self)(auto ref Self self)
		if (is(Self : SumType!TypeArgs, TypeArgs...))
	{
		alias Types = self.Types;
		enum noMatch = size_t.max;

		enum matches = () {
			size_t[Types.length] matches;

			// Workaround for dlang issue 19561
			foreach (ref match; matches) {
				match = noMatch;
			}

			static foreach (tid, T; Types) {
				static foreach (hid, handler; handlers) {
					static if (canMatch!(handler, typeof(self.get!T()))) {
						if (matches[tid] == noMatch) {
							matches[tid] = hid;
						}
					}
				}
			}

			return matches;
		}();

		import std.algorithm.searching: canFind;

		// Check for unreachable handlers
		static foreach (hid, handler; handlers) {
			static assert(matches[].canFind(hid),
				"handler `" ~ __traits(identifier, handler) ~ "` " ~
				"of type `" ~ ( __traits(isTemplate, handler)
					? "template"
					: typeof(handler).stringof
				) ~ "` " ~
				"never matches"
			);
		}

		// Workaround for dlang issue 19993
		static foreach (size_t hid, handler; handlers) {
			mixin("alias handler", hid, " = handler;");
		}

		final switch (self.tag) {
			static foreach (tid, T; Types) {
				case tid:
					static if (matches[tid] != noMatch) {
						return mixin("handler", matches[tid])(self.get!T);
					} else {
						static if(exhaustive) {
							static assert(false,
								"No matching handler for type `" ~ T.stringof ~ "`");
						} else {
							throw new MatchException(
								"No matching handler for type `" ~ T.stringof ~ "`");
						}
					}
			}
		}

		assert(false); // unreached
	}
}

// Matching
@safe unittest {
	alias MySum = SumType!(int, float);

	MySum x = MySum(42);
	MySum y = MySum(3.14);

	assert(x.match!((int v) => true, (float v) => false));
	assert(y.match!((int v) => false, (float v) => true));
}

// Missing handlers
@safe unittest {
	alias MySum = SumType!(int, float);

	MySum x = MySum(42);

	assert(!__traits(compiles, x.match!((int x) => true)));
	assert(!__traits(compiles, x.match!()));
}

// Handlers with qualified parameters
version (D_BetterC) {} else
@safe unittest {
	alias MySum = SumType!(int[], float[]);

	MySum x = MySum([1, 2, 3]);
	MySum y = MySum([1.0, 2.0, 3.0]);

	assert(x.match!((const(int[]) v) => true, (const(float[]) v) => false));
	assert(y.match!((const(int[]) v) => false, (const(float[]) v) => true));
}

// Handlers for qualified types
version (D_BetterC) {} else
@safe unittest {
	alias MySum = SumType!(immutable(int[]), immutable(float[]));

	MySum x = MySum([1, 2, 3]);

	assert(x.match!((immutable(int[]) v) => true, (immutable(float[]) v) => false));
	assert(x.match!((const(int[]) v) => true, (const(float[]) v) => false));
	// Tail-qualified parameters
	assert(x.match!((immutable(int)[] v) => true, (immutable(float)[] v) => false));
	assert(x.match!((const(int)[] v) => true, (const(float)[] v) => false));
	// Generic parameters
	assert(x.match!((immutable v) => true));
	assert(x.match!((const v) => true));
	// Unqualified parameters
	assert(!__traits(compiles,
		x.match!((int[] v) => true, (float[] v) => false)
	));
}

// Delegate handlers
version (D_BetterC) {} else
@safe unittest {
	alias MySum = SumType!(int, float);

	int answer = 42;
	MySum x = MySum(42);
	MySum y = MySum(3.14);

	assert(x.match!((int v) => v == answer, (float v) => v == answer));
	assert(!y.match!((int v) => v == answer, (float v) => v == answer));
}

version(unittest) {
	version(D_BetterC) {
		// std.math.approxEqual depends on core.runtime.math, so use a
		// libc-based version for testing with -betterC
		@safe pure @nogc nothrow
		private bool approxEqual(double lhs, double rhs)
		{
			import core.stdc.math: fabs;

			return (lhs - rhs) < 1e-5;
		}
	} else {
		import std.math: approxEqual;
	}
}

// Generic handler
@safe unittest {
	alias MySum = SumType!(int, float);

	MySum x = MySum(42);
	MySum y = MySum(3.14);

	assert(x.match!(v => v*2) == 84);
	assert(y.match!(v => v*2).approxEqual(6.28));
}

// Fallback to generic handler
version (D_BetterC) {} else
@safe unittest {
	import std.conv: to;

	alias MySum = SumType!(int, float, string);

	MySum x = MySum(42);
	MySum y = MySum("42");

	assert(x.match!((string v) => v.to!int, v => v*2) == 84);
	assert(y.match!((string v) => v.to!int, v => v*2) == 42);
}

// Multiple non-overlapping generic handlers
@safe unittest {
	import std.array: staticArray;

	alias MySum = SumType!(int, float, int[], char[]);

	static ints = staticArray([1, 2, 3]);
	static chars = staticArray(['a', 'b', 'c']);

	MySum x = MySum(42);
	MySum y = MySum(3.14);
	MySum z = MySum(ints[]);
	MySum w = MySum(chars[]);

	assert(x.match!(v => v*2, v => v.length) == 84);
	assert(y.match!(v => v*2, v => v.length).approxEqual(6.28));
	assert(w.match!(v => v*2, v => v.length) == 3);
	assert(z.match!(v => v*2, v => v.length) == 3);
}

// Structural matching
@safe unittest {
	static struct S1 { int x; }
	static struct S2 { int y; }
	alias MySum = SumType!(S1, S2);

	MySum a = MySum(S1(0));
	MySum b = MySum(S2(0));

	assert(a.match!(s1 => s1.x + 1, s2 => s2.y - 1) == 1);
	assert(b.match!(s1 => s1.x + 1, s2 => s2.y - 1) == -1);
}

// Separate opCall handlers
@safe unittest {
	static struct IntHandler
	{
		bool opCall(int arg)
		{
			return true;
		}
	}

	static struct FloatHandler
	{
		bool opCall(float arg)
		{
			return false;
		}
	}

	alias MySum = SumType!(int, float);

	MySum x = MySum(42);
	MySum y = MySum(3.14);

	assert(x.match!(IntHandler.init, FloatHandler.init));
	assert(!y.match!(IntHandler.init, FloatHandler.init));
}

// Compound opCall handler
@safe unittest {
	static struct CompoundHandler
	{
		bool opCall(int arg)
		{
			return true;
		}

		bool opCall(float arg)
		{
			return false;
		}
	}

	alias MySum = SumType!(int, float);

	MySum x = MySum(42);
	MySum y = MySum(3.14);

	assert(x.match!(CompoundHandler.init));
	assert(!y.match!(CompoundHandler.init));
}

// Ordered matching
@safe unittest {
	alias MySum = SumType!(int, float);

	MySum x = MySum(42);

	assert(x.match!((int v) => true, v => false));
}

// Non-exhaustive matching
version (D_Exceptions)
@system unittest {
	import std.exception: assertThrown, assertNotThrown;

	alias MySum = SumType!(int, float);

	MySum x = MySum(42);
	MySum y = MySum(3.14);

	assertNotThrown!MatchException(x.tryMatch!((int n) => true));
	assertThrown!MatchException(y.tryMatch!((int n) => true));
}

// Non-exhaustive matching in @safe code
version (D_Exceptions)
@safe unittest {
	SumType!(int, float) x;

	assert(__traits(compiles,
		x.tryMatch!(
			(int n) => n + 1,
		)
	));

}

// Handlers with ref parameters
@safe unittest {
	import std.meta: staticIndexOf;

	alias Value = SumType!(long, double);

	auto value = Value(3.14);

	value.match!(
		(long) {},
		(ref double d) { d *= 2; }
	);

	assert(value.get!double.approxEqual(6.28));
}

// Unreachable handlers
@safe unittest {
	alias MySum = SumType!(int, string);

	MySum s;

	assert(!__traits(compiles,
		s.match!(
			(int _) => 0,
			(string _) => 1,
			(double _) => 2
		)
	));

	assert(!__traits(compiles,
		s.match!(
			_ => 0,
			(int _) => 1
		)
	));
}

// Unsafe handlers
unittest {
	SumType!int x;
	alias unsafeHandler = (int x) @system { return; };

	assert(!__traits(compiles, () @safe {
		x.match!unsafeHandler;
	}));

	assert(__traits(compiles, () @system {
		return x.match!unsafeHandler;
	}));
}

// Overloaded handlers
@safe unittest {
	static struct OverloadSet
	{
		static string fun(int i) { return "int"; }
		static string fun(double d) { return "double"; }
	}

	alias MySum = SumType!(int, double);

	MySum a = 42;
	MySum b = 3.14;

	assert(a.match!(OverloadSet.fun) == "int");
	assert(b.match!(OverloadSet.fun) == "double");
}

// Overload sets with ref arguments
@safe unittest {
	static struct OverloadSet
	{
		static void fun(ref int i) { i = 42; }
		static void fun(ref double d) { d = 3.14; }
	}

	alias MySum = SumType!(int, double);

	MySum x = 0;
	MySum y = 0.0;

	x.match!(OverloadSet.fun);
	y.match!(OverloadSet.fun);

	assert(x.match!((value) => is(typeof(value) == int) && value == 42));
	assert(y.match!((value) => is(typeof(value) == double) && value == 3.14));
}

// Overload sets with templates
@safe unittest {
	import std.traits: isNumeric;

	static struct OverloadSet
	{
		static string fun(string arg)
		{
			return "string";
		}

		static string fun(T)(T arg)
			if (isNumeric!T)
		{
			return "numeric";
		}
	}

	alias MySum = SumType!(int, string);

	MySum x = 123;
	MySum y = "hello";

	assert(x.match!(OverloadSet.fun) == "numeric");
	assert(y.match!(OverloadSet.fun) == "string");
}

// Github issue #24
@safe unittest {
	assert(__traits(compiles, () @nogc {
		int acc = 0;
		SumType!int(1).match!((int x) => acc += x);
	}));
}

// Github issue #31
@safe unittest {
	assert(__traits(compiles, () @nogc {
		int acc = 0;

		SumType!(int, string)(1).match!(
			(int x) => acc += x,
			(string _) => 0,
		);
	}));
}

// Types that `alias this` a SumType
@safe unittest {
	static struct A {}
	static struct B {}
	static struct D { SumType!(A, B) value; alias value this; }

	assert(__traits(compiles, D().match!(_ => true)));
}

version(SumTypeTestBetterC) {
	version(D_BetterC) {}
	else static assert(false, "Must compile with -betterC to run betterC tests");

	version(unittest) {}
	else static assert(false, "Must compile with -unittest to run betterC tests");

	extern(C) int main()
	{
		import core.stdc.stdio: puts;
		static foreach (test; __traits(getUnitTests, mixin(__MODULE__))) {
			test();
		}

		puts("All unit tests have been run successfully.");
		return 0;
	}
}

static if (__traits(compiles, { import std.typecons: ReplaceTypeUnless; })) {
	import std.typecons: ReplaceTypeUnless;
} else {
/**
 * Replaces all occurrences of `From` into `To`, in one or more types `T`
 * whenever the predicate applied to `T` evaluates to false. For example, $(D
 * ReplaceTypeUnless!(isBoolean, int, uint, Tuple!(int, float)[string])) yields
 * $(D Tuple!(uint, float)[string]) while $(D ReplaceTypeUnless!(isTuple, int,
 * string, Tuple!(int, bool)[int])) yields $(D Tuple!(int, bool)[string]). The
 * types in which replacement is performed may be arbitrarily complex,
 * including qualifiers, built-in type constructors (pointers, arrays,
 * associative arrays, functions, and delegates), and template instantiations;
 * replacement proceeds transitively through the type definition.  However,
 * member types in `struct`s or `class`es are not replaced because there are no
 * ways to express the types resulting after replacement.
 *
 * This is an advanced type manipulation necessary e.g. for replacing the
 * placeholder type `This` in $(REF SumType).
 *
 * This template is a generalised version of the one in
 * https://github.com/dlang/phobos/blob/d1c8fb0b69dc12669554d5cb96d3045753549619/std/typecons.d
 *
 * Returns: `ReplaceTypeUnless` aliases itself to the type(s) that result after
 * replacement.
*/
private template ReplaceTypeUnless(alias Pred, From, To, T...)
{
	import std.meta;

	static if (T.length == 1)
	{
		static if (Pred!(T[0]))
			alias ReplaceTypeUnless = T[0];
		else static if (is(T[0] == From))
			alias ReplaceTypeUnless = To;
		else static if (is(T[0] == const(U), U))
			alias ReplaceTypeUnless = const(ReplaceTypeUnless!(Pred, From, To, U));
		else static if (is(T[0] == immutable(U), U))
			alias ReplaceTypeUnless = immutable(ReplaceTypeUnless!(Pred, From, To, U));
		else static if (is(T[0] == shared(U), U))
			alias ReplaceTypeUnless = shared(ReplaceTypeUnless!(Pred, From, To, U));
		else static if (is(T[0] == U*, U))
		{
			static if (is(U == function))
				alias ReplaceTypeUnless = replaceTypeInFunctionTypeUnless!(Pred, From, To, T[0]);
			else
				alias ReplaceTypeUnless = ReplaceTypeUnless!(Pred, From, To, U)*;
		}
		else static if (is(T[0] == delegate))
		{
			alias ReplaceTypeUnless = replaceTypeInFunctionTypeUnless!(Pred, From, To, T[0]);
		}
		else static if (is(T[0] == function))
		{
			static assert(0, "Function types not supported," ~
				" use a function pointer type instead of " ~ T[0].stringof);
		}
		else static if (is(T[0] == U!V, alias U, V...))
		{
			template replaceTemplateArgs(T...)
			{
				static if (is(typeof(T[0])))	// template argument is value or symbol
					enum replaceTemplateArgs = T[0];
				else
					alias replaceTemplateArgs = ReplaceTypeUnless!(Pred, From, To, T[0]);
			}
			alias ReplaceTypeUnless = U!(staticMap!(replaceTemplateArgs, V));
		}
		else static if (is(T[0] == struct))
			// don't match with alias this struct below (Issue 15168)
			alias ReplaceTypeUnless = T[0];
		else static if (is(T[0] == U[], U))
			alias ReplaceTypeUnless = ReplaceTypeUnless!(Pred, From, To, U)[];
		else static if (is(T[0] == U[n], U, size_t n))
			alias ReplaceTypeUnless = ReplaceTypeUnless!(Pred, From, To, U)[n];
		else static if (is(T[0] == U[V], U, V))
			alias ReplaceTypeUnless =
				ReplaceTypeUnless!(Pred, From, To, U)[ReplaceTypeUnless!(Pred, From, To, V)];
		else
			alias ReplaceTypeUnless = T[0];
	}
	else static if (T.length > 1)
	{
		alias ReplaceTypeUnless = AliasSeq!(ReplaceTypeUnless!(Pred, From, To, T[0]),
			ReplaceTypeUnless!(Pred, From, To, T[1 .. $]));
	}
	else
	{
		alias ReplaceTypeUnless = AliasSeq!();
	}
}


private template replaceTypeInFunctionTypeUnless(alias Pred, From, To, fun)
{
	import std.traits;
	import std.meta: AliasSeq;

	alias RX = ReplaceTypeUnless!(Pred, From, To, ReturnType!fun);
	alias PX = AliasSeq!(ReplaceTypeUnless!(Pred, From, To, Parameters!fun));
	// Wrapping with AliasSeq is neccesary because ReplaceType doesn't return
	// tuple if Parameters!fun.length == 1

	string gen()
	{
		enum  linkage = functionLinkage!fun;
		alias attributes = functionAttributes!fun;
		enum  variadicStyle = variadicFunctionStyle!fun;
		alias storageClasses = ParameterStorageClassTuple!fun;

		string result;

		result ~= "extern(" ~ linkage ~ ") ";
		static if (attributes & FunctionAttribute.ref_)
		{
			result ~= "ref ";
		}

		result ~= "RX";
		static if (is(fun == delegate))
			result ~= " delegate";
		else
			result ~= " function";

		result ~= "(";
		static foreach (i; 0 .. PX.length)
		{
			if (i)
				result ~= ", ";
			if (storageClasses[i] & ParameterStorageClass.scope_)
				result ~= "scope ";
			if (storageClasses[i] & ParameterStorageClass.out_)
				result ~= "out ";
			if (storageClasses[i] & ParameterStorageClass.ref_)
				result ~= "ref ";
			if (storageClasses[i] & ParameterStorageClass.lazy_)
				result ~= "lazy ";
			if (storageClasses[i] & ParameterStorageClass.return_)
				result ~= "return ";

			result ~= "PX[" ~ i.stringof ~ "]";
		}
		static if (variadicStyle == Variadic.typesafe)
			result ~= " ...";
		else static if (variadicStyle != Variadic.no)
			result ~= ", ...";
		result ~= ")";

		static if (attributes & FunctionAttribute.pure_)
			result ~= " pure";
		static if (attributes & FunctionAttribute.nothrow_)
			result ~= " nothrow";
		static if (attributes & FunctionAttribute.property)
			result ~= " @property";
		static if (attributes & FunctionAttribute.trusted)
			result ~= " @trusted";
		static if (attributes & FunctionAttribute.safe)
			result ~= " @safe";
		static if (attributes & FunctionAttribute.nogc)
			result ~= " @nogc";
		static if (attributes & FunctionAttribute.system)
			result ~= " @system";
		static if (attributes & FunctionAttribute.const_)
			result ~= " const";
		static if (attributes & FunctionAttribute.immutable_)
			result ~= " immutable";
		static if (attributes & FunctionAttribute.inout_)
			result ~= " inout";
		static if (attributes & FunctionAttribute.shared_)
			result ~= " shared";
		static if (attributes & FunctionAttribute.return_)
			result ~= " return";

		return result;
	}

	mixin("alias replaceTypeInFunctionTypeUnless = " ~ gen() ~ ";");
}

// Adapted from:
// https://github.com/dlang/phobos/blob/d1c8fb0b69dc12669554d5cb96d3045753549619/std/typecons.d
@safe unittest {
	import std.typecons: Tuple;
	enum False(T) = false;
	static assert(
		is(ReplaceTypeUnless!(False, int, string, int[]) == string[]) &&
		is(ReplaceTypeUnless!(False, int, string, int[int]) == string[string]) &&
		is(ReplaceTypeUnless!(False, int, string, const(int)[]) == const(string)[]) &&
		is(ReplaceTypeUnless!(False, int, string, Tuple!(int[], float))
			== Tuple!(string[], float))
	);
}

// Adapted from:
// https://github.com/dlang/phobos/blob/d1c8fb0b69dc12669554d5cb96d3045753549619/std/typecons.d
version (D_BetterC) {} else
@safe unittest
{
	import std.typecons;

	enum False(T) = false;
	template Test(Ts...)
	{
		static if (Ts.length)
		{
			static assert(is(ReplaceTypeUnless!(False, Ts[0], Ts[1], Ts[2]) == Ts[3]),
				"ReplaceTypeUnless!(False, "~Ts[0].stringof~", "~Ts[1].stringof~", "
					~Ts[2].stringof~") == "
					~ReplaceTypeUnless!(False, Ts[0], Ts[1], Ts[2]).stringof);
			alias Test = Test!(Ts[4 .. $]);
		}
		else alias Test = void;
	}

	import core.stdc.stdio;
	alias RefFun1 = ref int function(float, long);
	alias RefFun2 = ref float function(float, long);
	extern(C) int printf(const char*, ...) nothrow @nogc @system;
	extern(C) float floatPrintf(const char*, ...) nothrow @nogc @system;
	int func(float);

	int x;
	struct S1 { void foo() { x = 1; } }
	struct S2 { void bar() { x = 2; } }

	alias Pass = Test!(
		int, float, typeof(&func), float delegate(float),
		int, float, typeof(&printf), typeof(&floatPrintf),
		int, float, int function(out long, ...),
			float function(out long, ...),
		int, float, int function(ref float, long),
			float function(ref float, long),
		int, float, int function(ref int, long),
			float function(ref float, long),
		int, float, int function(out int, long),
			float function(out float, long),
		int, float, int function(lazy int, long),
			float function(lazy float, long),
		int, float, int function(out long, ref const int),
			float function(out long, ref const float),
		int, int, int, int,
		int, float, int, float,
		int, float, const int, const float,
		int, float, immutable int, immutable float,
		int, float, shared int, shared float,
		int, float, int*, float*,
		int, float, const(int)*, const(float)*,
		int, float, const(int*), const(float*),
		const(int)*, float, const(int*), const(float),
		int*, float, const(int)*, const(int)*,
		int, float, int[], float[],
		int, float, int[42], float[42],
		int, float, const(int)[42], const(float)[42],
		int, float, const(int[42]), const(float[42]),
		int, float, int[int], float[float],
		int, float, int[double], float[double],
		int, float, double[int], double[float],
		int, float, int function(float, long), float function(float, long),
		int, float, int function(float), float function(float),
		int, float, int function(float, int), float function(float, float),
		int, float, int delegate(float, long), float delegate(float, long),
		int, float, int delegate(float), float delegate(float),
		int, float, int delegate(float, int), float delegate(float, float),
		int, float, Unique!int, Unique!float,
		int, float, Tuple!(float, int), Tuple!(float, float),
		int, float, RefFun1, RefFun2,
		S1, S2,
			S1[1][][S1]* function(),
			S2[1][][S2]* function(),
		int, string,
			   int[3] function(   int[] arr,	int[2] ...) pure @trusted,
			string[3] function(string[] arr, string[2] ...) pure @trusted,
	);

	// Dlang Bugzilla 15168
	static struct T1 { string s; alias s this; }
	static struct T2 { char[10] s; alias s this; }
	static struct T3 { string[string] s; alias s this; }
	alias Pass2 = Test!(
		ubyte, ubyte, T1, T1,
		ubyte, ubyte, T2, T2,
		ubyte, ubyte, T3, T3,
	);
}

version (D_BetterC) {} else
@safe unittest // Dlang Bugzilla 17116
{
	enum False(T) = false;
	alias ConstDg = void delegate(float) const;
	alias B = void delegate(int) const;
	alias A = ReplaceTypeUnless!(False, float, int, ConstDg);
	static assert(is(B == A));
}

// Github issue #27
@safe unittest
{
	enum False(T) = false;
	struct A(T) {}
	struct B { A!int a; alias a this; }
	static assert(is(ReplaceTypeUnless!(False, void, void, B) == B));
}
}
