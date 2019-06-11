module spasm.bindings.touchevents;

import spasm.types;
import spasm.bindings.dom;
import spasm.bindings.uievents;

nothrow:
struct Touch {
  nothrow:
  JsHandle handle;
  alias handle this;
  auto identifier() {
    return Touch_identifier_Get(this.handle);
  }
  auto target() {
    return EventTarget(JsHandle(Touch_target_Get(this.handle)));
  }
  auto screenX() {
    return Touch_screenX_Get(this.handle);
  }
  auto screenY() {
    return Touch_screenY_Get(this.handle);
  }
  auto clientX() {
    return Touch_clientX_Get(this.handle);
  }
  auto clientY() {
    return Touch_clientY_Get(this.handle);
  }
  auto pageX() {
    return Touch_pageX_Get(this.handle);
  }
  auto pageY() {
    return Touch_pageY_Get(this.handle);
  }
  auto radiusX() {
    return Touch_radiusX_Get(this.handle);
  }
  auto radiusY() {
    return Touch_radiusY_Get(this.handle);
  }
  auto rotationAngle() {
    return Touch_rotationAngle_Get(this.handle);
  }
  auto force() {
    return Touch_force_Get(this.handle);
  }
  auto altitudeAngle() {
    return Touch_altitudeAngle_Get(this.handle);
  }
  auto azimuthAngle() {
    return Touch_azimuthAngle_Get(this.handle);
  }
  auto touchType() {
    return Touch_touchType_Get(this.handle);
  }
}
struct TouchEvent {
  nothrow:
  spasm.bindings.uievents.UIEvent _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .UIEvent(h);
  }
  auto touches() {
    return TouchList(JsHandle(TouchEvent_touches_Get(this._parent)));
  }
  auto targetTouches() {
    return TouchList(JsHandle(TouchEvent_targetTouches_Get(this._parent)));
  }
  auto changedTouches() {
    return TouchList(JsHandle(TouchEvent_changedTouches_Get(this._parent)));
  }
  auto altKey() {
    return TouchEvent_altKey_Get(this._parent);
  }
  auto metaKey() {
    return TouchEvent_metaKey_Get(this._parent);
  }
  auto ctrlKey() {
    return TouchEvent_ctrlKey_Get(this._parent);
  }
  auto shiftKey() {
    return TouchEvent_shiftKey_Get(this._parent);
  }
}
struct TouchEventInit {
  nothrow:
  spasm.bindings.uievents.EventModifierInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .EventModifierInit(h);
  }
  static auto create() {
    return TouchEventInit(JsHandle(spasm_add__object()));
  }
  void touches(Sequence!(Touch) touches) {
    TouchEventInit_touches_Set(this._parent, touches.handle);
  }
  auto touches() {
    return Sequence!(Touch)(JsHandle(TouchEventInit_touches_Get(this._parent)));
  }
  void targetTouches(Sequence!(Touch) targetTouches) {
    TouchEventInit_targetTouches_Set(this._parent, targetTouches.handle);
  }
  auto targetTouches() {
    return Sequence!(Touch)(JsHandle(TouchEventInit_targetTouches_Get(this._parent)));
  }
  void changedTouches(Sequence!(Touch) changedTouches) {
    TouchEventInit_changedTouches_Set(this._parent, changedTouches.handle);
  }
  auto changedTouches() {
    return Sequence!(Touch)(JsHandle(TouchEventInit_changedTouches_Get(this._parent)));
  }
}
struct TouchInit {
  nothrow:
  JsHandle handle;
  alias handle this;
  static auto create() {
    return TouchInit(JsHandle(spasm_add__object()));
  }
  void identifier(int identifier) {
    TouchInit_identifier_Set(this.handle, identifier);
  }
  auto identifier() {
    return TouchInit_identifier_Get(this.handle);
  }
  void target(EventTarget target) {
    TouchInit_target_Set(this.handle, target.handle);
  }
  auto target() {
    return EventTarget(JsHandle(TouchInit_target_Get(this.handle)));
  }
  void clientX(double clientX) {
    TouchInit_clientX_Set(this.handle, clientX);
  }
  auto clientX() {
    return TouchInit_clientX_Get(this.handle);
  }
  void clientY(double clientY) {
    TouchInit_clientY_Set(this.handle, clientY);
  }
  auto clientY() {
    return TouchInit_clientY_Get(this.handle);
  }
  void screenX(double screenX) {
    TouchInit_screenX_Set(this.handle, screenX);
  }
  auto screenX() {
    return TouchInit_screenX_Get(this.handle);
  }
  void screenY(double screenY) {
    TouchInit_screenY_Set(this.handle, screenY);
  }
  auto screenY() {
    return TouchInit_screenY_Get(this.handle);
  }
  void pageX(double pageX) {
    TouchInit_pageX_Set(this.handle, pageX);
  }
  auto pageX() {
    return TouchInit_pageX_Get(this.handle);
  }
  void pageY(double pageY) {
    TouchInit_pageY_Set(this.handle, pageY);
  }
  auto pageY() {
    return TouchInit_pageY_Get(this.handle);
  }
  void radiusX(float radiusX) {
    TouchInit_radiusX_Set(this.handle, radiusX);
  }
  auto radiusX() {
    return TouchInit_radiusX_Get(this.handle);
  }
  void radiusY(float radiusY) {
    TouchInit_radiusY_Set(this.handle, radiusY);
  }
  auto radiusY() {
    return TouchInit_radiusY_Get(this.handle);
  }
  void rotationAngle(float rotationAngle) {
    TouchInit_rotationAngle_Set(this.handle, rotationAngle);
  }
  auto rotationAngle() {
    return TouchInit_rotationAngle_Get(this.handle);
  }
  void force(float force) {
    TouchInit_force_Set(this.handle, force);
  }
  auto force() {
    return TouchInit_force_Get(this.handle);
  }
  void altitudeAngle(double altitudeAngle) {
    TouchInit_altitudeAngle_Set(this.handle, altitudeAngle);
  }
  auto altitudeAngle() {
    return TouchInit_altitudeAngle_Get(this.handle);
  }
  void azimuthAngle(double azimuthAngle) {
    TouchInit_azimuthAngle_Set(this.handle, azimuthAngle);
  }
  auto azimuthAngle() {
    return TouchInit_azimuthAngle_Get(this.handle);
  }
  void touchType(TouchType touchType) {
    TouchInit_touchType_Set(this.handle, touchType);
  }
  auto touchType() {
    return TouchInit_touchType_Get(this.handle);
  }
}
struct TouchList {
  nothrow:
  JsHandle handle;
  alias handle this;
  auto length() {
    return TouchList_length_Get(this.handle);
  }
  auto item(uint index) {
    return TouchList_item_getter(this.handle, index);
  }
}
enum TouchType {
  direct,
  stylus
}


extern (C) int Touch_identifier_Get(Handle);
extern (C) Handle Touch_target_Get(Handle);
extern (C) double Touch_screenX_Get(Handle);
extern (C) double Touch_screenY_Get(Handle);
extern (C) double Touch_clientX_Get(Handle);
extern (C) double Touch_clientY_Get(Handle);
extern (C) double Touch_pageX_Get(Handle);
extern (C) double Touch_pageY_Get(Handle);
extern (C) float Touch_radiusX_Get(Handle);
extern (C) float Touch_radiusY_Get(Handle);
extern (C) float Touch_rotationAngle_Get(Handle);
extern (C) float Touch_force_Get(Handle);
extern (C) float Touch_altitudeAngle_Get(Handle);
extern (C) float Touch_azimuthAngle_Get(Handle);
extern (C) TouchType Touch_touchType_Get(Handle);
extern (C) Handle TouchEvent_touches_Get(Handle);
extern (C) Handle TouchEvent_targetTouches_Get(Handle);
extern (C) Handle TouchEvent_changedTouches_Get(Handle);
extern (C) bool TouchEvent_altKey_Get(Handle);
extern (C) bool TouchEvent_metaKey_Get(Handle);
extern (C) bool TouchEvent_ctrlKey_Get(Handle);
extern (C) bool TouchEvent_shiftKey_Get(Handle);
extern (C) void TouchEventInit_touches_Set(Handle, Handle);
extern (C) Handle TouchEventInit_touches_Get(Handle);
extern (C) void TouchEventInit_targetTouches_Set(Handle, Handle);
extern (C) Handle TouchEventInit_targetTouches_Get(Handle);
extern (C) void TouchEventInit_changedTouches_Set(Handle, Handle);
extern (C) Handle TouchEventInit_changedTouches_Get(Handle);
extern (C) void TouchInit_identifier_Set(Handle, int);
extern (C) int TouchInit_identifier_Get(Handle);
extern (C) void TouchInit_target_Set(Handle, Handle);
extern (C) Handle TouchInit_target_Get(Handle);
extern (C) void TouchInit_clientX_Set(Handle, double);
extern (C) double TouchInit_clientX_Get(Handle);
extern (C) void TouchInit_clientY_Set(Handle, double);
extern (C) double TouchInit_clientY_Get(Handle);
extern (C) void TouchInit_screenX_Set(Handle, double);
extern (C) double TouchInit_screenX_Get(Handle);
extern (C) void TouchInit_screenY_Set(Handle, double);
extern (C) double TouchInit_screenY_Get(Handle);
extern (C) void TouchInit_pageX_Set(Handle, double);
extern (C) double TouchInit_pageX_Get(Handle);
extern (C) void TouchInit_pageY_Set(Handle, double);
extern (C) double TouchInit_pageY_Get(Handle);
extern (C) void TouchInit_radiusX_Set(Handle, float);
extern (C) float TouchInit_radiusX_Get(Handle);
extern (C) void TouchInit_radiusY_Set(Handle, float);
extern (C) float TouchInit_radiusY_Get(Handle);
extern (C) void TouchInit_rotationAngle_Set(Handle, float);
extern (C) float TouchInit_rotationAngle_Get(Handle);
extern (C) void TouchInit_force_Set(Handle, float);
extern (C) float TouchInit_force_Get(Handle);
extern (C) void TouchInit_altitudeAngle_Set(Handle, double);
extern (C) double TouchInit_altitudeAngle_Get(Handle);
extern (C) void TouchInit_azimuthAngle_Set(Handle, double);
extern (C) double TouchInit_azimuthAngle_Get(Handle);
extern (C) void TouchInit_touchType_Set(Handle, TouchType);
extern (C) TouchType TouchInit_touchType_Get(Handle);
extern (C) uint TouchList_length_Get(Handle);
extern (C) Optional!(Touch) TouchList_item_getter(Handle, uint);