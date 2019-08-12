module spasm.css;

import std.meta : staticMap, ApplyRight, AliasSeq, NoDuplicates, ApplyLeft, Filter;
import std.traits : getSymbolsByUDA, hasUDA, hasMember, getUDAs, Fields, FieldNameTuple, PointerTarget, isPointer, isType, isAggregateType;
import spasm.ct;
import spasm.types;

struct styleset(alias set) {};
struct Extend(alias target) {};
struct style(alias s) {};
struct not(alias s) {};
struct media(string content) {}
struct ApplyStyle(alias target) {}

version(unittest) {
  import unit_threaded;
  private struct Style {
    struct disabled {}
    struct focused {}
    struct root {
      string backgroundColor = "blue";
      @("after") struct after {
        auto content = `""`;
      }
      @(disabled, "after") struct afterDisabled {
        auto content = `""`;
      }
      @(not!focused, "after") struct afterNotFocused {
        auto content = `""`;
      }
      @("hover", not!disabled, "before") struct hoverBefore {
        auto content = `""`;
      }
      @(media!"hover: none") struct resetTouch {
        auto content = `""`;
      }
    }
  }
  private struct StyleTmpl(Theme) {
    struct disabled {}
    struct focused {}
  }
}

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
  import std.traits;
  static if (is(sym) && !is(TemplateOf!sym : void)) {
    alias Base = TemplateOf!sym;
    enum namePart = __traits(identifier, sym);//Base.stringof;
  } else {
    alias Base = sym;
    enum namePart = __traits(identifier, sym);
  }
  static if (__traits(compiles, __traits(parent, Base))) {
    enum getFullName = namePart ~ "." ~ getFullName!(__traits(parent, Base));
  } else
    enum getFullName = namePart;
}

unittest {
  struct Theme {
  }
  getFullName!(Style.disabled).should == "disabled.Style.css.spasm";
  getFullName!(StyleTmpl!(Theme).disabled).should == "disabled.StyleTmpl.css.spasm";
}

template GetCssClassName(Node, string style) {
  alias StyleSets = getStyleSet!Node;
  static if (StyleSets.length == 0)
    enum GetCssClassName = style;
  else static if (StyleSets.length > 1)
    static assert("Cannot have more than one styleset");
  else {
    enum GetCssClassName = GenerateCssClassName!(style ~ "." ~ getFullName!(StyleSets[0]));
  }
}

template getCssKeyValue(T, string defaultName) {
  alias symbol = Symbol!(T, defaultName);
  static if (isAggregateType!(typeof(symbol))) {
    alias Tchild = typeof(symbol);
    alias names = FieldNameTuple!Tchild;
    alias values = staticMap!(ApplyLeft!(.getCssKeyValue, Tchild), names);
    enum getCssKeyValue = values;
  } else {
    alias names = getStringUDAs!(symbol);
    static if (names.length > 0)
      enum name = names[0];
    else
      enum name = defaultName;
    enum getCssKeyValue = AliasSeq!(tuple(toCssProperty!name, __traits(getMember, T.init, defaultName)));
  }
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
  import unit_threaded;
  enum i = toCssName!"{backgroundColor:gray2}";
  enum g = toCssName!"{display:inline}";
  enum h = toCssName!"{backgroundColor:gray}";
  i.should == "BEAASdIQD";
  g.should == "HTzNaHeAA";
  h.should == "BEAACC1QD";
}

template GenerateCssClassName(string content) {
  enum GenerateCssClassName = toCssName!content;
}

template GenerateCssClassName(string base, alias T) {
  enum nestedName = __traits(identifier, T);
  enum uniqueName = nestedName ~ "." ~ base;
  alias GenerateCssClassName = GenerateCssClassName!uniqueName;
}

template GenerateCssClass(string base, alias T) {
  alias name = GenerateCssClassName!(base, T);
  enum content = GenerateCss!T;
  alias nestedClasses = GenerateNestedCssClasses!(T);
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

template GetPseudoCssSelector(alias symbol) {
  template GetName(alias attr) {
    static if (is(attr : media!content, string content)) {
      enum GetName = "@media("~ content ~")";
    } else static if (is(attr : not!cls, cls)) {
      enum GetName = ":not(." ~ toCssName!(getFullName!cls) ~ ")";
    } else static if (is(attr)) {
      enum GetName = "." ~ toCssName!(getFullName!attr);
    } else
      enum GetName = ":" ~ attr;
  }
  alias attrs = AliasSeq!(__traits(getAttributes, symbol));
  static assert(attrs.length > 0, "Nested css class must have pseudo class attribute");
  alias parent = __traits(parent, symbol);
  enum parentHash = toCssName!(getFullName!(parent));
  enum GetPseudoCssSelector = "." ~ parentHash ~ Joiner!(staticMap!(GetName, attrs));
}

unittest {
  GetPseudoCssSelector!(Style.root.after).should == ".AGILZSwUB:after";
}
unittest {
  GetPseudoCssSelector!(Style.root.afterDisabled).should == ".AGILZSwUB.EDbAPAWCD:after";
}
unittest {
  GetPseudoCssSelector!(Style.root.afterNotFocused).should == ".AGILZSwUB:not(.BEfMCBUJD):after";
}
unittest {
  GetPseudoCssSelector!(Style.root.hoverBefore).should == ".AGILZSwUB:hover:not(.EDbAPAWCD):before";
}
unittest {
  GetPseudoCssSelector!(Style.root.resetTouch).should == ".AGILZSwUB@media(hover: none)";
}
unittest {
  struct Empty{}
  GenerateCssSet!(Style, Empty).should == `.AGILZSwUB{background-color:blue}.AGILZSwUB:after{content:""}.AGILZSwUB.EDbAPAWCD:after{content:""}.AGILZSwUB:not(.BEfMCBUJD):after{content:""}.AGILZSwUB:hover:not(.EDbAPAWCD):before{content:""}.AGILZSwUB@media(hover: none){content:""}`;
}
unittest {
  struct Empty{}
  struct Derived {
    struct root {
      Style.root base;
      auto color = "green";
    }
  }
  GenerateCssSet!(Derived, Empty).should == `.ETbCNGQeD{background-color:blue;color:green}`;
}

template GenerateNestedCssClass(alias symbol) {
  alias content = GenerateCss!symbol;
  enum GenerateNestedCssClass = GetPseudoCssSelector!(symbol) ~ content;
}

template GenerateNestedCssClasses(alias base, T) {
  template WithPrefix(alias symbol) {
    enum WithPrefix = base ~ GenerateNestedCssClass!symbol;
  }
  alias members = AliasSeq!(__traits(allMembers, T));
  alias symbols = staticMap!(ApplyLeft!(Symbol,T), members);
  alias nestedClasses = Filter!(isType,symbols);
  static if (nestedClasses.length == 0)
    enum GenerateNestedCssClasses = "";
  else
    enum GenerateNestedCssClasses = Joiner!(staticMap!(WithPrefix, nestedClasses));
}

template GenerateNestedCssClasses(T) {
  enum GenerateNestedCssClasses = GenerateNestedCssClasses!("",T);
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

unittest {
  import unit_threaded;
  import spasm.node;
  struct Empty{}
  struct Overwrite(Theme) {
    @Extend!(Style.root)
    struct stuff {
      string backgroundColor = "green";
    }
  }
  @styleset!Style
  struct Bar {
    @style!"root" mixin Node!"div";
  }
  struct Foo {
    mixin Node!"span";
    @styleset!Overwrite @child Bar bar;
  }
  // TODO: currently extending only works when the StyleSet is a Template
  // TODO: fix the generated class name that is extended
  // GetCss!(Foo, Empty).should == "asdfasdf";
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

// TODO: extending styles should be done in a more wrapping kind of way. That is, we should just wrap the component in a WithStyles!(Comp, StyleSet) where the Styles overwrites the @StyleSet defined in library. It begs the question whether we shouldn't always use WithStyles!(Comp, StyleSet).
// NOTE: a nice idea but currently impossible. Within the struct we have no access to the overwritten styles and no way to figure out what classname we should apply. A possible solution would be to templatize the struct on the StyleSet.
// NOTE: this can lead to a nice situation where a component has several templated arguments (style, props) and we can indeed have WithStyleSet!(), WithProps!(), etc. which overwrite (or unwrap), previous Withx's
