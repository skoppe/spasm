import spasm from './spasm.js';
export default {
  jsExports: {
    Touch_identifier_Get: function(ctx) {
      return spasm.objects[ctx].identifier;
    },
    Touch_target_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].target);
    },
    Touch_screenX_Get: function(ctx) {
      return spasm.objects[ctx].screenX;
    },
    Touch_screenY_Get: function(ctx) {
      return spasm.objects[ctx].screenY;
    },
    Touch_clientX_Get: function(ctx) {
      return spasm.objects[ctx].clientX;
    },
    Touch_clientY_Get: function(ctx) {
      return spasm.objects[ctx].clientY;
    },
    Touch_pageX_Get: function(ctx) {
      return spasm.objects[ctx].pageX;
    },
    Touch_pageY_Get: function(ctx) {
      return spasm.objects[ctx].pageY;
    },
    Touch_radiusX_Get: function(ctx) {
      return spasm.objects[ctx].radiusX;
    },
    Touch_radiusY_Get: function(ctx) {
      return spasm.objects[ctx].radiusY;
    },
    Touch_rotationAngle_Get: function(ctx) {
      return spasm.objects[ctx].rotationAngle;
    },
    Touch_force_Get: function(ctx) {
      return spasm.objects[ctx].force;
    },
    Touch_altitudeAngle_Get: function(ctx) {
      return spasm.objects[ctx].altitudeAngle;
    },
    Touch_azimuthAngle_Get: function(ctx) {
      return spasm.objects[ctx].azimuthAngle;
    },
    Touch_touchType_Get: function(ctx) {
      return spasm.encode_TouchType(spasm.objects[ctx].touchType);
    },
    TouchEvent_touches_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].touches);
    },
    TouchEvent_targetTouches_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].targetTouches);
    },
    TouchEvent_changedTouches_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].changedTouches);
    },
    TouchEvent_altKey_Get: function(ctx) {
      return spasm.objects[ctx].altKey;
    },
    TouchEvent_metaKey_Get: function(ctx) {
      return spasm.objects[ctx].metaKey;
    },
    TouchEvent_ctrlKey_Get: function(ctx) {
      return spasm.objects[ctx].ctrlKey;
    },
    TouchEvent_shiftKey_Get: function(ctx) {
      return spasm.objects[ctx].shiftKey;
    },
    TouchEventInit_touches_Set: function(ctx, touches) {
      spasm.objects[ctx].touches = spasm.objects[touches];
    },
    TouchEventInit_touches_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].touches);
    },
    TouchEventInit_targetTouches_Set: function(ctx, targetTouches) {
      spasm.objects[ctx].targetTouches = spasm.objects[targetTouches];
    },
    TouchEventInit_targetTouches_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].targetTouches);
    },
    TouchEventInit_changedTouches_Set: function(ctx, changedTouches) {
      spasm.objects[ctx].changedTouches = spasm.objects[changedTouches];
    },
    TouchEventInit_changedTouches_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].changedTouches);
    },
    TouchInit_identifier_Set: function(ctx, identifier) {
      spasm.objects[ctx].identifier = identifier;
    },
    TouchInit_identifier_Get: function(ctx) {
      return spasm.objects[ctx].identifier;
    },
    TouchInit_target_Set: function(ctx, target) {
      spasm.objects[ctx].target = spasm.objects[target];
    },
    TouchInit_target_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].target);
    },
    TouchInit_clientX_Set: function(ctx, clientX) {
      spasm.objects[ctx].clientX = clientX;
    },
    TouchInit_clientX_Get: function(ctx) {
      return spasm.objects[ctx].clientX;
    },
    TouchInit_clientY_Set: function(ctx, clientY) {
      spasm.objects[ctx].clientY = clientY;
    },
    TouchInit_clientY_Get: function(ctx) {
      return spasm.objects[ctx].clientY;
    },
    TouchInit_screenX_Set: function(ctx, screenX) {
      spasm.objects[ctx].screenX = screenX;
    },
    TouchInit_screenX_Get: function(ctx) {
      return spasm.objects[ctx].screenX;
    },
    TouchInit_screenY_Set: function(ctx, screenY) {
      spasm.objects[ctx].screenY = screenY;
    },
    TouchInit_screenY_Get: function(ctx) {
      return spasm.objects[ctx].screenY;
    },
    TouchInit_pageX_Set: function(ctx, pageX) {
      spasm.objects[ctx].pageX = pageX;
    },
    TouchInit_pageX_Get: function(ctx) {
      return spasm.objects[ctx].pageX;
    },
    TouchInit_pageY_Set: function(ctx, pageY) {
      spasm.objects[ctx].pageY = pageY;
    },
    TouchInit_pageY_Get: function(ctx) {
      return spasm.objects[ctx].pageY;
    },
    TouchInit_radiusX_Set: function(ctx, radiusX) {
      spasm.objects[ctx].radiusX = radiusX;
    },
    TouchInit_radiusX_Get: function(ctx) {
      return spasm.objects[ctx].radiusX;
    },
    TouchInit_radiusY_Set: function(ctx, radiusY) {
      spasm.objects[ctx].radiusY = radiusY;
    },
    TouchInit_radiusY_Get: function(ctx) {
      return spasm.objects[ctx].radiusY;
    },
    TouchInit_rotationAngle_Set: function(ctx, rotationAngle) {
      spasm.objects[ctx].rotationAngle = rotationAngle;
    },
    TouchInit_rotationAngle_Get: function(ctx) {
      return spasm.objects[ctx].rotationAngle;
    },
    TouchInit_force_Set: function(ctx, force) {
      spasm.objects[ctx].force = force;
    },
    TouchInit_force_Get: function(ctx) {
      return spasm.objects[ctx].force;
    },
    TouchInit_altitudeAngle_Set: function(ctx, altitudeAngle) {
      spasm.objects[ctx].altitudeAngle = altitudeAngle;
    },
    TouchInit_altitudeAngle_Get: function(ctx) {
      return spasm.objects[ctx].altitudeAngle;
    },
    TouchInit_azimuthAngle_Set: function(ctx, azimuthAngle) {
      spasm.objects[ctx].azimuthAngle = azimuthAngle;
    },
    TouchInit_azimuthAngle_Get: function(ctx) {
      return spasm.objects[ctx].azimuthAngle;
    },
    TouchInit_touchType_Set: function(ctx, touchType) {
      spasm.objects[ctx].touchType = spasm.decode_TouchType(touchType);
    },
    TouchInit_touchType_Get: function(ctx) {
      return spasm.encode_TouchType(spasm.objects[ctx].touchType);
    },
    TouchList_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    TouchList_item_getter: function(rawResult, ctx, index) {
      spasm.encode_optional_JsHandle(rawResult, spasm.objects[ctx].item(index));
    },
  }
}