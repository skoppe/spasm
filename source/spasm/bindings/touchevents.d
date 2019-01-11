module spasm.bindings.touchevents;

import spasm.types;
import spasm.bindings.dom;
import spasm.bindings.uievents;

struct Touch {
  JsHandle handle;
  alias handle this;
  auto identifier() {
    auto result = Touch_identifier_Get(this.handle);
    return result;
  }
  auto target() {
    auto result = EventTarget(JsHandle(Touch_target_Get(this.handle)));
    return result;
  }
  auto screenX() {
    auto result = Touch_screenX_Get(this.handle);
    return result;
  }
  auto screenY() {
    auto result = Touch_screenY_Get(this.handle);
    return result;
  }
  auto clientX() {
    auto result = Touch_clientX_Get(this.handle);
    return result;
  }
  auto clientY() {
    auto result = Touch_clientY_Get(this.handle);
    return result;
  }
  auto pageX() {
    auto result = Touch_pageX_Get(this.handle);
    return result;
  }
  auto pageY() {
    auto result = Touch_pageY_Get(this.handle);
    return result;
  }
  auto radiusX() {
    auto result = Touch_radiusX_Get(this.handle);
    return result;
  }
  auto radiusY() {
    auto result = Touch_radiusY_Get(this.handle);
    return result;
  }
  auto rotationAngle() {
    auto result = Touch_rotationAngle_Get(this.handle);
    return result;
  }
  auto force() {
    auto result = Touch_force_Get(this.handle);
    return result;
  }
  auto altitudeAngle() {
    auto result = Touch_altitudeAngle_Get(this.handle);
    return result;
  }
  auto azimuthAngle() {
    auto result = Touch_azimuthAngle_Get(this.handle);
    return result;
  }
  auto touchType() {
    auto result = Touch_touchType_Get(this.handle);
    return result;
  }
}
struct TouchEvent {
  UIEvent _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = UIEvent(h);
  }
  auto touches() {
    auto result = TouchList(JsHandle(TouchEvent_touches_Get(this._parent)));
    return result;
  }
  auto targetTouches() {
    auto result = TouchList(JsHandle(TouchEvent_targetTouches_Get(this._parent)));
    return result;
  }
  auto changedTouches() {
    auto result = TouchList(JsHandle(TouchEvent_changedTouches_Get(this._parent)));
    return result;
  }
  auto altKey() {
    auto result = TouchEvent_altKey_Get(this._parent);
    return result;
  }
  auto metaKey() {
    auto result = TouchEvent_metaKey_Get(this._parent);
    return result;
  }
  auto ctrlKey() {
    auto result = TouchEvent_ctrlKey_Get(this._parent);
    return result;
  }
  auto shiftKey() {
    auto result = TouchEvent_shiftKey_Get(this._parent);
    return result;
  }
}
struct TouchEventInit {
  EventModifierInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventModifierInit(h);
  }
  auto touches(Sequence!(Touch) touches) {
    TouchEventInit_touches_Set(this._parent, touches.handle);
  }
  auto touches() {
    auto result = Sequence!(Touch)(JsHandle(TouchEventInit_touches_Get(this._parent)));
    return result;
  }
  auto targetTouches(Sequence!(Touch) targetTouches) {
    TouchEventInit_targetTouches_Set(this._parent, targetTouches.handle);
  }
  auto targetTouches() {
    auto result = Sequence!(Touch)(JsHandle(TouchEventInit_targetTouches_Get(this._parent)));
    return result;
  }
  auto changedTouches(Sequence!(Touch) changedTouches) {
    TouchEventInit_changedTouches_Set(this._parent, changedTouches.handle);
  }
  auto changedTouches() {
    auto result = Sequence!(Touch)(JsHandle(TouchEventInit_changedTouches_Get(this._parent)));
    return result;
  }
}
struct TouchInit {
  JsHandle handle;
  alias handle this;
  auto identifier(int identifier) {
    TouchInit_identifier_Set(this.handle, identifier);
  }
  auto identifier() {
    auto result = TouchInit_identifier_Get(this.handle);
    return result;
  }
  auto target(EventTarget target) {
    TouchInit_target_Set(this.handle, target.handle);
  }
  auto target() {
    auto result = EventTarget(JsHandle(TouchInit_target_Get(this.handle)));
    return result;
  }
  auto clientX(double clientX) {
    TouchInit_clientX_Set(this.handle, clientX);
  }
  auto clientX() {
    auto result = TouchInit_clientX_Get(this.handle);
    return result;
  }
  auto clientY(double clientY) {
    TouchInit_clientY_Set(this.handle, clientY);
  }
  auto clientY() {
    auto result = TouchInit_clientY_Get(this.handle);
    return result;
  }
  auto screenX(double screenX) {
    TouchInit_screenX_Set(this.handle, screenX);
  }
  auto screenX() {
    auto result = TouchInit_screenX_Get(this.handle);
    return result;
  }
  auto screenY(double screenY) {
    TouchInit_screenY_Set(this.handle, screenY);
  }
  auto screenY() {
    auto result = TouchInit_screenY_Get(this.handle);
    return result;
  }
  auto pageX(double pageX) {
    TouchInit_pageX_Set(this.handle, pageX);
  }
  auto pageX() {
    auto result = TouchInit_pageX_Get(this.handle);
    return result;
  }
  auto pageY(double pageY) {
    TouchInit_pageY_Set(this.handle, pageY);
  }
  auto pageY() {
    auto result = TouchInit_pageY_Get(this.handle);
    return result;
  }
  auto radiusX(float radiusX) {
    TouchInit_radiusX_Set(this.handle, radiusX);
  }
  auto radiusX() {
    auto result = TouchInit_radiusX_Get(this.handle);
    return result;
  }
  auto radiusY(float radiusY) {
    TouchInit_radiusY_Set(this.handle, radiusY);
  }
  auto radiusY() {
    auto result = TouchInit_radiusY_Get(this.handle);
    return result;
  }
  auto rotationAngle(float rotationAngle) {
    TouchInit_rotationAngle_Set(this.handle, rotationAngle);
  }
  auto rotationAngle() {
    auto result = TouchInit_rotationAngle_Get(this.handle);
    return result;
  }
  auto force(float force) {
    TouchInit_force_Set(this.handle, force);
  }
  auto force() {
    auto result = TouchInit_force_Get(this.handle);
    return result;
  }
  auto altitudeAngle(double altitudeAngle) {
    TouchInit_altitudeAngle_Set(this.handle, altitudeAngle);
  }
  auto altitudeAngle() {
    auto result = TouchInit_altitudeAngle_Get(this.handle);
    return result;
  }
  auto azimuthAngle(double azimuthAngle) {
    TouchInit_azimuthAngle_Set(this.handle, azimuthAngle);
  }
  auto azimuthAngle() {
    auto result = TouchInit_azimuthAngle_Get(this.handle);
    return result;
  }
  auto touchType(TouchType touchType) {
    TouchInit_touchType_Set(this.handle, touchType);
  }
  auto touchType() {
    auto result = TouchInit_touchType_Get(this.handle);
    return result;
  }
}
struct TouchList {
  JsHandle handle;
  alias handle this;
  auto length() {
    auto result = TouchList_length_Get(this.handle);
    return result;
  }
  auto item(uint index) {
    auto result = TouchList_item_getter(this.handle, index);
    return result;
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