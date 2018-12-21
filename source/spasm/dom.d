module spasm.dom;

import spasm.types;
import spasm.dom;
import spasm.ct;
import std.traits : hasMember;
import spasm.css;
import spasm.node;
import spasm.event;
import std.meta : staticIndexOf;
import spasm.array;
import spasm.rt.array;

private extern(C) {
  JsHandle createElement(NodeType type);
  void addClass(JsHandle node, string className);
  void setProperty(JsHandle node, string prop, string value);
  void removeChild(JsHandle childPtr);
  void unmount(JsHandle childPtr);
  void appendChild(JsHandle parentPtr, JsHandle childPtr);
  void insertBefore(JsHandle parentPtr, JsHandle childPtr, JsHandle sibling);
  void setAttribute(JsHandle nodePtr, string attr, string value);
  void setPropertyBool(JsHandle nodePtr, string attr, bool value);
  void setPropertyInt(JsHandle nodePtr, string attr, int value);
  void innerText(JsHandle nodePtr, string text);
  void addCss(string css);
  void removeClass(JsHandle node, string className);
  void changeClass(JsHandle node, string className, bool on);
}

extern(C) {
  string getProperty(JsHandle node, string prop);
  int getPropertyInt(JsHandle node, string prop);
  bool getPropertyBool(JsHandle node, string prop);
  void focus(JsHandle node);
  void setSelectionRange(JsHandle node, uint start, uint end);
}

__gshared JsHandle document = 0;

void unmount(T)(auto ref T t) if (hasMember!(T, "node")) {
  unmount(t.node.node);
  static if (hasMember!(T, "node"))
    t.node.mounted = false;
  t.propagateOnUnmount();
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

auto renderBefore(T, Ts...)(JsHandle parent, auto ref T t, JsHandle sibling, auto ref Ts ts) {
  if (parent == invalidHandle)
    return;
  renderIntoNode(parent, t, ts);
  static if (hasMember!(T, "node")) {
    parent.insertBefore(t.node.node, sibling);
    t.node.mounted = true;
  }
  t.propagateOnMount();
}

auto render(T, Ts...)(JsHandle parent, auto ref T t, auto ref Ts ts) {
  if (parent == invalidHandle)
    return;
  renderIntoNode(parent, t, ts);
  static if (hasMember!(T, "node")) {
    parent.appendChild(t.node.node);
    t.node.mounted = true;
  }
  t.propagateOnMount();
}

import std.traits : isFunction;
auto propagateOnMount(T)(auto ref T t) {
  static foreach (c; getChildren!T)
    __traits(getMember, t, c).propagateOnMount();
  // static if (hasMember!(T, "node"))
    // t.node.mounted = true;
  static if (hasMember!(T, "onMount") && isFunction!(T.onMount))
    t.onMount();
}

auto propagateOnUnmount(T)(auto ref T t)
{
  static foreach (c; getChildren!T)
    __traits(getMember, t, c).propagateOnMount();
  // static if (hasMember!(T, "node"))
    // t.node.mounted = false;
  static if (hasMember!(T, "onUnmount") && isFunction!(T.onUnmount))
    t.onUnmount();
}

auto remount(string field, Parent)(auto ref Parent parent) {
  import std.traits : hasUDA;
  import std.meta : AliasSeq;
  alias fields = AliasSeq!(__traits(allMembers, Parent));//FieldNameTuple!Parent;
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

auto setPointers(T, Ts...)(auto ref T t, auto ref Ts ts) {
  import std.meta : AliasSeq;
  import std.traits : hasUDA;
  static foreach(i; __traits(allMembers, T)) {{
      alias sym = AliasSeq!(__traits(getMember, t, i))[0];
      static if (is(typeof(sym) == Prop*, Prop)) {
        setPointerFromParent!(i)(t, ts);
      }
      static if (hasUDA!(sym, child)) {
        static if (is(typeof(sym) : DynamicArray!(Item), Item)) {
          // items in appenders need to be set via render functions
        } else {
          setPointers(__traits(getMember, t, i), AliasSeq!(t, ts));
        }
      }
    }}
}

auto isChildVisible(string child, Parent)(auto ref Parent parent) {
  import std.traits : getSymbolsByUDA, getUDAs;
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
    pragma(msg, params.length);
    static assert(false, "Not implemented");
  }
}

auto renderIntoNode(T, Ts...)(JsHandle parent, auto ref T t, auto ref Ts ts) {
  import std.traits : hasUDA, getUDAs;
  import std.meta : AliasSeq;
  import std.meta : staticMap;
  import std.traits : isCallable, getSymbolsByUDA, isPointer;
  import std.conv : text;
  enum hasNode = hasMember!(T, "node");
  static if (hasNode)
    bool shouldRender = t.node.node == invalidHandle;
  else
    bool shouldRender = true;
  if (shouldRender) {
    auto node = createNode(parent, t);
    alias StyleSet = getStyleSet!T;
    static foreach(i; __traits(allMembers, T)) {{
        alias name = domName!i;
        alias sym = AliasSeq!(__traits(getMember, t, i))[0];
        alias styles = getStyles!(sym);
        static if (is(typeof(sym) == Prop*, Prop)) {
          if (__traits(getMember, t, i) is null)
            setPointerFromParent!(i)(t, ts);
        }
        static if (hasUDA!(sym, child)) {
          if (isChildVisible!(i)(t)) {
            static if (is(typeof(sym) : DynamicArray!(Item*), Item)) {
              foreach(ref item; __traits(getMember, t, i)) {
                // TODO: we only need to pass t to a child render function when there is a child that has an alias to one of its member
                node.render(*item, AliasSeq!(t, ts));
                static if (is(typeof(t) == Array!Item))
                  t.assignEventListeners(*item);
              }
            } else {
              // TODO: we only need to pass t to a child render function when there is a child that has an alias to one of its member
              node.render(__traits(getMember, t, i), AliasSeq!(t, ts));
            }
          }
        } else static if (hasUDA!(sym, prop)) {
          static if (isCallable!(sym)) {
            auto result = callMember!(i)(t);
            node.setPropertyTyped!name(result);
          } else {
            node.setPropertyTyped!name(__traits(getMember, t, i));
          }
        } else static if (hasUDA!(sym, callback)) {
          node.addEventListenerTyped!i(t);
        } else static if (hasUDA!(sym, attr)) {
          static if (isCallable!(sym)) {
            auto result = callMember!(sym)(t);
            node.setAttributeTyped!name(result);
          } else {
            node.setAttributeTyped!name(__traits(getMember, t, i));
          }
        } else static if (hasUDA!(sym, connect)) {
          alias connects = getUDAs!(sym, connect);
          static foreach(c; connects) {
            auto del = &__traits(getMember, t, i);
            static if (is(c: connect!(a,b), alias a, alias b)) {
              mixin("t."~a~"."~replace!(b,'.','_')~".add(del);");
            } else static if (is(c : connect!field, alias field)) {
              mixin("t."~field~".add(del);");
            }
          }
        }
        static if (i == "node") {
          node.applyStyles!(T, styles);
        } else static if (styles.length > 0) {
          static if (isCallable!(sym)) {
            auto result = callMember!(i)(t);
            if (result == true) {
              node.applyStyles!(T, styles);
            }
          } else static if (is(typeof(sym) == bool)) {
            if (__traits(getMember, t, i) == true)
              node.applyStyles!(T, styles);
          } else static if (hasUDA!(sym, child)) {
            __traits(getMember, t, i).node.applyStyles!(typeof(sym), styles);
          }
        }
      }}
    static if (hasMember!(T, "node")) {
      t.node.node = node;
    }
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

template updateChildren(string field) {
  static auto updateChildren(Parent, Ts...)(auto ref Parent parent, auto ref Ts ts) {
    import std.traits : getSymbolsByUDA;
    import std.meta : ApplyLeft, staticMap;
    alias getSymbol = ApplyLeft!(getMember, parent);
    alias childrenNames = getChildren!Parent;
    alias children = staticMap!(getSymbol,childrenNames);
    static foreach(c; children) {{
      alias ChildType = typeof(c);
      static if (hasMember!(ChildType, field)) {
        __traits(getMember, parent, c.stringof).update!(__traits(getMember, __traits(getMember, parent, c.stringof), field));
      } else
        .updateChildren!(field)(__traits(getMember, parent, c.stringof));
      }}
  }
}

auto update(T)(ref T node) if (hasMember!(T, "node")){
  struct Inner {
    auto opDispatch(string name, T)(auto ref T t) const {
      mixin("node.update!(node." ~ name ~ ")(t);");
    }
  }
  return Inner();
}

void update(Range, Sink)(Range source, ref Sink sink) {
  import std.range : ElementType;
  import std.algorithm : copy;
  alias E = ElementType!Range;
  auto output = Updater!(Sink)(&sink);
  foreach(i; source)
    output.put(i);
}

auto setVisible(string field, Parent)(auto ref Parent parent, bool visible) {
  bool current = __traits(getMember, parent, field).node.mounted;
  if (current != visible) {
    if (visible) {
      remount!(field)(parent);
    } else {
      unmount(__traits(getMember, parent, field));
    }
  }
}

template update(alias field) {
  import std.traits : isPointer;
  static auto updateDom(Parent, T)(auto ref Parent parent, auto ref T t) {
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
        parent.node.changeClass(className,t);
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
            else static if (hasUDA!(sym, style)) {
              alias styles = getStyles!(sym);
              auto result = callMember!(i)(parent);
              static foreach (style; styles)
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
    updateChildren!(field.stringof)(parent);
  }
  static auto update(Parent)(auto ref Parent parent) {
    static if (isPointer!Parent)
      updateDom(*parent, __traits(getMember, parent, field.stringof));
    else
      updateDom(parent, __traits(getMember, parent, field.stringof));
  }
  static auto update(Parent, T)(auto ref Parent parent, T t) {
    mixin("parent."~field.stringof~" = t;");
    static if (isPointer!Parent)
      updateDom(*parent, t);
    else
      updateDom(parent, t);
  }
}

void setPointerFromParent(string name, T, Ts...)(ref T t, auto ref Ts ts) {
  import std.traits : PointerTarget;
  import std.meta : AliasSeq;
  alias FieldType = PointerTarget!(typeof(getMember!(T, name)));
  template matchesField(Parent) {
    enum matchesField = hasMember!(Parent, name) && is(typeof(getMember!(Parent, name)) == FieldType);
  }
  enum index = indexOfPred!(matchesField, AliasSeq!Ts);
  __traits(getMember, t, name) = &__traits(getMember, ts[index], name);
}

auto setAttributeTyped(string name, T)(JsHandle node, auto ref T t) {
  import std.traits : isPointer;
  static if (isPointer!T)
    node.setAttributeTyped!name(*t);
  else static if (is(T == bool))
    node.setAttributeBool(name, t);
  else {
    node.setAttribute(name, t);
  }
}

auto setPropertyTyped(string name, T)(JsHandle node, auto ref T t) {
  import std.traits : isPointer, isNumeric;
  static if (isPointer!T) {
    node.setPropertyTyped!name(*t);
  }
  else static if (is(T == bool))
    node.setPropertyBool(name, t);
  else static if (isNumeric!(T))
    node.setPropertyInt(name, t);
  else
  {
    static if (__traits(compiles, __traits(getMember, api, name)))
      __traits(getMember, api, name)(node, t);
    else
      node.setProperty(name, t);
  }
}

auto applyStyles(T, styles...)(JsHandle node) {
  static foreach(style; styles) {
    node.addClass(GetCssClassName!(T, style));
  }
}

JsHandle createNode(T)(JsHandle parent, ref T t) {
  enum hasNode = hasMember!(T, "node");
  static if (hasNode && is(typeof(t.node) : NamedJsHandle!tag, alias tag)) {
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
