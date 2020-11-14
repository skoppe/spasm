module spasm.dom;

import spasm.types;
import spasm.dom;
import spasm.ct;
import std.traits : hasMember, isAggregateType;
import std.traits : TemplateArgsOf, staticMap, isPointer, PointerTarget, getUDAs, EnumMembers, isInstanceOf, isBasicType, isIntegral;
import std.traits : getSymbolsByUDA, getUDAs;
import std.meta : Filter, AliasSeq, ApplyLeft, ApplyRight;
import spasm.css;
import spasm.node;
import spasm.event;
import std.meta : staticIndexOf;
import spasm.array;
import spasm.rt.array;

@safe:
nothrow:

version (unittest) {
  import spasm.sumtype;
  import std.array : Appender;
  import std.algorithm : remove, countUntil;
  import std.array : insertInPlace;
  class UnittestDomNode {
    alias Property = SumType!(string,int,bool,double);
    alias Attribute = SumType!(string,int,bool);
    NodeType type;
    Handle handle;
    UnittestDomNode parent;
    Property[string] properties;
    Attribute[string] attributes;
    string[] classes;
    Appender!(UnittestDomNode[]) children;
    this(NodeType type, Handle handle) nothrow { this.type = type; this.handle = handle; }
    void setAttribute(T)(string name, T value) nothrow @trusted {
      attributes[name] = Attribute(value);
    }
    Attribute getAttribute(string name) nothrow {
      return attributes[name];
    }
    void setProperty(T)(string name, T value) nothrow @trusted {
      properties[name] = Property(value);
    }
    Property getProperty(string name) nothrow {
      return properties[name];
    }
    void toString(scope void delegate(const(char)[]) @safe sink) @trusted {
      import std.algorithm : each;
      import std.format : formattedWrite, format;
      import std.array : join;
      import std.conv : to;
      if (type != NodeType.root) {
        sink.formattedWrite("<%s", type);
        // write attributes and properties
        if (classes.length > 0) {
          sink.formattedWrite(" class=\"%s\"", classes.join(" "));
        }
        foreach (kv; properties.byKeyValue()) {
          sink.formattedWrite(" %s=%s", kv.key, spasm.sumtype.match!((string s)=>format(`"%s"`,s),(i)=>i.to!string)(kv.value));
        }
        foreach (kv; attributes.byKeyValue()) {
          sink.formattedWrite(" %s=%s", kv.key, spasm.sumtype.match!((string s)=>format(`"%s"`,s),(i)=>i.to!string)(kv.value));
        }
        sink(">");
      }
      children.data.each!(c => c.toString(sink));
      // write children
      if (type != NodeType.root)
        sink.formattedWrite("</%s>", type);
    }
  }
  Appender!(UnittestDomNode[]) unittest_dom_nodes;
  private auto getNode(Handle node) {
    assert(node > 0);
    return unittest_dom_nodes.data[node - 1];
  }
  private auto assumeNoException(Block)(lazy Block block) {
    try {
      block();
    } catch(Exception e) {
      assert(0, e.msg);
    }
  }
  extern(C) {
    Handle createElement(NodeType type) {
      uint idx = cast(uint)unittest_dom_nodes.data.length;
      unittest_dom_nodes.put(new UnittestDomNode(type, idx + 1));
      return idx + 1;
    }
    void addClass(Handle node, string className) {
      node.getNode().classes ~= className;
    }
    void setProperty(Handle node, string prop, string value) {
      node.getNode().setProperty(prop, value);
    }
    void removeChild(Handle childPtr) @trusted {
      import std.algorithm : remove;
      import std.algorithm : countUntil;
      auto child = childPtr.getNode();
      auto childIdx = child.parent.children.data.countUntil!(c => c is child);
      assert(childIdx >= 0);
      child.parent.children.data.remove(childIdx);
      child.parent.children.shrinkTo(child.parent.children.data.length - 1).assumeNoException();
    }
    void unmount(Handle childPtr) {
      removeChild(childPtr);
    }
    void appendChild(Handle parentPtr, Handle childPtr) @trusted {
      auto parent = parentPtr.getNode();
      auto child = childPtr.getNode();
      if (child.parent) {
        auto childIdx = child.parent.children.data.countUntil!(c => c is child);
        if (childIdx > 0) {
          child.parent.children.data.remove(childIdx);
          child.parent.children.shrinkTo(child.parent.children.data.length - 1).assumeNoException();
        }
      }
      child.parent = parent;
      parent.children.put(child);
    }
    void insertBefore(Handle parentPtr, Handle childPtr, Handle siblingPtr) @trusted {
      auto parent = parentPtr.getNode();
      auto child = childPtr.getNode();
      auto sibling = siblingPtr.getNode();
      if (child.parent) {
        auto childIdx = child.parent.children.data.countUntil!(c => c is child);
        if (childIdx > 0) {
          child.parent.children.data.remove(childIdx);
          child.parent.children.shrinkTo(child.parent.children.data.length - 1).assumeNoException();
        }
      }
      child.parent = parent;
      auto siblingIdx = parent.children.data.countUntil!(c => c is sibling);
      assert(siblingIdx >= 0);
      parent.children.put(child);
      auto arr = parent.children.data;
      foreach(i; 0 .. arr.length - siblingIdx)
        arr[arr.length - 1 - i] = arr[arr.length - 2 - i];
      arr[siblingIdx] = child;
    }
    void setAttribute(Handle node, string attr, string value) {
      node.getNode().setAttribute(attr, value);
    }
    void setAttributeInt(Handle node, string attr, int value) {
      node.getNode().setAttribute(attr, value);
    }
    void setAttributeBool(Handle node, string attr, bool value) {
      node.getNode().setAttribute(attr, value);
    }
    void setPropertyBool(Handle node, string prop, bool value) {
      node.getNode().setProperty(prop, value);
    }
    void setPropertyInt(Handle node, string prop, int value) {
      node.getNode().setProperty(prop, value);
    }
    void setPropertyDouble(Handle node, string prop, double value) {
      node.getNode().setProperty(prop, value);
    }
    void innerText(Handle nodePtr, string text) {
    }
    void removeClass(Handle node, string className) {
      import std.algorithm : remove;
      auto n = node.getNode();
      n.classes = n.classes.remove!(i => i==className);
    }
    void changeClass(Handle node, string className, bool on) {
      import std.algorithm : any;
      auto n = node.getNode();
      if (on && !n.classes.any!(c => c == className))
        n.classes ~= className;
      else if (!on)
        removeClass(node, className);
    }
    Optional!string getProperty(Handle node, string name) {
      auto str = node.getNode().getProperty(name).trustedGet!string;
      return some(str);
    }
    Optional!int getPropertyInt(Handle node, string prop) {
      return some(node.getNode().getProperty(prop).trustedGet!int);
    }
    Optional!bool getPropertyBool(Handle node, string prop) {
      return some(node.getNode().getProperty(prop).trustedGet!bool);
    }
    Optional!double getPropertyDouble(Handle node, string prop) {
      return some(node.getNode().getProperty(prop).trustedGet!double);
    }
    void setSelectionRange(Handle node, uint start, uint end) {
    }
    void addCss(string css) {
    }
  }
} else {
  private extern(C) {
    Handle createElement(NodeType type);
    void addClass(Handle node, string className);
    void setProperty(Handle node, string prop, string value);
    void removeChild(Handle childPtr);
    void unmount(Handle childPtr);
    void appendChild(Handle parentPtr, Handle childPtr);
    void insertBefore(Handle parentPtr, Handle childPtr, Handle sibling);
    void setAttribute(Handle nodePtr, string attr, string value);
    void setAttributeInt(Handle nodePtr, string attr, int value);
    void setAttributeBool(Handle nodePtr, string attr, bool value);
    void setPropertyBool(Handle nodePtr, string attr, bool value);
    void setPropertyInt(Handle nodePtr, string attr, int value);
    void setPropertyDouble(Handle nodePtr, string attr, double value);
    void innerText(Handle nodePtr, string text);
    void removeClass(Handle node, string className);
    void changeClass(Handle node, string className, bool on);
  }

  extern(C) {
    string getProperty(Handle node, string prop);
    int getPropertyInt(Handle node, string prop);
    bool getPropertyBool(Handle node, string prop);
    void getPropertyDouble(Handle nodePtr, string prop);
    void setSelectionRange(Handle node, uint start, uint end);
    void addCss(string css);
  }
}

import spasm.bindings.dom : Document;
import spasm.bindings.html : Window;

@trusted ref auto undefined() {
  static __gshared u = Any(JsHandle(0));
  return u;
}
@trusted ref auto document() {
  static __gshared d = Document(JsHandle(1));
  return d;
}
@trusted ref auto window() {
  static __gshared w = Window(JsHandle(2));
  return w;
}

void unmount(T)(auto ref T t) if (is(T : SumType!(Types), Types...)) {
  t.match!(unmount);
 }

void unmount(T)(auto ref T t) if (hasMember!(T, "node")) {
  unmount(t.node.node);
  static if (hasMember!(T, "node"))
    t.node.mounted = false;
  t.propagateOnUnmount();
 }

auto removeChild(T)(T* t) if (is(T : SumType!(Types), Types...)) {
  unmount(*t);
 }

auto removeChild(T)(auto ref T t) if (hasMember!(T,"node")) {
  removeChild(t.node.node);
  static if (hasMember!(T, "node"))
    t.node.mounted = false;
  t.propagateOnUnmount();
}

auto focus(T)(auto ref T t) if (hasMember!(T,"node")) {
  t.node.node.focus();
 }

auto renderBefore(T, Ts...)(Handle parent, auto ref T t, Handle sibling, auto ref Ts ts) {
  static if (is(T : SumType!Types, Types...)) {
    t.match!((scope ref i) => renderBefore(parent, i, sibling, ts));
  } else {
    if (parent == invalidHandle)
      return;
    renderIntoNode(parent, t, ts);
    static if (hasMember!(T, "node")) {
      parent.insertBefore(t.node.node, sibling);
      t.node.mounted = true;
    }
    t.propagateOnMount();
  }
}

auto render(T, Ts...)(Handle parent, auto ref T t, auto ref Ts ts) @trusted {
  static if (is(T : SumType!Types, Types...)) {
    t.match!((scope ref i) => render(parent, i, ts));
  } else {
    if (parent == invalidHandle)
      return;
    renderIntoNode(parent, t, ts);
    static if (hasMember!(T, "node")) {
      if (!t.getNamedNode().mounted) {
        parent.appendChild(t.getNamedNode.node);
        t.getNamedNode().mounted = true;
      }
    }
    t.propagateOnMount();
  }
}

import std.traits : isFunction;
auto propagateOnMount(T)(auto ref T t) {
  static foreach (c; getChildren!T)
    __traits(getMember, t, c).propagateOnMount();
  static if (hasMember!(T, "onMount") && isFunction!(T.onMount))
    t.onMount();
}

auto propagateOnUnmount(T)(auto ref T t)
{
  static foreach (c; getChildren!T)
    __traits(getMember, t, c).propagateOnMount();
  static if (hasMember!(T, "onUnmount") && isFunction!(T.onUnmount))
    t.onUnmount();
}

auto remount(string field, Parent)(auto ref Parent parent) {
  import std.traits : hasUDA;
  import std.meta : AliasSeq;
  alias fields = AliasSeq!(__traits(allMembers, Parent));
  alias idx = staticIndexOf!(field,fields);
  static if (fields.length > idx+1) {
    static foreach(child; fields[idx+1..$]) {
      static if (hasUDA!(__traits(getMember, Parent, child), spasm.types.child)) {
        if (__traits(getMember, parent, child).node.mounted)
          return renderBefore(parent.node.node, __traits(getMember, parent, field), __traits(getMember, parent, child).node.node, parent);
      }
    }
  }
  return render(parent.node.node, __traits(getMember, parent, field), parent);
}

template isValue(alias t) {
  enum isValue = __traits(compiles, { enum p = t; });
}

template createParameterTuple(Params...) {
  auto createParameterTuple(Ts...)(auto ref Ts ts) {
    import std.traits : TemplateArgsOf, staticMap;
    import spasm.spa : Param;
    template extractName(Arg) {
      enum extractName = Arg.Name;
    }
    static auto extractField(alias sym)(auto ref Ts ts) @trusted {
      enum name = sym.stringof;
      enum literal = isValue!(sym);
      static if (isValue!(sym)) {
        static if (isBasicType!(typeof(sym))) {
          typeof(sym) val = sym;
          return val;
        } else {
          __gshared static auto val = sym;
          return &val;
        }
      } else {
        alias ContainingType = AliasSeq!(__traits(parent, sym))[0];
        template isContainingType(ContainingType, T) {
          enum isContainingType = is(ContainingType == T);
        }
        enum index = indexOfPred!(ApplyLeft!(isContainingType, ContainingType), AliasSeq!Ts);
        return &__traits(getMember, ts[index], name);
      }
    }
    static auto extractFields(Args...)(auto ref Ts ts) @safe if (Args.length > 0) {
      static if (Args.length > 1)
        return tuple(extractField!(TemplateArgsOf!(Args[0])[1])(ts), extractFields!(Args[1..$])(ts).expand);
      else
        return tuple(extractField!(TemplateArgsOf!(Args[0])[1])(ts));
    }
    alias ParamsTuple = staticMap!(TemplateArgsOf, Params);
    alias Names = staticMap!(extractName, ParamsTuple);
    auto Fields = extractFields!(ParamsTuple)(ts);
    return tuple!(Names)(Fields.expand);
  }
}

@trusted
void setParamFromParent(string name, T, Ts...)(ref T t, auto ref Ts ts) {
  import std.traits : PointerTarget, isPointer;
  import std.meta : AliasSeq;
  alias TargetType = typeof(getMember!(T, name));
  static if (isPointer!(TargetType))
    alias FieldType = PointerTarget!(TargetType);
  else
    alias FieldType = TargetType;
  template matchesField(Parent) {
    static if (!hasMember!(Parent,name))
      enum matchesField = false;
    else {
      alias ItemTypeParent = AliasSeq!(__traits(parent, getMember!(Parent, name)))[0];
      static if (is(T == ItemTypeParent))
        enum matchesField = false;
      else {
        alias ItemType = typeof(getMember!(Parent, name));
        enum matchesField = (is(ItemType == FieldType) || is (ItemType == FieldType*));
      }
    }
  }
  enum index = indexOfPred!(matchesField, AliasSeq!Ts);
  static if (index >= ts.length) {
    return;
  } else {
    alias SourceType = typeof(__traits(getMember, Ts[index], name));
    static if(isPointer!TargetType) {
      static if (isPointer!SourceType)
        __traits(getMember, t, name) = __traits(getMember, ts[index], name);
      else {
        static if (is(Ts[index] : Tuple!Fields, Fields...)) {
          static assert(!isBasicType!SourceType, "Cannot assign literal in param uda to a pointer, use member field or avoid use of pointer.");
        }
        __traits(getMember, t, name) = &__traits(getMember, ts[index], name);
      }
    } else static if (isPointer!SourceType)
      __traits(getMember, t, name) = *__traits(getMember, ts[index], name);
    else
      __traits(getMember, t, name) = __traits(getMember, ts[index], name);
  }
}

void setChildFromParent(string name, T, Ts...)(auto ref T t, auto ref Ts ts) {
  template containsChild(Parent) {
    enum containsChild = hasMember!(Parent, name);
  }
  enum index = indexOfPred!(containsChild, AliasSeq!Ts);
  static if (index != -1) {
    alias ChildMemberType = typeof(__traits(getMember, T, name));
    alias Parent = Ts[index];
    alias ParentMemberType = typeof(__traits(getMember, Parent, name));
    static assert(__traits(hasMember, ParentMemberType, "node"), __traits(identifier, ParentMemberType) ~ " doesn't have a member 'node'.");
    alias ParentMemberNodeType = typeof(ParentMemberType.node);
    alias ChildMemberNodeType = typeof(ChildMemberType.node);
    static assert(is(ParentMemberNodeType : NamedNode!type, string type), __traits(identifier, ParentMemberType) ~ "'s member 'node' needs to be of type NamedNode.");
    // NOTE: for now we assert that the ChildMemberNodeType is an HTMLElement, it would be nice to
    // allow the component to restrict the nodetype of child elements, in which case
    // we need to check if ChildMemberNodeType is a supertype or the same as ParentMemberNodeType
    // this way we could e.g. enforce a child of a Table component to be <tr>
    import spasm.bindings.html : HTMLElement;
    static assert(is(ChildMemberNodeType : HTMLElement));
    auto ptr = &__traits(getMember, ts[index], name).node;
    __traits(getMember, t, name) = cast(ChildMemberType)ptr;
  }
}

void verifyChildParams(Super, string parentField, Params...)() {
  import std.traits : hasUDA;
  alias ParamsTuple = staticMap!(TemplateArgsOf, Params);
  static foreach(Param; AliasSeq!ParamsTuple) {{
      enum childName = __traits(identifier, Param.Field);
      alias ChildMemberType = typeof(Param.Field);
      static if (!isBasicType!(ChildMemberType) && !isValue!(Param.Field) && hasMember!(Super, childName)) {
        enum childOffset = __traits(getMember, Super, childName).offsetof;
        enum parentOffset = __traits(getMember, Super, parentField).offsetof;
        static assert(!hasUDA!(__traits(getMember, Super, childName), child), "Propagated member '"~ childName~ "' cannot have @child attribute in struct "~ Super.stringof);
        static assert(childOffset > parentOffset, "Propagated member '"~ childName~ "' needs to be declared after '"~parentField~ "' in struct "~ Super.stringof);
      }
    }}
}

auto setPointers(T, Ts...)(auto ref T t, auto ref Ts ts) {
  import std.meta : AliasSeq;
  import std.traits : hasUDA;
  static foreach(sym; T.tupleof) {{
      static if (isPointer!(typeof(sym)))
        alias ChildType = PointerTarget!(typeof(sym));
      else
        alias ChildType = typeof(sym);
      enum i = sym.stringof; // TODO: can this be fieldName = __traits(identifier, sym) instead of i = sym.stringof ??
      enum isImmutable = is(typeof(sym) : immutable(T), T);
      enum isPublic = __traits(getProtection, sym) == "public";
      static if (!isImmutable) {
        static if (is(ChildType : NamedNode!name, string name)) {
          static if (i != "node")
            setChildFromParent!(__traits(identifier, sym))(t, ts);
        } else {
          static if (isPublic)
            setParamFromParent!(i)(t, ts);
          static if (!is(sym) && isAggregateType!T) {
            static if (is(typeof(sym) : DynamicArray!(Item), Item)) {
              // items in appenders need to be set via render functions
            } else {
              static if (!isCallable!(typeof(sym))) {//} && !isPointer!(typeof(sym))) {
                import spasm.spa;
                alias Params = getUDAs!(sym, Parameters);
                static if (Params.length > 0) {
                  verifyChildParams!(T, i, Params);
                  auto params = createParameterTuple!(Params)(AliasSeq!(t, ts));
                }
                else
                  alias params = AliasSeq!();
                static if (isAggregateType!(ChildType)) {
                  static if (isPointer!(typeof(sym)))
                    setPointers(*__traits(getMember, t, i), AliasSeq!(params, t, ts));
                  else
                    setPointers(__traits(getMember, t, i), AliasSeq!(params, t, ts));
                }
              }
            }
          }
        }
      }
    }}
}

auto isChildVisible(string child, Parent)(auto ref Parent parent) {
  alias visiblePreds = getSymbolsByUDA!(Parent, visible);
  static foreach(sym; visiblePreds) {{
      alias vs = getUDAs!(sym, visible);
      // TODO: static assert sym is callable
      static foreach(v; vs) {{
        static if (is(v == visible!name, string name) && child == name) {
          static if (is(typeof(sym) == bool)) {
            if (!__traits(getMember, parent, __traits(identifier,sym)))
              return false;
          } else {
            auto result = callMember!(__traits(identifier, sym))(parent);
            if (result == false)
              return false;
          }
        }
        }}
    }}
  return true;
}

auto callMember(string fun, T)(auto ref T t) {
  import spasm.ct : ParameterIdentifierTuple;
  import std.meta : staticMap, AliasSeq;
  alias params = ParameterIdentifierTuple!(__traits(getMember, t, fun));
  static if (params.length == 0) {
    return __traits(getMember, t, fun)();
  } else static if (params.length == 1) {
    return __traits(getMember, t, fun)(__traits(getMember, t, params[0]));
  } else static if (params.length == 2) {
    return __traits(getMember, t, fun)(__traits(getMember, t, params[0]),__traits(getMember, t, params[1]));
  }
  else {
    static assert(false, "Not implemented");
  }
}

auto renderIntoNode(T, Ts...)(Handle parent, auto ref T t, auto ref Ts ts) if (isPointer!T) {
  return renderIntoNode(parent, *t, ts);
}

ref auto getNamedNode(T)(auto ref T t) if (isPointer!T) {
  return (*t).getNamedNode();
}

ref auto getNamedNode(T)(auto ref T t) if (!isPointer!T) {
  import spasm.node : NamedNode;
  static if (is(T : NamedNode!name, string name)) {
    return t;
  } else static if (hasMember!(T, "node")) {
    return t.node;
  } else {
    alias children = getSymbolsByUDA!(T, child);
    static assert(children.length == 1);
    return __traits(getMember, t, __traits(identifier, children[0])).getNamedNode();
  }
}

template createNestedChildRenderFuncs(string memberName) {
  auto createNestedChildRenderFuncs(T)(auto ref T t) {
    import std.traits : hasUDA;
    import std.typecons : tuple;
    template isNestedChild(alias member) {
      alias MemberType = typeof(member);
      static if (!__traits(hasMember, MemberType, "node"))
        enum isNestedChild = false;
      else
        enum isNestedChild = is(typeof(MemberType.node) : NamedNode!type, string type);
    }
    template extractName(alias param) {
      alias extractName = param.Name;
    }
    template extractField(alias param) {
      alias extractField = param.Field;
    }
    template isFieldNestedChild(alias param) {
      enum isFieldNestedChild = isNestedChild!(extractField!(param));
    }
    auto createRenderFunc(alias param)() @trusted {
      enum nestedChildName = __traits(identifier, extractField!(param));
      return cast(NestedChildRenderFunc)(Handle parent) @safe {
        auto nestedChildRenderFuncs = .createNestedChildRenderFuncs!(nestedChildName)(t);
        render(parent, __traits(getMember, t, nestedChildName), nestedChildRenderFuncs);
      };
    }
    alias ParamsTuple = getAnnotatedParameters!(__traits(getMember, T, memberName));
    alias ParamFieldsTuple = staticMap!(extractField, ParamsTuple);
    alias nestedChildParams = Filter!(isFieldNestedChild, ParamsTuple);
    alias Names = staticMap!(extractName, nestedChildParams);
    static if (Names.length == 0)
      return tuple();
    else
      return tuple!(Names)(staticMap!(createRenderFunc, nestedChildParams));
  }
}

alias NestedChildRenderFunc = void delegate(uint) nothrow @safe;

template renderNestedChild(string field) {
  template hasRenderFunc(alias T) {
    static if (!hasMember!(T, field))
      enum hasRenderFunc = false;
    else {
      alias fieldType = typeof(__traits(getMember, T, field));
      enum hasRenderFunc = is(fieldType : NestedChildRenderFunc);
    }
  }
  auto renderNestedChild(T, Ts...)(Handle parent, auto ref T t, auto ref Ts ts) {
    enum tupleIndex = indexOfPred!(hasRenderFunc, Ts);
    static if (tupleIndex != -1) {
      __traits(getMember, ts[tupleIndex], field)(parent);
    }
  }
}
// NOTE: only trusted because of the one __gshared thing
@trusted auto renderIntoNode(T, Ts...)(Handle parent, auto ref T t, auto ref Ts ts) if (!isPointer!T) {
  import std.traits : hasUDA, getUDAs;
  import std.meta : AliasSeq;
  import std.meta : staticMap;
  import std.traits : isCallable, getSymbolsByUDA, isPointer;
  import std.conv : text;
  enum hasNode = hasMember!(T, "node");
  static if (hasNode) {
    bool shouldRender = t.getNamedNode().node == invalidHandle;
  } else
    bool shouldRender = true;
  if (shouldRender) {
    auto node = createNode(parent, t);
    static if (hasMember!(T, "node")) {
      t.getNamedNode().node.handle.handle = node;
    }
    alias StyleSet = getStyleSet!T;
    static foreach(sym; T.tupleof) {{
        enum i = sym.stringof;
        alias name = getSymbolCustomName!(sym, domName!i);
        static if (!is(sym)) {
          alias styles = getStyles!(sym);
          static if (hasUDA!(sym, child)) {
            import spasm.spa;
            alias params = AliasSeq!();
            if (isChildVisible!(i)(t)) {
              static if (is(typeof(sym) : DynamicArray!(Item*), Item)) {
                foreach(ref item; __traits(getMember, t, i)) {
                  node.render(*item, AliasSeq!(params));
                  static if (is(typeof(t) == Array!Item))
                    t.assignEventListeners(*item);
                }
              } else static if (is(typeof(sym) : NamedNode!(name)*, string name)) {
                renderNestedChild!(i)(node, t, ts);
              } else {
                auto nestedChildRenderFuncs = createNestedChildRenderFuncs!(i)(t);
                node.render(__traits(getMember, t, i), AliasSeq!(params, nestedChildRenderFuncs));
              }
            }
          } else static if (hasUDA!(sym, prop)) {
            node.setPropertyTyped!name(__traits(getMember, t, i));
          } else static if (hasUDA!(sym, attr)) {
            node.setAttributeTyped!name(__traits(getMember, t, i));
          }

          alias extendedStyles = getStyleSets!(sym);
          static foreach(style; extendedStyles) {
            static assert(hasMember!(typeof(sym), "node"), "styleset on field is currently only possible when said field has a Node mixin");
            __traits(getMember, t, i).node.setAttribute(GenerateExtendedStyleSetName!style,"");
          }
          static if (i == "node") {
            node.applyStyles!(T, styles);
          } else static if (styles.length > 0) {
            static if (isCallable!(sym)) {
              auto result = callMember!(i)(t);
              if (result == true) {
               t.getNamedNode.applyStyles!(T, styles);
              }
            } else static if (is(typeof(sym) == bool)) {
              if (__traits(getMember, t, i) == true)
                t.getNamedNode.applyStyles!(T, styles);
            } else static if (hasUDA!(sym, child)) {
              getNamedNode(__traits(getMember, t, i)).applyStyles!(T, styles);
            }
          }
        }
      }}
    static foreach(i; __traits(allMembers, T)) {{
        static if (!is(__traits(getMember, T, i)) && isCallable!(__traits(getMember, T, i))) {
          alias sym = AliasSeq!(__traits(getMember, T, i))[0];

          alias name = getSymbolCustomName!(sym, domName!i);
          static if (hasUDA!(sym, child))
            static assert(false, "we don't support @child functions");
          else static if (hasUDA!(sym, prop)) {
            auto result = callMember!(i)(t);
            t.getNamedNode.setPropertyTyped!name(result);
          } else static if (hasUDA!(sym, callback)) {
            t.getNamedNode.addEventListenerTyped!i(t);
          } else static if (hasUDA!(sym, attr)) {
            auto result = callMember!(i)(t);
            t.getNamedNode.setAttributeTyped!name(result);
          } else static if (hasUDA!(sym, style)) {
              auto result = callMember!(i)(t);
              static foreach (style; getStyles!(sym)) {
                __gshared static string className = GetCssClassName!(T, style);
                t.getNamedNode.changeClass(className,result);
              }
          } else static if (hasUDA!(sym, connect)) {
            alias connects = getUDAs!(sym, connect);
            static foreach(c; connects) {
              auto del = &__traits(getMember, t, i);
              static if (is(c: connect!(a,b), alias a, alias b)) {
                mixin("t."~a~"."~replace!(b,'.','_')~".add(del);");
              } else static if (is(c : connect!field, alias field)) {
                static assert(__traits(compiles, mixin("t."~field)),
                  "Cannot find property "~field~" on "~T.stringof~" in @connect");
                mixin("t."~field~".add(del);");
              }
            }
          }
        }
      }}

    alias enumsWithApplyStyles = getSymbolsByUDA!(T, ApplyStyle);
    static foreach(member; enumsWithApplyStyles) {{
        alias ApplyStyles = getUDAs!(member, ApplyStyle);
        static foreach(s; ApplyStyles) {
          static if (is(s == ApplyStyle!Target, alias Target)) {
            static if (isFunction!member)
              alias EnumType = ReturnType!member;
            else
              alias EnumType = typeof(member);
            alias GetUDAs = ApplyRight!(ApplyLeft!(getEnumUDAs, EnumType), style);
            alias table = staticMap!(GetUDAs, __traits(allMembers, EnumType));
            alias GetCssClass = ApplyLeft!(GetCssClassName, T);
            alias classes = staticMap!(GetCssClass, staticMap!(extractStyleStruct, table));
            enum string[classes.length] styleTable = [classes];
            size_t idx = __traits(getMember, t, __traits(identifier, member));
            static if (__traits(identifier, Target) == "node") {
              node.addClass(styleTable[idx]);
            } else static if (hasUDA!(Target, child)) {
              __traits(getMember, t, __traits(identifier, Target)).getNamedNode.addClass(styleTable[idx]);
            } else
              static assert(false, "Can only have ApplyStyle point to node or to a child component");
          }
        }
      }}
  }
 }

template getSymbolCustomName(alias symbol, string defaultName) {
  alias names = getStringUDAs!(symbol);
  static if (names.length > 0)
    enum getSymbolCustomName = names[0];
  else
    enum getSymbolCustomName = defaultName;
}
template getEnumUDAs(EnumType, string field, alias UDA) {
  alias udas = AliasSeq!(__traits(getAttributes, __traits(getMember, EnumType, field)));
  alias getEnumUDAs = Filter!(isDesiredUDA!UDA, udas);
}

private template isDesiredUDA(alias attribute) {
  template isDesiredUDA(alias toCheck) {
    static if (is(typeof(attribute)) && !__traits(isTemplate, attribute)) {
      static if (__traits(compiles, toCheck == attribute))
        enum isDesiredUDA = toCheck == attribute;
      else
        enum isDesiredUDA = false;
    } else static if (is(typeof(toCheck))) {
      static if (__traits(isTemplate, attribute))
        enum isDesiredUDA =  isInstanceOf!(attribute, typeof(toCheck));
      else
        enum isDesiredUDA = is(typeof(toCheck) == attribute);
    } else static if (__traits(isTemplate, attribute))
      enum isDesiredUDA = isInstanceOf!(attribute, toCheck);
    else
      enum isDesiredUDA = is(toCheck == attribute);
  }
}

template among(alias field, T...) {
  static if (T.length == 0)
    enum among = false;
  else static if (T.length == 1)
    enum among = field.stringof == T[0];
  else
    enum among = among!(field,T[0..$/2]) || among!(field,T[$/2..$]);
}

template getAnnotatedParameters(alias symbol) {
  import spasm.spa;
  alias Params = getUDAs!(symbol, Parameters);
  alias getAnnotatedParameters = staticMap!(TemplateArgsOf, Params);
}

template updateChildren(alias member) {
  enum field = __traits(identifier, member);
  alias Source = AliasSeq!(__traits(parent, member))[0];
  template isParamField(Param) {
    enum isParamField = TemplateArgsOf!(Param)[1].stringof == field;
  }
  static void updateChildren(Parent)(auto ref Parent parent) {
    // we are updating field in parent
    // all children that have a pointer with the exact same name
    // should get an update
    // all children that have a params annotation that refers to the field
    // should get an update
    import std.traits : getSymbolsByUDA;
    import std.meta : ApplyLeft, staticMap;
    static if (isPointer!(Parent))
      alias ParentType = PointerTarget!(Parent);
    else
      alias ParentType = Parent;
    static foreach(t; ParentType.tupleof) {
      static foreach(param; getAnnotatedParameters!(t)) {{
          static if (!isValue!(TemplateArgsOf!(param)[1])) {
            alias target = TemplateArgsOf!(param)[1];
            static if (__traits(isSame, target, member)) {
              __traits(getMember, parent, __traits(identifier, t)).update!(__traits(getMember, __traits(getMember, parent, __traits(identifier, t)), param.Name));
            }
          }
        }}
    }
    alias getSymbol = ApplyLeft!(getMember, parent);
    alias childrenNames = getChildren!Parent;
    alias children = staticMap!(getSymbol,childrenNames);
    static foreach(c; children) {{
        alias ChildType = typeof(c);
        static if (hasMember!(ChildType, field)) {
          __traits(getMember, parent, c.stringof).update!(__traits(getMember, __traits(getMember, parent, c.stringof), field));
        } else
          .updateChildren!(member)(__traits(getMember, parent, c.stringof));
      }}
  }
}

auto update(T)(ref T node) if (hasMember!(T, "node")){
  struct Inner {
    nothrow:
    void opDispatch(string name, V)(auto ref V v) const @safe {
      mixin("node.update!(node." ~ name ~ ")(v);");
      // NOTE: static assert won't work in opDispatch, as the compiler will not output the string but just ignore the opDispatch call and error out saying missing field on Inner
      static if(!hasMember!(T, name))
        pragma(msg, "********* Error: " ~ T.stringof ~ " has no property named "~name);
    }
  }
  return Inner();
}

void update(Range, Sink)(auto ref Range source, ref Sink sink) {
  import std.range : ElementType;
  import std.algorithm : copy;
  alias E = ElementType!Range;
  auto output = Updater!(Sink)(&sink);
  foreach(i; source)
    output.put(i);
}

void setVisible(string field, Parent)(auto ref Parent parent, bool visible) {
  bool current = __traits(getMember, parent, field).node.mounted;
  if (current != visible) {
    if (visible) {
      remount!(field)(parent);
    } else {
      unmount(__traits(getMember, parent, field));
    }
  }
}

@trusted
template update(alias field) {
  import std.traits : isPointer;
  static void updateDom(Parent, T)(auto ref Parent parent, auto ref T t) {
    import spasm.ct : ParameterIdentifierTuple;
    import std.traits : hasUDA, isCallable, getUDAs;
    import std.meta : AliasSeq;
    import std.meta : staticMap;
    alias name = domName!(field.stringof);
    static if (hasUDA!(field, prop)) {
      parent.node.setPropertyTyped!name(t);
    } else static if (hasUDA!(field, attr)) {
      parent.node.setAttributeTyped!name(t);
    }
    static if (is(T == bool)) {
      alias styles = getStyles!(field);
      static foreach(style; styles) {
        __gshared static string className = GetCssClassName!(Parent, style);
        parent.getNamedNode.changeClass(className,t);
      }
      static if (hasUDA!(field, visible)) {
        alias udas = getUDAs!(field, visible);
        static foreach (uda; udas) {
          static if (is(uda : visible!elem, alias elem)) {
            setVisible!(elem)(parent, __traits(getMember, parent, __traits(identifier, field)));
          }
        }
      }
    }
    static foreach(i; __traits(allMembers, Parent)) {{
        alias sym = AliasSeq!(__traits(getMember, parent, i))[0];
        static if (isCallable!(sym)) {
          alias params = ParameterIdentifierTuple!sym;
          static if (among!(field, params)) {
            static if (hasUDA!(sym, prop)) {
              alias cleanName = domName!i;
              auto result = callMember!(i)(parent);
              parent.node.node.setPropertyTyped!cleanName(result);
            }
            else static if (hasUDA!(sym, attr)) {
              alias cleanName = domName!i;
              auto result = callMember!(i)(parent);
              parent.node.node.setAttributeTyped!cleanName(result);
            }
            else static if (hasUDA!(sym, style)) {
              auto result = callMember!(i)(parent);
              static foreach (style; getStyles!(sym))
              {
                __gshared static string className = GetCssClassName!(Parent, style);
                parent.node.node.changeClass(className,result);
              }
            } else {
              import std.traits : ReturnType;
              alias RType = ReturnType!(__traits(getMember, parent, i));
              static if (is(RType : void))
                callMember!(i)(parent);
              else {
                auto result = callMember!(i)(parent);
                static if (hasUDA!(sym, visible)) {
                  alias udas = getUDAs!(sym, visible);
                  static foreach(uda; udas) {
                    static if (is(uda : visible!elem, alias elem)) {
                      setVisible!(elem)(parent, result);
                    }
                  }
                }
              }
            }
          }
        }
      }}
    updateChildren!(field)(parent);
  }
  static void update(Parent)(scope auto ref Parent parent) {
    if (!parent.node.mounted)
      return;
    static if (isPointer!Parent)
      updateDom(*parent, __traits(getMember, parent, field.stringof));
    else
      updateDom(parent, __traits(getMember, parent, field.stringof));
  }
  static void update(Parent, T)(scope auto ref Parent parent, T t) {
    mixin("parent."~field.stringof~" = t;");
    if (!parent.node.mounted)
      return;
    static if (isPointer!Parent)
      updateDom(*parent, t);
    else
      updateDom(parent, t);
  }
}

template symbolFromAliasThis(Parent, string name) {
  import std.meta : anySatisfy;
  alias aliasThises = AliasSeq!(__traits(getAliasThis, Parent));
  static if (aliasThises.length == 0)
    enum symbolFromAliasThis = false;
  else {
    alias hasSymbol = ApplyRight!(hasMember, name);
    enum symbolFromAliasThis = anySatisfy!(hasSymbol, aliasThises);
  }
}

auto setAttributeTyped(string name, T)(Handle node, auto ref T t) {
  import std.traits : isPointer;
  static if (isPointer!T) {
    if (t !is null)
      node.setAttributeTyped!name(*t);
  } else static if (is(T == bool)) {
    node.setAttributeBool(name, t);
  } else static if (is(T : int)) {
    node.setAttributeInt(name, t);
  } else {
    node.setAttribute(name, t);
  }
}

auto setPropertyTyped(string name, T)(Handle node, auto ref T t) {
  import std.traits : isPointer, isNumeric;
  static if (isPointer!T) {
    if (t !is null)
      node.setPropertyTyped!name(*t);
  }
  else static if (is(T == bool))
    node.setPropertyBool(name, t);
  else static if (isIntegral!(T))
    node.setPropertyInt(name, t);
  else static if (isNumeric!(T))
    node.setPropertyDouble(name, t);
  else
  {
    static if (__traits(compiles, __traits(getMember, api, name)))
      __traits(getMember, api, name)(node, t);
    else
      node.setProperty(name, t);
  }
}

auto applyStyles(T, styles...)(Handle node) {
  static foreach(style; styles) {
    node.addClass(GetCssClassName!(T, style));
  }
}

Handle createNode(T)(Handle parent, ref T t) {
  enum hasNode = hasMember!(T, "node");
  static if (hasNode && is(typeof(t.node) : NamedNode!tag, alias tag)) {
    mixin("NodeType n = NodeType." ~ tag ~ ";");
    return createElement(n);
  } else
    return parent;
}

template indexOfPred(alias Pred, TList...) {
  enum indexOfPred = indexOf!(Pred, TList).index;
}

template indexOf(alias Pred, args...) {
  import std.meta : AliasSeq;
  static if (args.length > 0) {
    static if (Pred!(args[0])) {
      enum index = 0;
    } else {
      enum next = indexOf!(Pred, AliasSeq!(args[1..$])).index;
      enum index = (next == -1) ? -1 : 1 + next;
    }
  } else {
    enum index = -1;
  }
}

template domName(string name) {
  import std.algorithm : stripRight;
  import std.conv : text;
  static if (name[$-1] == '_')
    enum domName = name[0..$-1];
  else
    enum domName = name;
}

template join(Seq...) {
  static if (is(typeof(Seq) == string))
    enum join = Seq;
  else {
    static if (Seq.length == 1) {
      enum join = Seq[0];
    }
    else {
      enum join = Seq[0] ~ "," ~ join!(Seq[1 .. $]);
    }
  }
}
