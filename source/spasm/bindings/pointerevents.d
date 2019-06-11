module spasm.bindings.pointerevents;

import spasm.types;
import spasm.bindings.uievents;

nothrow:
struct PointerEventInit {
  nothrow:
  spasm.bindings.uievents.MouseEventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .MouseEventInit(h);
  }
  static auto create() {
    return PointerEventInit(JsHandle(spasm_add__object()));
  }
  void pointerId(int pointerId) {
    PointerEventInit_pointerId_Set(this._parent, pointerId);
  }
  auto pointerId() {
    return PointerEventInit_pointerId_Get(this._parent);
  }
  void width(double width) {
    PointerEventInit_width_Set(this._parent, width);
  }
  auto width() {
    return PointerEventInit_width_Get(this._parent);
  }
  void height(double height) {
    PointerEventInit_height_Set(this._parent, height);
  }
  auto height() {
    return PointerEventInit_height_Get(this._parent);
  }
  void pressure(float pressure) {
    PointerEventInit_pressure_Set(this._parent, pressure);
  }
  auto pressure() {
    return PointerEventInit_pressure_Get(this._parent);
  }
  void tangentialPressure(float tangentialPressure) {
    PointerEventInit_tangentialPressure_Set(this._parent, tangentialPressure);
  }
  auto tangentialPressure() {
    return PointerEventInit_tangentialPressure_Get(this._parent);
  }
  void tiltX(int tiltX) {
    PointerEventInit_tiltX_Set(this._parent, tiltX);
  }
  auto tiltX() {
    return PointerEventInit_tiltX_Get(this._parent);
  }
  void tiltY(int tiltY) {
    PointerEventInit_tiltY_Set(this._parent, tiltY);
  }
  auto tiltY() {
    return PointerEventInit_tiltY_Get(this._parent);
  }
  void twist(int twist) {
    PointerEventInit_twist_Set(this._parent, twist);
  }
  auto twist() {
    return PointerEventInit_twist_Get(this._parent);
  }
  void pointerType(string pointerType) {
    PointerEventInit_pointerType_Set(this._parent, pointerType);
  }
  auto pointerType() {
    return PointerEventInit_pointerType_Get(this._parent);
  }
  void isPrimary(bool isPrimary) {
    PointerEventInit_isPrimary_Set(this._parent, isPrimary);
  }
  auto isPrimary() {
    return PointerEventInit_isPrimary_Get(this._parent);
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