module spasm.css;

pragma(LDC_no_moduleinfo);
import std.meta : staticMap, ApplyRight, AliasSeq, NoDuplicates, ApplyLeft, Filter;
import std.traits : getSymbolsByUDA, hasUDA, hasMember, getUDAs, Fields, FieldNameTuple;
// import std.typecons : tuple;
import std.range : front, empty, popFront, only, chain;
import std.ascii : isUpper;
import std.uni : asLowerCase;
import std.algorithm : chunkBy, joiner, map;
import std.conv : text;
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
  // TODO: fix again
  // enum getCssKeyValue = tuple(toCssProperty!name, __traits(getMember, T.init, name));
  enum getCssKeyValue = AliasSeq!(toCssProperty!name, "asf");
}

template insertBefore(dchar del, alias pred) {
  struct InsertBefore(Range)
  {
    private { bool outputDel = false; bool advanceDel = false; Range range;}
    this(Range r) {
      range = r;
    }
    bool empty() {
      return !outputDel && range.empty;
    }
    auto front() {
      if (outputDel || pred(range.front) && !advanceDel) {
        outputDel = true;
        return del;
      }
      advanceDel = false;
      return range.front;
    }
    void popFront() {
      if (outputDel) {
        outputDel = false;
        advanceDel = true;
      } else {
        range.popFront();
      }
    }
  }
  auto insertBefore(Range)(Range r) {
    return InsertBefore!Range(r);
  }
}


template toCssProperty(string name) {
  enum toCssProperty = insertBefore!('-',isUpper)(name).asLowerCase;
}

template GenerateCss(T) {
  alias names = FieldNameTuple!T;
  alias values = staticMap!(ApplyLeft!(getCssKeyValue, T), names);
  static if (values.length > 0)
    enum GenerateCss = chain("{",only(values).map!(t => chain(t[0],":",t[1],";")).joiner,"}").text;
  else
    enum GenerateCss = "";
}

template GenerateCssClassName(string content) {
  enum GenerateCssClassName = content.toCssName();
}

template GenerateCssClass(alias T) {
  alias content = GenerateCss!T;
  alias name = GenerateCssClassName!content;
  alias nestedClasses = GenerateNestedCssClasses!(name, T);
  enum GenerateCssClass = chain(".",name,content,nestedClasses).text;
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
  enum GenerateNestedCssClass = chain(".",name,":",GetPseudoCssClass!symbol,content).text;
}

template GenerateNestedCssClasses(alias name, T) {
  import std.traits:isType;
  alias members = AliasSeq!(__traits(allMembers, T));
  alias symbols = staticMap!(ApplyLeft!(Symbol,T), members);
  alias nestedClasses = Filter!(isType,symbols);
  static if (nestedClasses.length == 0)
    enum GenerateNestedCssClasses = "";
  else
    enum GenerateNestedCssClasses = only(staticMap!(ApplyLeft!(GenerateNestedCssClass, name), nestedClasses)).joiner;
}

template GenerateCssSet(T) {
  template GetNested(string member) {
    mixin("alias GetNested = T."~member~";");
  }
  alias members = AliasSeq!(__traits(allMembers, T));
  alias symbols = staticMap!(ApplyLeft!(Symbol,T), members);
  enum GenerateCssSet = only(staticMap!(GenerateCssClass, symbols)).joiner;
}

template GetCss(T) {
  alias sets = getStyleSets!T;
  static if (sets.length == 0)
    enum GetCss = "";
  else
    enum GetCss = only(staticMap!(GenerateCssSet, sets)).joiner.text;
}
