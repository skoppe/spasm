module spasm.bindings.pointerevents;

import spasm.types;
struct PointerEventInit {
  MouseEventInit _parent;
  alias _parent this;
  void pointerId(int pointerId) {
    PointerEventInit_pointerId_Set(handle, pointerId);
  }
  int pointerId() {
    return PointerEventInit_pointerId_Get(handle);
  }
  void width(double width) {
    PointerEventInit_width_Set(handle, width);
  }
  double width() {
    return PointerEventInit_width_Get(handle);
  }
  void height(double height) {
    PointerEventInit_height_Set(handle, height);
  }
  double height() {
    return PointerEventInit_height_Get(handle);
  }
  void pressure(float pressure) {
    PointerEventInit_pressure_Set(handle, pressure);
  }
  float pressure() {
    return PointerEventInit_pressure_Get(handle);
  }
  void tangentialPressure(float tangentialPressure) {
    PointerEventInit_tangentialPressure_Set(handle, tangentialPressure);
  }
  float tangentialPressure() {
    return PointerEventInit_tangentialPressure_Get(handle);
  }
  void tiltX(int tiltX) {
    PointerEventInit_tiltX_Set(handle, tiltX);
  }
  int tiltX() {
    return PointerEventInit_tiltX_Get(handle);
  }
  void tiltY(int tiltY) {
    PointerEventInit_tiltY_Set(handle, tiltY);
  }
  int tiltY() {
    return PointerEventInit_tiltY_Get(handle);
  }
  void twist(int twist) {
    PointerEventInit_twist_Set(handle, twist);
  }
  int twist() {
    return PointerEventInit_twist_Get(handle);
  }
  void pointerType(string pointerType) {
    PointerEventInit_pointerType_Set(handle, pointerType);
  }
  string pointerType() {
    return PointerEventInit_pointerType_Get(handle);
  }
  void isPrimary(bool isPrimary) {
    PointerEventInit_isPrimary_Set(handle, isPrimary);
  }
  bool isPrimary() {
    return PointerEventInit_isPrimary_Get(handle);
  }
}


extern (C) void PointerEventInit_pointerId_Set(JsHandle, int);
extern (C) int PointerEventInit_pointerId_Get(JsHandle);
extern (C) void PointerEventInit_width_Set(JsHandle, double);
extern (C) double PointerEventInit_width_Get(JsHandle);
extern (C) void PointerEventInit_height_Set(JsHandle, double);
extern (C) double PointerEventInit_height_Get(JsHandle);
extern (C) void PointerEventInit_pressure_Set(JsHandle, float);
extern (C) float PointerEventInit_pressure_Get(JsHandle);
extern (C) void PointerEventInit_tangentialPressure_Set(JsHandle, float);
extern (C) float PointerEventInit_tangentialPressure_Get(JsHandle);
extern (C) void PointerEventInit_tiltX_Set(JsHandle, int);
extern (C) int PointerEventInit_tiltX_Get(JsHandle);
extern (C) void PointerEventInit_tiltY_Set(JsHandle, int);
extern (C) int PointerEventInit_tiltY_Get(JsHandle);
extern (C) void PointerEventInit_twist_Set(JsHandle, int);
extern (C) int PointerEventInit_twist_Get(JsHandle);
extern (C) void PointerEventInit_pointerType_Set(JsHandle, string);
extern (C) string PointerEventInit_pointerType_Get(JsHandle);
extern (C) void PointerEventInit_isPrimary_Set(JsHandle, bool);
extern (C) bool PointerEventInit_isPrimary_Get(JsHandle);