import spasm from './spasm.js';
export default {
  jsExports: {
    PointerEventInit_pointerId_Set: function(ctx, pointerId) {
      spasm.objects[ctx].pointerId = pointerId;
    },
    PointerEventInit_pointerId_Get: function(ctx) {
      return spasm.objects[ctx].pointerId;
    },
    PointerEventInit_width_Set: function(ctx, width) {
      spasm.objects[ctx].width = width;
    },
    PointerEventInit_width_Get: function(ctx) {
      return spasm.objects[ctx].width;
    },
    PointerEventInit_height_Set: function(ctx, height) {
      spasm.objects[ctx].height = height;
    },
    PointerEventInit_height_Get: function(ctx) {
      return spasm.objects[ctx].height;
    },
    PointerEventInit_pressure_Set: function(ctx, pressure) {
      spasm.objects[ctx].pressure = pressure;
    },
    PointerEventInit_pressure_Get: function(ctx) {
      return spasm.objects[ctx].pressure;
    },
    PointerEventInit_tangentialPressure_Set: function(ctx, tangentialPressure) {
      spasm.objects[ctx].tangentialPressure = tangentialPressure;
    },
    PointerEventInit_tangentialPressure_Get: function(ctx) {
      return spasm.objects[ctx].tangentialPressure;
    },
    PointerEventInit_tiltX_Set: function(ctx, tiltX) {
      spasm.objects[ctx].tiltX = tiltX;
    },
    PointerEventInit_tiltX_Get: function(ctx) {
      return spasm.objects[ctx].tiltX;
    },
    PointerEventInit_tiltY_Set: function(ctx, tiltY) {
      spasm.objects[ctx].tiltY = tiltY;
    },
    PointerEventInit_tiltY_Get: function(ctx) {
      return spasm.objects[ctx].tiltY;
    },
    PointerEventInit_twist_Set: function(ctx, twist) {
      spasm.objects[ctx].twist = twist;
    },
    PointerEventInit_twist_Get: function(ctx) {
      return spasm.objects[ctx].twist;
    },
    PointerEventInit_pointerType_Set: function(ctx, pointerTypeLen, pointerTypePtr) {
      spasm.objects[ctx].pointerType = spasm.decode_string(pointerTypeLen, pointerTypePtr);
    },
    PointerEventInit_pointerType_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].pointerType);
    },
    PointerEventInit_isPrimary_Set: function(ctx, isPrimary) {
      spasm.objects[ctx].isPrimary = isPrimary;
    },
    PointerEventInit_isPrimary_Get: function(ctx) {
      return spasm.objects[ctx].isPrimary;
    },
  }
}