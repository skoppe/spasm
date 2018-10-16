module spasm.spa;

pragma(LDC_no_moduleinfo);
pragma(LDC_no_typeinfo);

import ldc.attributes;
public import spasm.types;
public import spasm.dom;
public import spasm.node;
public import spasm.event;
public import spasm.array;
public import spasm.css;

extern(C) {
  JsHandle getRoot();
}

extern(C)
export
ubyte* allocString(uint bytes) {
  import spasm.rt.memory;
  void[] raw = allocator.allocate(bytes);
  return cast(ubyte*)raw.ptr;
}

void initialize() {
  import spasm.rt.memory;
  alloc_init();
}

mixin template Spa(Application) {
  import ldc.attributes;
  __gshared Application application;
  pragma(mangle, "_start")
  extern(C)
  export
  void _start() {
    initialize();
    JsHandle root = getRoot();
    // TODO: Add css again
    // enum string css = GetCss!App;
    // static if (css.length > 0)
    //   addCss(css);
    application.setPointers();
    spasm.dom.render(root, application);
  }
}
