module spasm.bindings.geometry;

import spasm.types;
struct DOMMatrix {
  DOMMatrixReadOnly _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = DOMMatrixReadOnly(h);
  }
  auto fromMatrix(DOMMatrixInit other) {
    auto result = DOMMatrix(JsHandle(DOMMatrix_fromMatrix(this._parent, other.handle)));
    return result;
  }
  auto fromFloat32Array(Float32Array array32) {
    auto result = DOMMatrix(JsHandle(DOMMatrix_fromFloat32Array(this._parent, array32.handle)));
    return result;
  }
  auto fromFloat64Array(Float64Array array64) {
    auto result = DOMMatrix(JsHandle(DOMMatrix_fromFloat64Array(this._parent, array64.handle)));
    return result;
  }
  auto a(double a) {
    DOMMatrix_a_Set(this._parent, a);
  }
  auto a() {
    auto result = DOMMatrix_a_Get(this._parent);
    return result;
  }
  auto b(double b) {
    DOMMatrix_b_Set(this._parent, b);
  }
  auto b() {
    auto result = DOMMatrix_b_Get(this._parent);
    return result;
  }
  auto c(double c) {
    DOMMatrix_c_Set(this._parent, c);
  }
  auto c() {
    auto result = DOMMatrix_c_Get(this._parent);
    return result;
  }
  auto d(double d) {
    DOMMatrix_d_Set(this._parent, d);
  }
  auto d() {
    auto result = DOMMatrix_d_Get(this._parent);
    return result;
  }
  auto e(double e) {
    DOMMatrix_e_Set(this._parent, e);
  }
  auto e() {
    auto result = DOMMatrix_e_Get(this._parent);
    return result;
  }
  auto f(double f) {
    DOMMatrix_f_Set(this._parent, f);
  }
  auto f() {
    auto result = DOMMatrix_f_Get(this._parent);
    return result;
  }
  auto m11(double m11) {
    DOMMatrix_m11_Set(this._parent, m11);
  }
  auto m11() {
    auto result = DOMMatrix_m11_Get(this._parent);
    return result;
  }
  auto m12(double m12) {
    DOMMatrix_m12_Set(this._parent, m12);
  }
  auto m12() {
    auto result = DOMMatrix_m12_Get(this._parent);
    return result;
  }
  auto m13(double m13) {
    DOMMatrix_m13_Set(this._parent, m13);
  }
  auto m13() {
    auto result = DOMMatrix_m13_Get(this._parent);
    return result;
  }
  auto m14(double m14) {
    DOMMatrix_m14_Set(this._parent, m14);
  }
  auto m14() {
    auto result = DOMMatrix_m14_Get(this._parent);
    return result;
  }
  auto m21(double m21) {
    DOMMatrix_m21_Set(this._parent, m21);
  }
  auto m21() {
    auto result = DOMMatrix_m21_Get(this._parent);
    return result;
  }
  auto m22(double m22) {
    DOMMatrix_m22_Set(this._parent, m22);
  }
  auto m22() {
    auto result = DOMMatrix_m22_Get(this._parent);
    return result;
  }
  auto m23(double m23) {
    DOMMatrix_m23_Set(this._parent, m23);
  }
  auto m23() {
    auto result = DOMMatrix_m23_Get(this._parent);
    return result;
  }
  auto m24(double m24) {
    DOMMatrix_m24_Set(this._parent, m24);
  }
  auto m24() {
    auto result = DOMMatrix_m24_Get(this._parent);
    return result;
  }
  auto m31(double m31) {
    DOMMatrix_m31_Set(this._parent, m31);
  }
  auto m31() {
    auto result = DOMMatrix_m31_Get(this._parent);
    return result;
  }
  auto m32(double m32) {
    DOMMatrix_m32_Set(this._parent, m32);
  }
  auto m32() {
    auto result = DOMMatrix_m32_Get(this._parent);
    return result;
  }
  auto m33(double m33) {
    DOMMatrix_m33_Set(this._parent, m33);
  }
  auto m33() {
    auto result = DOMMatrix_m33_Get(this._parent);
    return result;
  }
  auto m34(double m34) {
    DOMMatrix_m34_Set(this._parent, m34);
  }
  auto m34() {
    auto result = DOMMatrix_m34_Get(this._parent);
    return result;
  }
  auto m41(double m41) {
    DOMMatrix_m41_Set(this._parent, m41);
  }
  auto m41() {
    auto result = DOMMatrix_m41_Get(this._parent);
    return result;
  }
  auto m42(double m42) {
    DOMMatrix_m42_Set(this._parent, m42);
  }
  auto m42() {
    auto result = DOMMatrix_m42_Get(this._parent);
    return result;
  }
  auto m43(double m43) {
    DOMMatrix_m43_Set(this._parent, m43);
  }
  auto m43() {
    auto result = DOMMatrix_m43_Get(this._parent);
    return result;
  }
  auto m44(double m44) {
    DOMMatrix_m44_Set(this._parent, m44);
  }
  auto m44() {
    auto result = DOMMatrix_m44_Get(this._parent);
    return result;
  }
  auto multiplySelf(DOMMatrixInit other) {
    auto result = DOMMatrix(JsHandle(DOMMatrix_multiplySelf(this._parent, other.handle)));
    return result;
  }
  auto preMultiplySelf(DOMMatrixInit other) {
    auto result = DOMMatrix(JsHandle(DOMMatrix_preMultiplySelf(this._parent, other.handle)));
    return result;
  }
  auto translateSelf(double tx /* = 0 */, double ty /* = 0 */, double tz /* = 0 */) {
    auto result = DOMMatrix(JsHandle(DOMMatrix_translateSelf(this._parent, tx, ty, tz)));
    return result;
  }
  auto scaleSelf(double scaleX /* = 1 */, double scaleY, double scaleZ /* = 1 */, double originX /* = 0 */, double originY /* = 0 */, double originZ /* = 0 */) {
    auto result = DOMMatrix(JsHandle(DOMMatrix_scaleSelf(this._parent, scaleX, scaleY, scaleZ, originX, originY, originZ)));
    return result;
  }
  auto scale3dSelf(double scale /* = 1 */, double originX /* = 0 */, double originY /* = 0 */, double originZ /* = 0 */) {
    auto result = DOMMatrix(JsHandle(DOMMatrix_scale3dSelf(this._parent, scale, originX, originY, originZ)));
    return result;
  }
  auto rotateSelf(double rotX /* = 0 */, double rotY, double rotZ) {
    auto result = DOMMatrix(JsHandle(DOMMatrix_rotateSelf(this._parent, rotX, rotY, rotZ)));
    return result;
  }
  auto rotateFromVectorSelf(double x /* = 0 */, double y /* = 0 */) {
    auto result = DOMMatrix(JsHandle(DOMMatrix_rotateFromVectorSelf(this._parent, x, y)));
    return result;
  }
  auto rotateAxisAngleSelf(double x /* = 0 */, double y /* = 0 */, double z /* = 0 */, double angle /* = 0 */) {
    auto result = DOMMatrix(JsHandle(DOMMatrix_rotateAxisAngleSelf(this._parent, x, y, z, angle)));
    return result;
  }
  auto skewXSelf(double sx /* = 0 */) {
    auto result = DOMMatrix(JsHandle(DOMMatrix_skewXSelf(this._parent, sx)));
    return result;
  }
  auto skewYSelf(double sy /* = 0 */) {
    auto result = DOMMatrix(JsHandle(DOMMatrix_skewYSelf(this._parent, sy)));
    return result;
  }
  auto invertSelf() {
    auto result = DOMMatrix(JsHandle(DOMMatrix_invertSelf(this._parent)));
    return result;
  }
  auto setMatrixValue(string transformList) {
    auto result = DOMMatrix(JsHandle(DOMMatrix_setMatrixValue(this._parent, transformList)));
    return result;
  }
}
struct DOMMatrix2DInit {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return DOMMatrix2DInit(JsHandle(spasm_add__object()));
  }
  auto a(double a) {
    DOMMatrix2DInit_a_Set(this.handle, a);
  }
  auto a() {
    auto result = DOMMatrix2DInit_a_Get(this.handle);
    return result;
  }
  auto b(double b) {
    DOMMatrix2DInit_b_Set(this.handle, b);
  }
  auto b() {
    auto result = DOMMatrix2DInit_b_Get(this.handle);
    return result;
  }
  auto c(double c) {
    DOMMatrix2DInit_c_Set(this.handle, c);
  }
  auto c() {
    auto result = DOMMatrix2DInit_c_Get(this.handle);
    return result;
  }
  auto d(double d) {
    DOMMatrix2DInit_d_Set(this.handle, d);
  }
  auto d() {
    auto result = DOMMatrix2DInit_d_Get(this.handle);
    return result;
  }
  auto e(double e) {
    DOMMatrix2DInit_e_Set(this.handle, e);
  }
  auto e() {
    auto result = DOMMatrix2DInit_e_Get(this.handle);
    return result;
  }
  auto f(double f) {
    DOMMatrix2DInit_f_Set(this.handle, f);
  }
  auto f() {
    auto result = DOMMatrix2DInit_f_Get(this.handle);
    return result;
  }
  auto m11(double m11) {
    DOMMatrix2DInit_m11_Set(this.handle, m11);
  }
  auto m11() {
    auto result = DOMMatrix2DInit_m11_Get(this.handle);
    return result;
  }
  auto m12(double m12) {
    DOMMatrix2DInit_m12_Set(this.handle, m12);
  }
  auto m12() {
    auto result = DOMMatrix2DInit_m12_Get(this.handle);
    return result;
  }
  auto m21(double m21) {
    DOMMatrix2DInit_m21_Set(this.handle, m21);
  }
  auto m21() {
    auto result = DOMMatrix2DInit_m21_Get(this.handle);
    return result;
  }
  auto m22(double m22) {
    DOMMatrix2DInit_m22_Set(this.handle, m22);
  }
  auto m22() {
    auto result = DOMMatrix2DInit_m22_Get(this.handle);
    return result;
  }
  auto m41(double m41) {
    DOMMatrix2DInit_m41_Set(this.handle, m41);
  }
  auto m41() {
    auto result = DOMMatrix2DInit_m41_Get(this.handle);
    return result;
  }
  auto m42(double m42) {
    DOMMatrix2DInit_m42_Set(this.handle, m42);
  }
  auto m42() {
    auto result = DOMMatrix2DInit_m42_Get(this.handle);
    return result;
  }
}
struct DOMMatrixInit {
  DOMMatrix2DInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = DOMMatrix2DInit(h);
  }
  static auto create() {
    return DOMMatrixInit(JsHandle(spasm_add__object()));
  }
  auto m13(double m13) {
    DOMMatrixInit_m13_Set(this._parent, m13);
  }
  auto m13() {
    auto result = DOMMatrixInit_m13_Get(this._parent);
    return result;
  }
  auto m14(double m14) {
    DOMMatrixInit_m14_Set(this._parent, m14);
  }
  auto m14() {
    auto result = DOMMatrixInit_m14_Get(this._parent);
    return result;
  }
  auto m23(double m23) {
    DOMMatrixInit_m23_Set(this._parent, m23);
  }
  auto m23() {
    auto result = DOMMatrixInit_m23_Get(this._parent);
    return result;
  }
  auto m24(double m24) {
    DOMMatrixInit_m24_Set(this._parent, m24);
  }
  auto m24() {
    auto result = DOMMatrixInit_m24_Get(this._parent);
    return result;
  }
  auto m31(double m31) {
    DOMMatrixInit_m31_Set(this._parent, m31);
  }
  auto m31() {
    auto result = DOMMatrixInit_m31_Get(this._parent);
    return result;
  }
  auto m32(double m32) {
    DOMMatrixInit_m32_Set(this._parent, m32);
  }
  auto m32() {
    auto result = DOMMatrixInit_m32_Get(this._parent);
    return result;
  }
  auto m33(double m33) {
    DOMMatrixInit_m33_Set(this._parent, m33);
  }
  auto m33() {
    auto result = DOMMatrixInit_m33_Get(this._parent);
    return result;
  }
  auto m34(double m34) {
    DOMMatrixInit_m34_Set(this._parent, m34);
  }
  auto m34() {
    auto result = DOMMatrixInit_m34_Get(this._parent);
    return result;
  }
  auto m43(double m43) {
    DOMMatrixInit_m43_Set(this._parent, m43);
  }
  auto m43() {
    auto result = DOMMatrixInit_m43_Get(this._parent);
    return result;
  }
  auto m44(double m44) {
    DOMMatrixInit_m44_Set(this._parent, m44);
  }
  auto m44() {
    auto result = DOMMatrixInit_m44_Get(this._parent);
    return result;
  }
  auto is2D(bool is2D) {
    DOMMatrixInit_is2D_Set(this._parent, is2D);
  }
  auto is2D() {
    auto result = DOMMatrixInit_is2D_Get(this._parent);
    return result;
  }
}
struct DOMMatrixReadOnly {
  JsHandle handle;
  alias handle this;
  auto fromMatrix(DOMMatrixInit other) {
    auto result = DOMMatrixReadOnly(JsHandle(DOMMatrixReadOnly_fromMatrix(this.handle, other.handle)));
    return result;
  }
  auto fromFloat32Array(Float32Array array32) {
    auto result = DOMMatrixReadOnly(JsHandle(DOMMatrixReadOnly_fromFloat32Array(this.handle, array32.handle)));
    return result;
  }
  auto fromFloat64Array(Float64Array array64) {
    auto result = DOMMatrixReadOnly(JsHandle(DOMMatrixReadOnly_fromFloat64Array(this.handle, array64.handle)));
    return result;
  }
  auto a() {
    auto result = DOMMatrixReadOnly_a_Get(this.handle);
    return result;
  }
  auto b() {
    auto result = DOMMatrixReadOnly_b_Get(this.handle);
    return result;
  }
  auto c() {
    auto result = DOMMatrixReadOnly_c_Get(this.handle);
    return result;
  }
  auto d() {
    auto result = DOMMatrixReadOnly_d_Get(this.handle);
    return result;
  }
  auto e() {
    auto result = DOMMatrixReadOnly_e_Get(this.handle);
    return result;
  }
  auto f() {
    auto result = DOMMatrixReadOnly_f_Get(this.handle);
    return result;
  }
  auto m11() {
    auto result = DOMMatrixReadOnly_m11_Get(this.handle);
    return result;
  }
  auto m12() {
    auto result = DOMMatrixReadOnly_m12_Get(this.handle);
    return result;
  }
  auto m13() {
    auto result = DOMMatrixReadOnly_m13_Get(this.handle);
    return result;
  }
  auto m14() {
    auto result = DOMMatrixReadOnly_m14_Get(this.handle);
    return result;
  }
  auto m21() {
    auto result = DOMMatrixReadOnly_m21_Get(this.handle);
    return result;
  }
  auto m22() {
    auto result = DOMMatrixReadOnly_m22_Get(this.handle);
    return result;
  }
  auto m23() {
    auto result = DOMMatrixReadOnly_m23_Get(this.handle);
    return result;
  }
  auto m24() {
    auto result = DOMMatrixReadOnly_m24_Get(this.handle);
    return result;
  }
  auto m31() {
    auto result = DOMMatrixReadOnly_m31_Get(this.handle);
    return result;
  }
  auto m32() {
    auto result = DOMMatrixReadOnly_m32_Get(this.handle);
    return result;
  }
  auto m33() {
    auto result = DOMMatrixReadOnly_m33_Get(this.handle);
    return result;
  }
  auto m34() {
    auto result = DOMMatrixReadOnly_m34_Get(this.handle);
    return result;
  }
  auto m41() {
    auto result = DOMMatrixReadOnly_m41_Get(this.handle);
    return result;
  }
  auto m42() {
    auto result = DOMMatrixReadOnly_m42_Get(this.handle);
    return result;
  }
  auto m43() {
    auto result = DOMMatrixReadOnly_m43_Get(this.handle);
    return result;
  }
  auto m44() {
    auto result = DOMMatrixReadOnly_m44_Get(this.handle);
    return result;
  }
  auto is2D() {
    auto result = DOMMatrixReadOnly_is2D_Get(this.handle);
    return result;
  }
  auto isIdentity() {
    auto result = DOMMatrixReadOnly_isIdentity_Get(this.handle);
    return result;
  }
  auto translate(double tx /* = 0 */, double ty /* = 0 */, double tz /* = 0 */) {
    auto result = DOMMatrix(JsHandle(DOMMatrixReadOnly_translate(this.handle, tx, ty, tz)));
    return result;
  }
  auto scale(double scaleX /* = 1 */, double scaleY, double scaleZ /* = 1 */, double originX /* = 0 */, double originY /* = 0 */, double originZ /* = 0 */) {
    auto result = DOMMatrix(JsHandle(DOMMatrixReadOnly_scale(this.handle, scaleX, scaleY, scaleZ, originX, originY, originZ)));
    return result;
  }
  auto scaleNonUniform(double scaleX /* = 1 */, double scaleY /* = 1 */) {
    auto result = DOMMatrix(JsHandle(DOMMatrixReadOnly_scaleNonUniform(this.handle, scaleX, scaleY)));
    return result;
  }
  auto scale3d(double scale /* = 1 */, double originX /* = 0 */, double originY /* = 0 */, double originZ /* = 0 */) {
    auto result = DOMMatrix(JsHandle(DOMMatrixReadOnly_scale3d(this.handle, scale, originX, originY, originZ)));
    return result;
  }
  auto rotate(double rotX /* = 0 */, double rotY, double rotZ) {
    auto result = DOMMatrix(JsHandle(DOMMatrixReadOnly_rotate(this.handle, rotX, rotY, rotZ)));
    return result;
  }
  auto rotateFromVector(double x /* = 0 */, double y /* = 0 */) {
    auto result = DOMMatrix(JsHandle(DOMMatrixReadOnly_rotateFromVector(this.handle, x, y)));
    return result;
  }
  auto rotateAxisAngle(double x /* = 0 */, double y /* = 0 */, double z /* = 0 */, double angle /* = 0 */) {
    auto result = DOMMatrix(JsHandle(DOMMatrixReadOnly_rotateAxisAngle(this.handle, x, y, z, angle)));
    return result;
  }
  auto skewX(double sx /* = 0 */) {
    auto result = DOMMatrix(JsHandle(DOMMatrixReadOnly_skewX(this.handle, sx)));
    return result;
  }
  auto skewY(double sy /* = 0 */) {
    auto result = DOMMatrix(JsHandle(DOMMatrixReadOnly_skewY(this.handle, sy)));
    return result;
  }
  auto multiply(DOMMatrixInit other) {
    auto result = DOMMatrix(JsHandle(DOMMatrixReadOnly_multiply(this.handle, other.handle)));
    return result;
  }
  auto flipX() {
    auto result = DOMMatrix(JsHandle(DOMMatrixReadOnly_flipX(this.handle)));
    return result;
  }
  auto flipY() {
    auto result = DOMMatrix(JsHandle(DOMMatrixReadOnly_flipY(this.handle)));
    return result;
  }
  auto inverse() {
    auto result = DOMMatrix(JsHandle(DOMMatrixReadOnly_inverse(this.handle)));
    return result;
  }
  auto transformPoint(DOMPointInit point) {
    auto result = DOMPoint(JsHandle(DOMMatrixReadOnly_transformPoint(this.handle, point.handle)));
    return result;
  }
  auto toFloat32Array() {
    auto result = Float32Array(JsHandle(DOMMatrixReadOnly_toFloat32Array(this.handle)));
    return result;
  }
  auto toFloat64Array() {
    auto result = Float64Array(JsHandle(DOMMatrixReadOnly_toFloat64Array(this.handle)));
    return result;
  }
  auto toJSON() {
    auto result = JsObject(JsHandle(DOMMatrixReadOnly_toJSON(this.handle)));
    return result;
  }
}
struct DOMPoint {
  DOMPointReadOnly _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = DOMPointReadOnly(h);
  }
  auto fromPoint(DOMPointInit other) {
    auto result = DOMPoint(JsHandle(DOMPoint_fromPoint(this._parent, other.handle)));
    return result;
  }
  auto x(double x) {
    DOMPoint_x_Set(this._parent, x);
  }
  auto x() {
    auto result = DOMPoint_x_Get(this._parent);
    return result;
  }
  auto y(double y) {
    DOMPoint_y_Set(this._parent, y);
  }
  auto y() {
    auto result = DOMPoint_y_Get(this._parent);
    return result;
  }
  auto z(double z) {
    DOMPoint_z_Set(this._parent, z);
  }
  auto z() {
    auto result = DOMPoint_z_Get(this._parent);
    return result;
  }
  auto w(double w) {
    DOMPoint_w_Set(this._parent, w);
  }
  auto w() {
    auto result = DOMPoint_w_Get(this._parent);
    return result;
  }
}
struct DOMPointInit {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return DOMPointInit(JsHandle(spasm_add__object()));
  }
  auto x(double x) {
    DOMPointInit_x_Set(this.handle, x);
  }
  auto x() {
    auto result = DOMPointInit_x_Get(this.handle);
    return result;
  }
  auto y(double y) {
    DOMPointInit_y_Set(this.handle, y);
  }
  auto y() {
    auto result = DOMPointInit_y_Get(this.handle);
    return result;
  }
  auto z(double z) {
    DOMPointInit_z_Set(this.handle, z);
  }
  auto z() {
    auto result = DOMPointInit_z_Get(this.handle);
    return result;
  }
  auto w(double w) {
    DOMPointInit_w_Set(this.handle, w);
  }
  auto w() {
    auto result = DOMPointInit_w_Get(this.handle);
    return result;
  }
}
struct DOMPointReadOnly {
  JsHandle handle;
  alias handle this;
  auto fromPoint(DOMPointInit other) {
    auto result = DOMPointReadOnly(JsHandle(DOMPointReadOnly_fromPoint(this.handle, other.handle)));
    return result;
  }
  auto x() {
    auto result = DOMPointReadOnly_x_Get(this.handle);
    return result;
  }
  auto y() {
    auto result = DOMPointReadOnly_y_Get(this.handle);
    return result;
  }
  auto z() {
    auto result = DOMPointReadOnly_z_Get(this.handle);
    return result;
  }
  auto w() {
    auto result = DOMPointReadOnly_w_Get(this.handle);
    return result;
  }
  auto matrixTransform(DOMMatrixInit matrix) {
    auto result = DOMPoint(JsHandle(DOMPointReadOnly_matrixTransform(this.handle, matrix.handle)));
    return result;
  }
  auto toJSON() {
    auto result = JsObject(JsHandle(DOMPointReadOnly_toJSON(this.handle)));
    return result;
  }
}
struct DOMQuad {
  JsHandle handle;
  alias handle this;
  auto fromRect(DOMRectInit other) {
    auto result = DOMQuad(JsHandle(DOMQuad_fromRect(this.handle, other.handle)));
    return result;
  }
  auto fromQuad(DOMQuadInit other) {
    auto result = DOMQuad(JsHandle(DOMQuad_fromQuad(this.handle, other.handle)));
    return result;
  }
  auto p1() {
    auto result = DOMPoint(JsHandle(DOMQuad_p1_Get(this.handle)));
    return result;
  }
  auto p2() {
    auto result = DOMPoint(JsHandle(DOMQuad_p2_Get(this.handle)));
    return result;
  }
  auto p3() {
    auto result = DOMPoint(JsHandle(DOMQuad_p3_Get(this.handle)));
    return result;
  }
  auto p4() {
    auto result = DOMPoint(JsHandle(DOMQuad_p4_Get(this.handle)));
    return result;
  }
  auto getBounds() {
    auto result = DOMRect(JsHandle(DOMQuad_getBounds(this.handle)));
    return result;
  }
  auto toJSON() {
    auto result = JsObject(JsHandle(DOMQuad_toJSON(this.handle)));
    return result;
  }
}
struct DOMQuadInit {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return DOMQuadInit(JsHandle(spasm_add__object()));
  }
  auto p1(DOMPointInit p1) {
    DOMQuadInit_p1_Set(this.handle, p1.handle);
  }
  auto p1() {
    auto result = DOMPointInit(JsHandle(DOMQuadInit_p1_Get(this.handle)));
    return result;
  }
  auto p2(DOMPointInit p2) {
    DOMQuadInit_p2_Set(this.handle, p2.handle);
  }
  auto p2() {
    auto result = DOMPointInit(JsHandle(DOMQuadInit_p2_Get(this.handle)));
    return result;
  }
  auto p3(DOMPointInit p3) {
    DOMQuadInit_p3_Set(this.handle, p3.handle);
  }
  auto p3() {
    auto result = DOMPointInit(JsHandle(DOMQuadInit_p3_Get(this.handle)));
    return result;
  }
  auto p4(DOMPointInit p4) {
    DOMQuadInit_p4_Set(this.handle, p4.handle);
  }
  auto p4() {
    auto result = DOMPointInit(JsHandle(DOMQuadInit_p4_Get(this.handle)));
    return result;
  }
}
struct DOMRect {
  DOMRectReadOnly _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = DOMRectReadOnly(h);
  }
  auto fromRect(DOMRectInit other) {
    auto result = DOMRect(JsHandle(DOMRect_fromRect(this._parent, other.handle)));
    return result;
  }
  auto x(double x) {
    DOMRect_x_Set(this._parent, x);
  }
  auto x() {
    auto result = DOMRect_x_Get(this._parent);
    return result;
  }
  auto y(double y) {
    DOMRect_y_Set(this._parent, y);
  }
  auto y() {
    auto result = DOMRect_y_Get(this._parent);
    return result;
  }
  auto width(double width) {
    DOMRect_width_Set(this._parent, width);
  }
  auto width() {
    auto result = DOMRect_width_Get(this._parent);
    return result;
  }
  auto height(double height) {
    DOMRect_height_Set(this._parent, height);
  }
  auto height() {
    auto result = DOMRect_height_Get(this._parent);
    return result;
  }
}
struct DOMRectInit {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return DOMRectInit(JsHandle(spasm_add__object()));
  }
  auto x(double x) {
    DOMRectInit_x_Set(this.handle, x);
  }
  auto x() {
    auto result = DOMRectInit_x_Get(this.handle);
    return result;
  }
  auto y(double y) {
    DOMRectInit_y_Set(this.handle, y);
  }
  auto y() {
    auto result = DOMRectInit_y_Get(this.handle);
    return result;
  }
  auto width(double width) {
    DOMRectInit_width_Set(this.handle, width);
  }
  auto width() {
    auto result = DOMRectInit_width_Get(this.handle);
    return result;
  }
  auto height(double height) {
    DOMRectInit_height_Set(this.handle, height);
  }
  auto height() {
    auto result = DOMRectInit_height_Get(this.handle);
    return result;
  }
}
struct DOMRectList {
  JsHandle handle;
  alias handle this;
  auto length() {
    auto result = DOMRectList_length_Get(this.handle);
    return result;
  }
  auto item(uint index) {
    auto result = DOMRectList_item_getter(this.handle, index);
    return result;
  }
}
struct DOMRectReadOnly {
  JsHandle handle;
  alias handle this;
  auto fromRect(DOMRectInit other) {
    auto result = DOMRectReadOnly(JsHandle(DOMRectReadOnly_fromRect(this.handle, other.handle)));
    return result;
  }
  auto x() {
    auto result = DOMRectReadOnly_x_Get(this.handle);
    return result;
  }
  auto y() {
    auto result = DOMRectReadOnly_y_Get(this.handle);
    return result;
  }
  auto width() {
    auto result = DOMRectReadOnly_width_Get(this.handle);
    return result;
  }
  auto height() {
    auto result = DOMRectReadOnly_height_Get(this.handle);
    return result;
  }
  auto top() {
    auto result = DOMRectReadOnly_top_Get(this.handle);
    return result;
  }
  auto right() {
    auto result = DOMRectReadOnly_right_Get(this.handle);
    return result;
  }
  auto bottom() {
    auto result = DOMRectReadOnly_bottom_Get(this.handle);
    return result;
  }
  auto left() {
    auto result = DOMRectReadOnly_left_Get(this.handle);
    return result;
  }
  auto toJSON() {
    auto result = JsObject(JsHandle(DOMRectReadOnly_toJSON(this.handle)));
    return result;
  }
}


extern (C) Handle DOMMatrix_fromMatrix(Handle, Handle);
extern (C) Handle DOMMatrix_fromFloat32Array(Handle, Handle);
extern (C) Handle DOMMatrix_fromFloat64Array(Handle, Handle);
extern (C) void DOMMatrix_a_Set(Handle, double);
extern (C) double DOMMatrix_a_Get(Handle);
extern (C) void DOMMatrix_b_Set(Handle, double);
extern (C) double DOMMatrix_b_Get(Handle);
extern (C) void DOMMatrix_c_Set(Handle, double);
extern (C) double DOMMatrix_c_Get(Handle);
extern (C) void DOMMatrix_d_Set(Handle, double);
extern (C) double DOMMatrix_d_Get(Handle);
extern (C) void DOMMatrix_e_Set(Handle, double);
extern (C) double DOMMatrix_e_Get(Handle);
extern (C) void DOMMatrix_f_Set(Handle, double);
extern (C) double DOMMatrix_f_Get(Handle);
extern (C) void DOMMatrix_m11_Set(Handle, double);
extern (C) double DOMMatrix_m11_Get(Handle);
extern (C) void DOMMatrix_m12_Set(Handle, double);
extern (C) double DOMMatrix_m12_Get(Handle);
extern (C) void DOMMatrix_m13_Set(Handle, double);
extern (C) double DOMMatrix_m13_Get(Handle);
extern (C) void DOMMatrix_m14_Set(Handle, double);
extern (C) double DOMMatrix_m14_Get(Handle);
extern (C) void DOMMatrix_m21_Set(Handle, double);
extern (C) double DOMMatrix_m21_Get(Handle);
extern (C) void DOMMatrix_m22_Set(Handle, double);
extern (C) double DOMMatrix_m22_Get(Handle);
extern (C) void DOMMatrix_m23_Set(Handle, double);
extern (C) double DOMMatrix_m23_Get(Handle);
extern (C) void DOMMatrix_m24_Set(Handle, double);
extern (C) double DOMMatrix_m24_Get(Handle);
extern (C) void DOMMatrix_m31_Set(Handle, double);
extern (C) double DOMMatrix_m31_Get(Handle);
extern (C) void DOMMatrix_m32_Set(Handle, double);
extern (C) double DOMMatrix_m32_Get(Handle);
extern (C) void DOMMatrix_m33_Set(Handle, double);
extern (C) double DOMMatrix_m33_Get(Handle);
extern (C) void DOMMatrix_m34_Set(Handle, double);
extern (C) double DOMMatrix_m34_Get(Handle);
extern (C) void DOMMatrix_m41_Set(Handle, double);
extern (C) double DOMMatrix_m41_Get(Handle);
extern (C) void DOMMatrix_m42_Set(Handle, double);
extern (C) double DOMMatrix_m42_Get(Handle);
extern (C) void DOMMatrix_m43_Set(Handle, double);
extern (C) double DOMMatrix_m43_Get(Handle);
extern (C) void DOMMatrix_m44_Set(Handle, double);
extern (C) double DOMMatrix_m44_Get(Handle);
extern (C) Handle DOMMatrix_multiplySelf(Handle, Handle);
extern (C) Handle DOMMatrix_preMultiplySelf(Handle, Handle);
extern (C) Handle DOMMatrix_translateSelf(Handle, double, double, double);
extern (C) Handle DOMMatrix_scaleSelf(Handle, double, double, double, double, double, double);
extern (C) Handle DOMMatrix_scale3dSelf(Handle, double, double, double, double);
extern (C) Handle DOMMatrix_rotateSelf(Handle, double, double, double);
extern (C) Handle DOMMatrix_rotateFromVectorSelf(Handle, double, double);
extern (C) Handle DOMMatrix_rotateAxisAngleSelf(Handle, double, double, double, double);
extern (C) Handle DOMMatrix_skewXSelf(Handle, double);
extern (C) Handle DOMMatrix_skewYSelf(Handle, double);
extern (C) Handle DOMMatrix_invertSelf(Handle);
extern (C) Handle DOMMatrix_setMatrixValue(Handle, string);
extern (C) void DOMMatrix2DInit_create(Handle);
extern (C) void DOMMatrix2DInit_a_Set(Handle, double);
extern (C) double DOMMatrix2DInit_a_Get(Handle);
extern (C) void DOMMatrix2DInit_b_Set(Handle, double);
extern (C) double DOMMatrix2DInit_b_Get(Handle);
extern (C) void DOMMatrix2DInit_c_Set(Handle, double);
extern (C) double DOMMatrix2DInit_c_Get(Handle);
extern (C) void DOMMatrix2DInit_d_Set(Handle, double);
extern (C) double DOMMatrix2DInit_d_Get(Handle);
extern (C) void DOMMatrix2DInit_e_Set(Handle, double);
extern (C) double DOMMatrix2DInit_e_Get(Handle);
extern (C) void DOMMatrix2DInit_f_Set(Handle, double);
extern (C) double DOMMatrix2DInit_f_Get(Handle);
extern (C) void DOMMatrix2DInit_m11_Set(Handle, double);
extern (C) double DOMMatrix2DInit_m11_Get(Handle);
extern (C) void DOMMatrix2DInit_m12_Set(Handle, double);
extern (C) double DOMMatrix2DInit_m12_Get(Handle);
extern (C) void DOMMatrix2DInit_m21_Set(Handle, double);
extern (C) double DOMMatrix2DInit_m21_Get(Handle);
extern (C) void DOMMatrix2DInit_m22_Set(Handle, double);
extern (C) double DOMMatrix2DInit_m22_Get(Handle);
extern (C) void DOMMatrix2DInit_m41_Set(Handle, double);
extern (C) double DOMMatrix2DInit_m41_Get(Handle);
extern (C) void DOMMatrix2DInit_m42_Set(Handle, double);
extern (C) double DOMMatrix2DInit_m42_Get(Handle);
extern (C) void DOMMatrixInit_create(Handle);
extern (C) void DOMMatrixInit_m13_Set(Handle, double);
extern (C) double DOMMatrixInit_m13_Get(Handle);
extern (C) void DOMMatrixInit_m14_Set(Handle, double);
extern (C) double DOMMatrixInit_m14_Get(Handle);
extern (C) void DOMMatrixInit_m23_Set(Handle, double);
extern (C) double DOMMatrixInit_m23_Get(Handle);
extern (C) void DOMMatrixInit_m24_Set(Handle, double);
extern (C) double DOMMatrixInit_m24_Get(Handle);
extern (C) void DOMMatrixInit_m31_Set(Handle, double);
extern (C) double DOMMatrixInit_m31_Get(Handle);
extern (C) void DOMMatrixInit_m32_Set(Handle, double);
extern (C) double DOMMatrixInit_m32_Get(Handle);
extern (C) void DOMMatrixInit_m33_Set(Handle, double);
extern (C) double DOMMatrixInit_m33_Get(Handle);
extern (C) void DOMMatrixInit_m34_Set(Handle, double);
extern (C) double DOMMatrixInit_m34_Get(Handle);
extern (C) void DOMMatrixInit_m43_Set(Handle, double);
extern (C) double DOMMatrixInit_m43_Get(Handle);
extern (C) void DOMMatrixInit_m44_Set(Handle, double);
extern (C) double DOMMatrixInit_m44_Get(Handle);
extern (C) void DOMMatrixInit_is2D_Set(Handle, bool);
extern (C) bool DOMMatrixInit_is2D_Get(Handle);
extern (C) Handle DOMMatrixReadOnly_fromMatrix(Handle, Handle);
extern (C) Handle DOMMatrixReadOnly_fromFloat32Array(Handle, Handle);
extern (C) Handle DOMMatrixReadOnly_fromFloat64Array(Handle, Handle);
extern (C) double DOMMatrixReadOnly_a_Get(Handle);
extern (C) double DOMMatrixReadOnly_b_Get(Handle);
extern (C) double DOMMatrixReadOnly_c_Get(Handle);
extern (C) double DOMMatrixReadOnly_d_Get(Handle);
extern (C) double DOMMatrixReadOnly_e_Get(Handle);
extern (C) double DOMMatrixReadOnly_f_Get(Handle);
extern (C) double DOMMatrixReadOnly_m11_Get(Handle);
extern (C) double DOMMatrixReadOnly_m12_Get(Handle);
extern (C) double DOMMatrixReadOnly_m13_Get(Handle);
extern (C) double DOMMatrixReadOnly_m14_Get(Handle);
extern (C) double DOMMatrixReadOnly_m21_Get(Handle);
extern (C) double DOMMatrixReadOnly_m22_Get(Handle);
extern (C) double DOMMatrixReadOnly_m23_Get(Handle);
extern (C) double DOMMatrixReadOnly_m24_Get(Handle);
extern (C) double DOMMatrixReadOnly_m31_Get(Handle);
extern (C) double DOMMatrixReadOnly_m32_Get(Handle);
extern (C) double DOMMatrixReadOnly_m33_Get(Handle);
extern (C) double DOMMatrixReadOnly_m34_Get(Handle);
extern (C) double DOMMatrixReadOnly_m41_Get(Handle);
extern (C) double DOMMatrixReadOnly_m42_Get(Handle);
extern (C) double DOMMatrixReadOnly_m43_Get(Handle);
extern (C) double DOMMatrixReadOnly_m44_Get(Handle);
extern (C) bool DOMMatrixReadOnly_is2D_Get(Handle);
extern (C) bool DOMMatrixReadOnly_isIdentity_Get(Handle);
extern (C) Handle DOMMatrixReadOnly_translate(Handle, double, double, double);
extern (C) Handle DOMMatrixReadOnly_scale(Handle, double, double, double, double, double, double);
extern (C) Handle DOMMatrixReadOnly_scaleNonUniform(Handle, double, double);
extern (C) Handle DOMMatrixReadOnly_scale3d(Handle, double, double, double, double);
extern (C) Handle DOMMatrixReadOnly_rotate(Handle, double, double, double);
extern (C) Handle DOMMatrixReadOnly_rotateFromVector(Handle, double, double);
extern (C) Handle DOMMatrixReadOnly_rotateAxisAngle(Handle, double, double, double, double);
extern (C) Handle DOMMatrixReadOnly_skewX(Handle, double);
extern (C) Handle DOMMatrixReadOnly_skewY(Handle, double);
extern (C) Handle DOMMatrixReadOnly_multiply(Handle, Handle);
extern (C) Handle DOMMatrixReadOnly_flipX(Handle);
extern (C) Handle DOMMatrixReadOnly_flipY(Handle);
extern (C) Handle DOMMatrixReadOnly_inverse(Handle);
extern (C) Handle DOMMatrixReadOnly_transformPoint(Handle, Handle);
extern (C) Handle DOMMatrixReadOnly_toFloat32Array(Handle);
extern (C) Handle DOMMatrixReadOnly_toFloat64Array(Handle);
extern (C) Handle DOMMatrixReadOnly_toJSON(Handle);
extern (C) Handle DOMPoint_fromPoint(Handle, Handle);
extern (C) void DOMPoint_x_Set(Handle, double);
extern (C) double DOMPoint_x_Get(Handle);
extern (C) void DOMPoint_y_Set(Handle, double);
extern (C) double DOMPoint_y_Get(Handle);
extern (C) void DOMPoint_z_Set(Handle, double);
extern (C) double DOMPoint_z_Get(Handle);
extern (C) void DOMPoint_w_Set(Handle, double);
extern (C) double DOMPoint_w_Get(Handle);
extern (C) void DOMPointInit_create(Handle);
extern (C) void DOMPointInit_x_Set(Handle, double);
extern (C) double DOMPointInit_x_Get(Handle);
extern (C) void DOMPointInit_y_Set(Handle, double);
extern (C) double DOMPointInit_y_Get(Handle);
extern (C) void DOMPointInit_z_Set(Handle, double);
extern (C) double DOMPointInit_z_Get(Handle);
extern (C) void DOMPointInit_w_Set(Handle, double);
extern (C) double DOMPointInit_w_Get(Handle);
extern (C) Handle DOMPointReadOnly_fromPoint(Handle, Handle);
extern (C) double DOMPointReadOnly_x_Get(Handle);
extern (C) double DOMPointReadOnly_y_Get(Handle);
extern (C) double DOMPointReadOnly_z_Get(Handle);
extern (C) double DOMPointReadOnly_w_Get(Handle);
extern (C) Handle DOMPointReadOnly_matrixTransform(Handle, Handle);
extern (C) Handle DOMPointReadOnly_toJSON(Handle);
extern (C) Handle DOMQuad_fromRect(Handle, Handle);
extern (C) Handle DOMQuad_fromQuad(Handle, Handle);
extern (C) Handle DOMQuad_p1_Get(Handle);
extern (C) Handle DOMQuad_p2_Get(Handle);
extern (C) Handle DOMQuad_p3_Get(Handle);
extern (C) Handle DOMQuad_p4_Get(Handle);
extern (C) Handle DOMQuad_getBounds(Handle);
extern (C) Handle DOMQuad_toJSON(Handle);
extern (C) void DOMQuadInit_create(Handle);
extern (C) void DOMQuadInit_p1_Set(Handle, Handle);
extern (C) Handle DOMQuadInit_p1_Get(Handle);
extern (C) void DOMQuadInit_p2_Set(Handle, Handle);
extern (C) Handle DOMQuadInit_p2_Get(Handle);
extern (C) void DOMQuadInit_p3_Set(Handle, Handle);
extern (C) Handle DOMQuadInit_p3_Get(Handle);
extern (C) void DOMQuadInit_p4_Set(Handle, Handle);
extern (C) Handle DOMQuadInit_p4_Get(Handle);
extern (C) Handle DOMRect_fromRect(Handle, Handle);
extern (C) void DOMRect_x_Set(Handle, double);
extern (C) double DOMRect_x_Get(Handle);
extern (C) void DOMRect_y_Set(Handle, double);
extern (C) double DOMRect_y_Get(Handle);
extern (C) void DOMRect_width_Set(Handle, double);
extern (C) double DOMRect_width_Get(Handle);
extern (C) void DOMRect_height_Set(Handle, double);
extern (C) double DOMRect_height_Get(Handle);
extern (C) void DOMRectInit_create(Handle);
extern (C) void DOMRectInit_x_Set(Handle, double);
extern (C) double DOMRectInit_x_Get(Handle);
extern (C) void DOMRectInit_y_Set(Handle, double);
extern (C) double DOMRectInit_y_Get(Handle);
extern (C) void DOMRectInit_width_Set(Handle, double);
extern (C) double DOMRectInit_width_Get(Handle);
extern (C) void DOMRectInit_height_Set(Handle, double);
extern (C) double DOMRectInit_height_Get(Handle);
extern (C) uint DOMRectList_length_Get(Handle);
extern (C) Optional!(DOMRect) DOMRectList_item_getter(Handle, uint);
extern (C) Handle DOMRectReadOnly_fromRect(Handle, Handle);
extern (C) double DOMRectReadOnly_x_Get(Handle);
extern (C) double DOMRectReadOnly_y_Get(Handle);
extern (C) double DOMRectReadOnly_width_Get(Handle);
extern (C) double DOMRectReadOnly_height_Get(Handle);
extern (C) double DOMRectReadOnly_top_Get(Handle);
extern (C) double DOMRectReadOnly_right_Get(Handle);
extern (C) double DOMRectReadOnly_bottom_Get(Handle);
extern (C) double DOMRectReadOnly_left_Get(Handle);
extern (C) Handle DOMRectReadOnly_toJSON(Handle);