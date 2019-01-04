module spasm.bindings.touchevents;

import spasm.types;
import spasm.bindings.html : EventHandler;
import spasm.bindings.dom : EventTarget;

struct Touch {
  JsHandle handle;
  alias handle this;
  int identifier() {
    return Touch_identifier_Get(handle);
  }
  EventTarget target() {
    return EventTarget(Touch_target_Get(handle));
  }
  double screenX() {
    return Touch_screenX_Get(handle);
  }
  double screenY() {
    return Touch_screenY_Get(handle);
  }
  double clientX() {
    return Touch_clientX_Get(handle);
  }
  double clientY() {
    return Touch_clientY_Get(handle);
  }
  double pageX() {
    return Touch_pageX_Get(handle);
  }
  double pageY() {
    return Touch_pageY_Get(handle);
  }
  float radiusX() {
    return Touch_radiusX_Get(handle);
  }
  float radiusY() {
    return Touch_radiusY_Get(handle);
  }
  float rotationAngle() {
    return Touch_rotationAngle_Get(handle);
  }
  float force() {
    return Touch_force_Get(handle);
  }
  float altitudeAngle() {
    return Touch_altitudeAngle_Get(handle);
  }
  float azimuthAngle() {
    return Touch_azimuthAngle_Get(handle);
  }
  TouchType touchType() {
    return Touch_touchType_Get(handle);
  }
}
struct TouchEvent {
  UIEvent _parent;
  alias _parent this;
  TouchList touches() {
    return TouchList(TouchEvent_touches_Get(handle));
  }
  TouchList targetTouches() {
    return TouchList(TouchEvent_targetTouches_Get(handle));
  }
  TouchList changedTouches() {
    return TouchList(TouchEvent_changedTouches_Get(handle));
  }
  bool altKey() {
    return TouchEvent_altKey_Get(handle);
  }
  bool metaKey() {
    return TouchEvent_metaKey_Get(handle);
  }
  bool ctrlKey() {
    return TouchEvent_ctrlKey_Get(handle);
  }
  bool shiftKey() {
    return TouchEvent_shiftKey_Get(handle);
  }
}
struct TouchEventInit {
  EventModifierInit _parent;
  alias _parent this;
  void touches(Sequence!(Touch) touches) {
    TouchEventInit_touches_Set(handle, touches.handle);
  }
  Sequence!(Touch) touches() {
    return Sequence!(Touch)(TouchEventInit_touches_Get(handle));
  }
  void targetTouches(Sequence!(Touch) targetTouches) {
    TouchEventInit_targetTouches_Set(handle, targetTouches.handle);
  }
  Sequence!(Touch) targetTouches() {
    return Sequence!(Touch)(TouchEventInit_targetTouches_Get(handle));
  }
  void changedTouches(Sequence!(Touch) changedTouches) {
    TouchEventInit_changedTouches_Set(handle, changedTouches.handle);
  }
  Sequence!(Touch) changedTouches() {
    return Sequence!(Touch)(TouchEventInit_changedTouches_Get(handle));
  }
}
struct TouchInit {
  JsHandle handle;
  alias handle this;
  void identifier(int identifier) {
    TouchInit_identifier_Set(handle, identifier);
  }
  int identifier() {
    return TouchInit_identifier_Get(handle);
  }
  void target(EventTarget target) {
    TouchInit_target_Set(handle, target.handle);
  }
  EventTarget target() {
    return EventTarget(TouchInit_target_Get(handle));
  }
  void clientX(double clientX) {
    TouchInit_clientX_Set(handle, clientX);
  }
  double clientX() {
    return TouchInit_clientX_Get(handle);
  }
  void clientY(double clientY) {
    TouchInit_clientY_Set(handle, clientY);
  }
  double clientY() {
    return TouchInit_clientY_Get(handle);
  }
  void screenX(double screenX) {
    TouchInit_screenX_Set(handle, screenX);
  }
  double screenX() {
    return TouchInit_screenX_Get(handle);
  }
  void screenY(double screenY) {
    TouchInit_screenY_Set(handle, screenY);
  }
  double screenY() {
    return TouchInit_screenY_Get(handle);
  }
  void pageX(double pageX) {
    TouchInit_pageX_Set(handle, pageX);
  }
  double pageX() {
    return TouchInit_pageX_Get(handle);
  }
  void pageY(double pageY) {
    TouchInit_pageY_Set(handle, pageY);
  }
  double pageY() {
    return TouchInit_pageY_Get(handle);
  }
  void radiusX(float radiusX) {
    TouchInit_radiusX_Set(handle, radiusX);
  }
  float radiusX() {
    return TouchInit_radiusX_Get(handle);
  }
  void radiusY(float radiusY) {
    TouchInit_radiusY_Set(handle, radiusY);
  }
  float radiusY() {
    return TouchInit_radiusY_Get(handle);
  }
  void rotationAngle(float rotationAngle) {
    TouchInit_rotationAngle_Set(handle, rotationAngle);
  }
  float rotationAngle() {
    return TouchInit_rotationAngle_Get(handle);
  }
  void force(float force) {
    TouchInit_force_Set(handle, force);
  }
  float force() {
    return TouchInit_force_Get(handle);
  }
  void altitudeAngle(double altitudeAngle) {
    TouchInit_altitudeAngle_Set(handle, altitudeAngle);
  }
  double altitudeAngle() {
    return TouchInit_altitudeAngle_Get(handle);
  }
  void azimuthAngle(double azimuthAngle) {
    TouchInit_azimuthAngle_Set(handle, azimuthAngle);
  }
  double azimuthAngle() {
    return TouchInit_azimuthAngle_Get(handle);
  }
  void touchType(TouchType touchType) {
    TouchInit_touchType_Set(handle, touchType);
  }
  TouchType touchType() {
    return TouchInit_touchType_Get(handle);
  }
}
struct TouchList {
  JsHandle handle;
  alias handle this;
  uint length() {
    return TouchList_length_Get(handle);
  }
  Optional!(Touch) item(uint index) {
    return TouchList_item_getter(handle, index);
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