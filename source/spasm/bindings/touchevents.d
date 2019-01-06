module spasm.bindings.touchevents;

import spasm.types;
import spasm.bindings.dom;
import spasm.bindings.uievents;

struct Touch {
  JsHandle handle;
  alias handle this;
  auto identifier() {
    return Touch_identifier_Get(this.handle);
  }
  auto target() {
    return EventTarget(Touch_target_Get(this.handle));
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
  UIEvent _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = UIEvent(h);
  }
  auto touches() {
    return TouchList(TouchEvent_touches_Get(this._parent));
  }
  auto targetTouches() {
    return TouchList(TouchEvent_targetTouches_Get(this._parent));
  }
  auto changedTouches() {
    return TouchList(TouchEvent_changedTouches_Get(this._parent));
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
  EventModifierInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventModifierInit(h);
  }
  auto touches(Sequence!(Touch) touches) {
    TouchEventInit_touches_Set(this._parent, touches.handle);
  }
  auto touches() {
    return Sequence!(Touch)(TouchEventInit_touches_Get(this._parent));
  }
  auto targetTouches(Sequence!(Touch) targetTouches) {
    TouchEventInit_targetTouches_Set(this._parent, targetTouches.handle);
  }
  auto targetTouches() {
    return Sequence!(Touch)(TouchEventInit_targetTouches_Get(this._parent));
  }
  auto changedTouches(Sequence!(Touch) changedTouches) {
    TouchEventInit_changedTouches_Set(this._parent, changedTouches.handle);
  }
  auto changedTouches() {
    return Sequence!(Touch)(TouchEventInit_changedTouches_Get(this._parent));
  }
}
struct TouchInit {
  JsHandle handle;
  alias handle this;
  auto identifier(int identifier) {
    TouchInit_identifier_Set(this.handle, identifier);
  }
  auto identifier() {
    return TouchInit_identifier_Get(this.handle);
  }
  auto target(EventTarget target) {
    TouchInit_target_Set(this.handle, target.handle);
  }
  auto target() {
    return EventTarget(TouchInit_target_Get(this.handle));
  }
  auto clientX(double clientX) {
    TouchInit_clientX_Set(this.handle, clientX);
  }
  auto clientX() {
    return TouchInit_clientX_Get(this.handle);
  }
  auto clientY(double clientY) {
    TouchInit_clientY_Set(this.handle, clientY);
  }
  auto clientY() {
    return TouchInit_clientY_Get(this.handle);
  }
  auto screenX(double screenX) {
    TouchInit_screenX_Set(this.handle, screenX);
  }
  auto screenX() {
    return TouchInit_screenX_Get(this.handle);
  }
  auto screenY(double screenY) {
    TouchInit_screenY_Set(this.handle, screenY);
  }
  auto screenY() {
    return TouchInit_screenY_Get(this.handle);
  }
  auto pageX(double pageX) {
    TouchInit_pageX_Set(this.handle, pageX);
  }
  auto pageX() {
    return TouchInit_pageX_Get(this.handle);
  }
  auto pageY(double pageY) {
    TouchInit_pageY_Set(this.handle, pageY);
  }
  auto pageY() {
    return TouchInit_pageY_Get(this.handle);
  }
  auto radiusX(float radiusX) {
    TouchInit_radiusX_Set(this.handle, radiusX);
  }
  auto radiusX() {
    return TouchInit_radiusX_Get(this.handle);
  }
  auto radiusY(float radiusY) {
    TouchInit_radiusY_Set(this.handle, radiusY);
  }
  auto radiusY() {
    return TouchInit_radiusY_Get(this.handle);
  }
  auto rotationAngle(float rotationAngle) {
    TouchInit_rotationAngle_Set(this.handle, rotationAngle);
  }
  auto rotationAngle() {
    return TouchInit_rotationAngle_Get(this.handle);
  }
  auto force(float force) {
    TouchInit_force_Set(this.handle, force);
  }
  auto force() {
    return TouchInit_force_Get(this.handle);
  }
  auto altitudeAngle(double altitudeAngle) {
    TouchInit_altitudeAngle_Set(this.handle, altitudeAngle);
  }
  auto altitudeAngle() {
    return TouchInit_altitudeAngle_Get(this.handle);
  }
  auto azimuthAngle(double azimuthAngle) {
    TouchInit_azimuthAngle_Set(this.handle, azimuthAngle);
  }
  auto azimuthAngle() {
    return TouchInit_azimuthAngle_Get(this.handle);
  }
  auto touchType(TouchType touchType) {
    TouchInit_touchType_Set(this.handle, touchType);
  }
  auto touchType() {
    return TouchInit_touchType_Get(this.handle);
  }
}
struct TouchList {
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


extern (C) int Touch_identifier_Get(JsHandle);
extern (C) JsHandle Touch_target_Get(JsHandle);
extern (C) double Touch_screenX_Get(JsHandle);
extern (C) double Touch_screenY_Get(JsHandle);
extern (C) double Touch_clientX_Get(JsHandle);
extern (C) double Touch_clientY_Get(JsHandle);
extern (C) double Touch_pageX_Get(JsHandle);
extern (C) double Touch_pageY_Get(JsHandle);
extern (C) float Touch_radiusX_Get(JsHandle);
extern (C) float Touch_radiusY_Get(JsHandle);
extern (C) float Touch_rotationAngle_Get(JsHandle);
extern (C) float Touch_force_Get(JsHandle);
extern (C) float Touch_altitudeAngle_Get(JsHandle);
extern (C) float Touch_azimuthAngle_Get(JsHandle);
extern (C) TouchType Touch_touchType_Get(JsHandle);
extern (C) JsHandle TouchEvent_touches_Get(JsHandle);
extern (C) JsHandle TouchEvent_targetTouches_Get(JsHandle);
extern (C) JsHandle TouchEvent_changedTouches_Get(JsHandle);
extern (C) bool TouchEvent_altKey_Get(JsHandle);
extern (C) bool TouchEvent_metaKey_Get(JsHandle);
extern (C) bool TouchEvent_ctrlKey_Get(JsHandle);
extern (C) bool TouchEvent_shiftKey_Get(JsHandle);
extern (C) void TouchEventInit_touches_Set(JsHandle, JsHandle);
extern (C) JsHandle TouchEventInit_touches_Get(JsHandle);
extern (C) void TouchEventInit_targetTouches_Set(JsHandle, JsHandle);
extern (C) JsHandle TouchEventInit_targetTouches_Get(JsHandle);
extern (C) void TouchEventInit_changedTouches_Set(JsHandle, JsHandle);
extern (C) JsHandle TouchEventInit_changedTouches_Get(JsHandle);
extern (C) void TouchInit_identifier_Set(JsHandle, int);
extern (C) int TouchInit_identifier_Get(JsHandle);
extern (C) void TouchInit_target_Set(JsHandle, JsHandle);
extern (C) JsHandle TouchInit_target_Get(JsHandle);
extern (C) void TouchInit_clientX_Set(JsHandle, double);
extern (C) double TouchInit_clientX_Get(JsHandle);
extern (C) void TouchInit_clientY_Set(JsHandle, double);
extern (C) double TouchInit_clientY_Get(JsHandle);
extern (C) void TouchInit_screenX_Set(JsHandle, double);
extern (C) double TouchInit_screenX_Get(JsHandle);
extern (C) void TouchInit_screenY_Set(JsHandle, double);
extern (C) double TouchInit_screenY_Get(JsHandle);
extern (C) void TouchInit_pageX_Set(JsHandle, double);
extern (C) double TouchInit_pageX_Get(JsHandle);
extern (C) void TouchInit_pageY_Set(JsHandle, double);
extern (C) double TouchInit_pageY_Get(JsHandle);
extern (C) void TouchInit_radiusX_Set(JsHandle, float);
extern (C) float TouchInit_radiusX_Get(JsHandle);
extern (C) void TouchInit_radiusY_Set(JsHandle, float);
extern (C) float TouchInit_radiusY_Get(JsHandle);
extern (C) void TouchInit_rotationAngle_Set(JsHandle, float);
extern (C) float TouchInit_rotationAngle_Get(JsHandle);
extern (C) void TouchInit_force_Set(JsHandle, float);
extern (C) float TouchInit_force_Get(JsHandle);
extern (C) void TouchInit_altitudeAngle_Set(JsHandle, double);
extern (C) double TouchInit_altitudeAngle_Get(JsHandle);
extern (C) void TouchInit_azimuthAngle_Set(JsHandle, double);
extern (C) double TouchInit_azimuthAngle_Get(JsHandle);
extern (C) void TouchInit_touchType_Set(JsHandle, TouchType);
extern (C) TouchType TouchInit_touchType_Get(JsHandle);
extern (C) uint TouchList_length_Get(JsHandle);
extern (C) Optional!(Touch) TouchList_item_getter(JsHandle, uint);