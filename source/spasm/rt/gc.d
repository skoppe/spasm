module spasm.rt.gc;

import std.traits : isPointer, isBasicType, isCallable, PointerTarget;
import std.meta : staticMap, Filter;
import ldc.attributes;
import spasm.rt.allocator : poolAllocatorIndex, MarkResult;

nothrow:

auto mark(T)(T arr) if (is(T : A[], A)) {
  return mark(arr.ptr);
}

auto mark(T)(T* ptr) {
  return poolAllocatorIndex.mark(cast(void*)ptr);
}

alias MarkFunction = void function(void*);

struct Node {
  nothrow:
  MarkFunction markFn;
  void* root;
  void markIt() {
    mark(root);
    markFn(root);
  }
}

__gshared Node singleNode = void;

extern(C) export @assumeUsed void markMemory() {
  singleNode.markIt();
}

extern(C) export @assumeUsed void freeUnmarked() {
  import spasm.rt.allocator : poolAllocatorIndex;
  poolAllocatorIndex.freeUnmarked();
}

void markMemory(T)(T* root) {
  static if (is(T : A[], A)) {
    if (root is null)
      return;
    // NOTE: it is actually a little faster not to take this information into account (but maybe not with bigger sized objects. For now we assume that is true.)
    if (mark(root) == MarkResult.AlreadyMarked)
      return;
    static if (isPointer!A) {
      foreach(item; (*root)) {
        // NOTE: it is actually a little faster not to take this information into account (but maybe not with bigger sized objects. For now we assume that is true.)
        if (mark(item) == MarkResult.AlreadyMarked)
          continue;
        alias Target = PointerTarget!A;
        static if (!isBasicType!(Target) && !is(Target == enum))
          markMemory(item);
      }
    }
  } else {
    static foreach(idx, member; T.tupleof) {{
        static if (!isCallable!(member)) {
          static if (isPointer!(typeof(member))) {
            // NOTE: it is actually a little faster not to take this information into account (but maybe not with bigger sized objects. For now we assume that is true.)
            if (root.tupleof[idx] !is null && mark(root.tupleof[idx]) != MarkResult.AlreadyMarked) {
              alias Target = PointerTarget!(typeof(member));
              static if (!isBasicType!(Target) && !is(Target == enum))
                markMemory(root.tupleof[idx]);
            }
          } else static if (!isBasicType!(typeof(member)) && !is(typeof(member) == enum)) {
            alias Type = typeof(member);
            // when we are dealing with an array field and the root defines an opSlice
            // we skip the array and use the opSlice (this is often needed since the
            // object can define its own count of valid items in the array, and we don't
            // want to scan into void or old memory)
            static if (is(Type : Item[], Item)) {
              // NOTE: it is actually a little faster not to take this information into account (but maybe not with bigger sized objects. For now we assume that is true.)
              if (mark(root.tupleof[idx].ptr) != MarkResult.AlreadyMarked) {
                static if (__traits(compiles, (*root)[])) {
                  auto arr = (*root)[];
                  markMemory(&arr);
                } else {
                  markMemory(&root.tupleof[idx]);
                }
              }
            } else {
              markMemory(&root.tupleof[idx]);
            }
          }
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

import spasm.rt.allocator : PoolAllocatorList, WasmAllocator;
import stdx.allocator.building_blocks.segregator : Segregator;

// TODO: currently everything above 1024 bytes, doesn't get GC'ed
alias SpasmGCAllocator = Segregator!(8, PoolAllocatorList!8,
                                     16, PoolAllocatorList!16,
                                     24, PoolAllocatorList!24,
                                     32, PoolAllocatorList!32,
                                     48, PoolAllocatorList!48,
                                     64, PoolAllocatorList!64,
                                     96, PoolAllocatorList!96,
                                     128, PoolAllocatorList!128,
                                     192, PoolAllocatorList!192,
                                     256, PoolAllocatorList!256,
                                     384, PoolAllocatorList!384,
                                     512, PoolAllocatorList!512,
                                     768, PoolAllocatorList!768,
                                     1024, PoolAllocatorList!1024,
                                     WasmAllocator);

version (SPASM_GC_DEBUG)
extern(C) export @assumeUsed void renderGCStats() {
  import spasm.rt.allocator;
  import spasm.dom : document, addCss;
  import spasm.node : invalidHandle;
  import spasm.types : as;
  import spasm.bindings.html : HTMLElement;
  import spasm.rt.array : text;
  import std.algorithm : each, sum, map;
  import mir.bitop : ctpop;
  import stdx.allocator.building_blocks.region : InSituRegion;
  import optional;
  auto stackAllocator = InSituRegion!(2048)();
  static __gshared HTMLElement gcRootDomNode = HTMLElement(invalidHandle);
  if (gcRootDomNode.handle == invalidHandle) {
    gcRootDomNode = document.createElement("div").as!HTMLElement;
    gcRootDomNode.classList.add("spasm_gc_debug");
    document.body_.front.appendChild(gcRootDomNode);
    addCss(".spasm_gc_debug{position:absolute;width:50%;left:25%}.spasm_gc_debug .spasm_gc_debug_garbage{background:#03A9F4;height:20px;display:inline-block}.spasm_gc_debug .spasm_gc_debug_marked{background:yellow;height:20px;display:inline-block}.spasm_gc_debug_container{display:flex;border:1px solid #e2e2e2;background:white;margin:2px 0px;}.spasm_gc_debug_legend{position:absolute;left:5px;text-shadow:1px 1px 1px white;}");
  }
  gcRootDomNode.innerHTML = "";
  foreach(stats; poolAllocatorIndex.getStats()) {
    auto blocksUsed = stats.control.map!(ctpop!ulong).sum();
    auto blocksMarked = stats.markers.map!(ctpop!ulong).sum();
    ulong cumUsedPer = (blocksMarked*100) / stats.blockCount;
    ulong cumGarbagePer = ((blocksUsed-blocksMarked)*100) / stats.blockCount;
    string line = stackAllocator.text("<div class='spasm_gc_debug_legend'>", stats.blockSize ,": ", blocksUsed, " / ", stats.blockCount, "</div><div style='width:", cumUsedPer, "%' class='spasm_gc_debug_marked'></div>", "<div style='width:", cumGarbagePer, "%' class='spasm_gc_debug_garbage'></div>");
    auto lineNode = document.createElement("div").as!HTMLElement;
    lineNode.classList.add("spasm_gc_debug_container");
    lineNode.innerHTML = line;
    gcRootDomNode.appendChild(lineNode);
    stackAllocator.deallocateAll();
  }
}
