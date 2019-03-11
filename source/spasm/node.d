module spasm.node;

pragma(LDC_no_moduleinfo);
pragma(LDC_no_typeinfo);

import spasm.types;

template getChildren(Parent) {
  import std.traits : hasUDA;
  import std.meta : AliasSeq;
  import std.traits : FieldNameTuple;
  alias members = FieldNameTuple!Parent;
  template isChild(string member) {
    static if (__traits(compiles, __traits(getMember, Parent, member)))
      enum isChild = hasUDA!(__traits(getMember, Parent, member), child);
    else
      enum isChild = false;
  }
  import std.meta : Filter;
  alias getChildren = Filter!(isChild, members);
}

struct BaseNode {
  JsHandle node = invalidHandle;
  bool mounted;
  bool marked;
  alias node this;
}

struct NamedNode(string tag) {
  BaseNode node;
  alias node this;
}

mixin template Node(string str) {
  mixin("NamedNode!\""~str~"\" node;");
}
