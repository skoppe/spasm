module spasm.bindings.geometry;

import spasm.types;
struct DOMMatrix {
  DOMMatrixReadOnly _parent;
  alias _parent this;
  DOMMatrix fromMatrix(DOMMatrixInit other) {
    return DOMMatrix(DOMMatrix_fromMatrix(handle, other.handle));
  }
  DOMMatrix fromFloat32Array(Float32Array array32) {
    return DOMMatrix(DOMMatrix_fromFloat32Array(handle, array32.handle));
  }
  DOMMatrix fromFloat64Array(Float64Array array64) {
    return DOMMatrix(DOMMatrix_fromFloat64Array(handle, array64.handle));
  }
  void a(double a) {
    DOMMatrix_a_Set(handle, a);
  }
  double a() {
    return DOMMatrix_a_Get(handle);
  }
  void b(double b) {
    DOMMatrix_b_Set(handle, b);
  }
  double b() {
    return DOMMatrix_b_Get(handle);
  }
  void c(double c) {
    DOMMatrix_c_Set(handle, c);
  }
  double c() {
    return DOMMatrix_c_Get(handle);
  }
  void d(double d) {
    DOMMatrix_d_Set(handle, d);
  }
  double d() {
    return DOMMatrix_d_Get(handle);
  }
  void e(double e) {
    DOMMatrix_e_Set(handle, e);
  }
  double e() {
    return DOMMatrix_e_Get(handle);
  }
  void f(double f) {
    DOMMatrix_f_Set(handle, f);
  }
  double f() {
    return DOMMatrix_f_Get(handle);
  }
  void m11(double m11) {
    DOMMatrix_m11_Set(handle, m11);
  }
  double m11() {
    return DOMMatrix_m11_Get(handle);
  }
  void m12(double m12) {
    DOMMatrix_m12_Set(handle, m12);
  }
  double m12() {
    return DOMMatrix_m12_Get(handle);
  }
  void m13(double m13) {
    DOMMatrix_m13_Set(handle, m13);
  }
  double m13() {
    return DOMMatrix_m13_Get(handle);
  }
  void m14(double m14) {
    DOMMatrix_m14_Set(handle, m14);
  }
  double m14() {
    return DOMMatrix_m14_Get(handle);
  }
  void m21(double m21) {
    DOMMatrix_m21_Set(handle, m21);
  }
  double m21() {
    return DOMMatrix_m21_Get(handle);
  }
  void m22(double m22) {
    DOMMatrix_m22_Set(handle, m22);
  }
  double m22() {
    return DOMMatrix_m22_Get(handle);
  }
  void m23(double m23) {
    DOMMatrix_m23_Set(handle, m23);
  }
  double m23() {
    return DOMMatrix_m23_Get(handle);
  }
  void m24(double m24) {
    DOMMatrix_m24_Set(handle, m24);
  }
  double m24() {
    return DOMMatrix_m24_Get(handle);
  }
  void m31(double m31) {
    DOMMatrix_m31_Set(handle, m31);
  }
  double m31() {
    return DOMMatrix_m31_Get(handle);
  }
  void m32(double m32) {
    DOMMatrix_m32_Set(handle, m32);
  }
  double m32() {
    return DOMMatrix_m32_Get(handle);
  }
  void m33(double m33) {
    DOMMatrix_m33_Set(handle, m33);
  }
  double m33() {
    return DOMMatrix_m33_Get(handle);
  }
  void m34(double m34) {
    DOMMatrix_m34_Set(handle, m34);
  }
  double m34() {
    return DOMMatrix_m34_Get(handle);
  }
  void m41(double m41) {
    DOMMatrix_m41_Set(handle, m41);
  }
  double m41() {
    return DOMMatrix_m41_Get(handle);
  }
  void m42(double m42) {
    DOMMatrix_m42_Set(handle, m42);
  }
  double m42() {
    return DOMMatrix_m42_Get(handle);
  }
  void m43(double m43) {
    DOMMatrix_m43_Set(handle, m43);
  }
  double m43() {
    return DOMMatrix_m43_Get(handle);
  }
  void m44(double m44) {
    DOMMatrix_m44_Set(handle, m44);
  }
  double m44() {
    return DOMMatrix_m44_Get(handle);
  }
  DOMMatrix multiplySelf(DOMMatrixInit other) {
    return DOMMatrix(DOMMatrix_multiplySelf(handle, other.handle));
  }
  DOMMatrix preMultiplySelf(DOMMatrixInit other) {
    return DOMMatrix(DOMMatrix_preMultiplySelf(handle, other.handle));
  }
  DOMMatrix translateSelf(double tx = 0, double ty = 0, double tz = 0) {
    return DOMMatrix(DOMMatrix_translateSelf(handle, tx, ty, tz));
  }
  DOMMatrix scaleSelf(double scaleX = 1, double scaleY, double scaleZ = 1, double originX = 0, double originY = 0, double originZ = 0) {
    return DOMMatrix(DOMMatrix_scaleSelf(handle, scaleX, scaleY, scaleZ, originX, originY, originZ));
  }
  DOMMatrix scale3dSelf(double scale = 1, double originX = 0, double originY = 0, double originZ = 0) {
    return DOMMatrix(DOMMatrix_scale3dSelf(handle, scale, originX, originY, originZ));
  }
  DOMMatrix rotateSelf(double rotX = 0, double rotY, double rotZ) {
    return DOMMatrix(DOMMatrix_rotateSelf(handle, rotX, rotY, rotZ));
  }
  DOMMatrix rotateFromVectorSelf(double x = 0, double y = 0) {
    return DOMMatrix(DOMMatrix_rotateFromVectorSelf(handle, x, y));
  }
  DOMMatrix rotateAxisAngleSelf(double x = 0, double y = 0, double z = 0, double angle = 0) {
    return DOMMatrix(DOMMatrix_rotateAxisAngleSelf(handle, x, y, z, angle));
  }
  DOMMatrix skewXSelf(double sx = 0) {
    return DOMMatrix(DOMMatrix_skewXSelf(handle, sx));
  }
  DOMMatrix skewYSelf(double sy = 0) {
    return DOMMatrix(DOMMatrix_skewYSelf(handle, sy));
  }
  DOMMatrix invertSelf() {
    return DOMMatrix(DOMMatrix_invertSelf(handle));
  }
  DOMMatrix setMatrixValue(string transformList) {
    return DOMMatrix(DOMMatrix_setMatrixValue(handle, transformList));
  }
}
struct DOMMatrix2DInit {
  JsHandle handle;
  alias handle this;
  void a(double a) {
    DOMMatrix2DInit_a_Set(handle, a);
  }
  double a() {
    return DOMMatrix2DInit_a_Get(handle);
  }
  void b(double b) {
    DOMMatrix2DInit_b_Set(handle, b);
  }
  double b() {
    return DOMMatrix2DInit_b_Get(handle);
  }
  void c(double c) {
    DOMMatrix2DInit_c_Set(handle, c);
  }
  double c() {
    return DOMMatrix2DInit_c_Get(handle);
  }
  void d(double d) {
    DOMMatrix2DInit_d_Set(handle, d);
  }
  double d() {
    return DOMMatrix2DInit_d_Get(handle);
  }
  void e(double e) {
    DOMMatrix2DInit_e_Set(handle, e);
  }
  double e() {
    return DOMMatrix2DInit_e_Get(handle);
  }
  void f(double f) {
    DOMMatrix2DInit_f_Set(handle, f);
  }
  double f() {
    return DOMMatrix2DInit_f_Get(handle);
  }
  void m11(double m11) {
    DOMMatrix2DInit_m11_Set(handle, m11);
  }
  double m11() {
    return DOMMatrix2DInit_m11_Get(handle);
  }
  void m12(double m12) {
    DOMMatrix2DInit_m12_Set(handle, m12);
  }
  double m12() {
    return DOMMatrix2DInit_m12_Get(handle);
  }
  void m21(double m21) {
    DOMMatrix2DInit_m21_Set(handle, m21);
  }
  double m21() {
    return DOMMatrix2DInit_m21_Get(handle);
  }
  void m22(double m22) {
    DOMMatrix2DInit_m22_Set(handle, m22);
  }
  double m22() {
    return DOMMatrix2DInit_m22_Get(handle);
  }
  void m41(double m41) {
    DOMMatrix2DInit_m41_Set(handle, m41);
  }
  double m41() {
    return DOMMatrix2DInit_m41_Get(handle);
  }
  void m42(double m42) {
    DOMMatrix2DInit_m42_Set(handle, m42);
  }
  double m42() {
    return DOMMatrix2DInit_m42_Get(handle);
  }
}
struct DOMMatrixInit {
  DOMMatrix2DInit _parent;
  alias _parent this;
  void m13(double m13) {
    DOMMatrixInit_m13_Set(handle, m13);
  }
  double m13() {
    return DOMMatrixInit_m13_Get(handle);
  }
  void m14(double m14) {
    DOMMatrixInit_m14_Set(handle, m14);
  }
  double m14() {
    return DOMMatrixInit_m14_Get(handle);
  }
  void m23(double m23) {
    DOMMatrixInit_m23_Set(handle, m23);
  }
  double m23() {
    return DOMMatrixInit_m23_Get(handle);
  }
  void m24(double m24) {
    DOMMatrixInit_m24_Set(handle, m24);
  }
  double m24() {
    return DOMMatrixInit_m24_Get(handle);
  }
  void m31(double m31) {
    DOMMatrixInit_m31_Set(handle, m31);
  }
  double m31() {
    return DOMMatrixInit_m31_Get(handle);
  }
  void m32(double m32) {
    DOMMatrixInit_m32_Set(handle, m32);
  }
  double m32() {
    return DOMMatrixInit_m32_Get(handle);
  }
  void m33(double m33) {
    DOMMatrixInit_m33_Set(handle, m33);
  }
  double m33() {
    return DOMMatrixInit_m33_Get(handle);
  }
  void m34(double m34) {
    DOMMatrixInit_m34_Set(handle, m34);
  }
  double m34() {
    return DOMMatrixInit_m34_Get(handle);
  }
  void m43(double m43) {
    DOMMatrixInit_m43_Set(handle, m43);
  }
  double m43() {
    return DOMMatrixInit_m43_Get(handle);
  }
  void m44(double m44) {
    DOMMatrixInit_m44_Set(handle, m44);
  }
  double m44() {
    return DOMMatrixInit_m44_Get(handle);
  }
  void is2D(bool is2D) {
    DOMMatrixInit_is2D_Set(handle, is2D);
  }
  bool is2D() {
    return DOMMatrixInit_is2D_Get(handle);
  }
}
struct DOMMatrixReadOnly {
  JsHandle handle;
  alias handle this;
  DOMMatrixReadOnly fromMatrix(DOMMatrixInit other) {
    return DOMMatrixReadOnly(DOMMatrixReadOnly_fromMatrix(handle, other.handle));
  }
  DOMMatrixReadOnly fromFloat32Array(Float32Array array32) {
    return DOMMatrixReadOnly(DOMMatrixReadOnly_fromFloat32Array(handle, array32.handle));
  }
  DOMMatrixReadOnly fromFloat64Array(Float64Array array64) {
    return DOMMatrixReadOnly(DOMMatrixReadOnly_fromFloat64Array(handle, array64.handle));
  }
  double a() {
    return DOMMatrixReadOnly_a_Get(handle);
  }
  double b() {
    return DOMMatrixReadOnly_b_Get(handle);
  }
  double c() {
    return DOMMatrixReadOnly_c_Get(handle);
  }
  double d() {
    return DOMMatrixReadOnly_d_Get(handle);
  }
  double e() {
    return DOMMatrixReadOnly_e_Get(handle);
  }
  double f() {
    return DOMMatrixReadOnly_f_Get(handle);
  }
  double m11() {
    return DOMMatrixReadOnly_m11_Get(handle);
  }
  double m12() {
    return DOMMatrixReadOnly_m12_Get(handle);
  }
  double m13() {
    return DOMMatrixReadOnly_m13_Get(handle);
  }
  double m14() {
    return DOMMatrixReadOnly_m14_Get(handle);
  }
  double m21() {
    return DOMMatrixReadOnly_m21_Get(handle);
  }
  double m22() {
    return DOMMatrixReadOnly_m22_Get(handle);
  }
  double m23() {
    return DOMMatrixReadOnly_m23_Get(handle);
  }
  double m24() {
    return DOMMatrixReadOnly_m24_Get(handle);
  }
  double m31() {
    return DOMMatrixReadOnly_m31_Get(handle);
  }
  double m32() {
    return DOMMatrixReadOnly_m32_Get(handle);
  }
  double m33() {
    return DOMMatrixReadOnly_m33_Get(handle);
  }
  double m34() {
    return DOMMatrixReadOnly_m34_Get(handle);
  }
  double m41() {
    return DOMMatrixReadOnly_m41_Get(handle);
  }
  double m42() {
    return DOMMatrixReadOnly_m42_Get(handle);
  }
  double m43() {
    return DOMMatrixReadOnly_m43_Get(handle);
  }
  double m44() {
    return DOMMatrixReadOnly_m44_Get(handle);
  }
  bool is2D() {
    return DOMMatrixReadOnly_is2D_Get(handle);
  }
  bool isIdentity() {
    return DOMMatrixReadOnly_isIdentity_Get(handle);
  }
  DOMMatrix translate(double tx = 0, double ty = 0, double tz = 0) {
    return DOMMatrix(DOMMatrixReadOnly_translate(handle, tx, ty, tz));
  }
  DOMMatrix scale(double scaleX = 1, double scaleY, double scaleZ = 1, double originX = 0, double originY = 0, double originZ = 0) {
    return DOMMatrix(DOMMatrixReadOnly_scale(handle, scaleX, scaleY, scaleZ, originX, originY, originZ));
  }
  DOMMatrix scaleNonUniform(double scaleX = 1, double scaleY = 1) {
    return DOMMatrix(DOMMatrixReadOnly_scaleNonUniform(handle, scaleX, scaleY));
  }
  DOMMatrix scale3d(double scale = 1, double originX = 0, double originY = 0, double originZ = 0) {
    return DOMMatrix(DOMMatrixReadOnly_scale3d(handle, scale, originX, originY, originZ));
  }
  DOMMatrix rotate(double rotX = 0, double rotY, double rotZ) {
    return DOMMatrix(DOMMatrixReadOnly_rotate(handle, rotX, rotY, rotZ));
  }
  DOMMatrix rotateFromVector(double x = 0, double y = 0) {
    return DOMMatrix(DOMMatrixReadOnly_rotateFromVector(handle, x, y));
  }
  DOMMatrix rotateAxisAngle(double x = 0, double y = 0, double z = 0, double angle = 0) {
    return DOMMatrix(DOMMatrixReadOnly_rotateAxisAngle(handle, x, y, z, angle));
  }
  DOMMatrix skewX(double sx = 0) {
    return DOMMatrix(DOMMatrixReadOnly_skewX(handle, sx));
  }
  DOMMatrix skewY(double sy = 0) {
    return DOMMatrix(DOMMatrixReadOnly_skewY(handle, sy));
  }
  DOMMatrix multiply(DOMMatrixInit other) {
    return DOMMatrix(DOMMatrixReadOnly_multiply(handle, other.handle));
  }
  DOMMatrix flipX() {
    return DOMMatrix(DOMMatrixReadOnly_flipX(handle));
  }
  DOMMatrix flipY() {
    return DOMMatrix(DOMMatrixReadOnly_flipY(handle));
  }
  DOMMatrix inverse() {
    return DOMMatrix(DOMMatrixReadOnly_inverse(handle));
  }
  DOMPoint transformPoint(DOMPointInit point) {
    return DOMPoint(DOMMatrixReadOnly_transformPoint(handle, point.handle));
  }
  Float32Array toFloat32Array() {
    return Float32Array(DOMMatrixReadOnly_toFloat32Array(handle));
  }
  Float64Array toFloat64Array() {
    return Float64Array(DOMMatrixReadOnly_toFloat64Array(handle));
  }
  Object toJSON() {
    return Object(DOMMatrixReadOnly_toJSON(handle));
  }
}
struct DOMPoint {
  DOMPointReadOnly _parent;
  alias _parent this;
  DOMPoint fromPoint(DOMPointInit other) {
    return DOMPoint(DOMPoint_fromPoint(handle, other.handle));
  }
  void x(double x) {
    DOMPoint_x_Set(handle, x);
  }
  double x() {
    return DOMPoint_x_Get(handle);
  }
  void y(double y) {
    DOMPoint_y_Set(handle, y);
  }
  double y() {
    return DOMPoint_y_Get(handle);
  }
  void z(double z) {
    DOMPoint_z_Set(handle, z);
  }
  double z() {
    return DOMPoint_z_Get(handle);
  }
  void w(double w) {
    DOMPoint_w_Set(handle, w);
  }
  double w() {
    return DOMPoint_w_Get(handle);
  }
}
struct DOMPointInit {
  JsHandle handle;
  alias handle this;
  void x(double x) {
    DOMPointInit_x_Set(handle, x);
  }
  double x() {
    return DOMPointInit_x_Get(handle);
  }
  void y(double y) {
    DOMPointInit_y_Set(handle, y);
  }
  double y() {
    return DOMPointInit_y_Get(handle);
  }
  void z(double z) {
    DOMPointInit_z_Set(handle, z);
  }
  double z() {
    return DOMPointInit_z_Get(handle);
  }
  void w(double w) {
    DOMPointInit_w_Set(handle, w);
  }
  double w() {
    return DOMPointInit_w_Get(handle);
  }
}
struct DOMPointReadOnly {
  JsHandle handle;
  alias handle this;
  DOMPointReadOnly fromPoint(DOMPointInit other) {
    return DOMPointReadOnly(DOMPointReadOnly_fromPoint(handle, other.handle));
  }
  double x() {
    return DOMPointReadOnly_x_Get(handle);
  }
  double y() {
    return DOMPointReadOnly_y_Get(handle);
  }
  double z() {
    return DOMPointReadOnly_z_Get(handle);
  }
  double w() {
    return DOMPointReadOnly_w_Get(handle);
  }
  DOMPoint matrixTransform(DOMMatrixInit matrix) {
    return DOMPoint(DOMPointReadOnly_matrixTransform(handle, matrix.handle));
  }
  Object toJSON() {
    return Object(DOMPointReadOnly_toJSON(handle));
  }
}
struct DOMQuad {
  JsHandle handle;
  alias handle this;
  DOMQuad fromRect(DOMRectInit other) {
    return DOMQuad(DOMQuad_fromRect(handle, other.handle));
  }
  DOMQuad fromQuad(DOMQuadInit other) {
    return DOMQuad(DOMQuad_fromQuad(handle, other.handle));
  }
  DOMPoint p1() {
    return DOMPoint(DOMQuad_p1_Get(handle));
  }
  DOMPoint p2() {
    return DOMPoint(DOMQuad_p2_Get(handle));
  }
  DOMPoint p3() {
    return DOMPoint(DOMQuad_p3_Get(handle));
  }
  DOMPoint p4() {
    return DOMPoint(DOMQuad_p4_Get(handle));
  }
  DOMRect getBounds() {
    return DOMRect(DOMQuad_getBounds(handle));
  }
  Object toJSON() {
    return Object(DOMQuad_toJSON(handle));
  }
}
struct DOMQuadInit {
  JsHandle handle;
  alias handle this;
  void p1(DOMPointInit p1) {
    DOMQuadInit_p1_Set(handle, p1.handle);
  }
  DOMPointInit p1() {
    return DOMPointInit(DOMQuadInit_p1_Get(handle));
  }
  void p2(DOMPointInit p2) {
    DOMQuadInit_p2_Set(handle, p2.handle);
  }
  DOMPointInit p2() {
    return DOMPointInit(DOMQuadInit_p2_Get(handle));
  }
  void p3(DOMPointInit p3) {
    DOMQuadInit_p3_Set(handle, p3.handle);
  }
  DOMPointInit p3() {
    return DOMPointInit(DOMQuadInit_p3_Get(handle));
  }
  void p4(DOMPointInit p4) {
    DOMQuadInit_p4_Set(handle, p4.handle);
  }
  DOMPointInit p4() {
    return DOMPointInit(DOMQuadInit_p4_Get(handle));
  }
}
struct DOMRect {
  DOMRectReadOnly _parent;
  alias _parent this;
  DOMRect fromRect(DOMRectInit other) {
    return DOMRect(DOMRect_fromRect(handle, other.handle));
  }
  void x(double x) {
    DOMRect_x_Set(handle, x);
  }
  double x() {
    return DOMRect_x_Get(handle);
  }
  void y(double y) {
    DOMRect_y_Set(handle, y);
  }
  double y() {
    return DOMRect_y_Get(handle);
  }
  void width(double width) {
    DOMRect_width_Set(handle, width);
  }
  double width() {
    return DOMRect_width_Get(handle);
  }
  void height(double height) {
    DOMRect_height_Set(handle, height);
  }
  double height() {
    return DOMRect_height_Get(handle);
  }
}
struct DOMRectInit {
  JsHandle handle;
  alias handle this;
  void x(double x) {
    DOMRectInit_x_Set(handle, x);
  }
  double x() {
    return DOMRectInit_x_Get(handle);
  }
  void y(double y) {
    DOMRectInit_y_Set(handle, y);
  }
  double y() {
    return DOMRectInit_y_Get(handle);
  }
  void width(double width) {
    DOMRectInit_width_Set(handle, width);
  }
  double width() {
    return DOMRectInit_width_Get(handle);
  }
  void height(double height) {
    DOMRectInit_height_Set(handle, height);
  }
  double height() {
    return DOMRectInit_height_Get(handle);
  }
}
struct DOMRectList {
  JsHandle handle;
  alias handle this;
  uint length() {
    return DOMRectList_length_Get(handle);
  }
  Optional!(DOMRect) item(uint index) {
    return DOMRectList_item_getter(handle, index);
  }
}
struct DOMRectReadOnly {
  JsHandle handle;
  alias handle this;
  DOMRectReadOnly fromRect(DOMRectInit other) {
    return DOMRectReadOnly(DOMRectReadOnly_fromRect(handle, other.handle));
  }
  double x() {
    return DOMRectReadOnly_x_Get(handle);
  }
  double y() {
    return DOMRectReadOnly_y_Get(handle);
  }
  double width() {
    return DOMRectReadOnly_width_Get(handle);
  }
  double height() {
    return DOMRectReadOnly_height_Get(handle);
  }
  double top() {
    return DOMRectReadOnly_top_Get(handle);
  }
  double right() {
    return DOMRectReadOnly_right_Get(handle);
  }
  double bottom() {
    return DOMRectReadOnly_bottom_Get(handle);
  }
  double left() {
    return DOMRectReadOnly_left_Get(handle);
  }
  Object toJSON() {
    return Object(DOMRectReadOnly_toJSON(handle));
  }
}


extern (C) JsHandle DOMMatrix_fromMatrix(JsHandle, JsHandle);
extern (C) JsHandle DOMMatrix_fromFloat32Array(JsHandle, JsHandle);
extern (C) JsHandle DOMMatrix_fromFloat64Array(JsHandle, JsHandle);
extern (C) void DOMMatrix_a_Set(JsHandle, double);
extern (C) double DOMMatrix_a_Get(JsHandle);
extern (C) void DOMMatrix_b_Set(JsHandle, double);
extern (C) double DOMMatrix_b_Get(JsHandle);
extern (C) void DOMMatrix_c_Set(JsHandle, double);
extern (C) double DOMMatrix_c_Get(JsHandle);
extern (C) void DOMMatrix_d_Set(JsHandle, double);
extern (C) double DOMMatrix_d_Get(JsHandle);
extern (C) void DOMMatrix_e_Set(JsHandle, double);
extern (C) double DOMMatrix_e_Get(JsHandle);
extern (C) void DOMMatrix_f_Set(JsHandle, double);
extern (C) double DOMMatrix_f_Get(JsHandle);
extern (C) void DOMMatrix_m11_Set(JsHandle, double);
extern (C) double DOMMatrix_m11_Get(JsHandle);
extern (C) void DOMMatrix_m12_Set(JsHandle, double);
extern (C) double DOMMatrix_m12_Get(JsHandle);
extern (C) void DOMMatrix_m13_Set(JsHandle, double);
extern (C) double DOMMatrix_m13_Get(JsHandle);
extern (C) void DOMMatrix_m14_Set(JsHandle, double);
extern (C) double DOMMatrix_m14_Get(JsHandle);
extern (C) void DOMMatrix_m21_Set(JsHandle, double);
extern (C) double DOMMatrix_m21_Get(JsHandle);
extern (C) void DOMMatrix_m22_Set(JsHandle, double);
extern (C) double DOMMatrix_m22_Get(JsHandle);
extern (C) void DOMMatrix_m23_Set(JsHandle, double);
extern (C) double DOMMatrix_m23_Get(JsHandle);
extern (C) void DOMMatrix_m24_Set(JsHandle, double);
extern (C) double DOMMatrix_m24_Get(JsHandle);
extern (C) void DOMMatrix_m31_Set(JsHandle, double);
extern (C) double DOMMatrix_m31_Get(JsHandle);
extern (C) void DOMMatrix_m32_Set(JsHandle, double);
extern (C) double DOMMatrix_m32_Get(JsHandle);
extern (C) void DOMMatrix_m33_Set(JsHandle, double);
extern (C) double DOMMatrix_m33_Get(JsHandle);
extern (C) void DOMMatrix_m34_Set(JsHandle, double);
extern (C) double DOMMatrix_m34_Get(JsHandle);
extern (C) void DOMMatrix_m41_Set(JsHandle, double);
extern (C) double DOMMatrix_m41_Get(JsHandle);
extern (C) void DOMMatrix_m42_Set(JsHandle, double);
extern (C) double DOMMatrix_m42_Get(JsHandle);
extern (C) void DOMMatrix_m43_Set(JsHandle, double);
extern (C) double DOMMatrix_m43_Get(JsHandle);
extern (C) void DOMMatrix_m44_Set(JsHandle, double);
extern (C) double DOMMatrix_m44_Get(JsHandle);
extern (C) JsHandle DOMMatrix_multiplySelf(JsHandle, JsHandle);
extern (C) JsHandle DOMMatrix_preMultiplySelf(JsHandle, JsHandle);
extern (C) JsHandle DOMMatrix_translateSelf(JsHandle, double, double, double);
extern (C) JsHandle DOMMatrix_scaleSelf(JsHandle, double, double, double, double, double, double);
extern (C) JsHandle DOMMatrix_scale3dSelf(JsHandle, double, double, double, double);
extern (C) JsHandle DOMMatrix_rotateSelf(JsHandle, double, double, double);
extern (C) JsHandle DOMMatrix_rotateFromVectorSelf(JsHandle, double, double);
extern (C) JsHandle DOMMatrix_rotateAxisAngleSelf(JsHandle, double, double, double, double);
extern (C) JsHandle DOMMatrix_skewXSelf(JsHandle, double);
extern (C) JsHandle DOMMatrix_skewYSelf(JsHandle, double);
extern (C) JsHandle DOMMatrix_invertSelf(JsHandle);
extern (C) JsHandle DOMMatrix_setMatrixValue(JsHandle, string);
extern (C) void DOMMatrix2DInit_a_Set(JsHandle, double);
extern (C) double DOMMatrix2DInit_a_Get(JsHandle);
extern (C) void DOMMatrix2DInit_b_Set(JsHandle, double);
extern (C) double DOMMatrix2DInit_b_Get(JsHandle);
extern (C) void DOMMatrix2DInit_c_Set(JsHandle, double);
extern (C) double DOMMatrix2DInit_c_Get(JsHandle);
extern (C) void DOMMatrix2DInit_d_Set(JsHandle, double);
extern (C) double DOMMatrix2DInit_d_Get(JsHandle);
extern (C) void DOMMatrix2DInit_e_Set(JsHandle, double);
extern (C) double DOMMatrix2DInit_e_Get(JsHandle);
extern (C) void DOMMatrix2DInit_f_Set(JsHandle, double);
extern (C) double DOMMatrix2DInit_f_Get(JsHandle);
extern (C) void DOMMatrix2DInit_m11_Set(JsHandle, double);
extern (C) double DOMMatrix2DInit_m11_Get(JsHandle);
extern (C) void DOMMatrix2DInit_m12_Set(JsHandle, double);
extern (C) double DOMMatrix2DInit_m12_Get(JsHandle);
extern (C) void DOMMatrix2DInit_m21_Set(JsHandle, double);
extern (C) double DOMMatrix2DInit_m21_Get(JsHandle);
extern (C) void DOMMatrix2DInit_m22_Set(JsHandle, double);
extern (C) double DOMMatrix2DInit_m22_Get(JsHandle);
extern (C) void DOMMatrix2DInit_m41_Set(JsHandle, double);
extern (C) double DOMMatrix2DInit_m41_Get(JsHandle);
extern (C) void DOMMatrix2DInit_m42_Set(JsHandle, double);
extern (C) double DOMMatrix2DInit_m42_Get(JsHandle);
extern (C) void DOMMatrixInit_m13_Set(JsHandle, double);
extern (C) double DOMMatrixInit_m13_Get(JsHandle);
extern (C) void DOMMatrixInit_m14_Set(JsHandle, double);
extern (C) double DOMMatrixInit_m14_Get(JsHandle);
extern (C) void DOMMatrixInit_m23_Set(JsHandle, double);
extern (C) double DOMMatrixInit_m23_Get(JsHandle);
extern (C) void DOMMatrixInit_m24_Set(JsHandle, double);
extern (C) double DOMMatrixInit_m24_Get(JsHandle);
extern (C) void DOMMatrixInit_m31_Set(JsHandle, double);
extern (C) double DOMMatrixInit_m31_Get(JsHandle);
extern (C) void DOMMatrixInit_m32_Set(JsHandle, double);
extern (C) double DOMMatrixInit_m32_Get(JsHandle);
extern (C) void DOMMatrixInit_m33_Set(JsHandle, double);
extern (C) double DOMMatrixInit_m33_Get(JsHandle);
extern (C) void DOMMatrixInit_m34_Set(JsHandle, double);
extern (C) double DOMMatrixInit_m34_Get(JsHandle);
extern (C) void DOMMatrixInit_m43_Set(JsHandle, double);
extern (C) double DOMMatrixInit_m43_Get(JsHandle);
extern (C) void DOMMatrixInit_m44_Set(JsHandle, double);
extern (C) double DOMMatrixInit_m44_Get(JsHandle);
extern (C) void DOMMatrixInit_is2D_Set(JsHandle, bool);
extern (C) bool DOMMatrixInit_is2D_Get(JsHandle);
extern (C) JsHandle DOMMatrixReadOnly_fromMatrix(JsHandle, JsHandle);
extern (C) JsHandle DOMMatrixReadOnly_fromFloat32Array(JsHandle, JsHandle);
extern (C) JsHandle DOMMatrixReadOnly_fromFloat64Array(JsHandle, JsHandle);
extern (C) double DOMMatrixReadOnly_a_Get(JsHandle);
extern (C) double DOMMatrixReadOnly_b_Get(JsHandle);
extern (C) double DOMMatrixReadOnly_c_Get(JsHandle);
extern (C) double DOMMatrixReadOnly_d_Get(JsHandle);
extern (C) double DOMMatrixReadOnly_e_Get(JsHandle);
extern (C) double DOMMatrixReadOnly_f_Get(JsHandle);
extern (C) double DOMMatrixReadOnly_m11_Get(JsHandle);
extern (C) double DOMMatrixReadOnly_m12_Get(JsHandle);
extern (C) double DOMMatrixReadOnly_m13_Get(JsHandle);
extern (C) double DOMMatrixReadOnly_m14_Get(JsHandle);
extern (C) double DOMMatrixReadOnly_m21_Get(JsHandle);
extern (C) double DOMMatrixReadOnly_m22_Get(JsHandle);
extern (C) double DOMMatrixReadOnly_m23_Get(JsHandle);
extern (C) double DOMMatrixReadOnly_m24_Get(JsHandle);
extern (C) double DOMMatrixReadOnly_m31_Get(JsHandle);
extern (C) double DOMMatrixReadOnly_m32_Get(JsHandle);
extern (C) double DOMMatrixReadOnly_m33_Get(JsHandle);
extern (C) double DOMMatrixReadOnly_m34_Get(JsHandle);
extern (C) double DOMMatrixReadOnly_m41_Get(JsHandle);
extern (C) double DOMMatrixReadOnly_m42_Get(JsHandle);
extern (C) double DOMMatrixReadOnly_m43_Get(JsHandle);
extern (C) double DOMMatrixReadOnly_m44_Get(JsHandle);
extern (C) bool DOMMatrixReadOnly_is2D_Get(JsHandle);
extern (C) bool DOMMatrixReadOnly_isIdentity_Get(JsHandle);
extern (C) JsHandle DOMMatrixReadOnly_translate(JsHandle, double, double, double);
extern (C) JsHandle DOMMatrixReadOnly_scale(JsHandle, double, double, double, double, double, double);
extern (C) JsHandle DOMMatrixReadOnly_scaleNonUniform(JsHandle, double, double);
extern (C) JsHandle DOMMatrixReadOnly_scale3d(JsHandle, double, double, double, double);
extern (C) JsHandle DOMMatrixReadOnly_rotate(JsHandle, double, double, double);
extern (C) JsHandle DOMMatrixReadOnly_rotateFromVector(JsHandle, double, double);
extern (C) JsHandle DOMMatrixReadOnly_rotateAxisAngle(JsHandle, double, double, double, double);
extern (C) JsHandle DOMMatrixReadOnly_skewX(JsHandle, double);
extern (C) JsHandle DOMMatrixReadOnly_skewY(JsHandle, double);
extern (C) JsHandle DOMMatrixReadOnly_multiply(JsHandle, JsHandle);
extern (C) JsHandle DOMMatrixReadOnly_flipX(JsHandle);
extern (C) JsHandle DOMMatrixReadOnly_flipY(JsHandle);
extern (C) JsHandle DOMMatrixReadOnly_inverse(JsHandle);
extern (C) JsHandle DOMMatrixReadOnly_transformPoint(JsHandle, JsHandle);
extern (C) JsHandle DOMMatrixReadOnly_toFloat32Array(JsHandle);
extern (C) JsHandle DOMMatrixReadOnly_toFloat64Array(JsHandle);
extern (C) JsHandle DOMMatrixReadOnly_toJSON(JsHandle);
extern (C) JsHandle DOMPoint_fromPoint(JsHandle, JsHandle);
extern (C) void DOMPoint_x_Set(JsHandle, double);
extern (C) double DOMPoint_x_Get(JsHandle);
extern (C) void DOMPoint_y_Set(JsHandle, double);
extern (C) double DOMPoint_y_Get(JsHandle);
extern (C) void DOMPoint_z_Set(JsHandle, double);
extern (C) double DOMPoint_z_Get(JsHandle);
extern (C) void DOMPoint_w_Set(JsHandle, double);
extern (C) double DOMPoint_w_Get(JsHandle);
extern (C) void DOMPointInit_x_Set(JsHandle, double);
extern (C) double DOMPointInit_x_Get(JsHandle);
extern (C) void DOMPointInit_y_Set(JsHandle, double);
extern (C) double DOMPointInit_y_Get(JsHandle);
extern (C) void DOMPointInit_z_Set(JsHandle, double);
extern (C) double DOMPointInit_z_Get(JsHandle);
extern (C) void DOMPointInit_w_Set(JsHandle, double);
extern (C) double DOMPointInit_w_Get(JsHandle);
extern (C) JsHandle DOMPointReadOnly_fromPoint(JsHandle, JsHandle);
extern (C) double DOMPointReadOnly_x_Get(JsHandle);
extern (C) double DOMPointReadOnly_y_Get(JsHandle);
extern (C) double DOMPointReadOnly_z_Get(JsHandle);
extern (C) double DOMPointReadOnly_w_Get(JsHandle);
extern (C) JsHandle DOMPointReadOnly_matrixTransform(JsHandle, JsHandle);
extern (C) JsHandle DOMPointReadOnly_toJSON(JsHandle);
extern (C) JsHandle DOMQuad_fromRect(JsHandle, JsHandle);
extern (C) JsHandle DOMQuad_fromQuad(JsHandle, JsHandle);
extern (C) JsHandle DOMQuad_p1_Get(JsHandle);
extern (C) JsHandle DOMQuad_p2_Get(JsHandle);
extern (C) JsHandle DOMQuad_p3_Get(JsHandle);
extern (C) JsHandle DOMQuad_p4_Get(JsHandle);
extern (C) JsHandle DOMQuad_getBounds(JsHandle);
extern (C) JsHandle DOMQuad_toJSON(JsHandle);
extern (C) void DOMQuadInit_p1_Set(JsHandle, JsHandle);
extern (C) JsHandle DOMQuadInit_p1_Get(JsHandle);
extern (C) void DOMQuadInit_p2_Set(JsHandle, JsHandle);
extern (C) JsHandle DOMQuadInit_p2_Get(JsHandle);
extern (C) void DOMQuadInit_p3_Set(JsHandle, JsHandle);
extern (C) JsHandle DOMQuadInit_p3_Get(JsHandle);
extern (C) void DOMQuadInit_p4_Set(JsHandle, JsHandle);
extern (C) JsHandle DOMQuadInit_p4_Get(JsHandle);
extern (C) JsHandle DOMRect_fromRect(JsHandle, JsHandle);
extern (C) void DOMRect_x_Set(JsHandle, double);
extern (C) double DOMRect_x_Get(JsHandle);
extern (C) void DOMRect_y_Set(JsHandle, double);
extern (C) double DOMRect_y_Get(JsHandle);
extern (C) void DOMRect_width_Set(JsHandle, double);
extern (C) double DOMRect_width_Get(JsHandle);
extern (C) void DOMRect_height_Set(JsHandle, double);
extern (C) double DOMRect_height_Get(JsHandle);
extern (C) void DOMRectInit_x_Set(JsHandle, double);
extern (C) double DOMRectInit_x_Get(JsHandle);
extern (C) void DOMRectInit_y_Set(JsHandle, double);
extern (C) double DOMRectInit_y_Get(JsHandle);
extern (C) void DOMRectInit_width_Set(JsHandle, double);
extern (C) double DOMRectInit_width_Get(JsHandle);
extern (C) void DOMRectInit_height_Set(JsHandle, double);
extern (C) double DOMRectInit_height_Get(JsHandle);
extern (C) uint DOMRectList_length_Get(JsHandle);
extern (C) Optional!(DOMRect) DOMRectList_item_getter(JsHandle, uint);
extern (C) JsHandle DOMRectReadOnly_fromRect(JsHandle, JsHandle);
extern (C) double DOMRectReadOnly_x_Get(JsHandle);
extern (C) double DOMRectReadOnly_y_Get(JsHandle);
extern (C) double DOMRectReadOnly_width_Get(JsHandle);
extern (C) double DOMRectReadOnly_height_Get(JsHandle);
extern (C) double DOMRectReadOnly_top_Get(JsHandle);
extern (C) double DOMRectReadOnly_right_Get(JsHandle);
extern (C) double DOMRectReadOnly_bottom_Get(JsHandle);
extern (C) double DOMRectReadOnly_left_Get(JsHandle);
extern (C) JsHandle DOMRectReadOnly_toJSON(JsHandle);