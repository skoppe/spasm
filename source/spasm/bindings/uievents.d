module spasm.bindings.uievents;

import spasm.types;
import spasm.bindings.dom;
import spasm.bindings.html;

struct CompositionEvent {
  UIEvent _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = UIEvent(h);
  }
  auto data() {
    auto result = CompositionEvent_data_Get(this._parent);
    return result;
  }
}
struct CompositionEventInit {
  UIEventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = UIEventInit(h);
  }
  auto data(string data) {
    CompositionEventInit_data_Set(this._parent, data);
  }
  auto data() {
    auto result = CompositionEventInit_data_Get(this._parent);
    return result;
  }
}
struct EventModifierInit {
  UIEventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = UIEventInit(h);
  }
  auto ctrlKey(bool ctrlKey) {
    EventModifierInit_ctrlKey_Set(this._parent, ctrlKey);
  }
  auto ctrlKey() {
    auto result = EventModifierInit_ctrlKey_Get(this._parent);
    return result;
  }
  auto shiftKey(bool shiftKey) {
    EventModifierInit_shiftKey_Set(this._parent, shiftKey);
  }
  auto shiftKey() {
    auto result = EventModifierInit_shiftKey_Get(this._parent);
    return result;
  }
  auto altKey(bool altKey) {
    EventModifierInit_altKey_Set(this._parent, altKey);
  }
  auto altKey() {
    auto result = EventModifierInit_altKey_Get(this._parent);
    return result;
  }
  auto metaKey(bool metaKey) {
    EventModifierInit_metaKey_Set(this._parent, metaKey);
  }
  auto metaKey() {
    auto result = EventModifierInit_metaKey_Get(this._parent);
    return result;
  }
  auto modifierAltGraph(bool modifierAltGraph) {
    EventModifierInit_modifierAltGraph_Set(this._parent, modifierAltGraph);
  }
  auto modifierAltGraph() {
    auto result = EventModifierInit_modifierAltGraph_Get(this._parent);
    return result;
  }
  auto modifierCapsLock(bool modifierCapsLock) {
    EventModifierInit_modifierCapsLock_Set(this._parent, modifierCapsLock);
  }
  auto modifierCapsLock() {
    auto result = EventModifierInit_modifierCapsLock_Get(this._parent);
    return result;
  }
  auto modifierFn(bool modifierFn) {
    EventModifierInit_modifierFn_Set(this._parent, modifierFn);
  }
  auto modifierFn() {
    auto result = EventModifierInit_modifierFn_Get(this._parent);
    return result;
  }
  auto modifierFnLock(bool modifierFnLock) {
    EventModifierInit_modifierFnLock_Set(this._parent, modifierFnLock);
  }
  auto modifierFnLock() {
    auto result = EventModifierInit_modifierFnLock_Get(this._parent);
    return result;
  }
  auto modifierHyper(bool modifierHyper) {
    EventModifierInit_modifierHyper_Set(this._parent, modifierHyper);
  }
  auto modifierHyper() {
    auto result = EventModifierInit_modifierHyper_Get(this._parent);
    return result;
  }
  auto modifierNumLock(bool modifierNumLock) {
    EventModifierInit_modifierNumLock_Set(this._parent, modifierNumLock);
  }
  auto modifierNumLock() {
    auto result = EventModifierInit_modifierNumLock_Get(this._parent);
    return result;
  }
  auto modifierScrollLock(bool modifierScrollLock) {
    EventModifierInit_modifierScrollLock_Set(this._parent, modifierScrollLock);
  }
  auto modifierScrollLock() {
    auto result = EventModifierInit_modifierScrollLock_Get(this._parent);
    return result;
  }
  auto modifierSuper(bool modifierSuper) {
    EventModifierInit_modifierSuper_Set(this._parent, modifierSuper);
  }
  auto modifierSuper() {
    auto result = EventModifierInit_modifierSuper_Get(this._parent);
    return result;
  }
  auto modifierSymbol(bool modifierSymbol) {
    EventModifierInit_modifierSymbol_Set(this._parent, modifierSymbol);
  }
  auto modifierSymbol() {
    auto result = EventModifierInit_modifierSymbol_Get(this._parent);
    return result;
  }
  auto modifierSymbolLock(bool modifierSymbolLock) {
    EventModifierInit_modifierSymbolLock_Set(this._parent, modifierSymbolLock);
  }
  auto modifierSymbolLock() {
    auto result = EventModifierInit_modifierSymbolLock_Get(this._parent);
    return result;
  }
}
struct FocusEvent {
  UIEvent _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = UIEvent(h);
  }
  auto relatedTarget() {
    auto result = FocusEvent_relatedTarget_Get(this._parent);
    return result;
  }
}
struct FocusEventInit {
  UIEventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = UIEventInit(h);
  }
  auto relatedTarget(Optional!(EventTarget) relatedTarget) {
    FocusEventInit_relatedTarget_Set(this._parent, !relatedTarget.empty, relatedTarget.front.handle);
  }
  auto relatedTarget() {
    auto result = FocusEventInit_relatedTarget_Get(this._parent);
    return result;
  }
}
struct InputEvent {
  UIEvent _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = UIEvent(h);
  }
  auto data() {
    auto result = InputEvent_data_Get(this._parent);
    return result;
  }
  auto isComposing() {
    auto result = InputEvent_isComposing_Get(this._parent);
    return result;
  }
  auto inputType() {
    auto result = InputEvent_inputType_Get(this._parent);
    return result;
  }
}
struct InputEventInit {
  UIEventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = UIEventInit(h);
  }
  auto data(Optional!(string) data) {
    InputEventInit_data_Set(this._parent, !data.empty, data.front);
  }
  auto data() {
    auto result = InputEventInit_data_Get(this._parent);
    return result;
  }
  auto isComposing(bool isComposing) {
    InputEventInit_isComposing_Set(this._parent, isComposing);
  }
  auto isComposing() {
    auto result = InputEventInit_isComposing_Get(this._parent);
    return result;
  }
  auto inputType(string inputType) {
    InputEventInit_inputType_Set(this._parent, inputType);
  }
  auto inputType() {
    auto result = InputEventInit_inputType_Get(this._parent);
    return result;
  }
}
struct KeyboardEvent {
  UIEvent _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = UIEvent(h);
  }
  enum uint DOM_KEY_LOCATION_STANDARD = 0x00;
  enum uint DOM_KEY_LOCATION_LEFT = 0x01;
  enum uint DOM_KEY_LOCATION_RIGHT = 0x02;
  enum uint DOM_KEY_LOCATION_NUMPAD = 0x03;
  auto key() {
    auto result = KeyboardEvent_key_Get(this._parent);
    return result;
  }
  auto code() {
    auto result = KeyboardEvent_code_Get(this._parent);
    return result;
  }
  auto location() {
    auto result = KeyboardEvent_location_Get(this._parent);
    return result;
  }
  auto ctrlKey() {
    auto result = KeyboardEvent_ctrlKey_Get(this._parent);
    return result;
  }
  auto shiftKey() {
    auto result = KeyboardEvent_shiftKey_Get(this._parent);
    return result;
  }
  auto altKey() {
    auto result = KeyboardEvent_altKey_Get(this._parent);
    return result;
  }
  auto metaKey() {
    auto result = KeyboardEvent_metaKey_Get(this._parent);
    return result;
  }
  auto repeat() {
    auto result = KeyboardEvent_repeat_Get(this._parent);
    return result;
  }
  auto isComposing() {
    auto result = KeyboardEvent_isComposing_Get(this._parent);
    return result;
  }
  auto getModifierState(string keyArg) {
    auto result = KeyboardEvent_getModifierState(this._parent, keyArg);
    return result;
  }
  auto charCode() {
    auto result = KeyboardEvent_charCode_Get(this._parent);
    return result;
  }
  auto keyCode() {
    auto result = KeyboardEvent_keyCode_Get(this._parent);
    return result;
  }
}
struct KeyboardEventInit {
  EventModifierInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventModifierInit(h);
  }
  auto key(string key) {
    KeyboardEventInit_key_Set(this._parent, key);
  }
  auto key() {
    auto result = KeyboardEventInit_key_Get(this._parent);
    return result;
  }
  auto code(string code) {
    KeyboardEventInit_code_Set(this._parent, code);
  }
  auto code() {
    auto result = KeyboardEventInit_code_Get(this._parent);
    return result;
  }
  auto location(uint location) {
    KeyboardEventInit_location_Set(this._parent, location);
  }
  auto location() {
    auto result = KeyboardEventInit_location_Get(this._parent);
    return result;
  }
  auto repeat(bool repeat) {
    KeyboardEventInit_repeat_Set(this._parent, repeat);
  }
  auto repeat() {
    auto result = KeyboardEventInit_repeat_Get(this._parent);
    return result;
  }
  auto isComposing(bool isComposing) {
    KeyboardEventInit_isComposing_Set(this._parent, isComposing);
  }
  auto isComposing() {
    auto result = KeyboardEventInit_isComposing_Get(this._parent);
    return result;
  }
}
struct MouseEvent {
  UIEvent _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = UIEvent(h);
  }
  auto screenX() {
    auto result = MouseEvent_screenX_Get(this._parent);
    return result;
  }
  auto screenY() {
    auto result = MouseEvent_screenY_Get(this._parent);
    return result;
  }
  auto clientX() {
    auto result = MouseEvent_clientX_Get(this._parent);
    return result;
  }
  auto clientY() {
    auto result = MouseEvent_clientY_Get(this._parent);
    return result;
  }
  auto ctrlKey() {
    auto result = MouseEvent_ctrlKey_Get(this._parent);
    return result;
  }
  auto shiftKey() {
    auto result = MouseEvent_shiftKey_Get(this._parent);
    return result;
  }
  auto altKey() {
    auto result = MouseEvent_altKey_Get(this._parent);
    return result;
  }
  auto metaKey() {
    auto result = MouseEvent_metaKey_Get(this._parent);
    return result;
  }
  auto button() {
    auto result = MouseEvent_button_Get(this._parent);
    return result;
  }
  auto buttons() {
    auto result = MouseEvent_buttons_Get(this._parent);
    return result;
  }
  auto relatedTarget() {
    auto result = MouseEvent_relatedTarget_Get(this._parent);
    return result;
  }
  auto getModifierState(string keyArg) {
    auto result = MouseEvent_getModifierState(this._parent, keyArg);
    return result;
  }
}
struct MouseEventInit {
  EventModifierInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventModifierInit(h);
  }
  auto screenX(int screenX) {
    MouseEventInit_screenX_Set(this._parent, screenX);
  }
  auto screenX() {
    auto result = MouseEventInit_screenX_Get(this._parent);
    return result;
  }
  auto screenY(int screenY) {
    MouseEventInit_screenY_Set(this._parent, screenY);
  }
  auto screenY() {
    auto result = MouseEventInit_screenY_Get(this._parent);
    return result;
  }
  auto clientX(int clientX) {
    MouseEventInit_clientX_Set(this._parent, clientX);
  }
  auto clientX() {
    auto result = MouseEventInit_clientX_Get(this._parent);
    return result;
  }
  auto clientY(int clientY) {
    MouseEventInit_clientY_Set(this._parent, clientY);
  }
  auto clientY() {
    auto result = MouseEventInit_clientY_Get(this._parent);
    return result;
  }
  auto button(short button) {
    MouseEventInit_button_Set(this._parent, button);
  }
  auto button() {
    auto result = MouseEventInit_button_Get(this._parent);
    return result;
  }
  auto buttons(ushort buttons) {
    MouseEventInit_buttons_Set(this._parent, buttons);
  }
  auto buttons() {
    auto result = MouseEventInit_buttons_Get(this._parent);
    return result;
  }
  auto relatedTarget(Optional!(EventTarget) relatedTarget) {
    MouseEventInit_relatedTarget_Set(this._parent, !relatedTarget.empty, relatedTarget.front.handle);
  }
  auto relatedTarget() {
    auto result = MouseEventInit_relatedTarget_Get(this._parent);
    return result;
  }
}
struct UIEvent {
  Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Event(h);
  }
  auto view() {
    auto result = UIEvent_view_Get(this._parent);
    return result;
  }
  auto detail() {
    auto result = UIEvent_detail_Get(this._parent);
    return result;
  }
  auto which() {
    auto result = UIEvent_which_Get(this._parent);
    return result;
  }
}
struct UIEventInit {
  EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventInit(h);
  }
  auto view(Optional!(Window) view) {
    UIEventInit_view_Set(this._parent, !view.empty, view.front.handle);
  }
  auto view() {
    auto result = UIEventInit_view_Get(this._parent);
    return result;
  }
  auto detail(int detail) {
    UIEventInit_detail_Set(this._parent, detail);
  }
  auto detail() {
    auto result = UIEventInit_detail_Get(this._parent);
    return result;
  }
}
struct WheelEvent {
  MouseEvent _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = MouseEvent(h);
  }
  enum uint DOM_DELTA_PIXEL = 0x00;
  enum uint DOM_DELTA_LINE = 0x01;
  enum uint DOM_DELTA_PAGE = 0x02;
  auto deltaX() {
    auto result = WheelEvent_deltaX_Get(this._parent);
    return result;
  }
  auto deltaY() {
    auto result = WheelEvent_deltaY_Get(this._parent);
    return result;
  }
  auto deltaZ() {
    auto result = WheelEvent_deltaZ_Get(this._parent);
    return result;
  }
  auto deltaMode() {
    auto result = WheelEvent_deltaMode_Get(this._parent);
    return result;
  }
}
struct WheelEventInit {
  MouseEventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = MouseEventInit(h);
  }
  auto deltaX(double deltaX) {
    WheelEventInit_deltaX_Set(this._parent, deltaX);
  }
  auto deltaX() {
    auto result = WheelEventInit_deltaX_Get(this._parent);
    return result;
  }
  auto deltaY(double deltaY) {
    WheelEventInit_deltaY_Set(this._parent, deltaY);
  }
  auto deltaY() {
    auto result = WheelEventInit_deltaY_Get(this._parent);
    return result;
  }
  auto deltaZ(double deltaZ) {
    WheelEventInit_deltaZ_Set(this._parent, deltaZ);
  }
  auto deltaZ() {
    auto result = WheelEventInit_deltaZ_Get(this._parent);
    return result;
  }
  auto deltaMode(uint deltaMode) {
    WheelEventInit_deltaMode_Set(this._parent, deltaMode);
  }
  auto deltaMode() {
    auto result = WheelEventInit_deltaMode_Get(this._parent);
    return result;
  }
}


extern (C) string CompositionEvent_data_Get(Handle);
extern (C) void CompositionEventInit_data_Set(Handle, string);
extern (C) string CompositionEventInit_data_Get(Handle);
extern (C) void EventModifierInit_ctrlKey_Set(Handle, bool);
extern (C) bool EventModifierInit_ctrlKey_Get(Handle);
extern (C) void EventModifierInit_shiftKey_Set(Handle, bool);
extern (C) bool EventModifierInit_shiftKey_Get(Handle);
extern (C) void EventModifierInit_altKey_Set(Handle, bool);
extern (C) bool EventModifierInit_altKey_Get(Handle);
extern (C) void EventModifierInit_metaKey_Set(Handle, bool);
extern (C) bool EventModifierInit_metaKey_Get(Handle);
extern (C) void EventModifierInit_modifierAltGraph_Set(Handle, bool);
extern (C) bool EventModifierInit_modifierAltGraph_Get(Handle);
extern (C) void EventModifierInit_modifierCapsLock_Set(Handle, bool);
extern (C) bool EventModifierInit_modifierCapsLock_Get(Handle);
extern (C) void EventModifierInit_modifierFn_Set(Handle, bool);
extern (C) bool EventModifierInit_modifierFn_Get(Handle);
extern (C) void EventModifierInit_modifierFnLock_Set(Handle, bool);
extern (C) bool EventModifierInit_modifierFnLock_Get(Handle);
extern (C) void EventModifierInit_modifierHyper_Set(Handle, bool);
extern (C) bool EventModifierInit_modifierHyper_Get(Handle);
extern (C) void EventModifierInit_modifierNumLock_Set(Handle, bool);
extern (C) bool EventModifierInit_modifierNumLock_Get(Handle);
extern (C) void EventModifierInit_modifierScrollLock_Set(Handle, bool);
extern (C) bool EventModifierInit_modifierScrollLock_Get(Handle);
extern (C) void EventModifierInit_modifierSuper_Set(Handle, bool);
extern (C) bool EventModifierInit_modifierSuper_Get(Handle);
extern (C) void EventModifierInit_modifierSymbol_Set(Handle, bool);
extern (C) bool EventModifierInit_modifierSymbol_Get(Handle);
extern (C) void EventModifierInit_modifierSymbolLock_Set(Handle, bool);
extern (C) bool EventModifierInit_modifierSymbolLock_Get(Handle);
extern (C) Optional!(EventTarget) FocusEvent_relatedTarget_Get(Handle);
extern (C) void FocusEventInit_relatedTarget_Set(Handle, bool, Handle);
extern (C) Optional!(EventTarget) FocusEventInit_relatedTarget_Get(Handle);
extern (C) Optional!(string) InputEvent_data_Get(Handle);
extern (C) bool InputEvent_isComposing_Get(Handle);
extern (C) string InputEvent_inputType_Get(Handle);
extern (C) void InputEventInit_data_Set(Handle, bool, string);
extern (C) Optional!(string) InputEventInit_data_Get(Handle);
extern (C) void InputEventInit_isComposing_Set(Handle, bool);
extern (C) bool InputEventInit_isComposing_Get(Handle);
extern (C) void InputEventInit_inputType_Set(Handle, string);
extern (C) string InputEventInit_inputType_Get(Handle);
extern (C) string KeyboardEvent_key_Get(Handle);
extern (C) string KeyboardEvent_code_Get(Handle);
extern (C) uint KeyboardEvent_location_Get(Handle);
extern (C) bool KeyboardEvent_ctrlKey_Get(Handle);
extern (C) bool KeyboardEvent_shiftKey_Get(Handle);
extern (C) bool KeyboardEvent_altKey_Get(Handle);
extern (C) bool KeyboardEvent_metaKey_Get(Handle);
extern (C) bool KeyboardEvent_repeat_Get(Handle);
extern (C) bool KeyboardEvent_isComposing_Get(Handle);
extern (C) bool KeyboardEvent_getModifierState(Handle, string);
extern (C) uint KeyboardEvent_charCode_Get(Handle);
extern (C) uint KeyboardEvent_keyCode_Get(Handle);
extern (C) void KeyboardEventInit_key_Set(Handle, string);
extern (C) string KeyboardEventInit_key_Get(Handle);
extern (C) void KeyboardEventInit_code_Set(Handle, string);
extern (C) string KeyboardEventInit_code_Get(Handle);
extern (C) void KeyboardEventInit_location_Set(Handle, uint);
extern (C) uint KeyboardEventInit_location_Get(Handle);
extern (C) void KeyboardEventInit_repeat_Set(Handle, bool);
extern (C) bool KeyboardEventInit_repeat_Get(Handle);
extern (C) void KeyboardEventInit_isComposing_Set(Handle, bool);
extern (C) bool KeyboardEventInit_isComposing_Get(Handle);
extern (C) int MouseEvent_screenX_Get(Handle);
extern (C) int MouseEvent_screenY_Get(Handle);
extern (C) int MouseEvent_clientX_Get(Handle);
extern (C) int MouseEvent_clientY_Get(Handle);
extern (C) bool MouseEvent_ctrlKey_Get(Handle);
extern (C) bool MouseEvent_shiftKey_Get(Handle);
extern (C) bool MouseEvent_altKey_Get(Handle);
extern (C) bool MouseEvent_metaKey_Get(Handle);
extern (C) short MouseEvent_button_Get(Handle);
extern (C) ushort MouseEvent_buttons_Get(Handle);
extern (C) Optional!(EventTarget) MouseEvent_relatedTarget_Get(Handle);
extern (C) bool MouseEvent_getModifierState(Handle, string);
extern (C) void MouseEventInit_screenX_Set(Handle, int);
extern (C) int MouseEventInit_screenX_Get(Handle);
extern (C) void MouseEventInit_screenY_Set(Handle, int);
extern (C) int MouseEventInit_screenY_Get(Handle);
extern (C) void MouseEventInit_clientX_Set(Handle, int);
extern (C) int MouseEventInit_clientX_Get(Handle);
extern (C) void MouseEventInit_clientY_Set(Handle, int);
extern (C) int MouseEventInit_clientY_Get(Handle);
extern (C) void MouseEventInit_button_Set(Handle, short);
extern (C) short MouseEventInit_button_Get(Handle);
extern (C) void MouseEventInit_buttons_Set(Handle, ushort);
extern (C) ushort MouseEventInit_buttons_Get(Handle);
extern (C) void MouseEventInit_relatedTarget_Set(Handle, bool, Handle);
extern (C) Optional!(EventTarget) MouseEventInit_relatedTarget_Get(Handle);
extern (C) Optional!(Window) UIEvent_view_Get(Handle);
extern (C) int UIEvent_detail_Get(Handle);
extern (C) uint UIEvent_which_Get(Handle);
extern (C) void UIEventInit_view_Set(Handle, bool, Handle);
extern (C) Optional!(Window) UIEventInit_view_Get(Handle);
extern (C) void UIEventInit_detail_Set(Handle, int);
extern (C) int UIEventInit_detail_Get(Handle);
extern (C) double WheelEvent_deltaX_Get(Handle);
extern (C) double WheelEvent_deltaY_Get(Handle);
extern (C) double WheelEvent_deltaZ_Get(Handle);
extern (C) uint WheelEvent_deltaMode_Get(Handle);
extern (C) void WheelEventInit_deltaX_Set(Handle, double);
extern (C) double WheelEventInit_deltaX_Get(Handle);
extern (C) void WheelEventInit_deltaY_Set(Handle, double);
extern (C) double WheelEventInit_deltaY_Get(Handle);
extern (C) void WheelEventInit_deltaZ_Set(Handle, double);
extern (C) double WheelEventInit_deltaZ_Get(Handle);
extern (C) void WheelEventInit_deltaMode_Set(Handle, uint);
extern (C) uint WheelEventInit_deltaMode_Get(Handle);