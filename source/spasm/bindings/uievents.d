module spasm.bindings.uievents;

import spasm.types;
import spasm.bindings.dom : EventTarget;
import spasm.bindings.html : Window;

struct CompositionEvent {
  UIEvent _parent;
  alias _parent this;
  string data() {
    return CompositionEvent_data_Get(handle);
  }
}
struct CompositionEventInit {
  UIEventInit _parent;
  alias _parent this;
  void data(string data) {
    CompositionEventInit_data_Set(handle, data);
  }
  string data() {
    return CompositionEventInit_data_Get(handle);
  }
}
struct EventModifierInit {
  UIEventInit _parent;
  alias _parent this;
  void ctrlKey(bool ctrlKey) {
    EventModifierInit_ctrlKey_Set(handle, ctrlKey);
  }
  bool ctrlKey() {
    return EventModifierInit_ctrlKey_Get(handle);
  }
  void shiftKey(bool shiftKey) {
    EventModifierInit_shiftKey_Set(handle, shiftKey);
  }
  bool shiftKey() {
    return EventModifierInit_shiftKey_Get(handle);
  }
  void altKey(bool altKey) {
    EventModifierInit_altKey_Set(handle, altKey);
  }
  bool altKey() {
    return EventModifierInit_altKey_Get(handle);
  }
  void metaKey(bool metaKey) {
    EventModifierInit_metaKey_Set(handle, metaKey);
  }
  bool metaKey() {
    return EventModifierInit_metaKey_Get(handle);
  }
  void modifierAltGraph(bool modifierAltGraph) {
    EventModifierInit_modifierAltGraph_Set(handle, modifierAltGraph);
  }
  bool modifierAltGraph() {
    return EventModifierInit_modifierAltGraph_Get(handle);
  }
  void modifierCapsLock(bool modifierCapsLock) {
    EventModifierInit_modifierCapsLock_Set(handle, modifierCapsLock);
  }
  bool modifierCapsLock() {
    return EventModifierInit_modifierCapsLock_Get(handle);
  }
  void modifierFn(bool modifierFn) {
    EventModifierInit_modifierFn_Set(handle, modifierFn);
  }
  bool modifierFn() {
    return EventModifierInit_modifierFn_Get(handle);
  }
  void modifierFnLock(bool modifierFnLock) {
    EventModifierInit_modifierFnLock_Set(handle, modifierFnLock);
  }
  bool modifierFnLock() {
    return EventModifierInit_modifierFnLock_Get(handle);
  }
  void modifierHyper(bool modifierHyper) {
    EventModifierInit_modifierHyper_Set(handle, modifierHyper);
  }
  bool modifierHyper() {
    return EventModifierInit_modifierHyper_Get(handle);
  }
  void modifierNumLock(bool modifierNumLock) {
    EventModifierInit_modifierNumLock_Set(handle, modifierNumLock);
  }
  bool modifierNumLock() {
    return EventModifierInit_modifierNumLock_Get(handle);
  }
  void modifierScrollLock(bool modifierScrollLock) {
    EventModifierInit_modifierScrollLock_Set(handle, modifierScrollLock);
  }
  bool modifierScrollLock() {
    return EventModifierInit_modifierScrollLock_Get(handle);
  }
  void modifierSuper(bool modifierSuper) {
    EventModifierInit_modifierSuper_Set(handle, modifierSuper);
  }
  bool modifierSuper() {
    return EventModifierInit_modifierSuper_Get(handle);
  }
  void modifierSymbol(bool modifierSymbol) {
    EventModifierInit_modifierSymbol_Set(handle, modifierSymbol);
  }
  bool modifierSymbol() {
    return EventModifierInit_modifierSymbol_Get(handle);
  }
  void modifierSymbolLock(bool modifierSymbolLock) {
    EventModifierInit_modifierSymbolLock_Set(handle, modifierSymbolLock);
  }
  bool modifierSymbolLock() {
    return EventModifierInit_modifierSymbolLock_Get(handle);
  }
}
struct FocusEvent {
  UIEvent _parent;
  alias _parent this;
  Optional!(EventTarget) relatedTarget() {
    return FocusEvent_relatedTarget_Get(handle);
  }
}
struct FocusEventInit {
  UIEventInit _parent;
  alias _parent this;
  void relatedTarget(Optional!(EventTarget) relatedTarget) {
    FocusEventInit_relatedTarget_Set(handle, !relatedTarget.empty, relatedTarget.value.handle);
  }
  Optional!(EventTarget) relatedTarget() {
    return FocusEventInit_relatedTarget_Get(handle);
  }
}
struct InputEvent {
  UIEvent _parent;
  alias _parent this;
  Optional!(string) data() {
    return InputEvent_data_Get(handle);
  }
  bool isComposing() {
    return InputEvent_isComposing_Get(handle);
  }
  string inputType() {
    return InputEvent_inputType_Get(handle);
  }
}
struct InputEventInit {
  UIEventInit _parent;
  alias _parent this;
  void data(Optional!(string) data) {
    InputEventInit_data_Set(handle, !data.empty, data.value);
  }
  Optional!(string) data() {
    return InputEventInit_data_Get(handle);
  }
  void isComposing(bool isComposing) {
    InputEventInit_isComposing_Set(handle, isComposing);
  }
  bool isComposing() {
    return InputEventInit_isComposing_Get(handle);
  }
  void inputType(string inputType) {
    InputEventInit_inputType_Set(handle, inputType);
  }
  string inputType() {
    return InputEventInit_inputType_Get(handle);
  }
}
struct KeyboardEvent {
  UIEvent _parent;
  alias _parent this;
  enum uint DOM_KEY_LOCATION_STANDARD = 0x00;
  enum uint DOM_KEY_LOCATION_LEFT = 0x01;
  enum uint DOM_KEY_LOCATION_RIGHT = 0x02;
  enum uint DOM_KEY_LOCATION_NUMPAD = 0x03;
  string key() {
    return KeyboardEvent_key_Get(handle);
  }
  string code() {
    return KeyboardEvent_code_Get(handle);
  }
  uint location() {
    return KeyboardEvent_location_Get(handle);
  }
  bool ctrlKey() {
    return KeyboardEvent_ctrlKey_Get(handle);
  }
  bool shiftKey() {
    return KeyboardEvent_shiftKey_Get(handle);
  }
  bool altKey() {
    return KeyboardEvent_altKey_Get(handle);
  }
  bool metaKey() {
    return KeyboardEvent_metaKey_Get(handle);
  }
  bool repeat() {
    return KeyboardEvent_repeat_Get(handle);
  }
  bool isComposing() {
    return KeyboardEvent_isComposing_Get(handle);
  }
  bool getModifierState(string keyArg) {
    return KeyboardEvent_getModifierState(handle, keyArg);
  }
  uint charCode() {
    return KeyboardEvent_charCode_Get(handle);
  }
  uint keyCode() {
    return KeyboardEvent_keyCode_Get(handle);
  }
}
struct KeyboardEventInit {
  EventModifierInit _parent;
  alias _parent this;
  void key(string key) {
    KeyboardEventInit_key_Set(handle, key);
  }
  string key() {
    return KeyboardEventInit_key_Get(handle);
  }
  void code(string code) {
    KeyboardEventInit_code_Set(handle, code);
  }
  string code() {
    return KeyboardEventInit_code_Get(handle);
  }
  void location(uint location) {
    KeyboardEventInit_location_Set(handle, location);
  }
  uint location() {
    return KeyboardEventInit_location_Get(handle);
  }
  void repeat(bool repeat) {
    KeyboardEventInit_repeat_Set(handle, repeat);
  }
  bool repeat() {
    return KeyboardEventInit_repeat_Get(handle);
  }
  void isComposing(bool isComposing) {
    KeyboardEventInit_isComposing_Set(handle, isComposing);
  }
  bool isComposing() {
    return KeyboardEventInit_isComposing_Get(handle);
  }
}
struct MouseEvent {
  UIEvent _parent;
  alias _parent this;
  int screenX() {
    return MouseEvent_screenX_Get(handle);
  }
  int screenY() {
    return MouseEvent_screenY_Get(handle);
  }
  int clientX() {
    return MouseEvent_clientX_Get(handle);
  }
  int clientY() {
    return MouseEvent_clientY_Get(handle);
  }
  bool ctrlKey() {
    return MouseEvent_ctrlKey_Get(handle);
  }
  bool shiftKey() {
    return MouseEvent_shiftKey_Get(handle);
  }
  bool altKey() {
    return MouseEvent_altKey_Get(handle);
  }
  bool metaKey() {
    return MouseEvent_metaKey_Get(handle);
  }
  short button() {
    return MouseEvent_button_Get(handle);
  }
  ushort buttons() {
    return MouseEvent_buttons_Get(handle);
  }
  Optional!(EventTarget) relatedTarget() {
    return MouseEvent_relatedTarget_Get(handle);
  }
  bool getModifierState(string keyArg) {
    return MouseEvent_getModifierState(handle, keyArg);
  }
}
struct MouseEventInit {
  EventModifierInit _parent;
  alias _parent this;
  void screenX(int screenX) {
    MouseEventInit_screenX_Set(handle, screenX);
  }
  int screenX() {
    return MouseEventInit_screenX_Get(handle);
  }
  void screenY(int screenY) {
    MouseEventInit_screenY_Set(handle, screenY);
  }
  int screenY() {
    return MouseEventInit_screenY_Get(handle);
  }
  void clientX(int clientX) {
    MouseEventInit_clientX_Set(handle, clientX);
  }
  int clientX() {
    return MouseEventInit_clientX_Get(handle);
  }
  void clientY(int clientY) {
    MouseEventInit_clientY_Set(handle, clientY);
  }
  int clientY() {
    return MouseEventInit_clientY_Get(handle);
  }
  void button(short button) {
    MouseEventInit_button_Set(handle, button);
  }
  short button() {
    return MouseEventInit_button_Get(handle);
  }
  void buttons(ushort buttons) {
    MouseEventInit_buttons_Set(handle, buttons);
  }
  ushort buttons() {
    return MouseEventInit_buttons_Get(handle);
  }
  void relatedTarget(Optional!(EventTarget) relatedTarget) {
    MouseEventInit_relatedTarget_Set(handle, !relatedTarget.empty, relatedTarget.value.handle);
  }
  Optional!(EventTarget) relatedTarget() {
    return MouseEventInit_relatedTarget_Get(handle);
  }
}
struct UIEvent {
  Event _parent;
  alias _parent this;
  Optional!(Window) view() {
    return UIEvent_view_Get(handle);
  }
  int detail() {
    return UIEvent_detail_Get(handle);
  }
  uint which() {
    return UIEvent_which_Get(handle);
  }
}
struct UIEventInit {
  EventInit _parent;
  alias _parent this;
  void view(Optional!(Window) view) {
    UIEventInit_view_Set(handle, !view.empty, view.value.handle);
  }
  Optional!(Window) view() {
    return UIEventInit_view_Get(handle);
  }
  void detail(int detail) {
    UIEventInit_detail_Set(handle, detail);
  }
  int detail() {
    return UIEventInit_detail_Get(handle);
  }
}
struct WheelEvent {
  MouseEvent _parent;
  alias _parent this;
  enum uint DOM_DELTA_PIXEL = 0x00;
  enum uint DOM_DELTA_LINE = 0x01;
  enum uint DOM_DELTA_PAGE = 0x02;
  double deltaX() {
    return WheelEvent_deltaX_Get(handle);
  }
  double deltaY() {
    return WheelEvent_deltaY_Get(handle);
  }
  double deltaZ() {
    return WheelEvent_deltaZ_Get(handle);
  }
  uint deltaMode() {
    return WheelEvent_deltaMode_Get(handle);
  }
}
struct WheelEventInit {
  MouseEventInit _parent;
  alias _parent this;
  void deltaX(double deltaX) {
    WheelEventInit_deltaX_Set(handle, deltaX);
  }
  double deltaX() {
    return WheelEventInit_deltaX_Get(handle);
  }
  void deltaY(double deltaY) {
    WheelEventInit_deltaY_Set(handle, deltaY);
  }
  double deltaY() {
    return WheelEventInit_deltaY_Get(handle);
  }
  void deltaZ(double deltaZ) {
    WheelEventInit_deltaZ_Set(handle, deltaZ);
  }
  double deltaZ() {
    return WheelEventInit_deltaZ_Get(handle);
  }
  void deltaMode(uint deltaMode) {
    WheelEventInit_deltaMode_Set(handle, deltaMode);
  }
  uint deltaMode() {
    return WheelEventInit_deltaMode_Get(handle);
  }
}


extern (C) string CompositionEvent_data_Get(JsHandle);
extern (C) void CompositionEventInit_data_Set(JsHandle, string);
extern (C) string CompositionEventInit_data_Get(JsHandle);
extern (C) void EventModifierInit_ctrlKey_Set(JsHandle, bool);
extern (C) bool EventModifierInit_ctrlKey_Get(JsHandle);
extern (C) void EventModifierInit_shiftKey_Set(JsHandle, bool);
extern (C) bool EventModifierInit_shiftKey_Get(JsHandle);
extern (C) void EventModifierInit_altKey_Set(JsHandle, bool);
extern (C) bool EventModifierInit_altKey_Get(JsHandle);
extern (C) void EventModifierInit_metaKey_Set(JsHandle, bool);
extern (C) bool EventModifierInit_metaKey_Get(JsHandle);
extern (C) void EventModifierInit_modifierAltGraph_Set(JsHandle, bool);
extern (C) bool EventModifierInit_modifierAltGraph_Get(JsHandle);
extern (C) void EventModifierInit_modifierCapsLock_Set(JsHandle, bool);
extern (C) bool EventModifierInit_modifierCapsLock_Get(JsHandle);
extern (C) void EventModifierInit_modifierFn_Set(JsHandle, bool);
extern (C) bool EventModifierInit_modifierFn_Get(JsHandle);
extern (C) void EventModifierInit_modifierFnLock_Set(JsHandle, bool);
extern (C) bool EventModifierInit_modifierFnLock_Get(JsHandle);
extern (C) void EventModifierInit_modifierHyper_Set(JsHandle, bool);
extern (C) bool EventModifierInit_modifierHyper_Get(JsHandle);
extern (C) void EventModifierInit_modifierNumLock_Set(JsHandle, bool);
extern (C) bool EventModifierInit_modifierNumLock_Get(JsHandle);
extern (C) void EventModifierInit_modifierScrollLock_Set(JsHandle, bool);
extern (C) bool EventModifierInit_modifierScrollLock_Get(JsHandle);
extern (C) void EventModifierInit_modifierSuper_Set(JsHandle, bool);
extern (C) bool EventModifierInit_modifierSuper_Get(JsHandle);
extern (C) void EventModifierInit_modifierSymbol_Set(JsHandle, bool);
extern (C) bool EventModifierInit_modifierSymbol_Get(JsHandle);
extern (C) void EventModifierInit_modifierSymbolLock_Set(JsHandle, bool);
extern (C) bool EventModifierInit_modifierSymbolLock_Get(JsHandle);
extern (C) Optional!(EventTarget) FocusEvent_relatedTarget_Get(JsHandle);
extern (C) void FocusEventInit_relatedTarget_Set(JsHandle, bool, JsHandle);
extern (C) Optional!(EventTarget) FocusEventInit_relatedTarget_Get(JsHandle);
extern (C) Optional!(string) InputEvent_data_Get(JsHandle);
extern (C) bool InputEvent_isComposing_Get(JsHandle);
extern (C) string InputEvent_inputType_Get(JsHandle);
extern (C) void InputEventInit_data_Set(JsHandle, bool, string);
extern (C) Optional!(string) InputEventInit_data_Get(JsHandle);
extern (C) void InputEventInit_isComposing_Set(JsHandle, bool);
extern (C) bool InputEventInit_isComposing_Get(JsHandle);
extern (C) void InputEventInit_inputType_Set(JsHandle, string);
extern (C) string InputEventInit_inputType_Get(JsHandle);
extern (C) string KeyboardEvent_key_Get(JsHandle);
extern (C) string KeyboardEvent_code_Get(JsHandle);
extern (C) uint KeyboardEvent_location_Get(JsHandle);
extern (C) bool KeyboardEvent_ctrlKey_Get(JsHandle);
extern (C) bool KeyboardEvent_shiftKey_Get(JsHandle);
extern (C) bool KeyboardEvent_altKey_Get(JsHandle);
extern (C) bool KeyboardEvent_metaKey_Get(JsHandle);
extern (C) bool KeyboardEvent_repeat_Get(JsHandle);
extern (C) bool KeyboardEvent_isComposing_Get(JsHandle);
extern (C) bool KeyboardEvent_getModifierState(JsHandle, string);
extern (C) uint KeyboardEvent_charCode_Get(JsHandle);
extern (C) uint KeyboardEvent_keyCode_Get(JsHandle);
extern (C) void KeyboardEventInit_key_Set(JsHandle, string);
extern (C) string KeyboardEventInit_key_Get(JsHandle);
extern (C) void KeyboardEventInit_code_Set(JsHandle, string);
extern (C) string KeyboardEventInit_code_Get(JsHandle);
extern (C) void KeyboardEventInit_location_Set(JsHandle, uint);
extern (C) uint KeyboardEventInit_location_Get(JsHandle);
extern (C) void KeyboardEventInit_repeat_Set(JsHandle, bool);
extern (C) bool KeyboardEventInit_repeat_Get(JsHandle);
extern (C) void KeyboardEventInit_isComposing_Set(JsHandle, bool);
extern (C) bool KeyboardEventInit_isComposing_Get(JsHandle);
extern (C) int MouseEvent_screenX_Get(JsHandle);
extern (C) int MouseEvent_screenY_Get(JsHandle);
extern (C) int MouseEvent_clientX_Get(JsHandle);
extern (C) int MouseEvent_clientY_Get(JsHandle);
extern (C) bool MouseEvent_ctrlKey_Get(JsHandle);
extern (C) bool MouseEvent_shiftKey_Get(JsHandle);
extern (C) bool MouseEvent_altKey_Get(JsHandle);
extern (C) bool MouseEvent_metaKey_Get(JsHandle);
extern (C) short MouseEvent_button_Get(JsHandle);
extern (C) ushort MouseEvent_buttons_Get(JsHandle);
extern (C) Optional!(EventTarget) MouseEvent_relatedTarget_Get(JsHandle);
extern (C) bool MouseEvent_getModifierState(JsHandle, string);
extern (C) void MouseEventInit_screenX_Set(JsHandle, int);
extern (C) int MouseEventInit_screenX_Get(JsHandle);
extern (C) void MouseEventInit_screenY_Set(JsHandle, int);
extern (C) int MouseEventInit_screenY_Get(JsHandle);
extern (C) void MouseEventInit_clientX_Set(JsHandle, int);
extern (C) int MouseEventInit_clientX_Get(JsHandle);
extern (C) void MouseEventInit_clientY_Set(JsHandle, int);
extern (C) int MouseEventInit_clientY_Get(JsHandle);
extern (C) void MouseEventInit_button_Set(JsHandle, short);
extern (C) short MouseEventInit_button_Get(JsHandle);
extern (C) void MouseEventInit_buttons_Set(JsHandle, ushort);
extern (C) ushort MouseEventInit_buttons_Get(JsHandle);
extern (C) void MouseEventInit_relatedTarget_Set(JsHandle, bool, JsHandle);
extern (C) Optional!(EventTarget) MouseEventInit_relatedTarget_Get(JsHandle);
extern (C) Optional!(Window) UIEvent_view_Get(JsHandle);
extern (C) int UIEvent_detail_Get(JsHandle);
extern (C) uint UIEvent_which_Get(JsHandle);
extern (C) void UIEventInit_view_Set(JsHandle, bool, JsHandle);
extern (C) Optional!(Window) UIEventInit_view_Get(JsHandle);
extern (C) void UIEventInit_detail_Set(JsHandle, int);
extern (C) int UIEventInit_detail_Get(JsHandle);
extern (C) double WheelEvent_deltaX_Get(JsHandle);
extern (C) double WheelEvent_deltaY_Get(JsHandle);
extern (C) double WheelEvent_deltaZ_Get(JsHandle);
extern (C) uint WheelEvent_deltaMode_Get(JsHandle);
extern (C) void WheelEventInit_deltaX_Set(JsHandle, double);
extern (C) double WheelEventInit_deltaX_Get(JsHandle);
extern (C) void WheelEventInit_deltaY_Set(JsHandle, double);
extern (C) double WheelEventInit_deltaY_Get(JsHandle);
extern (C) void WheelEventInit_deltaZ_Set(JsHandle, double);
extern (C) double WheelEventInit_deltaZ_Get(JsHandle);
extern (C) void WheelEventInit_deltaMode_Set(JsHandle, uint);
extern (C) uint WheelEventInit_deltaMode_Get(JsHandle);