module spasm.array;

import spasm.event;
import spasm.node;
import spasm.ct;
import spasm.node;
import spasm.dom;
import spasm.types;
import std.range : only;
import std.algorithm : joiner;
import std.conv : text;
import spasm.rt.array;

nothrow:
@safe:

template extractEventPaths(T, Ts...) {
  import std.meta : staticMap, AliasSeq;
  import std.traits : getSymbolsByUDA;
  alias events = getSymbolsByUDA!(T, eventemitter);
  alias children = getChildren!T;
  template recur(string NextT) {
    alias recur = extractEventPaths!(typeof(__traits(getMember, T, NextT)), AliasSeq!(Ts, NextT));
  }
  template prefixNames(string Event) {
    import spasm.ct : tuple;
    enum prefixNames = tuple(Ts, Event);
  }
  alias eventNames = staticMap!(getName, AliasSeq!(events));
  alias prefixed = staticMap!(prefixNames, eventNames);
  alias extractEventPaths = AliasSeq!(prefixed,staticMap!(recur, getChildren!T));
}

template join(string delimiter, elems...) {
  static if (elems.length == 0)
    enum join = "";
  else static if (elems.length == 1)
    enum join = elems[0];
  else
    enum join = elems[0] ~ delimiter ~ join!(delimiter, elems[1..$]);
}

mixin template ArrayItemEvents(T) {
  static foreach(path; extractEventPaths!(T)) {
    mixin Slot!(join!("_",path.expand));
    mixin("void __" ~ join!("_", path.expand) ~ "(size_t addr) { " ~ join!("_", path.expand) ~ ".emit(this.getIndexInArray(addr));}");
  }
}

void assignEventListeners(T)(ref Array!T arr, ref T item) {
  alias eventPaths = extractEventPaths!(T);
  static foreach(path; eventPaths) {
    mixin("item." ~ join!(".", path.expand) ~ ".add(&arr.__" ~ join!("_", path.expand) ~ ");");
  }
}

auto getIndexInArray(T)(auto ref Array!T arr, size_t ptr) {
  import std.algorithm : countUntil;
  return arr[].countUntil!((ref T* item) {
      auto baseAddr = cast(size_t)(cast(void*)item);
      return baseAddr <= ptr && (baseAddr + T.sizeof) > ptr;
    });
}

struct Array(T) {
  @child DynamicArray!(T*) appender;
  mixin ArrayItemEvents!T;
  alias appender this;
  void put(T* t) {
    this.assignEventListeners(*t);
    appender.put(t);
  }
}

struct Updater(T) {
  private {
    T* list;
    size_t idx;
  }
  this(T* list) {
    this.list=list;
    foreach(i; list.items) {
      i.node.marked = true;
    }
  }
  ~this() {
    if (idx < list.items.length)
      foreach (i; list.items[idx .. $]) {
        if (i.node.marked)
          unmount(*i);
      }
    list.items.shrinkTo(idx);
  }
  void put(Item)(Item* t) {
    size_t i = idx++;
    t.node.marked = false;
    if (list.items.length > i) {
      if (list.items[i] == t) {
        return;
      }
      // TODO: here we can use replaceChild
      if (list.items[i].node.marked)
        unmount(*list.items[i]);
      if (idx+1 < list.items.length) {
        if (list.items[i+1] == t) {
          list.items.remove(i);
          return;
        } else {
          list.items[i] = t;
          list.items.assignEventListeners(*t);
          if (list.items[i+1].node.marked)
            list.node.renderBefore((*list.items[i]).node.handle, list.items[i+1].node);
          else {
            size_t off = 2;
            while (i+off < list.items.length) {
              if (list.items[i+off].node.marked) {
                list.node.renderBefore((*list.items[i]).node.handle, list.items[i+off].node);
                return;
              }
              off+=1;
            }
            list.node.render(*list.items[i]);
            return;
          }
        }
      } else {
        list.items[i] = t;
        list.items.assignEventListeners(*t);
        list.node.render(*list.items[i]);
      }
    } else {
      list.put(t);
    }
  }
}

import std.traits : hasMember, isPointer;
bool removeItem(T)(ref T app, size_t idx) { //}if (hasMember!(T, "remove")) {
  app.remove(idx);
  return true;
}

bool removeItem(T,U)(ref T app, ref U t) if (isPointer!(U)) {
  import std.algorithm : countUntil, remove;
  auto idx = app[0..$].countUntil(t);
  if (idx == -1)
    return false;
  return app.removeItem(idx);
}

struct List(T, string tag) {
  mixin Node!tag;
  @child Array!(T) items;
  void put(T* t) {
    items.put(t);
    spasm.dom.render(node,*items[$-1]);
  }
  void shrinkTo(size_t size) {
    if (size < items.length)
      foreach(i; items[size..$]) {
        unmount(*i);
      }
    items.shrinkTo(size);
  }
  void remove(size_t idx) {
    .removeChild(items.appender[idx]);
    import std.algorithm : remove;
    items.appender.removeItem(idx);
  }
}

alias UnorderedList(T) = List!(T,"ul");
