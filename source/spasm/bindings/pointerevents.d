module spasm.bindings.pointerevents;

import spasm.types;
import spasm.bindings.uievents;

struct PointerEventInit {
  MouseEventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = MouseEventInit(h);
  }
  auto pointerId(int pointerId) {
    PointerEventInit_pointerId_Set(this._parent, pointerId);
  }
  auto pointerId() {
    auto result = PointerEventInit_pointerId_Get(this._parent);
    return result;
  }
  auto width(double width) {
    PointerEventInit_width_Set(this._parent, width);
  }
  auto width() {
    auto result = PointerEventInit_width_Get(this._parent);
    return result;
  }
  auto height(double height) {
    PointerEventInit_height_Set(this._parent, height);
  }
  auto height() {
    auto result = PointerEventInit_height_Get(this._parent);
    return result;
  }
  auto pressure(float pressure) {
    PointerEventInit_pressure_Set(this._parent, pressure);
  }
  auto pressure() {
    auto result = PointerEventInit_pressure_Get(this._parent);
    return result;
  }
  auto tangentialPressure(float tangentialPressure) {
    PointerEventInit_tangentialPressure_Set(this._parent, tangentialPressure);
  }
  auto tangentialPressure() {
    auto result = PointerEventInit_tangentialPressure_Get(this._parent);
    return result;
  }
  auto tiltX(int tiltX) {
    PointerEventInit_tiltX_Set(this._parent, tiltX);
  }
  auto tiltX() {
    auto result = PointerEventInit_tiltX_Get(this._parent);
    return result;
  }
  auto tiltY(int tiltY) {
    PointerEventInit_tiltY_Set(this._parent, tiltY);
  }
  auto tiltY() {
    auto result = PointerEventInit_tiltY_Get(this._parent);
    return result;
  }
  auto twist(int twist) {
    PointerEventInit_twist_Set(this._parent, twist);
  }
  auto twist() {
    auto result = PointerEventInit_twist_Get(this._parent);
    return result;
  }
  auto pointerType(string pointerType) {
    PointerEventInit_pointerType_Set(this._parent, pointerType);
  }
  auto pointerType() {
    auto result = PointerEventInit_pointerType_Get(this._parent);
    return result;
  }
  auto isPrimary(bool isPrimary) {
    PointerEventInit_isPrimary_Set(this._parent, isPrimary);
  }
  auto isPrimary() {
    auto result = PointerEventInit_isPrimary_Get(this._parent);
    return result;
  }
}


extern (C) void PointerEventInit_pointerId_Set(Handle, int);
extern (C) int PointerEventInit_pointerId_Get(Handle);
extern (C) void PointerEventInit_width_Set(Handle, double);
extern (C) double PointerEventInit_width_Get(Handle);
extern (C) void PointerEventInit_height_Set(Handle, double);
extern (C) double PointerEventInit_height_Get(Handle);
extern (C) void PointerEventInit_pressure_Set(Handle, float);
extern (C) float PointerEventInit_pressure_Get(Handle);
extern (C) void PointerEventInit_tangentialPressure_Set(Handle, float);
extern (C) float PointerEventInit_tangentialPressure_Get(Handle);
extern (C) void PointerEventInit_tiltX_Set(Handle, int);
extern (C) int PointerEventInit_tiltX_Get(Handle);
extern (C) void PointerEventInit_tiltY_Set(Handle, int);
extern (C) int PointerEventInit_tiltY_Get(Handle);
extern (C) void PointerEventInit_twist_Set(Handle, int);
extern (C) int PointerEventInit_twist_Get(Handle);
extern (C) void PointerEventInit_pointerType_Set(Handle, string);
extern (C) string PointerEventInit_pointerType_Get(Handle);
extern (C) void PointerEventInit_isPrimary_Set(Handle, bool);
extern (C) bool PointerEventInit_isPrimary_Get(Handle);