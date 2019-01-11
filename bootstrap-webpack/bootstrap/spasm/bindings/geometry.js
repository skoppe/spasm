import spasm from '../modules/spasm.js';
export default {
  jsExports: {
    DOMMatrix_fromMatrix: function(ctx, other) {
      return spasm.addObject(spasm.objects[ctx].fromMatrix(spasm.objects[other]));
    },
    DOMMatrix_fromFloat32Array: function(ctx, array32) {
      return spasm.addObject(spasm.objects[ctx].fromFloat32Array(spasm.objects[array32]));
    },
    DOMMatrix_fromFloat64Array: function(ctx, array64) {
      return spasm.addObject(spasm.objects[ctx].fromFloat64Array(spasm.objects[array64]));
    },
    DOMMatrix_a_Set: function(ctx, a) {
      spasm.objects[ctx].a = a;
    },
    DOMMatrix_a_Get: function(ctx) {
      return spasm.objects[ctx].a;
    },
    DOMMatrix_b_Set: function(ctx, b) {
      spasm.objects[ctx].b = b;
    },
    DOMMatrix_b_Get: function(ctx) {
      return spasm.objects[ctx].b;
    },
    DOMMatrix_c_Set: function(ctx, c) {
      spasm.objects[ctx].c = c;
    },
    DOMMatrix_c_Get: function(ctx) {
      return spasm.objects[ctx].c;
    },
    DOMMatrix_d_Set: function(ctx, d) {
      spasm.objects[ctx].d = d;
    },
    DOMMatrix_d_Get: function(ctx) {
      return spasm.objects[ctx].d;
    },
    DOMMatrix_e_Set: function(ctx, e) {
      spasm.objects[ctx].e = e;
    },
    DOMMatrix_e_Get: function(ctx) {
      return spasm.objects[ctx].e;
    },
    DOMMatrix_f_Set: function(ctx, f) {
      spasm.objects[ctx].f = f;
    },
    DOMMatrix_f_Get: function(ctx) {
      return spasm.objects[ctx].f;
    },
    DOMMatrix_m11_Set: function(ctx, m11) {
      spasm.objects[ctx].m11 = m11;
    },
    DOMMatrix_m11_Get: function(ctx) {
      return spasm.objects[ctx].m11;
    },
    DOMMatrix_m12_Set: function(ctx, m12) {
      spasm.objects[ctx].m12 = m12;
    },
    DOMMatrix_m12_Get: function(ctx) {
      return spasm.objects[ctx].m12;
    },
    DOMMatrix_m13_Set: function(ctx, m13) {
      spasm.objects[ctx].m13 = m13;
    },
    DOMMatrix_m13_Get: function(ctx) {
      return spasm.objects[ctx].m13;
    },
    DOMMatrix_m14_Set: function(ctx, m14) {
      spasm.objects[ctx].m14 = m14;
    },
    DOMMatrix_m14_Get: function(ctx) {
      return spasm.objects[ctx].m14;
    },
    DOMMatrix_m21_Set: function(ctx, m21) {
      spasm.objects[ctx].m21 = m21;
    },
    DOMMatrix_m21_Get: function(ctx) {
      return spasm.objects[ctx].m21;
    },
    DOMMatrix_m22_Set: function(ctx, m22) {
      spasm.objects[ctx].m22 = m22;
    },
    DOMMatrix_m22_Get: function(ctx) {
      return spasm.objects[ctx].m22;
    },
    DOMMatrix_m23_Set: function(ctx, m23) {
      spasm.objects[ctx].m23 = m23;
    },
    DOMMatrix_m23_Get: function(ctx) {
      return spasm.objects[ctx].m23;
    },
    DOMMatrix_m24_Set: function(ctx, m24) {
      spasm.objects[ctx].m24 = m24;
    },
    DOMMatrix_m24_Get: function(ctx) {
      return spasm.objects[ctx].m24;
    },
    DOMMatrix_m31_Set: function(ctx, m31) {
      spasm.objects[ctx].m31 = m31;
    },
    DOMMatrix_m31_Get: function(ctx) {
      return spasm.objects[ctx].m31;
    },
    DOMMatrix_m32_Set: function(ctx, m32) {
      spasm.objects[ctx].m32 = m32;
    },
    DOMMatrix_m32_Get: function(ctx) {
      return spasm.objects[ctx].m32;
    },
    DOMMatrix_m33_Set: function(ctx, m33) {
      spasm.objects[ctx].m33 = m33;
    },
    DOMMatrix_m33_Get: function(ctx) {
      return spasm.objects[ctx].m33;
    },
    DOMMatrix_m34_Set: function(ctx, m34) {
      spasm.objects[ctx].m34 = m34;
    },
    DOMMatrix_m34_Get: function(ctx) {
      return spasm.objects[ctx].m34;
    },
    DOMMatrix_m41_Set: function(ctx, m41) {
      spasm.objects[ctx].m41 = m41;
    },
    DOMMatrix_m41_Get: function(ctx) {
      return spasm.objects[ctx].m41;
    },
    DOMMatrix_m42_Set: function(ctx, m42) {
      spasm.objects[ctx].m42 = m42;
    },
    DOMMatrix_m42_Get: function(ctx) {
      return spasm.objects[ctx].m42;
    },
    DOMMatrix_m43_Set: function(ctx, m43) {
      spasm.objects[ctx].m43 = m43;
    },
    DOMMatrix_m43_Get: function(ctx) {
      return spasm.objects[ctx].m43;
    },
    DOMMatrix_m44_Set: function(ctx, m44) {
      spasm.objects[ctx].m44 = m44;
    },
    DOMMatrix_m44_Get: function(ctx) {
      return spasm.objects[ctx].m44;
    },
    DOMMatrix_multiplySelf: function(ctx, other) {
      return spasm.addObject(spasm.objects[ctx].multiplySelf(spasm.objects[other]));
    },
    DOMMatrix_preMultiplySelf: function(ctx, other) {
      return spasm.addObject(spasm.objects[ctx].preMultiplySelf(spasm.objects[other]));
    },
    DOMMatrix_translateSelf: function(ctx, tx, ty, tz) {
      return spasm.addObject(spasm.objects[ctx].translateSelf(tx, ty, tz));
    },
    DOMMatrix_scaleSelf: function(ctx, scaleX, scaleY, scaleZ, originX, originY, originZ) {
      return spasm.addObject(spasm.objects[ctx].scaleSelf(scaleX, scaleY, scaleZ, originX, originY, originZ));
    },
    DOMMatrix_scale3dSelf: function(ctx, scale, originX, originY, originZ) {
      return spasm.addObject(spasm.objects[ctx].scale3dSelf(scale, originX, originY, originZ));
    },
    DOMMatrix_rotateSelf: function(ctx, rotX, rotY, rotZ) {
      return spasm.addObject(spasm.objects[ctx].rotateSelf(rotX, rotY, rotZ));
    },
    DOMMatrix_rotateFromVectorSelf: function(ctx, x, y) {
      return spasm.addObject(spasm.objects[ctx].rotateFromVectorSelf(x, y));
    },
    DOMMatrix_rotateAxisAngleSelf: function(ctx, x, y, z, angle) {
      return spasm.addObject(spasm.objects[ctx].rotateAxisAngleSelf(x, y, z, angle));
    },
    DOMMatrix_skewXSelf: function(ctx, sx) {
      return spasm.addObject(spasm.objects[ctx].skewXSelf(sx));
    },
    DOMMatrix_skewYSelf: function(ctx, sy) {
      return spasm.addObject(spasm.objects[ctx].skewYSelf(sy));
    },
    DOMMatrix_invertSelf: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].invertSelf());
    },
    DOMMatrix_setMatrixValue: function(ctx, transformListLen, transformListPtr) {
      return spasm.addObject(spasm.objects[ctx].setMatrixValue(spasm.decode_string(transformListLen, transformListPtr)));
    },
    DOMMatrix2DInit_a_Set: function(ctx, a) {
      spasm.objects[ctx].a = a;
    },
    DOMMatrix2DInit_a_Get: function(ctx) {
      return spasm.objects[ctx].a;
    },
    DOMMatrix2DInit_b_Set: function(ctx, b) {
      spasm.objects[ctx].b = b;
    },
    DOMMatrix2DInit_b_Get: function(ctx) {
      return spasm.objects[ctx].b;
    },
    DOMMatrix2DInit_c_Set: function(ctx, c) {
      spasm.objects[ctx].c = c;
    },
    DOMMatrix2DInit_c_Get: function(ctx) {
      return spasm.objects[ctx].c;
    },
    DOMMatrix2DInit_d_Set: function(ctx, d) {
      spasm.objects[ctx].d = d;
    },
    DOMMatrix2DInit_d_Get: function(ctx) {
      return spasm.objects[ctx].d;
    },
    DOMMatrix2DInit_e_Set: function(ctx, e) {
      spasm.objects[ctx].e = e;
    },
    DOMMatrix2DInit_e_Get: function(ctx) {
      return spasm.objects[ctx].e;
    },
    DOMMatrix2DInit_f_Set: function(ctx, f) {
      spasm.objects[ctx].f = f;
    },
    DOMMatrix2DInit_f_Get: function(ctx) {
      return spasm.objects[ctx].f;
    },
    DOMMatrix2DInit_m11_Set: function(ctx, m11) {
      spasm.objects[ctx].m11 = m11;
    },
    DOMMatrix2DInit_m11_Get: function(ctx) {
      return spasm.objects[ctx].m11;
    },
    DOMMatrix2DInit_m12_Set: function(ctx, m12) {
      spasm.objects[ctx].m12 = m12;
    },
    DOMMatrix2DInit_m12_Get: function(ctx) {
      return spasm.objects[ctx].m12;
    },
    DOMMatrix2DInit_m21_Set: function(ctx, m21) {
      spasm.objects[ctx].m21 = m21;
    },
    DOMMatrix2DInit_m21_Get: function(ctx) {
      return spasm.objects[ctx].m21;
    },
    DOMMatrix2DInit_m22_Set: function(ctx, m22) {
      spasm.objects[ctx].m22 = m22;
    },
    DOMMatrix2DInit_m22_Get: function(ctx) {
      return spasm.objects[ctx].m22;
    },
    DOMMatrix2DInit_m41_Set: function(ctx, m41) {
      spasm.objects[ctx].m41 = m41;
    },
    DOMMatrix2DInit_m41_Get: function(ctx) {
      return spasm.objects[ctx].m41;
    },
    DOMMatrix2DInit_m42_Set: function(ctx, m42) {
      spasm.objects[ctx].m42 = m42;
    },
    DOMMatrix2DInit_m42_Get: function(ctx) {
      return spasm.objects[ctx].m42;
    },
    DOMMatrixInit_m13_Set: function(ctx, m13) {
      spasm.objects[ctx].m13 = m13;
    },
    DOMMatrixInit_m13_Get: function(ctx) {
      return spasm.objects[ctx].m13;
    },
    DOMMatrixInit_m14_Set: function(ctx, m14) {
      spasm.objects[ctx].m14 = m14;
    },
    DOMMatrixInit_m14_Get: function(ctx) {
      return spasm.objects[ctx].m14;
    },
    DOMMatrixInit_m23_Set: function(ctx, m23) {
      spasm.objects[ctx].m23 = m23;
    },
    DOMMatrixInit_m23_Get: function(ctx) {
      return spasm.objects[ctx].m23;
    },
    DOMMatrixInit_m24_Set: function(ctx, m24) {
      spasm.objects[ctx].m24 = m24;
    },
    DOMMatrixInit_m24_Get: function(ctx) {
      return spasm.objects[ctx].m24;
    },
    DOMMatrixInit_m31_Set: function(ctx, m31) {
      spasm.objects[ctx].m31 = m31;
    },
    DOMMatrixInit_m31_Get: function(ctx) {
      return spasm.objects[ctx].m31;
    },
    DOMMatrixInit_m32_Set: function(ctx, m32) {
      spasm.objects[ctx].m32 = m32;
    },
    DOMMatrixInit_m32_Get: function(ctx) {
      return spasm.objects[ctx].m32;
    },
    DOMMatrixInit_m33_Set: function(ctx, m33) {
      spasm.objects[ctx].m33 = m33;
    },
    DOMMatrixInit_m33_Get: function(ctx) {
      return spasm.objects[ctx].m33;
    },
    DOMMatrixInit_m34_Set: function(ctx, m34) {
      spasm.objects[ctx].m34 = m34;
    },
    DOMMatrixInit_m34_Get: function(ctx) {
      return spasm.objects[ctx].m34;
    },
    DOMMatrixInit_m43_Set: function(ctx, m43) {
      spasm.objects[ctx].m43 = m43;
    },
    DOMMatrixInit_m43_Get: function(ctx) {
      return spasm.objects[ctx].m43;
    },
    DOMMatrixInit_m44_Set: function(ctx, m44) {
      spasm.objects[ctx].m44 = m44;
    },
    DOMMatrixInit_m44_Get: function(ctx) {
      return spasm.objects[ctx].m44;
    },
    DOMMatrixInit_is2D_Set: function(ctx, is2D) {
      spasm.objects[ctx].is2D = is2D;
    },
    DOMMatrixInit_is2D_Get: function(ctx) {
      return spasm.objects[ctx].is2D;
    },
    DOMMatrixReadOnly_fromMatrix: function(ctx, other) {
      return spasm.addObject(spasm.objects[ctx].fromMatrix(spasm.objects[other]));
    },
    DOMMatrixReadOnly_fromFloat32Array: function(ctx, array32) {
      return spasm.addObject(spasm.objects[ctx].fromFloat32Array(spasm.objects[array32]));
    },
    DOMMatrixReadOnly_fromFloat64Array: function(ctx, array64) {
      return spasm.addObject(spasm.objects[ctx].fromFloat64Array(spasm.objects[array64]));
    },
    DOMMatrixReadOnly_a_Get: function(ctx) {
      return spasm.objects[ctx].a;
    },
    DOMMatrixReadOnly_b_Get: function(ctx) {
      return spasm.objects[ctx].b;
    },
    DOMMatrixReadOnly_c_Get: function(ctx) {
      return spasm.objects[ctx].c;
    },
    DOMMatrixReadOnly_d_Get: function(ctx) {
      return spasm.objects[ctx].d;
    },
    DOMMatrixReadOnly_e_Get: function(ctx) {
      return spasm.objects[ctx].e;
    },
    DOMMatrixReadOnly_f_Get: function(ctx) {
      return spasm.objects[ctx].f;
    },
    DOMMatrixReadOnly_m11_Get: function(ctx) {
      return spasm.objects[ctx].m11;
    },
    DOMMatrixReadOnly_m12_Get: function(ctx) {
      return spasm.objects[ctx].m12;
    },
    DOMMatrixReadOnly_m13_Get: function(ctx) {
      return spasm.objects[ctx].m13;
    },
    DOMMatrixReadOnly_m14_Get: function(ctx) {
      return spasm.objects[ctx].m14;
    },
    DOMMatrixReadOnly_m21_Get: function(ctx) {
      return spasm.objects[ctx].m21;
    },
    DOMMatrixReadOnly_m22_Get: function(ctx) {
      return spasm.objects[ctx].m22;
    },
    DOMMatrixReadOnly_m23_Get: function(ctx) {
      return spasm.objects[ctx].m23;
    },
    DOMMatrixReadOnly_m24_Get: function(ctx) {
      return spasm.objects[ctx].m24;
    },
    DOMMatrixReadOnly_m31_Get: function(ctx) {
      return spasm.objects[ctx].m31;
    },
    DOMMatrixReadOnly_m32_Get: function(ctx) {
      return spasm.objects[ctx].m32;
    },
    DOMMatrixReadOnly_m33_Get: function(ctx) {
      return spasm.objects[ctx].m33;
    },
    DOMMatrixReadOnly_m34_Get: function(ctx) {
      return spasm.objects[ctx].m34;
    },
    DOMMatrixReadOnly_m41_Get: function(ctx) {
      return spasm.objects[ctx].m41;
    },
    DOMMatrixReadOnly_m42_Get: function(ctx) {
      return spasm.objects[ctx].m42;
    },
    DOMMatrixReadOnly_m43_Get: function(ctx) {
      return spasm.objects[ctx].m43;
    },
    DOMMatrixReadOnly_m44_Get: function(ctx) {
      return spasm.objects[ctx].m44;
    },
    DOMMatrixReadOnly_is2D_Get: function(ctx) {
      return spasm.objects[ctx].is2D;
    },
    DOMMatrixReadOnly_isIdentity_Get: function(ctx) {
      return spasm.objects[ctx].isIdentity;
    },
    DOMMatrixReadOnly_translate: function(ctx, tx, ty, tz) {
      return spasm.addObject(spasm.objects[ctx].translate(tx, ty, tz));
    },
    DOMMatrixReadOnly_scale: function(ctx, scaleX, scaleY, scaleZ, originX, originY, originZ) {
      return spasm.addObject(spasm.objects[ctx].scale(scaleX, scaleY, scaleZ, originX, originY, originZ));
    },
    DOMMatrixReadOnly_scaleNonUniform: function(ctx, scaleX, scaleY) {
      return spasm.addObject(spasm.objects[ctx].scaleNonUniform(scaleX, scaleY));
    },
    DOMMatrixReadOnly_scale3d: function(ctx, scale, originX, originY, originZ) {
      return spasm.addObject(spasm.objects[ctx].scale3d(scale, originX, originY, originZ));
    },
    DOMMatrixReadOnly_rotate: function(ctx, rotX, rotY, rotZ) {
      return spasm.addObject(spasm.objects[ctx].rotate(rotX, rotY, rotZ));
    },
    DOMMatrixReadOnly_rotateFromVector: function(ctx, x, y) {
      return spasm.addObject(spasm.objects[ctx].rotateFromVector(x, y));
    },
    DOMMatrixReadOnly_rotateAxisAngle: function(ctx, x, y, z, angle) {
      return spasm.addObject(spasm.objects[ctx].rotateAxisAngle(x, y, z, angle));
    },
    DOMMatrixReadOnly_skewX: function(ctx, sx) {
      return spasm.addObject(spasm.objects[ctx].skewX(sx));
    },
    DOMMatrixReadOnly_skewY: function(ctx, sy) {
      return spasm.addObject(spasm.objects[ctx].skewY(sy));
    },
    DOMMatrixReadOnly_multiply: function(ctx, other) {
      return spasm.addObject(spasm.objects[ctx].multiply(spasm.objects[other]));
    },
    DOMMatrixReadOnly_flipX: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].flipX());
    },
    DOMMatrixReadOnly_flipY: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].flipY());
    },
    DOMMatrixReadOnly_inverse: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].inverse());
    },
    DOMMatrixReadOnly_transformPoint: function(ctx, point) {
      return spasm.addObject(spasm.objects[ctx].transformPoint(spasm.objects[point]));
    },
    DOMMatrixReadOnly_toFloat32Array: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].toFloat32Array());
    },
    DOMMatrixReadOnly_toFloat64Array: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].toFloat64Array());
    },
    DOMMatrixReadOnly_toJSON: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].toJSON());
    },
    DOMPoint_fromPoint: function(ctx, other) {
      return spasm.addObject(spasm.objects[ctx].fromPoint(spasm.objects[other]));
    },
    DOMPoint_x_Set: function(ctx, x) {
      spasm.objects[ctx].x = x;
    },
    DOMPoint_x_Get: function(ctx) {
      return spasm.objects[ctx].x;
    },
    DOMPoint_y_Set: function(ctx, y) {
      spasm.objects[ctx].y = y;
    },
    DOMPoint_y_Get: function(ctx) {
      return spasm.objects[ctx].y;
    },
    DOMPoint_z_Set: function(ctx, z) {
      spasm.objects[ctx].z = z;
    },
    DOMPoint_z_Get: function(ctx) {
      return spasm.objects[ctx].z;
    },
    DOMPoint_w_Set: function(ctx, w) {
      spasm.objects[ctx].w = w;
    },
    DOMPoint_w_Get: function(ctx) {
      return spasm.objects[ctx].w;
    },
    DOMPointInit_x_Set: function(ctx, x) {
      spasm.objects[ctx].x = x;
    },
    DOMPointInit_x_Get: function(ctx) {
      return spasm.objects[ctx].x;
    },
    DOMPointInit_y_Set: function(ctx, y) {
      spasm.objects[ctx].y = y;
    },
    DOMPointInit_y_Get: function(ctx) {
      return spasm.objects[ctx].y;
    },
    DOMPointInit_z_Set: function(ctx, z) {
      spasm.objects[ctx].z = z;
    },
    DOMPointInit_z_Get: function(ctx) {
      return spasm.objects[ctx].z;
    },
    DOMPointInit_w_Set: function(ctx, w) {
      spasm.objects[ctx].w = w;
    },
    DOMPointInit_w_Get: function(ctx) {
      return spasm.objects[ctx].w;
    },
    DOMPointReadOnly_fromPoint: function(ctx, other) {
      return spasm.addObject(spasm.objects[ctx].fromPoint(spasm.objects[other]));
    },
    DOMPointReadOnly_x_Get: function(ctx) {
      return spasm.objects[ctx].x;
    },
    DOMPointReadOnly_y_Get: function(ctx) {
      return spasm.objects[ctx].y;
    },
    DOMPointReadOnly_z_Get: function(ctx) {
      return spasm.objects[ctx].z;
    },
    DOMPointReadOnly_w_Get: function(ctx) {
      return spasm.objects[ctx].w;
    },
    DOMPointReadOnly_matrixTransform: function(ctx, matrix) {
      return spasm.addObject(spasm.objects[ctx].matrixTransform(spasm.objects[matrix]));
    },
    DOMPointReadOnly_toJSON: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].toJSON());
    },
    DOMQuad_fromRect: function(ctx, other) {
      return spasm.addObject(spasm.objects[ctx].fromRect(spasm.objects[other]));
    },
    DOMQuad_fromQuad: function(ctx, other) {
      return spasm.addObject(spasm.objects[ctx].fromQuad(spasm.objects[other]));
    },
    DOMQuad_p1_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].p1);
    },
    DOMQuad_p2_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].p2);
    },
    DOMQuad_p3_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].p3);
    },
    DOMQuad_p4_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].p4);
    },
    DOMQuad_getBounds: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].getBounds());
    },
    DOMQuad_toJSON: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].toJSON());
    },
    DOMQuadInit_p1_Set: function(ctx, p1) {
      spasm.objects[ctx].p1 = spasm.objects[p1];
    },
    DOMQuadInit_p1_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].p1);
    },
    DOMQuadInit_p2_Set: function(ctx, p2) {
      spasm.objects[ctx].p2 = spasm.objects[p2];
    },
    DOMQuadInit_p2_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].p2);
    },
    DOMQuadInit_p3_Set: function(ctx, p3) {
      spasm.objects[ctx].p3 = spasm.objects[p3];
    },
    DOMQuadInit_p3_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].p3);
    },
    DOMQuadInit_p4_Set: function(ctx, p4) {
      spasm.objects[ctx].p4 = spasm.objects[p4];
    },
    DOMQuadInit_p4_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].p4);
    },
    DOMRect_fromRect: function(ctx, other) {
      return spasm.addObject(spasm.objects[ctx].fromRect(spasm.objects[other]));
    },
    DOMRect_x_Set: function(ctx, x) {
      spasm.objects[ctx].x = x;
    },
    DOMRect_x_Get: function(ctx) {
      return spasm.objects[ctx].x;
    },
    DOMRect_y_Set: function(ctx, y) {
      spasm.objects[ctx].y = y;
    },
    DOMRect_y_Get: function(ctx) {
      return spasm.objects[ctx].y;
    },
    DOMRect_width_Set: function(ctx, width) {
      spasm.objects[ctx].width = width;
    },
    DOMRect_width_Get: function(ctx) {
      return spasm.objects[ctx].width;
    },
    DOMRect_height_Set: function(ctx, height) {
      spasm.objects[ctx].height = height;
    },
    DOMRect_height_Get: function(ctx) {
      return spasm.objects[ctx].height;
    },
    DOMRectInit_x_Set: function(ctx, x) {
      spasm.objects[ctx].x = x;
    },
    DOMRectInit_x_Get: function(ctx) {
      return spasm.objects[ctx].x;
    },
    DOMRectInit_y_Set: function(ctx, y) {
      spasm.objects[ctx].y = y;
    },
    DOMRectInit_y_Get: function(ctx) {
      return spasm.objects[ctx].y;
    },
    DOMRectInit_width_Set: function(ctx, width) {
      spasm.objects[ctx].width = width;
    },
    DOMRectInit_width_Get: function(ctx) {
      return spasm.objects[ctx].width;
    },
    DOMRectInit_height_Set: function(ctx, height) {
      spasm.objects[ctx].height = height;
    },
    DOMRectInit_height_Get: function(ctx) {
      return spasm.objects[ctx].height;
    },
    DOMRectList_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    DOMRectList_item_getter: function(rawResult, ctx, index) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].item(index));
    },
    DOMRectReadOnly_fromRect: function(ctx, other) {
      return spasm.addObject(spasm.objects[ctx].fromRect(spasm.objects[other]));
    },
    DOMRectReadOnly_x_Get: function(ctx) {
      return spasm.objects[ctx].x;
    },
    DOMRectReadOnly_y_Get: function(ctx) {
      return spasm.objects[ctx].y;
    },
    DOMRectReadOnly_width_Get: function(ctx) {
      return spasm.objects[ctx].width;
    },
    DOMRectReadOnly_height_Get: function(ctx) {
      return spasm.objects[ctx].height;
    },
    DOMRectReadOnly_top_Get: function(ctx) {
      return spasm.objects[ctx].top;
    },
    DOMRectReadOnly_right_Get: function(ctx) {
      return spasm.objects[ctx].right;
    },
    DOMRectReadOnly_bottom_Get: function(ctx) {
      return spasm.objects[ctx].bottom;
    },
    DOMRectReadOnly_left_Get: function(ctx) {
      return spasm.objects[ctx].left;
    },
    DOMRectReadOnly_toJSON: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].toJSON());
    },
  }
}