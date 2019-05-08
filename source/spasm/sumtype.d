/++
A sum type for modern D.
This module provides [SumType], an alternative to `std.variant.Algebraic` with
[match|improved pattern-matching], full attribute correctness (`pure`, `@safe`,
`@nogc`, and `nothrow` are inferred whenever possible), and no dependency on
runtime type information (`TypeInfo`).
License: MIT
Authors: Paul Backus, Atila Neves
+/
module spasm.sumtype;

/// $(H3 Basic usage)
@safe unittest {
    import std.math: approxEqual;

    struct Fahrenheit { double degrees; }
    struct Celsius { double degrees; }
    struct Kelvin { double degrees; }

    alias Temperature = SumType!(Fahrenheit, Celsius, Kelvin);

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

    Temperature t1 = Fahrenheit(98.6);
    Temperature t2 = Celsius(100);
    Temperature t3 = Kelvin(273);

    assert(toFahrenheit(t1).degrees.approxEqual(98.6));
    assert(toFahrenheit(t2).degrees.approxEqual(212));
    assert(toFahrenheit(t3).degrees.approxEqual(32));
}

/** $(H3 Structural matching)
 *
 * In the `length` and `horiz` functions below, the handlers for `match` do not
 * specify the types of their arguments. Instead, matching is done based on how
 * the argument is used in the body of the handler: any type with `x` and `y`
 * properties will be matched by the `rect` handlers, and any type with `r` and
 * `theta` properties will be matched by the `polar` handlers.
 */
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

import std.meta: NoDuplicates;

/**
 * A tagged union that can hold a single value from any of a specified set of
 * types.
 *
 * The value in a `SumType` can be operated on using [match|pattern matching].
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
 * To avoid ambiguity, duplicate types are not allowed (but see the
 * [sumtype#basic-usage|"basic usage" example] for a workaround).
 *
 * Bugs:
 *   Types with non-`const` overloads of `opEquals` cannot be stored in a
 *   `SumType`.
 *
 * See_Also: `std.variant.Algebraic`
 */
struct SumType(TypeArgs...)
	if (is(NoDuplicates!TypeArgs == TypeArgs)
	    && TypeArgs.length > 0
	    && TypeArgs.length < size_t.max)
{
	import std.meta: AliasSeq;
	import std.typecons: ReplaceType;

	/// The types a `SumType` can hold.
	alias Types = TypeArgs;

private:

	import std.meta: AliasSeq, Filter;

	enum bool canHoldTag(T) = Types.length <= T.max;
	alias unsignedInts = AliasSeq!(ubyte, ushort, uint, ulong);

	alias Tag = Filter!(canHoldTag, unsignedInts)[0];

	union Storage
	{
		Types values;

		static foreach (i, T; Types) {
			@trusted
			this(inout(T) val) inout
			{
				values[i] = val;
			}
		}
	}

	Tag tag;
	Storage storage;

	@trusted
	ref inout(T) trustedGet(T)() inout
	{
		import std.meta: staticIndexOf;

		enum tid = staticIndexOf!(T, Types);
		assert(tag == tid);
		return storage.values[tid];
	}

public:

	static foreach (i, T; Types) {
		/// Constructs a `SumType` holding a specific value.
		this(inout(T) val) inout
		{
			tag = i;
			storage = inout(Storage)(val);
		}
	}

	version(SumTypeNoDefaultCtor) {
		@disable this();
	}

  auto as(T)() {
    import std.meta: staticIndexOf;
    import optional;
    enum tid = staticIndexOf!(T, Types);
    if (tid == tag) {
      return some(storage.values[tid]);
    }
    return no!T;
  }

  import std.traits: isAssignable;

	static foreach (i, T; Types) {
		static if (isAssignable!T) {
			/// Assigns a value to a `SumType`.
			void opAssign(T rhs)
			{
				import std.traits: hasElaborateDestructor;

				this.match!((ref value) {
					static if (hasElaborateDestructor!(typeof(value))) {
						destroy(value);
					}
				});

				tag = i;
				storage = Storage(rhs);
			}
		}
	}

	import std.meta: allSatisfy;
	import std.traits: isEqualityComparable;

	static if (allSatisfy!(isEqualityComparable, Types)) {
		/**
		 * Compares two `SumType`s for equality.
		 *
		 * Two `SumType`s are equal if they contain values of the same type,
		 * and those values are equal.
		 *
		 * Bugs:
		 *   Comparison of `SumType`s that contain a `const(This)[]`, either
		 *   directly or indirectly, will sometimes give the wrong result by
		 *   comparing the arrays for reference equality (`is`) instead of
		 *   value equality (`==`).
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
	} else {
		// Don't fall back to default (bitwise) equality
		@disable bool opEquals(const SumType rhs) const;
	}

	import std.meta: anySatisfy;
	import std.traits: hasElaborateCopyConstructor, hasElaborateDestructor;

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

	static if (anySatisfy!(hasElaborateCopyConstructor, Types)) {
		/// Calls the postblit of the `SumType`'s current value.
		this(this)
		{
			this.match!((ref value) {
				static if (hasElaborateCopyConstructor!(typeof(value))) {
					value.__xpostblit;
				}
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

// Types with destructors and postblits
@safe unittest {
	int copies;

	struct Test
	{
		this(this) { copies++; }
		~this() { copies--; }
	}

	alias MySum = SumType!(int, Test);

	Test t;

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
}

// Doesn't destroy reference types
@safe unittest {
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
	struct NoInit
	{
		@disable this();
	}

	alias MySum = SumType!(NoInit, int);

	assert(!__traits(compiles, MySum()));
	assert(__traits(compiles, MySum(42)));
}

// Types with .init values that violate their invariants
@system unittest {
	import core.exception: AssertError;
	import std.exception: assertNotThrown;

	// FeepingCreature's diabolical test case
	struct Evil
	{
		@disable this();
		~this() pure @safe { }
		this(int i) pure @safe { this.i = i; }
		void opAssign(Evil) { assert(false); }
		immutable int i;
		invariant { assert(i != 0); }
	}

	SumType!(Evil, int) x = 123;

	assertNotThrown!AssertError(x = Evil(456));
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
	struct Field {}
	struct Struct { Field[] fields; }
	alias MySum = SumType!Struct;

	auto a = MySum(Struct([Field()]));
	auto b = MySum(Struct([Field()]));

	assert(a == b);
}

version(none) {
	// Known bug; needs fix for dlang issue 19458
	@safe unittest {
		struct S
		{
			int i;
			bool opEquals(S rhs) { return i == rhs.i; }
		}

		assert(__traits(compiles, SumType!S(S(123))));
	}
}

/**
 * Calls a type-appropriate function with the value held in a [SumType].
 *
 * For each possible type the [SumType] can hold, the given handlers are
 * checked, in order, to see whether they accept a single argument of that type.
 * The first one that does is chosen as the match for that type.
 *
 * Implicit conversions are not taken into account, except between
 * differently-qualified versions of the same type. For example, a handler that
 * accepts a `long` will not match the type `int`, but a handler that accepts a
 * `const(int)[]` will match the type `immutable(int)[]`.
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
 * [sumtype#structural-matching|"Structural matching"] for an example of
 * templated handler usage.
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
 * Checks whether a handler can match a given type.
 *
 * See the documentation for [match] for a full explanation of how matches are
 * chosen.
 */
template canMatch(alias handler, T)
{
	private bool canMatchImpl()
	{
		import std.traits: hasMember, isCallable, isSomeFunction, Parameters;

		// immutable recursively overrides all other qualifiers, so the
		// right-hand side is true if and only if the two types are the
		// same up to qualifiers (i.e., they have the same structure).
		enum sameUpToQuals(T, U) = is(immutable(T) == immutable(U));

		bool result = false;

		static if (is(typeof({ T dummy = T.init; handler(dummy); }))) {
			// Regular handlers
			static if (isCallable!handler) {
				// Functions and delegates
				static if (isSomeFunction!handler) {
					static if (sameUpToQuals!(T, Parameters!handler[0])) {
						result = true;
					}
				// Objects with overloaded opCall
				} else static if (hasMember!(typeof(handler), "opCall")) {
					static foreach (overload; __traits(getOverloads, typeof(handler), "opCall")) {
						static if (sameUpToQuals!(T, Parameters!overload[0])) {
							result = true;
						}
					}
				}
			// Generic handlers
			} else {
				result = true;
			}
		}

		return result;
	}

	/// True if `handler` is a potential match for `T`, otherwise false.
	enum bool canMatch = canMatchImpl;
}

import std.traits: isFunction;

// An AliasSeq of a function's overloads
private template FunctionOverloads(alias fun)
	if (isFunction!fun)
{
	import std.meta: AliasSeq;

	alias FunctionOverloads = AliasSeq!(__traits(getOverloads,
		__traits(parent, fun), __traits(identifier, fun)
	));
}

// A handler with an opCall overload for each overload of fun
private template overloadHandler(alias fun)
	if (isFunction!fun)
{
	struct OverloadHandler
	{
		import std.traits: Parameters, ReturnType;

		static foreach(overload; FunctionOverloads!fun) {
			ReturnType!overload opCall(Parameters!overload args)
			{
				return overload(args);
			}
		}
	}

	enum overloadHandler = OverloadHandler.init;
}

// A handler that includes all overloads of the original handler, if applicable
private template overloadInclusiveHandler(alias handler)
{
	// Delegates and function pointers can't have overloads
	static if (isFunction!handler) {
		alias overloadInclusiveHandler = overloadHandler!handler;
	} else {
		alias overloadInclusiveHandler = handler;
	}
}

import std.typecons: Flag;

private template matchImpl(Flag!"exhaustive" exhaustive, handlers...)
{
	auto matchImpl(Self)(auto ref Self self)
		if (is(Self : SumType!TypeArgs, TypeArgs...))
	{
		import std.meta: staticMap;

		alias Types = self.Types;
		enum noMatch = size_t.max;

		alias allHandlers = staticMap!(overloadInclusiveHandler, handlers);

		pure size_t[Types.length] getHandlerIndices()
		{
			size_t[Types.length] indices;
			indices[] = noMatch;

			static foreach (tid, T; Types) {
				static foreach (hid, handler; allHandlers) {
					static if (canMatch!(handler, typeof(self.trustedGet!T()))) {
						if (indices[tid] == noMatch) {
							indices[tid] = hid;
						}
					}
				}
			}

			return indices;
		}

		enum handlerIndices = getHandlerIndices;

		final switch (self.tag) {
			static foreach (tid, T; Types) {
				case tid:
					static if (handlerIndices[tid] != noMatch) {
						return allHandlers[handlerIndices[tid]](self.trustedGet!T);
					} else {
            static assert(false,
                          "No matching handler for type `" ~ T.stringof ~ "`");
					}
			}
		}

		assert(false); // unreached

		import std.algorithm.searching: canFind;

		// Check for unreachable handlers
		static foreach (hid, handler; allHandlers) {
			static assert(handlerIndices[].canFind(hid),
				"handler `" ~ __traits(identifier, handler) ~ "` " ~
				"of type `" ~ typeof(handler).stringof ~ "` " ~
				"never matches"
			);
		}
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

// No implicit converstion
@safe unittest {
	alias MySum = SumType!(int, float);

	MySum x = MySum(42);

	assert(!__traits(compiles,
		x.match!((long v) => true, (float v) => false)
	));
}

// Handlers with qualified parameters
@safe unittest {
    alias MySum = SumType!(int[], float[]);

    MySum x = MySum([1, 2, 3]);
    MySum y = MySum([1.0, 2.0, 3.0]);

    assert(x.match!((const(int[]) v) => true, (const(float[]) v) => false));
    assert(y.match!((const(int[]) v) => false, (const(float[]) v) => true));
}

// Handlers for qualified types
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
@safe unittest {
	alias MySum = SumType!(int, float);

	int answer = 42;
	MySum x = MySum(42);
	MySum y = MySum(3.14);

	assert(x.match!((int v) => v == answer, (float v) => v == answer));
	assert(!y.match!((int v) => v == answer, (float v) => v == answer));
}

// Generic handler
@safe unittest {
	import std.math: approxEqual;

	alias MySum = SumType!(int, float);

	MySum x = MySum(42);
	MySum y = MySum(3.14);

	assert(x.match!(v => v*2) == 84);
	assert(y.match!(v => v*2).approxEqual(6.28));
}

// Fallback to generic handler
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
	import std.math: approxEqual;

	alias MySum = SumType!(int, float, int[], char[]);

	MySum x = MySum(42);
	MySum y = MySum(3.14);
	MySum z = MySum([1, 2, 3]);
	MySum w = MySum(['a', 'b', 'c']);

	assert(x.match!(v => v*2, v => v.length) == 84);
	assert(y.match!(v => v*2, v => v.length).approxEqual(6.28));
	assert(w.match!(v => v*2, v => v.length) == 3);
	assert(z.match!(v => v*2, v => v.length) == 3);
}

// Structural matching
@safe unittest {
	struct S1 { int x; }
	struct S2 { int y; }
	alias MySum = SumType!(S1, S2);

	MySum a = MySum(S1(0));
	MySum b = MySum(S2(0));

	assert(a.match!(s1 => s1.x + 1, s2 => s2.y - 1) == 1);
	assert(b.match!(s1 => s1.x + 1, s2 => s2.y - 1) == -1);
}

// Separate opCall handlers
@safe unittest {
	struct IntHandler
	{
		bool opCall(int arg)
		{
			return true;
		}
	}

	struct FloatHandler
	{
		bool opCall(float arg)
		{
			return false;
		}
	}

	alias MySum = SumType!(int, float);

	MySum x = MySum(42);
	MySum y = MySum(3.14);
	IntHandler handleInt;
	FloatHandler handleFloat;

	assert(x.match!(handleInt, handleFloat));
	assert(!y.match!(handleInt, handleFloat));
}

// Compound opCall handler
@safe unittest {
	struct CompoundHandler
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
	CompoundHandler handleBoth;

	assert(x.match!handleBoth);
	assert(!y.match!handleBoth);
}

// Ordered matching
@safe unittest {
	alias MySum = SumType!(int, float);

	MySum x = MySum(42);

	assert(x.match!((int v) => true, v => false));
}

// Handlers with ref parameters
@safe unittest {
	import std.math: approxEqual;
	import std.meta: staticIndexOf;

	alias Value = SumType!(long, double);

	auto value = Value(3.14);

	value.match!(
		(long) {},
		(ref double d) { d *= 2; }
	);

	assert(value.trustedGet!double.approxEqual(6.28));
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
	SumType!(int, char*) x;

	assert(!__traits(compiles, () @safe {
		x.match!(
			(ref int n) => &n,
			_ => null,
		);
	}));

	assert(__traits(compiles, () @system {
		return x.match!(
			(ref int n) => &n,
			_ => null
		);
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

// Overload sets that include SumType arguments
@safe unittest {
	alias Inner = SumType!(int, double);
	alias Outer = SumType!(Inner, string);

	static struct OverloadSet
	{
		@safe:
		static string fun(int i) { return "int"; }
		static string fun(double d) { return "double"; }
		static string fun(string s) { return "string"; }
		static string fun(Inner i) { return i.match!fun; }
		static string fun(Outer o) { return o.match!fun; }
	}

	Outer a = Inner(42);
	Outer b = Inner(3.14);
	Outer c = "foo";

	assert(OverloadSet.fun(a) == "int");
	assert(OverloadSet.fun(b) == "double");
	assert(OverloadSet.fun(c) == "string");
}
