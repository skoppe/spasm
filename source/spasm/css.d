module spasm.css;

pragma(LDC_no_moduleinfo);
import std.meta : staticMap, ApplyRight, AliasSeq, NoDuplicates, ApplyLeft, Filter;
import std.traits : getSymbolsByUDA, hasUDA, hasMember, getUDAs, Fields, FieldNameTuple;
import spasm.ct;
import spasm.types;

struct styleset(alias set) {};
enum hover;
struct style(alias s) {};

template TypeOf(alias symbol) {
  alias TypeOf = typeof(symbol);
}

template Symbol(T, string field) {
  import std.meta : AliasSeq;
  alias Symbol = AliasSeq!(__traits(getMember, T, field))[0];
}

template extractStyleSetStruct(T) {
  static if (is(T : styleset!Set, Set))
    alias extractStyleSetStruct = Set;
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
  alias sets = getUDAs!(T, styleset);
  alias getStyleSet = staticMap!(extractStyleSetStruct, sets);
}

template getStyleSets(T) {
  alias isChild = ApplyRight!(hasUDA, child);
  alias symbols = getSymbolsByUDA!(T, child);
  alias children = staticMap!(TypeOf,symbols);
  static if (children.length == 0)
    alias getStyleSets = AliasSeq!(getStyleSet!T);
  else
    alias getStyleSets = NoDuplicates!(AliasSeq!(getStyleSet!T, staticMap!(.getStyleSets, children)));
}

template GetCssClassName(Node, string style) {
  alias StyleSets = getStyleSet!Node;
  alias hasStyle = ApplyRight!(hasMember, style);
  alias MatchingStyles = Filter!(hasStyle, StyleSets);
  static if (MatchingStyles.length == 0) {
    enum GetCssClassName = style;
  } else static if (MatchingStyles.length > 1) {
    pragma(msg, "Node has no StyleSet with style");
    enum GetCssClassName = "undefined";
  } else {
    alias content = GenerateCss!(__traits(getMember, MatchingStyles[0], style));
    enum GetCssClassName = GenerateCssClassName!content;
  }
}


template getCssKeyValue(T, string name) {
  enum getCssKeyValue = tuple(toCssProperty!name, __traits(getMember, T.init, name));
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
    enum GenerateCss = "{" ~ toCss!values ~ "}";
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

template cssIdentifierChar(size_t idx) {
    static enum string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_";
    enum cssIdentifierChar = chars[idx..idx+1];
}

template toCssIdentifier(Bytes...) if (Bytes.length == 6) {
    enum toCssIdentifier = cssIdentifierChar!((Bytes[0] >> 4) & 0xF) ~ cssIdentifierChar!((Bytes[0] & 0xF) | ((Bytes[1] >> 2) & 0x30)) ~ cssIdentifierChar!(Bytes[1] & 0x3F) ~ cssIdentifierChar!(Bytes[2] >> 2) ~ cssIdentifierChar!((Bytes[2] & 0x3) | ((Bytes[3] >> 2) & 0x3C)) ~ cssIdentifierChar!((Bytes[3] & 0xF) | ((Bytes[4] >> 2) & 0x30)) ~ cssIdentifierChar!(Bytes[4] & 0x3F) ~ cssIdentifierChar!(Bytes[5] >> 2) ~ cssIdentifierChar!(Bytes[5] & 0x3);
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
  alias chunks = chunk!(s,6);
  enum hash = reduceChunks!(chunks);
  enum toCssName = toCssIdentifier!hash;
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

template GenerateCssClass(alias T) {
  alias content = GenerateCss!T;
  alias name = GenerateCssClassName!content;
  alias nestedClasses = GenerateNestedCssClasses!(name, T);
  enum GenerateCssClass = "." ~ name ~ content ~ nestedClasses;
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
  enum GenerateNestedCssClass = "." ~ name ~ ":" ~ GetPseudoCssClass!symbol ~ content;
}

template Joiner(Ts...) {
  static if (Ts.length > 0) {
    enum Joiner = Ts[0] ~ Joiner!(Ts[1..$]);
  } else
    enum Joiner = "";
}
template GenerateNestedCssClasses(alias name, T) {
  import std.traits:isType;
  alias members = AliasSeq!(__traits(allMembers, T));
  alias symbols = staticMap!(ApplyLeft!(Symbol,T), members);
  alias nestedClasses = Filter!(isType,symbols);
  static if (nestedClasses.length == 0)
    enum GenerateNestedCssClasses = "";
  else
    enum GenerateNestedCssClasses = Joiner!(staticMap!(ApplyLeft!(GenerateNestedCssClass, name), nestedClasses));
}

template GenerateCssSet(T) {
  template GetNested(string member) {
    mixin("alias GetNested = T."~member~";");
  }
  alias members = AliasSeq!(__traits(allMembers, T));
  alias symbols = staticMap!(ApplyLeft!(Symbol,T), members);
  enum GenerateCssSet = Joiner!(staticMap!(GenerateCssClass, symbols));
}

template GetCss(T) {
  alias sets = getStyleSets!T;
  static if (sets.length == 0)
    enum GetCss = "";
  else
    enum GetCss = Joiner!(staticMap!(GenerateCssSet, sets));
}
