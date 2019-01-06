module spasm.bindings.geometry;

import spasm.types;
struct DOMMatrix {
  DOMMatrixReadOnly _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = DOMMatrixReadOnly(h);
  }
  auto fromMatrix(DOMMatrixInit other) {
    return DOMMatrix(DOMMatrix_fromMatrix(this._parent, other.handle));
  }
  auto fromFloat32Array(Float32Array array32) {
    return DOMMatrix(DOMMatrix_fromFloat32Array(this._parent, array32.handle));
  }
  auto fromFloat64Array(Float64Array array64) {
    return DOMMatrix(DOMMatrix_fromFloat64Array(this._parent, array64.handle));
  }
  auto a(double a) {
    DOMMatrix_a_Set(this._parent, a);
  }
  auto a() {
    return DOMMatrix_a_Get(this._parent);
  }
  auto b(double b) {
    DOMMatrix_b_Set(this._parent, b);
  }
  auto b() {
    return DOMMatrix_b_Get(this._parent);
  }
  auto c(double c) {
    DOMMatrix_c_Set(this._parent, c);
  }
  auto c() {
    return DOMMatrix_c_Get(this._parent);
  }
  auto d(double d) {
    DOMMatrix_d_Set(this._parent, d);
  }
  auto d() {
    return DOMMatrix_d_Get(this._parent);
  }
  auto e(double e) {
    DOMMatrix_e_Set(this._parent, e);
  }
  auto e() {
    return DOMMatrix_e_Get(this._parent);
  }
  auto f(double f) {
    DOMMatrix_f_Set(this._parent, f);
  }
  auto f() {
    return DOMMatrix_f_Get(this._parent);
  }
  auto m11(double m11) {
    DOMMatrix_m11_Set(this._parent, m11);
  }
  auto m11() {
    return DOMMatrix_m11_Get(this._parent);
  }
  auto m12(double m12) {
    DOMMatrix_m12_Set(this._parent, m12);
  }
  auto m12() {
    return DOMMatrix_m12_Get(this._parent);
  }
  auto m13(double m13) {
    DOMMatrix_m13_Set(this._parent, m13);
  }
  auto m13() {
    return DOMMatrix_m13_Get(this._parent);
  }
  auto m14(double m14) {
    DOMMatrix_m14_Set(this._parent, m14);
  }
  auto m14() {
    return DOMMatrix_m14_Get(this._parent);
  }
  auto m21(double m21) {
    DOMMatrix_m21_Set(this._parent, m21);
  }
  auto m21() {
    return DOMMatrix_m21_Get(this._parent);
  }
  auto m22(double m22) {
    DOMMatrix_m22_Set(this._parent, m22);
  }
  auto m22() {
    return DOMMatrix_m22_Get(this._parent);
  }
  auto m23(double m23) {
    DOMMatrix_m23_Set(this._parent, m23);
  }
  auto m23() {
    return DOMMatrix_m23_Get(this._parent);
  }
  auto m24(double m24) {
    DOMMatrix_m24_Set(this._parent, m24);
  }
  auto m24() {
    return DOMMatrix_m24_Get(this._parent);
  }
  auto m31(double m31) {
    DOMMatrix_m31_Set(this._parent, m31);
  }
  auto m31() {
    return DOMMatrix_m31_Get(this._parent);
  }
  auto m32(double m32) {
    DOMMatrix_m32_Set(this._parent, m32);
  }
  auto m32() {
    return DOMMatrix_m32_Get(this._parent);
  }
  auto m33(double m33) {
    DOMMatrix_m33_Set(this._parent, m33);
  }
  auto m33() {
    return DOMMatrix_m33_Get(this._parent);
  }
  auto m34(double m34) {
    DOMMatrix_m34_Set(this._parent, m34);
  }
  auto m34() {
    return DOMMatrix_m34_Get(this._parent);
  }
  auto m41(double m41) {
    DOMMatrix_m41_Set(this._parent, m41);
  }
  auto m41() {
    return DOMMatrix_m41_Get(this._parent);
  }
  auto m42(double m42) {
    DOMMatrix_m42_Set(this._parent, m42);
  }
  auto m42() {
    return DOMMatrix_m42_Get(this._parent);
  }
  auto m43(double m43) {
    DOMMatrix_m43_Set(this._parent, m43);
  }
  auto m43() {
    return DOMMatrix_m43_Get(this._parent);
  }
  auto m44(double m44) {
    DOMMatrix_m44_Set(this._parent, m44);
  }
  auto m44() {
    return DOMMatrix_m44_Get(this._parent);
  }
  auto multiplySelf(DOMMatrixInit other) {
    return DOMMatrix(DOMMatrix_multiplySelf(this._parent, other.handle));
  }
  auto preMultiplySelf(DOMMatrixInit other) {
    return DOMMatrix(DOMMatrix_preMultiplySelf(this._parent, other.handle));
  }
  auto translateSelf(double tx /* = 0 */, double ty /* = 0 */, double tz /* = 0 */) {
    return DOMMatrix(DOMMatrix_translateSelf(this._parent, tx, ty, tz));
  }
  auto scaleSelf(double scaleX /* = 1 */, double scaleY, double scaleZ /* = 1 */, double originX /* = 0 */, double originY /* = 0 */, double originZ /* = 0 */) {
    return DOMMatrix(DOMMatrix_scaleSelf(this._parent, scaleX, scaleY, scaleZ, originX, originY, originZ));
  }
  auto scale3dSelf(double scale /* = 1 */, double originX /* = 0 */, double originY /* = 0 */, double originZ /* = 0 */) {
    return DOMMatrix(DOMMatrix_scale3dSelf(this._parent, scale, originX, originY, originZ));
  }
  auto rotateSelf(double rotX /* = 0 */, double rotY, double rotZ) {
    return DOMMatrix(DOMMatrix_rotateSelf(this._parent, rotX, rotY, rotZ));
  }
  auto rotateFromVectorSelf(double x /* = 0 */, double y /* = 0 */) {
    return DOMMatrix(DOMMatrix_rotateFromVectorSelf(this._parent, x, y));
  }
  auto rotateAxisAngleSelf(double x /* = 0 */, double y /* = 0 */, double z /* = 0 */, double angle /* = 0 */) {
    return DOMMatrix(DOMMatrix_rotateAxisAngleSelf(this._parent, x, y, z, angle));
  }
  auto skewXSelf(double sx /* = 0 */) {
    return DOMMatrix(DOMMatrix_skewXSelf(this._parent, sx));
  }
  auto skewYSelf(double sy /* = 0 */) {
    return DOMMatrix(DOMMatrix_skewYSelf(this._parent, sy));
  }
  auto invertSelf() {
    return DOMMatrix(DOMMatrix_invertSelf(this._parent));
  }
  auto setMatrixValue(string transformList) {
    return DOMMatrix(DOMMatrix_setMatrixValue(this._parent, transformList));
  }
}
struct DOMMatrix2DInit {
  JsHandle handle;
  alias handle this;
  auto a(double a) {
    DOMMatrix2DInit_a_Set(this.handle, a);
  }
  auto a() {
    return DOMMatrix2DInit_a_Get(this.handle);
  }
  auto b(double b) {
    DOMMatrix2DInit_b_Set(this.handle, b);
  }
  auto b() {
    return DOMMatrix2DInit_b_Get(this.handle);
  }
  auto c(double c) {
    DOMMatrix2DInit_c_Set(this.handle, c);
  }
  auto c() {
    return DOMMatrix2DInit_c_Get(this.handle);
  }
  auto d(double d) {
    DOMMatrix2DInit_d_Set(this.handle, d);
  }
  auto d() {
    return DOMMatrix2DInit_d_Get(this.handle);
  }
  auto e(double e) {
    DOMMatrix2DInit_e_Set(this.handle, e);
  }
  auto e() {
    return DOMMatrix2DInit_e_Get(this.handle);
  }
  auto f(double f) {
    DOMMatrix2DInit_f_Set(this.handle, f);
  }
  auto f() {
    return DOMMatrix2DInit_f_Get(this.handle);
  }
  auto m11(double m11) {
    DOMMatrix2DInit_m11_Set(this.handle, m11);
  }
  auto m11() {
    return DOMMatrix2DInit_m11_Get(this.handle);
  }
  auto m12(double m12) {
    DOMMatrix2DInit_m12_Set(this.handle, m12);
  }
  auto m12() {
    return DOMMatrix2DInit_m12_Get(this.handle);
  }
  auto m21(double m21) {
    DOMMatrix2DInit_m21_Set(this.handle, m21);
  }
  auto m21() {
    return DOMMatrix2DInit_m21_Get(this.handle);
  }
  auto m22(double m22) {
    DOMMatrix2DInit_m22_Set(this.handle, m22);
  }
  auto m22() {
    return DOMMatrix2DInit_m22_Get(this.handle);
  }
  auto m41(double m41) {
    DOMMatrix2DInit_m41_Set(this.handle, m41);
  }
  auto m41() {
    return DOMMatrix2DInit_m41_Get(this.handle);
  }
  auto m42(double m42) {
    DOMMatrix2DInit_m42_Set(this.handle, m42);
  }
  auto m42() {
    return DOMMatrix2DInit_m42_Get(this.handle);
  }
}
struct DOMMatrixInit {
  DOMMatrix2DInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = DOMMatrix2DInit(h);
  }
  auto m13(double m13) {
    DOMMatrixInit_m13_Set(this._parent, m13);
  }
  auto m13() {
    return DOMMatrixInit_m13_Get(this._parent);
  }
  auto m14(double m14) {
    DOMMatrixInit_m14_Set(this._parent, m14);
  }
  auto m14() {
    return DOMMatrixInit_m14_Get(this._parent);
  }
  auto m23(double m23) {
    DOMMatrixInit_m23_Set(this._parent, m23);
  }
  auto m23() {
    return DOMMatrixInit_m23_Get(this._parent);
  }
  auto m24(double m24) {
    DOMMatrixInit_m24_Set(this._parent, m24);
  }
  auto m24() {
    return DOMMatrixInit_m24_Get(this._parent);
  }
  auto m31(double m31) {
    DOMMatrixInit_m31_Set(this._parent, m31);
  }
  auto m31() {
    return DOMMatrixInit_m31_Get(this._parent);
  }
  auto m32(double m32) {
    DOMMatrixInit_m32_Set(this._parent, m32);
  }
  auto m32() {
    return DOMMatrixInit_m32_Get(this._parent);
  }
  auto m33(double m33) {
    DOMMatrixInit_m33_Set(this._parent, m33);
  }
  auto m33() {
    return DOMMatrixInit_m33_Get(this._parent);
  }
  auto m34(double m34) {
    DOMMatrixInit_m34_Set(this._parent, m34);
  }
  auto m34() {
    return DOMMatrixInit_m34_Get(this._parent);
  }
  auto m43(double m43) {
    DOMMatrixInit_m43_Set(this._parent, m43);
  }
  auto m43() {
    return DOMMatrixInit_m43_Get(this._parent);
  }
  auto m44(double m44) {
    DOMMatrixInit_m44_Set(this._parent, m44);
  }
  auto m44() {
    return DOMMatrixInit_m44_Get(this._parent);
  }
  auto is2D(bool is2D) {
    DOMMatrixInit_is2D_Set(this._parent, is2D);
  }
  auto is2D() {
    return DOMMatrixInit_is2D_Get(this._parent);
  }
}
struct DOMMatrixReadOnly {
  JsHandle handle;
  alias handle this;
  auto fromMatrix(DOMMatrixInit other) {
    return DOMMatrixReadOnly(DOMMatrixReadOnly_fromMatrix(this.handle, other.handle));
  }
  auto fromFloat32Array(Float32Array array32) {
    return DOMMatrixReadOnly(DOMMatrixReadOnly_fromFloat32Array(this.handle, array32.handle));
  }
  auto fromFloat64Array(Float64Array array64) {
    return DOMMatrixReadOnly(DOMMatrixReadOnly_fromFloat64Array(this.handle, array64.handle));
  }
  auto a() {
    return DOMMatrixReadOnly_a_Get(this.handle);
  }
  auto b() {
    return DOMMatrixReadOnly_b_Get(this.handle);
  }
  auto c() {
    return DOMMatrixReadOnly_c_Get(this.handle);
  }
  auto d() {
    return DOMMatrixReadOnly_d_Get(this.handle);
  }
  auto e() {
    return DOMMatrixReadOnly_e_Get(this.handle);
  }
  auto f() {
    return DOMMatrixReadOnly_f_Get(this.handle);
  }
  auto m11() {
    return DOMMatrixReadOnly_m11_Get(this.handle);
  }
  auto m12() {
    return DOMMatrixReadOnly_m12_Get(this.handle);
  }
  auto m13() {
    return DOMMatrixReadOnly_m13_Get(this.handle);
  }
  auto m14() {
    return DOMMatrixReadOnly_m14_Get(this.handle);
  }
  auto m21() {
    return DOMMatrixReadOnly_m21_Get(this.handle);
  }
  auto m22() {
    return DOMMatrixReadOnly_m22_Get(this.handle);
  }
  auto m23() {
    return DOMMatrixReadOnly_m23_Get(this.handle);
  }
  auto m24() {
    return DOMMatrixReadOnly_m24_Get(this.handle);
  }
  auto m31() {
    return DOMMatrixReadOnly_m31_Get(this.handle);
  }
  auto m32() {
    return DOMMatrixReadOnly_m32_Get(this.handle);
  }
  auto m33() {
    return DOMMatrixReadOnly_m33_Get(this.handle);
  }
  auto m34() {
    return DOMMatrixReadOnly_m34_Get(this.handle);
  }
  auto m41() {
    return DOMMatrixReadOnly_m41_Get(this.handle);
  }
  auto m42() {
    return DOMMatrixReadOnly_m42_Get(this.handle);
  }
  auto m43() {
    return DOMMatrixReadOnly_m43_Get(this.handle);
  }
  auto m44() {
    return DOMMatrixReadOnly_m44_Get(this.handle);
  }
  auto is2D() {
    return DOMMatrixReadOnly_is2D_Get(this.handle);
  }
  auto isIdentity() {
    return DOMMatrixReadOnly_isIdentity_Get(this.handle);
  }
  auto translate(double tx /* = 0 */, double ty /* = 0 */, double tz /* = 0 */) {
    return DOMMatrix(DOMMatrixReadOnly_translate(this.handle, tx, ty, tz));
  }
  auto scale(double scaleX /* = 1 */, double scaleY, double scaleZ /* = 1 */, double originX /* = 0 */, double originY /* = 0 */, double originZ /* = 0 */) {
    return DOMMatrix(DOMMatrixReadOnly_scale(this.handle, scaleX, scaleY, scaleZ, originX, originY, originZ));
  }
  auto scaleNonUniform(double scaleX /* = 1 */, double scaleY /* = 1 */) {
    return DOMMatrix(DOMMatrixReadOnly_scaleNonUniform(this.handle, scaleX, scaleY));
  }
  auto scale3d(double scale /* = 1 */, double originX /* = 0 */, double originY /* = 0 */, double originZ /* = 0 */) {
    return DOMMatrix(DOMMatrixReadOnly_scale3d(this.handle, scale, originX, originY, originZ));
  }
  auto rotate(double rotX /* = 0 */, double rotY, double rotZ) {
    return DOMMatrix(DOMMatrixReadOnly_rotate(this.handle, rotX, rotY, rotZ));
  }
  auto rotateFromVector(double x /* = 0 */, double y /* = 0 */) {
    return DOMMatrix(DOMMatrixReadOnly_rotateFromVector(this.handle, x, y));
  }
  auto rotateAxisAngle(double x /* = 0 */, double y /* = 0 */, double z /* = 0 */, double angle /* = 0 */) {
    return DOMMatrix(DOMMatrixReadOnly_rotateAxisAngle(this.handle, x, y, z, angle));
  }
  auto skewX(double sx /* = 0 */) {
    return DOMMatrix(DOMMatrixReadOnly_skewX(this.handle, sx));
  }
  auto skewY(double sy /* = 0 */) {
    return DOMMatrix(DOMMatrixReadOnly_skewY(this.handle, sy));
  }
  auto multiply(DOMMatrixInit other) {
    return DOMMatrix(DOMMatrixReadOnly_multiply(this.handle, other.handle));
  }
  auto flipX() {
    return DOMMatrix(DOMMatrixReadOnly_flipX(this.handle));
  }
  auto flipY() {
    return DOMMatrix(DOMMatrixReadOnly_flipY(this.handle));
  }
  auto inverse() {
    return DOMMatrix(DOMMatrixReadOnly_inverse(this.handle));
  }
  auto transformPoint(DOMPointInit point) {
    return DOMPoint(DOMMatrixReadOnly_transformPoint(this.handle, point.handle));
  }
  auto toFloat32Array() {
    return Float32Array(DOMMatrixReadOnly_toFloat32Array(this.handle));
  }
  auto toFloat64Array() {
    return Float64Array(DOMMatrixReadOnly_toFloat64Array(this.handle));
  }
  auto toJSON() {
    return JsObject(DOMMatrixReadOnly_toJSON(this.handle));
  }
}
struct DOMPoint {
  DOMPointReadOnly _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = DOMPointReadOnly(h);
  }
  auto fromPoint(DOMPointInit other) {
    return DOMPoint(DOMPoint_fromPoint(this._parent, other.handle));
  }
  auto x(double x) {
    DOMPoint_x_Set(this._parent, x);
  }
  auto x() {
    return DOMPoint_x_Get(this._parent);
  }
  auto y(double y) {
    DOMPoint_y_Set(this._parent, y);
  }
  auto y() {
    return DOMPoint_y_Get(this._parent);
  }
  auto z(double z) {
    DOMPoint_z_Set(this._parent, z);
  }
  auto z() {
    return DOMPoint_z_Get(this._parent);
  }
  auto w(double w) {
    DOMPoint_w_Set(this._parent, w);
  }
  auto w() {
    return DOMPoint_w_Get(this._parent);
  }
}
struct DOMPointInit {
  JsHandle handle;
  alias handle this;
  auto x(double x) {
    DOMPointInit_x_Set(this.handle, x);
  }
  auto x() {
    return DOMPointInit_x_Get(this.handle);
  }
  auto y(double y) {
    DOMPointInit_y_Set(this.handle, y);
  }
  auto y() {
    return DOMPointInit_y_Get(this.handle);
  }
  auto z(double z) {
    DOMPointInit_z_Set(this.handle, z);
  }
  auto z() {
    return DOMPointInit_z_Get(this.handle);
  }
  auto w(double w) {
    DOMPointInit_w_Set(this.handle, w);
  }
  auto w() {
    return DOMPointInit_w_Get(this.handle);
  }
}
struct DOMPointReadOnly {
  JsHandle handle;
  alias handle this;
  auto fromPoint(DOMPointInit other) {
    return DOMPointReadOnly(DOMPointReadOnly_fromPoint(this.handle, other.handle));
  }
  auto x() {
    return DOMPointReadOnly_x_Get(this.handle);
  }
  auto y() {
    return DOMPointReadOnly_y_Get(this.handle);
  }
  auto z() {
    return DOMPointReadOnly_z_Get(this.handle);
  }
  auto w() {
    return DOMPointReadOnly_w_Get(this.handle);
  }
  auto matrixTransform(DOMMatrixInit matrix) {
    return DOMPoint(DOMPointReadOnly_matrixTransform(this.handle, matrix.handle));
  }
  auto toJSON() {
    return JsObject(DOMPointReadOnly_toJSON(this.handle));
  }
}
struct DOMQuad {
  JsHandle handle;
  alias handle this;
  auto fromRect(DOMRectInit other) {
    return DOMQuad(DOMQuad_fromRect(this.handle, other.handle));
  }
  auto fromQuad(DOMQuadInit other) {
    return DOMQuad(DOMQuad_fromQuad(this.handle, other.handle));
  }
  auto p1() {
    return DOMPoint(DOMQuad_p1_Get(this.handle));
  }
  auto p2() {
    return DOMPoint(DOMQuad_p2_Get(this.handle));
  }
  auto p3() {
    return DOMPoint(DOMQuad_p3_Get(this.handle));
  }
  auto p4() {
    return DOMPoint(DOMQuad_p4_Get(this.handle));
  }
  auto getBounds() {
    return DOMRect(DOMQuad_getBounds(this.handle));
  }
  auto toJSON() {
    return JsObject(DOMQuad_toJSON(this.handle));
  }
}
struct DOMQuadInit {
  JsHandle handle;
  alias handle this;
  auto p1(DOMPointInit p1) {
    DOMQuadInit_p1_Set(this.handle, p1.handle);
  }
  auto p1() {
    return DOMPointInit(DOMQuadInit_p1_Get(this.handle));
  }
  auto p2(DOMPointInit p2) {
    DOMQuadInit_p2_Set(this.handle, p2.handle);
  }
  auto p2() {
    return DOMPointInit(DOMQuadInit_p2_Get(this.handle));
  }
  auto p3(DOMPointInit p3) {
    DOMQuadInit_p3_Set(this.handle, p3.handle);
  }
  auto p3() {
    return DOMPointInit(DOMQuadInit_p3_Get(this.handle));
  }
  auto p4(DOMPointInit p4) {
    DOMQuadInit_p4_Set(this.handle, p4.handle);
  }
  auto p4() {
    return DOMPointInit(DOMQuadInit_p4_Get(this.handle));
  }
}
struct DOMRect {
  DOMRectReadOnly _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = DOMRectReadOnly(h);
  }
  auto fromRect(DOMRectInit other) {
    return DOMRect(DOMRect_fromRect(this._parent, other.handle));
  }
  auto x(double x) {
    DOMRect_x_Set(this._parent, x);
  }
  auto x() {
    return DOMRect_x_Get(this._parent);
  }
  auto y(double y) {
    DOMRect_y_Set(this._parent, y);
  }
  auto y() {
    return DOMRect_y_Get(this._parent);
  }
  auto width(double width) {
    DOMRect_width_Set(this._parent, width);
  }
  auto width() {
    return DOMRect_width_Get(this._parent);
  }
  auto height(double height) {
    DOMRect_height_Set(this._parent, height);
  }
  auto height() {
    return DOMRect_height_Get(this._parent);
  }
}
struct DOMRectInit {
  JsHandle handle;
  alias handle this;
  auto x(double x) {
    DOMRectInit_x_Set(this.handle, x);
  }
  auto x() {
    return DOMRectInit_x_Get(this.handle);
  }
  auto y(double y) {
    DOMRectInit_y_Set(this.handle, y);
  }
  auto y() {
    return DOMRectInit_y_Get(this.handle);
  }
  auto width(double width) {
    DOMRectInit_width_Set(this.handle, width);
  }
  auto width() {
    return DOMRectInit_width_Get(this.handle);
  }
  auto height(double height) {
    DOMRectInit_height_Set(this.handle, height);
  }
  auto height() {
    return DOMRectInit_height_Get(this.handle);
  }
}
struct DOMRectList {
  JsHandle handle;
  alias handle this;
  auto length() {
    return DOMRectList_length_Get(this.handle);
  }
  auto item(uint index) {
    return DOMRectList_item_getter(this.handle, index);
  }
}
struct DOMRectReadOnly {
  JsHandle handle;
  alias handle this;
  auto fromRect(DOMRectInit other) {
    return DOMRectReadOnly(DOMRectReadOnly_fromRect(this.handle, other.handle));
  }
  auto x() {
    return DOMRectReadOnly_x_Get(this.handle);
  }
  auto y() {
    return DOMRectReadOnly_y_Get(this.handle);
  }
  auto width() {
    return DOMRectReadOnly_width_Get(this.handle);
  }
  auto height() {
    return DOMRectReadOnly_height_Get(this.handle);
  }
  auto top() {
    return DOMRectReadOnly_top_Get(this.handle);
  }
  auto right() {
    return DOMRectReadOnly_right_Get(this.handle);
  }
  auto bottom() {
    return DOMRectReadOnly_bottom_Get(this.handle);
  }
  auto left() {
    return DOMRectReadOnly_left_Get(this.handle);
  }
  auto toJSON() {
    return JsObject(DOMRectReadOnly_toJSON(this.handle));
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