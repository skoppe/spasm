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
    return CompositionEvent_data_Get(this._parent);
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
    return CompositionEventInit_data_Get(this._parent);
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
    return EventModifierInit_ctrlKey_Get(this._parent);
  }
  auto shiftKey(bool shiftKey) {
    EventModifierInit_shiftKey_Set(this._parent, shiftKey);
  }
  auto shiftKey() {
    return EventModifierInit_shiftKey_Get(this._parent);
  }
  auto altKey(bool altKey) {
    EventModifierInit_altKey_Set(this._parent, altKey);
  }
  auto altKey() {
    return EventModifierInit_altKey_Get(this._parent);
  }
  auto metaKey(bool metaKey) {
    EventModifierInit_metaKey_Set(this._parent, metaKey);
  }
  auto metaKey() {
    return EventModifierInit_metaKey_Get(this._parent);
  }
  auto modifierAltGraph(bool modifierAltGraph) {
    EventModifierInit_modifierAltGraph_Set(this._parent, modifierAltGraph);
  }
  auto modifierAltGraph() {
    return EventModifierInit_modifierAltGraph_Get(this._parent);
  }
  auto modifierCapsLock(bool modifierCapsLock) {
    EventModifierInit_modifierCapsLock_Set(this._parent, modifierCapsLock);
  }
  auto modifierCapsLock() {
    return EventModifierInit_modifierCapsLock_Get(this._parent);
  }
  auto modifierFn(bool modifierFn) {
    EventModifierInit_modifierFn_Set(this._parent, modifierFn);
  }
  auto modifierFn() {
    return EventModifierInit_modifierFn_Get(this._parent);
  }
  auto modifierFnLock(bool modifierFnLock) {
    EventModifierInit_modifierFnLock_Set(this._parent, modifierFnLock);
  }
  auto modifierFnLock() {
    return EventModifierInit_modifierFnLock_Get(this._parent);
  }
  auto modifierHyper(bool modifierHyper) {
    EventModifierInit_modifierHyper_Set(this._parent, modifierHyper);
  }
  auto modifierHyper() {
    return EventModifierInit_modifierHyper_Get(this._parent);
  }
  auto modifierNumLock(bool modifierNumLock) {
    EventModifierInit_modifierNumLock_Set(this._parent, modifierNumLock);
  }
  auto modifierNumLock() {
    return EventModifierInit_modifierNumLock_Get(this._parent);
  }
  auto modifierScrollLock(bool modifierScrollLock) {
    EventModifierInit_modifierScrollLock_Set(this._parent, modifierScrollLock);
  }
  auto modifierScrollLock() {
    return EventModifierInit_modifierScrollLock_Get(this._parent);
  }
  auto modifierSuper(bool modifierSuper) {
    EventModifierInit_modifierSuper_Set(this._parent, modifierSuper);
  }
  auto modifierSuper() {
    return EventModifierInit_modifierSuper_Get(this._parent);
  }
  auto modifierSymbol(bool modifierSymbol) {
    EventModifierInit_modifierSymbol_Set(this._parent, modifierSymbol);
  }
  auto modifierSymbol() {
    return EventModifierInit_modifierSymbol_Get(this._parent);
  }
  auto modifierSymbolLock(bool modifierSymbolLock) {
    EventModifierInit_modifierSymbolLock_Set(this._parent, modifierSymbolLock);
  }
  auto modifierSymbolLock() {
    return EventModifierInit_modifierSymbolLock_Get(this._parent);
  }
}
struct FocusEvent {
  UIEvent _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = UIEvent(h);
  }
  auto relatedTarget() {
    return FocusEvent_relatedTarget_Get(this._parent);
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
    return FocusEventInit_relatedTarget_Get(this._parent);
  }
}
struct InputEvent {
  UIEvent _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = UIEvent(h);
  }
  auto data() {
    return InputEvent_data_Get(this._parent);
  }
  auto isComposing() {
    return InputEvent_isComposing_Get(this._parent);
  }
  auto inputType() {
    return InputEvent_inputType_Get(this._parent);
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
    return InputEventInit_data_Get(this._parent);
  }
  auto isComposing(bool isComposing) {
    InputEventInit_isComposing_Set(this._parent, isComposing);
  }
  auto isComposing() {
    return InputEventInit_isComposing_Get(this._parent);
  }
  auto inputType(string inputType) {
    InputEventInit_inputType_Set(this._parent, inputType);
  }
  auto inputType() {
    return InputEventInit_inputType_Get(this._parent);
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
    return KeyboardEvent_key_Get(this._parent);
  }
  auto code() {
    return KeyboardEvent_code_Get(this._parent);
  }
  auto location() {
    return KeyboardEvent_location_Get(this._parent);
  }
  auto ctrlKey() {
    return KeyboardEvent_ctrlKey_Get(this._parent);
  }
  auto shiftKey() {
    return KeyboardEvent_shiftKey_Get(this._parent);
  }
  auto altKey() {
    return KeyboardEvent_altKey_Get(this._parent);
  }
  auto metaKey() {
    return KeyboardEvent_metaKey_Get(this._parent);
  }
  auto repeat() {
    return KeyboardEvent_repeat_Get(this._parent);
  }
  auto isComposing() {
    return KeyboardEvent_isComposing_Get(this._parent);
  }
  auto getModifierState(string keyArg) {
    return KeyboardEvent_getModifierState(this._parent, keyArg);
  }
  auto charCode() {
    return KeyboardEvent_charCode_Get(this._parent);
  }
  auto keyCode() {
    return KeyboardEvent_keyCode_Get(this._parent);
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
    return KeyboardEventInit_key_Get(this._parent);
  }
  auto code(string code) {
    KeyboardEventInit_code_Set(this._parent, code);
  }
  auto code() {
    return KeyboardEventInit_code_Get(this._parent);
  }
  auto location(uint location) {
    KeyboardEventInit_location_Set(this._parent, location);
  }
  auto location() {
    return KeyboardEventInit_location_Get(this._parent);
  }
  auto repeat(bool repeat) {
    KeyboardEventInit_repeat_Set(this._parent, repeat);
  }
  auto repeat() {
    return KeyboardEventInit_repeat_Get(this._parent);
  }
  auto isComposing(bool isComposing) {
    KeyboardEventInit_isComposing_Set(this._parent, isComposing);
  }
  auto isComposing() {
    return KeyboardEventInit_isComposing_Get(this._parent);
  }
}
struct MouseEvent {
  UIEvent _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = UIEvent(h);
  }
  auto screenX() {
    return MouseEvent_screenX_Get(this._parent);
  }
  auto screenY() {
    return MouseEvent_screenY_Get(this._parent);
  }
  auto clientX() {
    return MouseEvent_clientX_Get(this._parent);
  }
  auto clientY() {
    return MouseEvent_clientY_Get(this._parent);
  }
  auto ctrlKey() {
    return MouseEvent_ctrlKey_Get(this._parent);
  }
  auto shiftKey() {
    return MouseEvent_shiftKey_Get(this._parent);
  }
  auto altKey() {
    return MouseEvent_altKey_Get(this._parent);
  }
  auto metaKey() {
    return MouseEvent_metaKey_Get(this._parent);
  }
  auto button() {
    return MouseEvent_button_Get(this._parent);
  }
  auto buttons() {
    return MouseEvent_buttons_Get(this._parent);
  }
  auto relatedTarget() {
    return MouseEvent_relatedTarget_Get(this._parent);
  }
  auto getModifierState(string keyArg) {
    return MouseEvent_getModifierState(this._parent, keyArg);
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
    return MouseEventInit_screenX_Get(this._parent);
  }
  auto screenY(int screenY) {
    MouseEventInit_screenY_Set(this._parent, screenY);
  }
  auto screenY() {
    return MouseEventInit_screenY_Get(this._parent);
  }
  auto clientX(int clientX) {
    MouseEventInit_clientX_Set(this._parent, clientX);
  }
  auto clientX() {
    return MouseEventInit_clientX_Get(this._parent);
  }
  auto clientY(int clientY) {
    MouseEventInit_clientY_Set(this._parent, clientY);
  }
  auto clientY() {
    return MouseEventInit_clientY_Get(this._parent);
  }
  auto button(short button) {
    MouseEventInit_button_Set(this._parent, button);
  }
  auto button() {
    return MouseEventInit_button_Get(this._parent);
  }
  auto buttons(ushort buttons) {
    MouseEventInit_buttons_Set(this._parent, buttons);
  }
  auto buttons() {
    return MouseEventInit_buttons_Get(this._parent);
  }
  auto relatedTarget(Optional!(EventTarget) relatedTarget) {
    MouseEventInit_relatedTarget_Set(this._parent, !relatedTarget.empty, relatedTarget.front.handle);
  }
  auto relatedTarget() {
    return MouseEventInit_relatedTarget_Get(this._parent);
  }
}
struct UIEvent {
  Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Event(h);
  }
  auto view() {
    return UIEvent_view_Get(this._parent);
  }
  auto detail() {
    return UIEvent_detail_Get(this._parent);
  }
  auto which() {
    return UIEvent_which_Get(this._parent);
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
    return UIEventInit_view_Get(this._parent);
  }
  auto detail(int detail) {
    UIEventInit_detail_Set(this._parent, detail);
  }
  auto detail() {
    return UIEventInit_detail_Get(this._parent);
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
    return WheelEvent_deltaX_Get(this._parent);
  }
  auto deltaY() {
    return WheelEvent_deltaY_Get(this._parent);
  }
  auto deltaZ() {
    return WheelEvent_deltaZ_Get(this._parent);
  }
  auto deltaMode() {
    return WheelEvent_deltaMode_Get(this._parent);
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
    return WheelEventInit_deltaX_Get(this._parent);
  }
  auto deltaY(double deltaY) {
    WheelEventInit_deltaY_Set(this._parent, deltaY);
  }
  auto deltaY() {
    return WheelEventInit_deltaY_Get(this._parent);
  }
  auto deltaZ(double deltaZ) {
    WheelEventInit_deltaZ_Set(this._parent, deltaZ);
  }
  auto deltaZ() {
    return WheelEventInit_deltaZ_Get(this._parent);
  }
  auto deltaMode(uint deltaMode) {
    WheelEventInit_deltaMode_Set(this._parent, deltaMode);
  }
  auto deltaMode() {
    return WheelEventInit_deltaMode_Get(this._parent);
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