module spasm.css;

pragma(LDC_no_moduleinfo);
import std.meta : staticMap, ApplyRight, AliasSeq, NoDuplicates, ApplyLeft, Filter;
import std.traits : getSymbolsByUDA, hasUDA, hasMember, getUDAs, Fields, FieldNameTuple, PointerTarget, isPointer, isType, isAggregateType;
import spasm.ct;
import spasm.types;

struct styleset(alias set) {};
struct Extend(alias target) {};
struct style(alias s) {};
struct ApplyStyle(alias target) {}

template TypeOf(alias symbol) {
  alias TypeOf = typeof(symbol);
}

template Symbol(T, string field) {
  import std.meta : AliasSeq;
  alias Symbol = AliasSeq!(__traits(getMember, T, field))[0];
}

template extractStyleSetStruct(T) {
  static if (is(T : styleset!Set, Set)) {
    alias extractStyleSetStruct = Set;
  } else static if (is(T : styleset!Set, alias Set)) {
    alias extractStyleSetStruct = Set;
  }
}

template extractStyleStruct(T) {
  static if (is(T : style!clsName, string clsName))
    alias extractStyleStruct = clsName;
}

template getStyles(alias field) {
  alias sets = getUDAs!(field, style);
  alias getStyles = staticMap!(extractStyleStruct, sets);
}

template getStyleSet(T) {
  static if (isPointer!T) {
    alias getStyleSet = .getStyleSet!(PointerTarget!T);
  } else static if (isCallable!T) {
    alias getStyleSet = AliasSeq!();
  } else {
    alias sets = getUDAs!(T, styleset);
    alias getStyleSet = staticMap!(extractStyleSetStruct, sets);
  }
}

template getStyleSets(alias field) {
  alias sets = getUDAs!(field, styleset);
  alias getStyleSets = staticMap!(extractStyleSetStruct, sets);
}

template getStyleSets(T) {
  static if (isPointer!T) {
    alias getStyleSets = .getStyleSets!(PointerTarget!T);
  } else static if (isCallable!T) {
    import std.traits : ReturnType;
    alias getStyleSets = .getStyleSets!(ReturnType!T);
  } else {
    alias symbols = getSymbolsByUDA!(T, child);
    alias children = staticMap!(TypeOf,symbols);
    static if (symbols.length == 0)
      alias getStyleSets = AliasSeq!(getStyleSet!T);
    else
      alias getStyleSets = NoDuplicates!(AliasSeq!(staticMap!(.getStyleSets, children), getStyleSet!T));
  }
}

template isNonType(alias T) {
  enum isNonType = __traits(compiles, { alias B = typeof(T); });
}

template hasStyleSetUDA(alias T){
  enum hasStyleSetUDA = hasUDA!(T, styleset);
}

template getStyleSetsExtends(T) {
  static if (isPointer!T) {
    alias getStyleSetsExtends = .getStyleSetsExtends!(PointerTarget!T);
  } else static if (isCallable!T) {
    import std.traits : ReturnType;
    alias getStyleSetsExtends = .getStyleSetsExtends!(ReturnType!T);
  } else {
    alias styleSetSymbols = Filter!(hasStyleSetUDA, T.tupleof);
    alias children = staticMap!(TypeOf, getSymbolsByUDA!(T, child));
    alias extendedStyleSets = staticMap!(extractExtendedStyleSet, styleSetSymbols);
    static if (children.length > 0)
      alias childrenExtendedStyleSets = staticMap!(.getStyleSetsExtends, children);
    else
      alias childrenExtendedStyleSets = AliasSeq!();
    alias getStyleSetsExtends = AliasSeq!(childrenExtendedStyleSets, extendedStyleSets);
  }
}

struct ExtendedStyleSet(alias Set, alias sym) {}

template extractExtendedStyleSet(alias sym) {
  alias ExtendedStyleSetCurried = ApplyRight!(ExtendedStyleSet, sym);
  alias extractExtendedStyleSet = staticMap!(ExtendedStyleSetCurried, staticMap!(extractStyleSetStruct, getUDAs!(sym, styleset)));
}

template getFullName(alias sym) {
  static if (__traits(compiles, __traits(parent, sym))) {
    enum getFullName = __traits(identifier, sym) ~ "." ~ getFullName!(__traits(parent, sym));
  } else
    enum getFullName = __traits(identifier, sym);
}

template GetCssClassName(Node, string style) {
  alias StyleSets = getStyleSet!Node;
  static if (StyleSets.length == 0)
    enum GetCssClassName = style;
  else static if (StyleSets.length > 1)
    static assert("Cannot have more than one styleset");
  else {
    enum GetCssClassName = GenerateCssClassName!(getFullName!(StyleSets[0]) ~ "." ~ style);
  }
}

template getCssKeyValue(T, string defaultName) {
  alias symbol = Symbol!(T, defaultName);
  alias names = getStringUDAs!(symbol);
  static if (names.length > 0)
    enum name = names[0];
  else
    enum name = defaultName;
  enum getCssKeyValue = tuple(toCssProperty!name, __traits(getMember, T.init, defaultName));
}

template toCssProperty(string str)
{
  static if (str.length == 0)
    enum toCssProperty = "";
  else static if (str[0] < 0xAA)
    {
      static if (str[0] < 'A')
        enum toCssProperty = str[0] ~ toCssProperty!(str[1 .. $]);
      else static if (str[0] <= 'Z')
        enum toCssProperty = "-" ~ (str[0] + 32) ~ toCssProperty!(str[1 .. $]);
      else
        enum toCssProperty = str[0] ~ toCssProperty!(str[1 .. $]);
    }
  else
    enum toCssProperty = str[0] ~ toCssProperty!(str[1 .. $]);
}

template toCss(keyValues...) {
  static if (keyValues.length == 0) {
    enum toCss = "";
  } else {
    enum toCss = keyValues[0][0] ~ ":" ~ keyValues[0][1] ~ ";" ~ toCss!(keyValues[1..$]);
  }
}

template GenerateCss(T) {
  alias names = FieldNameTuple!T;
  alias values = staticMap!(ApplyLeft!(getCssKeyValue, T), names);
  static if (values.length > 0)
    enum GenerateCss = "{" ~ toCss!(values)[0..$-1] ~ "}";
  else
    enum GenerateCss = "";
}

template chunk(string str, size_t size) {
    import std.meta : AliasSeq;
    static if (str.length <= size) {
        enum chunk = AliasSeq!(str);
    } else {
        enum chunk = AliasSeq!(str[0..size], chunk!(str[size..$], size));
    }
}

template xor(char a, char b) {
    enum char xor = a ^ b;
}

template hashChunk(string a, B...) {
  static if (is(typeof(B[0]) == string)) {
    enum b = B[0];
    import std.meta : AliasSeq;
    static if (a.length == 0 && b.length == 0)
      enum hashChunk = AliasSeq!();
    else static if (a.length == 0)
      enum hashChunk = AliasSeq!(int(b[0]), hashChunk!(a, b[1..$]));
    else static if (b.length == 0)
      enum hashChunk = AliasSeq!(int(a[0]), hashChunk!(a[1..$], b));
    else {
      enum hashChunk = AliasSeq!(xor!(a[0],b[0]), hashChunk!(a[1..$], b[1..$]));
    }
  } else {
    import std.meta : AliasSeq;
    static if (a.length == 0 && B.length == 0)
      enum hashChunk = AliasSeq!();
    else static if (a.length == 0)
      enum hashChunk = AliasSeq!(int(B[0]), hashChunk!(a, B[1..$]));
    else static if (B.length == 0)
      enum hashChunk = AliasSeq!(int(a[0]), hashChunk!(a[1..$], B));
    else {
      enum hashChunk = AliasSeq!(xor!(a[0],B[0]), hashChunk!(a[1..$], B[1..$]));
    }
  }
}

template cssIdentifierChar32(size_t idx) {
  static enum string chars = "abcdefghijklmnopqrstuvwxyz123456";
  enum cssIdentifierChar32 = chars[idx..idx+1];
}

template cssIdentifierChar(size_t idx) {
    static enum string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_";
    enum cssIdentifierChar = chars[idx..idx+1];
}

template toCssIdentifier(Bytes...) if (Bytes.length == 6) {
    enum toCssIdentifier = cssIdentifierChar!((Bytes[0] >> 4) & 0xF) ~ cssIdentifierChar!((Bytes[0] & 0xF) | ((Bytes[1] >> 2) & 0x30)) ~ cssIdentifierChar!(Bytes[1] & 0x3F) ~ cssIdentifierChar!(Bytes[2] >> 2) ~ cssIdentifierChar!((Bytes[2] & 0x3) | ((Bytes[3] >> 2) & 0x3C)) ~ cssIdentifierChar!((Bytes[3] & 0xF) | ((Bytes[4] >> 2) & 0x30)) ~ cssIdentifierChar!(Bytes[4] & 0x3F) ~ cssIdentifierChar!(Bytes[5] >> 2) ~ cssIdentifierChar!(Bytes[5] & 0x3);
}

template toCssIdentifier32(Bytes...) if (Bytes.length == 6) {
  enum toCssIdentifier32 = cssIdentifierChar32!((Bytes[0] >> 4) & 0xF) ~ cssIdentifierChar32!((Bytes[0] & 0xF) | ((Bytes[1] >> 3) & 0x10)) ~ cssIdentifierChar32!((Bytes[1] >> 2) & 0x1F) ~ cssIdentifierChar32!((Bytes[1] & 0x3) | ((Bytes[2] >> 3) & 0x1C)) ~ cssIdentifierChar32!(Bytes[2] & 0x1F) ~ cssIdentifierChar32!((Bytes[3] >> 3) & 0x1F) ~ cssIdentifierChar32!((Bytes[3] & 0x3) | ((Bytes[4] >> 3) & 0x10)) ~ cssIdentifierChar32!((Bytes[4] >> 2) & 0x1F) ~ cssIdentifierChar32!((Bytes[4] & 0x3) | ((Bytes[5] >> 3) & 0x1C)) ~ cssIdentifierChar32!(Bytes[5] & 0x1F);
}

template reduceChunks(Chunks...) if (Chunks.length > 0) {
    import std.meta : AliasSeq;
    static if (Chunks.length == 1)
        enum reduceChunks = Chunks[0];
    else static if (Chunks.length == 2)
        enum reduceChunks = hashChunk!(Chunks[0],Chunks[1]);
    else static if (Chunks.length > 2) {
        enum reduceChunks = hashChunk!(Chunks[0],reduceChunks!(Chunks[1..$]));
    }
}

template toCssName(string s) {
  enum toCssName = toCssIdentifier!(reduceChunks!(chunk!(s,6)));
}

template toCssNameInsensitive(string s) {
  enum toCssNameInsensitive = toCssIdentifier32!(reduceChunks!(chunk!(s,6)));
}

unittest {
  enum i = "{backgroundColor:gray2}".toCssName();
  enum g = "{display:inline}".toCssName();
  enum h = "{backgroundColor:gray}".toCssName();
  assert(i == "SRg1YFppZw");
  assert(g == "ZyMAHRwFDw");
  assert(h == "BmU1YFppZw");
}

template GenerateCssClassName(string content) {
  enum GenerateCssClassName = toCssName!content;
}

template GenerateCssClass(string base, alias T) {
  enum nestedName = __traits(identifier, T);
  enum uniqueName = base ~ "." ~ nestedName;
  alias name = GenerateCssClassName!uniqueName;
  enum content = GenerateCss!T;
  alias nestedClasses = GenerateNestedCssClasses!("."~name, T);
  static if (content.length == 0) {
    enum GenerateCssClass = nestedClasses;
  } else
  enum GenerateCssClass = "." ~ name ~ content ~ nestedClasses;
}

template GenerateNamedCssClass(string name, alias T) {
  alias content = GenerateCss!T;
  alias nestedClasses = GenerateNestedCssClasses!("."~name, T);
  enum GenerateNamedCssClass = "." ~ name ~ content ~ nestedClasses;
}
template GetPseudoCssClass(alias symbol) {
  alias attrs = AliasSeq!(__traits(getAttributes, symbol));
  static if (attrs.length == 0)
    static assert(false, "Nested css class must have pseudo class attribute");
  static if (attrs.length == 1)
    enum GetPseudoCssClass = attrs[0];
  else
    static assert(false, "Only one pseudo class attribute supported right now");
}

template GenerateNestedCssClass(alias name, alias symbol) {
  alias content = GenerateCss!symbol;
  enum GenerateNestedCssClass = name ~ ":" ~ GetPseudoCssClass!symbol ~ content;
}

template GenerateNestedCssClasses(alias name, T) {
  alias members = AliasSeq!(__traits(allMembers, T));
  alias symbols = staticMap!(ApplyLeft!(Symbol,T), members);
  alias nestedClasses = Filter!(isType,symbols);
  static if (nestedClasses.length == 0)
    enum GenerateNestedCssClasses = "";
  else
    enum GenerateNestedCssClasses = Joiner!(staticMap!(ApplyLeft!(GenerateNestedCssClass, name), nestedClasses));
}

template GenerateCssSet(alias T, Theme) {
  template isTypeInvert(alias T) {
    enum isTypeInvert = !isType!T;
  }
  static if (__traits(isTemplate, T))
    alias StyleSet = T!Theme;
  else
    alias StyleSet = T;
  enum baseName = getFullName!(T);
  alias members = AliasSeq!(__traits(allMembers, StyleSet));
  alias symbols = staticMap!(ApplyLeft!(Symbol,StyleSet), members);
  alias typeSymbols = Filter!(isType, symbols);
  enum GenerateCssSet = Joiner!(staticMap!(ApplyLeft!(GenerateCssClass, baseName), typeSymbols));
}

template GenerateExtendedCssClass(alias T, string name, Child) {
  enum isDirectExtendedStyle = getSymbolsByUDA!(Child, style!(T.stringof)).length > 0;
  enum attributeSelector = "["~name~"]";
  static if (isDirectExtendedStyle) {
    alias content = GenerateCss!T;
    alias nestedClasses = GenerateNestedCssClasses!(attributeSelector, T);
    enum GenerateExtendedCssClass = attributeSelector~content~nestedClasses;
  } else static if (!hasUDA!(T, Extend)) {
    static assert(false, T.stringof ~ " needs an Extend attribute");
  } else {
    alias extendsAttrs = getUDAs!(T, Extend);
    static assert(extendsAttrs.length == 1, T.stringof ~ " can only have one Extend attribute");
    static if (is(extendsAttrs[0] : Extend!(Base), Base)) {
      alias baseContent = GenerateCss!Base;
      alias baseName = GenerateCssClassName!baseContent;
      enum GenerateExtendedCssClass = attributeSelector~" "~GenerateNamedCssClass!(baseName, T);
    }
  }
}

template GenerateExtendedStyleSetName(alias Set) {
  alias name = getFullName!(Set);
  alias GenerateExtendedStyleSetName = toCssNameInsensitive!name;
}

template GenerateCssSetExtends(alias T, Theme) {
  static if (is(T : ExtendedStyleSet!(Set, sym), alias Set, alias sym)) {
    static if (__traits(isTemplate, Set))
      alias StyleSet = Set!Theme;
    else
      alias StyleSet = Set;
    alias members = AliasSeq!(__traits(allMembers, StyleSet));
    alias symbols = staticMap!(ApplyLeft!(Symbol,StyleSet), members);
    alias name = GenerateExtendedStyleSetName!Set;
    enum GenerateCssSetExtends = Joiner!(staticMap!(ApplyRight!(GenerateExtendedCssClass, name, typeof(sym)), symbols));
  } else
    enum GenerateCssSetExtends = "";
}


template GetCss(T, Theme) {
  alias extendedSets = getStyleSetsExtends!T;
  alias sets = getStyleSets!T;
  enum css = Joiner!(staticMap!(ApplyRight!(GenerateCssSet, Theme), sets), staticMap!(ApplyRight!(GenerateCssSetExtends, Theme), AliasSeq!(extendedSets)));
  static if (css.length == 0)
    enum GetCss = "";
  else
    enum GetCss = css;
}
