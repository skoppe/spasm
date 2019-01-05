module spasm.bindings.fullscreen;

import spasm.types;
import spasm.bindings.html : EventHandler;

enum FullscreenNavigationUI {
  auto_,
  show,
  hide
}
struct FullscreenOptions {
  JsHandle handle;
  alias handle this;
  void navigationUI(FullscreenNavigationUI navigationUI) {
    FullscreenOptions_navigationUI_Set(handle, navigationUI);
  }
  FullscreenNavigationUI navigationUI() {
    return FullscreenOptions_navigationUI_Get(handle);
  }
}


extern (C) void FullscreenOptions_navigationUI_Set(JsHandle, FullscreenNavigationUI);
extern (C) FullscreenNavigationUI FullscreenOptions_navigationUI_Get(JsHandle);