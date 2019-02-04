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
  Handle getRoot();
}

void initialize() {
  import spasm.rt.memory;
  alloc_init();
}

void addApplicationCss(Application, Theme)() {
  enum css = GetCss!(Application, Theme);
  static if (css.length > 0)
    addCss(css);
}

mixin template Spa(Application, Theme) {
  import ldc.attributes;
  __gshared Application application;
  pragma(mangle, "_start")
  extern(C)
  export
  void _start() {
    initialize();
    JsHandle root = JsHandle(getRoot());
    addApplicationCss!(Application, Theme)();
    application.setPointers();
    spasm.dom.render(root, application);
  }
}

struct Parameters(Ps...) {
  static template opDispatch(string name) {
    alias opDispatch(alias P) = Parameters!(Ps, Param!(name, P));
  }
}

auto param() {
  return Parameters!()();
}

struct Param(string name, alias field) {
  alias Name = name;
  alias Field = field;
}
