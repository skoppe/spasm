module spasm.rt.gc;

struct Marker {
  void mark(T)(T[] arr) {
    pragma(msg, "Mark ", T, "[]");
  }
  void mark(T)(T* ptr) {
    pragma(msg, "Mark ", T, "*");
  }
}
alias MarkFunction = void function(void*, ref Marker);

struct Node {
  MarkFunction mark;
  void* root;
}

__gshared Node singleNode = void;

import std.traits : isPointer, isBasicType, isCallable, PointerTarget;
import std.meta : staticMap, Filter;

void markMemory(T)(T* root, ref Marker marker) {
  static if (is(T : A[], A)) {
    if (root is null)
      return;
    marker.mark(root);
    static if (isPointer!A) {
      foreach(item; (*root)) {
        marker.mark(item);
        alias Target = PointerTarget!A;
        static if (!isBasicType!(Target) && !is(Target == enum))
          markMemory(item, marker);
      }
    }
  } else {
    static foreach(idx, member; T.tupleof) {{
        static if (!isCallable!(member)) {
          static if (isPointer!(typeof(member))) {
            marker.mark(root.tupleof[idx]);
            alias Target = PointerTarget!(typeof(member));
            static if (!isBasicType!(Target) && !is(Target == enum))
              if (root.tupleof[idx] !is null)
                markMemory(root.tupleof[idx], marker);
          } else static if (!isBasicType!(typeof(member)) && !is(typeof(member) == enum))
            markMemory(&root.tupleof[idx], marker);
        }
      }}
  }
}

void addRoot(T)(T* root) {
  addNode(Node(cast(MarkFunction)&markMemory!(T), cast(void*)root));
}

void addNode(Node node) {
  // TODO: for now we simply have only one root
  singleNode = node;
}
