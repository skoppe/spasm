module spasm.bindings.geometry;

import spasm.types;
nothrow:
struct DOMMatrix {
  nothrow:
  spasm.bindings.geometry.DOMMatrixReadOnly _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .DOMMatrixReadOnly(h);
  }
  auto fromMatrix(DOMMatrixInit other) {
    return DOMMatrix(JsHandle(DOMMatrix_fromMatrix(this._parent, other._parent)));
  }
  auto fromMatrix() {
    return DOMMatrix(JsHandle(DOMMatrix_fromMatrix_0(this._parent)));
  }
  auto fromFloat32Array(Float32Array array32) {
    return DOMMatrix(JsHandle(DOMMatrix_fromFloat32Array(this._parent, array32.handle)));
  }
  auto fromFloat64Array(Float64Array array64) {
    return DOMMatrix(JsHandle(DOMMatrix_fromFloat64Array(this._parent, array64.handle)));
  }
  void a(double a) {
    DOMMatrix_a_Set(this._parent, a);
  }
  auto a() {
    return DOMMatrix_a_Get(this._parent);
  }
  void b(double b) {
    DOMMatrix_b_Set(this._parent, b);
  }
  auto b() {
    return DOMMatrix_b_Get(this._parent);
  }
  void c(double c) {
    DOMMatrix_c_Set(this._parent, c);
  }
  auto c() {
    return DOMMatrix_c_Get(this._parent);
  }
  void d(double d) {
    DOMMatrix_d_Set(this._parent, d);
  }
  auto d() {
    return DOMMatrix_d_Get(this._parent);
  }
  void e(double e) {
    DOMMatrix_e_Set(this._parent, e);
  }
  auto e() {
    return DOMMatrix_e_Get(this._parent);
  }
  void f(double f) {
    DOMMatrix_f_Set(this._parent, f);
  }
  auto f() {
    return DOMMatrix_f_Get(this._parent);
  }
  void m11(double m11) {
    DOMMatrix_m11_Set(this._parent, m11);
  }
  auto m11() {
    return DOMMatrix_m11_Get(this._parent);
  }
  void m12(double m12) {
    DOMMatrix_m12_Set(this._parent, m12);
  }
  auto m12() {
    return DOMMatrix_m12_Get(this._parent);
  }
  void m13(double m13) {
    DOMMatrix_m13_Set(this._parent, m13);
  }
  auto m13() {
    return DOMMatrix_m13_Get(this._parent);
  }
  void m14(double m14) {
    DOMMatrix_m14_Set(this._parent, m14);
  }
  auto m14() {
    return DOMMatrix_m14_Get(this._parent);
  }
  void m21(double m21) {
    DOMMatrix_m21_Set(this._parent, m21);
  }
  auto m21() {
    return DOMMatrix_m21_Get(this._parent);
  }
  void m22(double m22) {
    DOMMatrix_m22_Set(this._parent, m22);
  }
  auto m22() {
    return DOMMatrix_m22_Get(this._parent);
  }
  void m23(double m23) {
    DOMMatrix_m23_Set(this._parent, m23);
  }
  auto m23() {
    return DOMMatrix_m23_Get(this._parent);
  }
  void m24(double m24) {
    DOMMatrix_m24_Set(this._parent, m24);
  }
  auto m24() {
    return DOMMatrix_m24_Get(this._parent);
  }
  void m31(double m31) {
    DOMMatrix_m31_Set(this._parent, m31);
  }
  auto m31() {
    return DOMMatrix_m31_Get(this._parent);
  }
  void m32(double m32) {
    DOMMatrix_m32_Set(this._parent, m32);
  }
  auto m32() {
    return DOMMatrix_m32_Get(this._parent);
  }
  void m33(double m33) {
    DOMMatrix_m33_Set(this._parent, m33);
  }
  auto m33() {
    return DOMMatrix_m33_Get(this._parent);
  }
  void m34(double m34) {
    DOMMatrix_m34_Set(this._parent, m34);
  }
  auto m34() {
    return DOMMatrix_m34_Get(this._parent);
  }
  void m41(double m41) {
    DOMMatrix_m41_Set(this._parent, m41);
  }
  auto m41() {
    return DOMMatrix_m41_Get(this._parent);
  }
  void m42(double m42) {
    DOMMatrix_m42_Set(this._parent, m42);
  }
  auto m42() {
    return DOMMatrix_m42_Get(this._parent);
  }
  void m43(double m43) {
    DOMMatrix_m43_Set(this._parent, m43);
  }
  auto m43() {
    return DOMMatrix_m43_Get(this._parent);
  }
  void m44(double m44) {
    DOMMatrix_m44_Set(this._parent, m44);
  }
  auto m44() {
    return DOMMatrix_m44_Get(this._parent);
  }
  auto multiplySelf(DOMMatrixInit other) {
    return DOMMatrix(JsHandle(DOMMatrix_multiplySelf(this._parent, other._parent)));
  }
  auto multiplySelf() {
    return DOMMatrix(JsHandle(DOMMatrix_multiplySelf_0(this._parent)));
  }
  auto preMultiplySelf(DOMMatrixInit other) {
    return DOMMatrix(JsHandle(DOMMatrix_preMultiplySelf(this._parent, other._parent)));
  }
  auto preMultiplySelf() {
    return DOMMatrix(JsHandle(DOMMatrix_preMultiplySelf_0(this._parent)));
  }
  auto translateSelf(double tx /* = 0 */, double ty /* = 0 */, double tz /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrix_translateSelf(this._parent, tx, ty, tz)));
  }
  auto translateSelf(double tx /* = 0 */, double ty /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrix_translateSelf_0(this._parent, tx, ty)));
  }
  auto translateSelf(double tx /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrix_translateSelf_1(this._parent, tx)));
  }
  auto translateSelf() {
    return DOMMatrix(JsHandle(DOMMatrix_translateSelf_2(this._parent)));
  }
  auto scaleSelf(double scaleX /* = 1 */, double scaleY, double scaleZ /* = 1 */, double originX /* = 0 */, double originY /* = 0 */, double originZ /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrix_scaleSelf(this._parent, scaleX, scaleY, scaleZ, originX, originY, originZ)));
  }
  auto scaleSelf(double scaleX /* = 1 */, double scaleY, double scaleZ /* = 1 */, double originX /* = 0 */, double originY /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrix_scaleSelf_0(this._parent, scaleX, scaleY, scaleZ, originX, originY)));
  }
  auto scaleSelf(double scaleX /* = 1 */, double scaleY, double scaleZ /* = 1 */, double originX /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrix_scaleSelf_1(this._parent, scaleX, scaleY, scaleZ, originX)));
  }
  auto scaleSelf(double scaleX /* = 1 */, double scaleY, double scaleZ /* = 1 */) {
    return DOMMatrix(JsHandle(DOMMatrix_scaleSelf_2(this._parent, scaleX, scaleY, scaleZ)));
  }
  auto scaleSelf(double scaleX /* = 1 */, double scaleY) {
    return DOMMatrix(JsHandle(DOMMatrix_scaleSelf_3(this._parent, scaleX, scaleY)));
  }
  auto scaleSelf(double scaleX /* = 1 */) {
    return DOMMatrix(JsHandle(DOMMatrix_scaleSelf_4(this._parent, scaleX)));
  }
  auto scaleSelf() {
    return DOMMatrix(JsHandle(DOMMatrix_scaleSelf_5(this._parent)));
  }
  auto scale3dSelf(double scale /* = 1 */, double originX /* = 0 */, double originY /* = 0 */, double originZ /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrix_scale3dSelf(this._parent, scale, originX, originY, originZ)));
  }
  auto scale3dSelf(double scale /* = 1 */, double originX /* = 0 */, double originY /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrix_scale3dSelf_0(this._parent, scale, originX, originY)));
  }
  auto scale3dSelf(double scale /* = 1 */, double originX /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrix_scale3dSelf_1(this._parent, scale, originX)));
  }
  auto scale3dSelf(double scale /* = 1 */) {
    return DOMMatrix(JsHandle(DOMMatrix_scale3dSelf_2(this._parent, scale)));
  }
  auto scale3dSelf() {
    return DOMMatrix(JsHandle(DOMMatrix_scale3dSelf_3(this._parent)));
  }
  auto rotateSelf(double rotX /* = 0 */, double rotY, double rotZ) {
    return DOMMatrix(JsHandle(DOMMatrix_rotateSelf(this._parent, rotX, rotY, rotZ)));
  }
  auto rotateSelf(double rotX /* = 0 */, double rotY) {
    return DOMMatrix(JsHandle(DOMMatrix_rotateSelf_0(this._parent, rotX, rotY)));
  }
  auto rotateSelf(double rotX /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrix_rotateSelf_1(this._parent, rotX)));
  }
  auto rotateSelf() {
    return DOMMatrix(JsHandle(DOMMatrix_rotateSelf_2(this._parent)));
  }
  auto rotateFromVectorSelf(double x /* = 0 */, double y /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrix_rotateFromVectorSelf(this._parent, x, y)));
  }
  auto rotateFromVectorSelf(double x /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrix_rotateFromVectorSelf_0(this._parent, x)));
  }
  auto rotateFromVectorSelf() {
    return DOMMatrix(JsHandle(DOMMatrix_rotateFromVectorSelf_1(this._parent)));
  }
  auto rotateAxisAngleSelf(double x /* = 0 */, double y /* = 0 */, double z /* = 0 */, double angle /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrix_rotateAxisAngleSelf(this._parent, x, y, z, angle)));
  }
  auto rotateAxisAngleSelf(double x /* = 0 */, double y /* = 0 */, double z /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrix_rotateAxisAngleSelf_0(this._parent, x, y, z)));
  }
  auto rotateAxisAngleSelf(double x /* = 0 */, double y /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrix_rotateAxisAngleSelf_1(this._parent, x, y)));
  }
  auto rotateAxisAngleSelf(double x /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrix_rotateAxisAngleSelf_2(this._parent, x)));
  }
  auto rotateAxisAngleSelf() {
    return DOMMatrix(JsHandle(DOMMatrix_rotateAxisAngleSelf_3(this._parent)));
  }
  auto skewXSelf(double sx /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrix_skewXSelf(this._parent, sx)));
  }
  auto skewXSelf() {
    return DOMMatrix(JsHandle(DOMMatrix_skewXSelf_0(this._parent)));
  }
  auto skewYSelf(double sy /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrix_skewYSelf(this._parent, sy)));
  }
  auto skewYSelf() {
    return DOMMatrix(JsHandle(DOMMatrix_skewYSelf_0(this._parent)));
  }
  auto invertSelf() {
    return DOMMatrix(JsHandle(DOMMatrix_invertSelf(this._parent)));
  }
  auto setMatrixValue(string transformList) {
    return DOMMatrix(JsHandle(DOMMatrix_setMatrixValue(this._parent, transformList)));
  }
}
struct DOMMatrix2DInit {
  nothrow:
  JsHandle handle;
  alias handle this;
  static auto create() {
    return DOMMatrix2DInit(JsHandle(spasm_add__object()));
  }
  void a(double a) {
    DOMMatrix2DInit_a_Set(this.handle, a);
  }
  auto a() {
    return DOMMatrix2DInit_a_Get(this.handle);
  }
  void b(double b) {
    DOMMatrix2DInit_b_Set(this.handle, b);
  }
  auto b() {
    return DOMMatrix2DInit_b_Get(this.handle);
  }
  void c(double c) {
    DOMMatrix2DInit_c_Set(this.handle, c);
  }
  auto c() {
    return DOMMatrix2DInit_c_Get(this.handle);
  }
  void d(double d) {
    DOMMatrix2DInit_d_Set(this.handle, d);
  }
  auto d() {
    return DOMMatrix2DInit_d_Get(this.handle);
  }
  void e(double e) {
    DOMMatrix2DInit_e_Set(this.handle, e);
  }
  auto e() {
    return DOMMatrix2DInit_e_Get(this.handle);
  }
  void f(double f) {
    DOMMatrix2DInit_f_Set(this.handle, f);
  }
  auto f() {
    return DOMMatrix2DInit_f_Get(this.handle);
  }
  void m11(double m11) {
    DOMMatrix2DInit_m11_Set(this.handle, m11);
  }
  auto m11() {
    return DOMMatrix2DInit_m11_Get(this.handle);
  }
  void m12(double m12) {
    DOMMatrix2DInit_m12_Set(this.handle, m12);
  }
  auto m12() {
    return DOMMatrix2DInit_m12_Get(this.handle);
  }
  void m21(double m21) {
    DOMMatrix2DInit_m21_Set(this.handle, m21);
  }
  auto m21() {
    return DOMMatrix2DInit_m21_Get(this.handle);
  }
  void m22(double m22) {
    DOMMatrix2DInit_m22_Set(this.handle, m22);
  }
  auto m22() {
    return DOMMatrix2DInit_m22_Get(this.handle);
  }
  void m41(double m41) {
    DOMMatrix2DInit_m41_Set(this.handle, m41);
  }
  auto m41() {
    return DOMMatrix2DInit_m41_Get(this.handle);
  }
  void m42(double m42) {
    DOMMatrix2DInit_m42_Set(this.handle, m42);
  }
  auto m42() {
    return DOMMatrix2DInit_m42_Get(this.handle);
  }
}
struct DOMMatrixInit {
  nothrow:
  spasm.bindings.geometry.DOMMatrix2DInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .DOMMatrix2DInit(h);
  }
  static auto create() {
    return DOMMatrixInit(JsHandle(spasm_add__object()));
  }
  void m13(double m13) {
    DOMMatrixInit_m13_Set(this._parent, m13);
  }
  auto m13() {
    return DOMMatrixInit_m13_Get(this._parent);
  }
  void m14(double m14) {
    DOMMatrixInit_m14_Set(this._parent, m14);
  }
  auto m14() {
    return DOMMatrixInit_m14_Get(this._parent);
  }
  void m23(double m23) {
    DOMMatrixInit_m23_Set(this._parent, m23);
  }
  auto m23() {
    return DOMMatrixInit_m23_Get(this._parent);
  }
  void m24(double m24) {
    DOMMatrixInit_m24_Set(this._parent, m24);
  }
  auto m24() {
    return DOMMatrixInit_m24_Get(this._parent);
  }
  void m31(double m31) {
    DOMMatrixInit_m31_Set(this._parent, m31);
  }
  auto m31() {
    return DOMMatrixInit_m31_Get(this._parent);
  }
  void m32(double m32) {
    DOMMatrixInit_m32_Set(this._parent, m32);
  }
  auto m32() {
    return DOMMatrixInit_m32_Get(this._parent);
  }
  void m33(double m33) {
    DOMMatrixInit_m33_Set(this._parent, m33);
  }
  auto m33() {
    return DOMMatrixInit_m33_Get(this._parent);
  }
  void m34(double m34) {
    DOMMatrixInit_m34_Set(this._parent, m34);
  }
  auto m34() {
    return DOMMatrixInit_m34_Get(this._parent);
  }
  void m43(double m43) {
    DOMMatrixInit_m43_Set(this._parent, m43);
  }
  auto m43() {
    return DOMMatrixInit_m43_Get(this._parent);
  }
  void m44(double m44) {
    DOMMatrixInit_m44_Set(this._parent, m44);
  }
  auto m44() {
    return DOMMatrixInit_m44_Get(this._parent);
  }
  void is2D(bool is2D) {
    DOMMatrixInit_is2D_Set(this._parent, is2D);
  }
  auto is2D() {
    return DOMMatrixInit_is2D_Get(this._parent);
  }
}
struct DOMMatrixReadOnly {
  nothrow:
  JsHandle handle;
  alias handle this;
  auto fromMatrix(DOMMatrixInit other) {
    return DOMMatrixReadOnly(JsHandle(DOMMatrixReadOnly_fromMatrix(this.handle, other._parent)));
  }
  auto fromMatrix() {
    return DOMMatrixReadOnly(JsHandle(DOMMatrixReadOnly_fromMatrix_0(this.handle)));
  }
  auto fromFloat32Array(Float32Array array32) {
    return DOMMatrixReadOnly(JsHandle(DOMMatrixReadOnly_fromFloat32Array(this.handle, array32.handle)));
  }
  auto fromFloat64Array(Float64Array array64) {
    return DOMMatrixReadOnly(JsHandle(DOMMatrixReadOnly_fromFloat64Array(this.handle, array64.handle)));
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
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_translate(this.handle, tx, ty, tz)));
  }
  auto translate(double tx /* = 0 */, double ty /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_translate_0(this.handle, tx, ty)));
  }
  auto translate(double tx /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_translate_1(this.handle, tx)));
  }
  auto translate() {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_translate_2(this.handle)));
  }
  auto scale(double scaleX /* = 1 */, double scaleY, double scaleZ /* = 1 */, double originX /* = 0 */, double originY /* = 0 */, double originZ /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_scale(this.handle, scaleX, scaleY, scaleZ, originX, originY, originZ)));
  }
  auto scale(double scaleX /* = 1 */, double scaleY, double scaleZ /* = 1 */, double originX /* = 0 */, double originY /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_scale_0(this.handle, scaleX, scaleY, scaleZ, originX, originY)));
  }
  auto scale(double scaleX /* = 1 */, double scaleY, double scaleZ /* = 1 */, double originX /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_scale_1(this.handle, scaleX, scaleY, scaleZ, originX)));
  }
  auto scale(double scaleX /* = 1 */, double scaleY, double scaleZ /* = 1 */) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_scale_2(this.handle, scaleX, scaleY, scaleZ)));
  }
  auto scale(double scaleX /* = 1 */, double scaleY) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_scale_3(this.handle, scaleX, scaleY)));
  }
  auto scale(double scaleX /* = 1 */) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_scale_4(this.handle, scaleX)));
  }
  auto scale() {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_scale_5(this.handle)));
  }
  auto scaleNonUniform(double scaleX /* = 1 */, double scaleY /* = 1 */) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_scaleNonUniform(this.handle, scaleX, scaleY)));
  }
  auto scaleNonUniform(double scaleX /* = 1 */) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_scaleNonUniform_0(this.handle, scaleX)));
  }
  auto scaleNonUniform() {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_scaleNonUniform_1(this.handle)));
  }
  auto scale3d(double scale /* = 1 */, double originX /* = 0 */, double originY /* = 0 */, double originZ /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_scale3d(this.handle, scale, originX, originY, originZ)));
  }
  auto scale3d(double scale /* = 1 */, double originX /* = 0 */, double originY /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_scale3d_0(this.handle, scale, originX, originY)));
  }
  auto scale3d(double scale /* = 1 */, double originX /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_scale3d_1(this.handle, scale, originX)));
  }
  auto scale3d(double scale /* = 1 */) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_scale3d_2(this.handle, scale)));
  }
  auto scale3d() {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_scale3d_3(this.handle)));
  }
  auto rotate(double rotX /* = 0 */, double rotY, double rotZ) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_rotate(this.handle, rotX, rotY, rotZ)));
  }
  auto rotate(double rotX /* = 0 */, double rotY) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_rotate_0(this.handle, rotX, rotY)));
  }
  auto rotate(double rotX /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_rotate_1(this.handle, rotX)));
  }
  auto rotate() {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_rotate_2(this.handle)));
  }
  auto rotateFromVector(double x /* = 0 */, double y /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_rotateFromVector(this.handle, x, y)));
  }
  auto rotateFromVector(double x /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_rotateFromVector_0(this.handle, x)));
  }
  auto rotateFromVector() {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_rotateFromVector_1(this.handle)));
  }
  auto rotateAxisAngle(double x /* = 0 */, double y /* = 0 */, double z /* = 0 */, double angle /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_rotateAxisAngle(this.handle, x, y, z, angle)));
  }
  auto rotateAxisAngle(double x /* = 0 */, double y /* = 0 */, double z /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_rotateAxisAngle_0(this.handle, x, y, z)));
  }
  auto rotateAxisAngle(double x /* = 0 */, double y /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_rotateAxisAngle_1(this.handle, x, y)));
  }
  auto rotateAxisAngle(double x /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_rotateAxisAngle_2(this.handle, x)));
  }
  auto rotateAxisAngle() {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_rotateAxisAngle_3(this.handle)));
  }
  auto skewX(double sx /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_skewX(this.handle, sx)));
  }
  auto skewX() {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_skewX_0(this.handle)));
  }
  auto skewY(double sy /* = 0 */) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_skewY(this.handle, sy)));
  }
  auto skewY() {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_skewY_0(this.handle)));
  }
  auto multiply(DOMMatrixInit other) {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_multiply(this.handle, other._parent)));
  }
  auto multiply() {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_multiply_0(this.handle)));
  }
  auto flipX() {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_flipX(this.handle)));
  }
  auto flipY() {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_flipY(this.handle)));
  }
  auto inverse() {
    return DOMMatrix(JsHandle(DOMMatrixReadOnly_inverse(this.handle)));
  }
  auto transformPoint(DOMPointInit point) {
    return DOMPoint(JsHandle(DOMMatrixReadOnly_transformPoint(this.handle, point.handle)));
  }
  auto transformPoint() {
    return DOMPoint(JsHandle(DOMMatrixReadOnly_transformPoint_0(this.handle)));
  }
  auto toFloat32Array() {
    return Float32Array(JsHandle(DOMMatrixReadOnly_toFloat32Array(this.handle)));
  }
  auto toFloat64Array() {
    return Float64Array(JsHandle(DOMMatrixReadOnly_toFloat64Array(this.handle)));
  }
  auto toJSON() {
    return JsObject(JsHandle(DOMMatrixReadOnly_toJSON(this.handle)));
  }
}
struct DOMPoint {
  nothrow:
  spasm.bindings.geometry.DOMPointReadOnly _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .DOMPointReadOnly(h);
  }
  auto fromPoint(DOMPointInit other) {
    return DOMPoint(JsHandle(DOMPoint_fromPoint(this._parent, other.handle)));
  }
  auto fromPoint() {
    return DOMPoint(JsHandle(DOMPoint_fromPoint_0(this._parent)));
  }
  void x(double x) {
    DOMPoint_x_Set(this._parent, x);
  }
  auto x() {
    return DOMPoint_x_Get(this._parent);
  }
  void y(double y) {
    DOMPoint_y_Set(this._parent, y);
  }
  auto y() {
    return DOMPoint_y_Get(this._parent);
  }
  void z(double z) {
    DOMPoint_z_Set(this._parent, z);
  }
  auto z() {
    return DOMPoint_z_Get(this._parent);
  }
  void w(double w) {
    DOMPoint_w_Set(this._parent, w);
  }
  auto w() {
    return DOMPoint_w_Get(this._parent);
  }
}
struct DOMPointInit {
  nothrow:
  JsHandle handle;
  alias handle this;
  static auto create() {
    return DOMPointInit(JsHandle(spasm_add__object()));
  }
  void x(double x) {
    DOMPointInit_x_Set(this.handle, x);
  }
  auto x() {
    return DOMPointInit_x_Get(this.handle);
  }
  void y(double y) {
    DOMPointInit_y_Set(this.handle, y);
  }
  auto y() {
    return DOMPointInit_y_Get(this.handle);
  }
  void z(double z) {
    DOMPointInit_z_Set(this.handle, z);
  }
  auto z() {
    return DOMPointInit_z_Get(this.handle);
  }
  void w(double w) {
    DOMPointInit_w_Set(this.handle, w);
  }
  auto w() {
    return DOMPointInit_w_Get(this.handle);
  }
}
struct DOMPointReadOnly {
  nothrow:
  JsHandle handle;
  alias handle this;
  auto fromPoint(DOMPointInit other) {
    return DOMPointReadOnly(JsHandle(DOMPointReadOnly_fromPoint(this.handle, other.handle)));
  }
  auto fromPoint() {
    return DOMPointReadOnly(JsHandle(DOMPointReadOnly_fromPoint_0(this.handle)));
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
    return DOMPoint(JsHandle(DOMPointReadOnly_matrixTransform(this.handle, matrix._parent)));
  }
  auto matrixTransform() {
    return DOMPoint(JsHandle(DOMPointReadOnly_matrixTransform_0(this.handle)));
  }
  auto toJSON() {
    return JsObject(JsHandle(DOMPointReadOnly_toJSON(this.handle)));
  }
}
struct DOMQuad {
  nothrow:
  JsHandle handle;
  alias handle this;
  auto fromRect(DOMRectInit other) {
    return DOMQuad(JsHandle(DOMQuad_fromRect(this.handle, other.handle)));
  }
  auto fromRect() {
    return DOMQuad(JsHandle(DOMQuad_fromRect_0(this.handle)));
  }
  auto fromQuad(DOMQuadInit other) {
    return DOMQuad(JsHandle(DOMQuad_fromQuad(this.handle, other.handle)));
  }
  auto fromQuad() {
    return DOMQuad(JsHandle(DOMQuad_fromQuad_0(this.handle)));
  }
  auto p1() {
    return DOMPoint(JsHandle(DOMQuad_p1_Get(this.handle)));
  }
  auto p2() {
    return DOMPoint(JsHandle(DOMQuad_p2_Get(this.handle)));
  }
  auto p3() {
    return DOMPoint(JsHandle(DOMQuad_p3_Get(this.handle)));
  }
  auto p4() {
    return DOMPoint(JsHandle(DOMQuad_p4_Get(this.handle)));
  }
  auto getBounds() {
    return DOMRect(JsHandle(DOMQuad_getBounds(this.handle)));
  }
  auto toJSON() {
    return JsObject(JsHandle(DOMQuad_toJSON(this.handle)));
  }
}
struct DOMQuadInit {
  nothrow:
  JsHandle handle;
  alias handle this;
  static auto create() {
    return DOMQuadInit(JsHandle(spasm_add__object()));
  }
  void p1(DOMPointInit p1) {
    DOMQuadInit_p1_Set(this.handle, p1.handle);
  }
  auto p1() {
    return DOMPointInit(JsHandle(DOMQuadInit_p1_Get(this.handle)));
  }
  void p2(DOMPointInit p2) {
    DOMQuadInit_p2_Set(this.handle, p2.handle);
  }
  auto p2() {
    return DOMPointInit(JsHandle(DOMQuadInit_p2_Get(this.handle)));
  }
  void p3(DOMPointInit p3) {
    DOMQuadInit_p3_Set(this.handle, p3.handle);
  }
  auto p3() {
    return DOMPointInit(JsHandle(DOMQuadInit_p3_Get(this.handle)));
  }
  void p4(DOMPointInit p4) {
    DOMQuadInit_p4_Set(this.handle, p4.handle);
  }
  auto p4() {
    return DOMPointInit(JsHandle(DOMQuadInit_p4_Get(this.handle)));
  }
}
struct DOMRect {
  nothrow:
  spasm.bindings.geometry.DOMRectReadOnly _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .DOMRectReadOnly(h);
  }
  auto fromRect(DOMRectInit other) {
    return DOMRect(JsHandle(DOMRect_fromRect(this._parent, other.handle)));
  }
  auto fromRect() {
    return DOMRect(JsHandle(DOMRect_fromRect_0(this._parent)));
  }
  void x(double x) {
    DOMRect_x_Set(this._parent, x);
  }
  auto x() {
    return DOMRect_x_Get(this._parent);
  }
  void y(double y) {
    DOMRect_y_Set(this._parent, y);
  }
  auto y() {
    return DOMRect_y_Get(this._parent);
  }
  void width(double width) {
    DOMRect_width_Set(this._parent, width);
  }
  auto width() {
    return DOMRect_width_Get(this._parent);
  }
  void height(double height) {
    DOMRect_height_Set(this._parent, height);
  }
  auto height() {
    return DOMRect_height_Get(this._parent);
  }
}
struct DOMRectInit {
  nothrow:
  JsHandle handle;
  alias handle this;
  static auto create() {
    return DOMRectInit(JsHandle(spasm_add__object()));
  }
  void x(double x) {
    DOMRectInit_x_Set(this.handle, x);
  }
  auto x() {
    return DOMRectInit_x_Get(this.handle);
  }
  void y(double y) {
    DOMRectInit_y_Set(this.handle, y);
  }
  auto y() {
    return DOMRectInit_y_Get(this.handle);
  }
  void width(double width) {
    DOMRectInit_width_Set(this.handle, width);
  }
  auto width() {
    return DOMRectInit_width_Get(this.handle);
  }
  void height(double height) {
    DOMRectInit_height_Set(this.handle, height);
  }
  auto height() {
    return DOMRectInit_height_Get(this.handle);
  }
}
struct DOMRectList {
  nothrow:
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
  nothrow:
  JsHandle handle;
  alias handle this;
  auto fromRect(DOMRectInit other) {
    return DOMRectReadOnly(JsHandle(DOMRectReadOnly_fromRect(this.handle, other.handle)));
  }
  auto fromRect() {
    return DOMRectReadOnly(JsHandle(DOMRectReadOnly_fromRect_0(this.handle)));
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
    return JsObject(JsHandle(DOMRectReadOnly_toJSON(this.handle)));
  }
}


extern (C) Handle DOMMatrix_fromMatrix(Handle, Handle);
extern (C) Handle DOMMatrix_fromMatrix_0(Handle);
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
extern (C) Handle DOMMatrix_multiplySelf_0(Handle);
extern (C) Handle DOMMatrix_preMultiplySelf(Handle, Handle);
extern (C) Handle DOMMatrix_preMultiplySelf_0(Handle);
extern (C) Handle DOMMatrix_translateSelf(Handle, double, double, double);
extern (C) Handle DOMMatrix_translateSelf_0(Handle, double, double);
extern (C) Handle DOMMatrix_translateSelf_1(Handle, double);
extern (C) Handle DOMMatrix_translateSelf_2(Handle);
extern (C) Handle DOMMatrix_scaleSelf(Handle, double, double, double, double, double, double);
extern (C) Handle DOMMatrix_scaleSelf_0(Handle, double, double, double, double, double);
extern (C) Handle DOMMatrix_scaleSelf_1(Handle, double, double, double, double);
extern (C) Handle DOMMatrix_scaleSelf_2(Handle, double, double, double);
extern (C) Handle DOMMatrix_scaleSelf_3(Handle, double, double);
extern (C) Handle DOMMatrix_scaleSelf_4(Handle, double);
extern (C) Handle DOMMatrix_scaleSelf_5(Handle);
extern (C) Handle DOMMatrix_scale3dSelf(Handle, double, double, double, double);
extern (C) Handle DOMMatrix_scale3dSelf_0(Handle, double, double, double);
extern (C) Handle DOMMatrix_scale3dSelf_1(Handle, double, double);
extern (C) Handle DOMMatrix_scale3dSelf_2(Handle, double);
extern (C) Handle DOMMatrix_scale3dSelf_3(Handle);
extern (C) Handle DOMMatrix_rotateSelf(Handle, double, double, double);
extern (C) Handle DOMMatrix_rotateSelf_0(Handle, double, double);
extern (C) Handle DOMMatrix_rotateSelf_1(Handle, double);
extern (C) Handle DOMMatrix_rotateSelf_2(Handle);
extern (C) Handle DOMMatrix_rotateFromVectorSelf(Handle, double, double);
extern (C) Handle DOMMatrix_rotateFromVectorSelf_0(Handle, double);
extern (C) Handle DOMMatrix_rotateFromVectorSelf_1(Handle);
extern (C) Handle DOMMatrix_rotateAxisAngleSelf(Handle, double, double, double, double);
extern (C) Handle DOMMatrix_rotateAxisAngleSelf_0(Handle, double, double, double);
extern (C) Handle DOMMatrix_rotateAxisAngleSelf_1(Handle, double, double);
extern (C) Handle DOMMatrix_rotateAxisAngleSelf_2(Handle, double);
extern (C) Handle DOMMatrix_rotateAxisAngleSelf_3(Handle);
extern (C) Handle DOMMatrix_skewXSelf(Handle, double);
extern (C) Handle DOMMatrix_skewXSelf_0(Handle);
extern (C) Handle DOMMatrix_skewYSelf(Handle, double);
extern (C) Handle DOMMatrix_skewYSelf_0(Handle);
extern (C) Handle DOMMatrix_invertSelf(Handle);
extern (C) Handle DOMMatrix_setMatrixValue(Handle, string);
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
extern (C) Handle DOMMatrixReadOnly_fromMatrix_0(Handle);
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
extern (C) Handle DOMMatrixReadOnly_translate_0(Handle, double, double);
extern (C) Handle DOMMatrixReadOnly_translate_1(Handle, double);
extern (C) Handle DOMMatrixReadOnly_translate_2(Handle);
extern (C) Handle DOMMatrixReadOnly_scale(Handle, double, double, double, double, double, double);
extern (C) Handle DOMMatrixReadOnly_scale_0(Handle, double, double, double, double, double);
extern (C) Handle DOMMatrixReadOnly_scale_1(Handle, double, double, double, double);
extern (C) Handle DOMMatrixReadOnly_scale_2(Handle, double, double, double);
extern (C) Handle DOMMatrixReadOnly_scale_3(Handle, double, double);
extern (C) Handle DOMMatrixReadOnly_scale_4(Handle, double);
extern (C) Handle DOMMatrixReadOnly_scale_5(Handle);
extern (C) Handle DOMMatrixReadOnly_scaleNonUniform(Handle, double, double);
extern (C) Handle DOMMatrixReadOnly_scaleNonUniform_0(Handle, double);
extern (C) Handle DOMMatrixReadOnly_scaleNonUniform_1(Handle);
extern (C) Handle DOMMatrixReadOnly_scale3d(Handle, double, double, double, double);
extern (C) Handle DOMMatrixReadOnly_scale3d_0(Handle, double, double, double);
extern (C) Handle DOMMatrixReadOnly_scale3d_1(Handle, double, double);
extern (C) Handle DOMMatrixReadOnly_scale3d_2(Handle, double);
extern (C) Handle DOMMatrixReadOnly_scale3d_3(Handle);
extern (C) Handle DOMMatrixReadOnly_rotate(Handle, double, double, double);
extern (C) Handle DOMMatrixReadOnly_rotate_0(Handle, double, double);
extern (C) Handle DOMMatrixReadOnly_rotate_1(Handle, double);
extern (C) Handle DOMMatrixReadOnly_rotate_2(Handle);
extern (C) Handle DOMMatrixReadOnly_rotateFromVector(Handle, double, double);
extern (C) Handle DOMMatrixReadOnly_rotateFromVector_0(Handle, double);
extern (C) Handle DOMMatrixReadOnly_rotateFromVector_1(Handle);
extern (C) Handle DOMMatrixReadOnly_rotateAxisAngle(Handle, double, double, double, double);
extern (C) Handle DOMMatrixReadOnly_rotateAxisAngle_0(Handle, double, double, double);
extern (C) Handle DOMMatrixReadOnly_rotateAxisAngle_1(Handle, double, double);
extern (C) Handle DOMMatrixReadOnly_rotateAxisAngle_2(Handle, double);
extern (C) Handle DOMMatrixReadOnly_rotateAxisAngle_3(Handle);
extern (C) Handle DOMMatrixReadOnly_skewX(Handle, double);
extern (C) Handle DOMMatrixReadOnly_skewX_0(Handle);
extern (C) Handle DOMMatrixReadOnly_skewY(Handle, double);
extern (C) Handle DOMMatrixReadOnly_skewY_0(Handle);
extern (C) Handle DOMMatrixReadOnly_multiply(Handle, Handle);
extern (C) Handle DOMMatrixReadOnly_multiply_0(Handle);
extern (C) Handle DOMMatrixReadOnly_flipX(Handle);
extern (C) Handle DOMMatrixReadOnly_flipY(Handle);
extern (C) Handle DOMMatrixReadOnly_inverse(Handle);
extern (C) Handle DOMMatrixReadOnly_transformPoint(Handle, Handle);
extern (C) Handle DOMMatrixReadOnly_transformPoint_0(Handle);
extern (C) Handle DOMMatrixReadOnly_toFloat32Array(Handle);
extern (C) Handle DOMMatrixReadOnly_toFloat64Array(Handle);
extern (C) Handle DOMMatrixReadOnly_toJSON(Handle);
extern (C) Handle DOMPoint_fromPoint(Handle, Handle);
extern (C) Handle DOMPoint_fromPoint_0(Handle);
extern (C) void DOMPoint_x_Set(Handle, double);
extern (C) double DOMPoint_x_Get(Handle);
extern (C) void DOMPoint_y_Set(Handle, double);
extern (C) double DOMPoint_y_Get(Handle);
extern (C) void DOMPoint_z_Set(Handle, double);
extern (C) double DOMPoint_z_Get(Handle);
extern (C) void DOMPoint_w_Set(Handle, double);
extern (C) double DOMPoint_w_Get(Handle);
extern (C) void DOMPointInit_x_Set(Handle, double);
extern (C) double DOMPointInit_x_Get(Handle);
extern (C) void DOMPointInit_y_Set(Handle, double);
extern (C) double DOMPointInit_y_Get(Handle);
extern (C) void DOMPointInit_z_Set(Handle, double);
extern (C) double DOMPointInit_z_Get(Handle);
extern (C) void DOMPointInit_w_Set(Handle, double);
extern (C) double DOMPointInit_w_Get(Handle);
extern (C) Handle DOMPointReadOnly_fromPoint(Handle, Handle);
extern (C) Handle DOMPointReadOnly_fromPoint_0(Handle);
extern (C) double DOMPointReadOnly_x_Get(Handle);
extern (C) double DOMPointReadOnly_y_Get(Handle);
extern (C) double DOMPointReadOnly_z_Get(Handle);
extern (C) double DOMPointReadOnly_w_Get(Handle);
extern (C) Handle DOMPointReadOnly_matrixTransform(Handle, Handle);
extern (C) Handle DOMPointReadOnly_matrixTransform_0(Handle);
extern (C) Handle DOMPointReadOnly_toJSON(Handle);
extern (C) Handle DOMQuad_fromRect(Handle, Handle);
extern (C) Handle DOMQuad_fromRect_0(Handle);
extern (C) Handle DOMQuad_fromQuad(Handle, Handle);
extern (C) Handle DOMQuad_fromQuad_0(Handle);
extern (C) Handle DOMQuad_p1_Get(Handle);
extern (C) Handle DOMQuad_p2_Get(Handle);
extern (C) Handle DOMQuad_p3_Get(Handle);
extern (C) Handle DOMQuad_p4_Get(Handle);
extern (C) Handle DOMQuad_getBounds(Handle);
extern (C) Handle DOMQuad_toJSON(Handle);
extern (C) void DOMQuadInit_p1_Set(Handle, Handle);
extern (C) Handle DOMQuadInit_p1_Get(Handle);
extern (C) void DOMQuadInit_p2_Set(Handle, Handle);
extern (C) Handle DOMQuadInit_p2_Get(Handle);
extern (C) void DOMQuadInit_p3_Set(Handle, Handle);
extern (C) Handle DOMQuadInit_p3_Get(Handle);
extern (C) void DOMQuadInit_p4_Set(Handle, Handle);
extern (C) Handle DOMQuadInit_p4_Get(Handle);
extern (C) Handle DOMRect_fromRect(Handle, Handle);
extern (C) Handle DOMRect_fromRect_0(Handle);
extern (C) void DOMRect_x_Set(Handle, double);
extern (C) double DOMRect_x_Get(Handle);
extern (C) void DOMRect_y_Set(Handle, double);
extern (C) double DOMRect_y_Get(Handle);
extern (C) void DOMRect_width_Set(Handle, double);
extern (C) double DOMRect_width_Get(Handle);
extern (C) void DOMRect_height_Set(Handle, double);
extern (C) double DOMRect_height_Get(Handle);
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
extern (C) Handle DOMRectReadOnly_fromRect_0(Handle);
extern (C) double DOMRectReadOnly_x_Get(Handle);
extern (C) double DOMRectReadOnly_y_Get(Handle);
extern (C) double DOMRectReadOnly_width_Get(Handle);
extern (C) double DOMRectReadOnly_height_Get(Handle);
extern (C) double DOMRectReadOnly_top_Get(Handle);
extern (C) double DOMRectReadOnly_right_Get(Handle);
extern (C) double DOMRectReadOnly_bottom_Get(Handle);
extern (C) double DOMRectReadOnly_left_Get(Handle);
extern (C) Handle DOMRectReadOnly_toJSON(Handle);