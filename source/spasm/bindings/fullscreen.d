module spasm.bindings.fullscreen;

import spasm.types;
import spasm.bindings.html;

@safe:
nothrow:

enum FullscreenNavigationUI {
  auto_,
  show,
  hide
}
struct FullscreenOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return FullscreenOptions(spasm_add__object());
  }
  void navigationUI(FullscreenNavigationUI navigationUI) {
    FullscreenOptions_navigationUI_Set(this.handle, navigationUI);
  }
  auto navigationUI() {
    return FullscreenOptions_navigationUI_Get(this.handle);
  }
}


extern (C) void FullscreenOptions_navigationUI_Set(Handle, FullscreenNavigationUI);
extern (C) FullscreenNavigationUI FullscreenOptions_navigationUI_Get(Handle);