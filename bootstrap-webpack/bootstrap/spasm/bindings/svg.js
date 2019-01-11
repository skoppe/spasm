import spasm from '../modules/spasm.js';
export default {
  jsExports: {
    SVGAElement_target_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].target);
    },
    SVGAElement_download_Set: function(ctx, downloadLen, downloadPtr) {
      spasm.objects[ctx].download = spasm.decode_string(downloadLen, downloadPtr);
    },
    SVGAElement_download_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].download);
    },
    SVGAElement_ping_Set: function(ctx, pingLen, pingPtr) {
      spasm.objects[ctx].ping = spasm.decode_string(pingLen, pingPtr);
    },
    SVGAElement_ping_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].ping);
    },
    SVGAElement_rel_Set: function(ctx, relLen, relPtr) {
      spasm.objects[ctx].rel = spasm.decode_string(relLen, relPtr);
    },
    SVGAElement_rel_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].rel);
    },
    SVGAElement_relList_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].relList);
    },
    SVGAElement_hreflang_Set: function(ctx, hreflangLen, hreflangPtr) {
      spasm.objects[ctx].hreflang = spasm.decode_string(hreflangLen, hreflangPtr);
    },
    SVGAElement_hreflang_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].hreflang);
    },
    SVGAElement_type_Set: function(ctx, typeLen, typePtr) {
      spasm.objects[ctx].type = spasm.decode_string(typeLen, typePtr);
    },
    SVGAElement_type_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].type);
    },
    SVGAElement_text_Set: function(ctx, textLen, textPtr) {
      spasm.objects[ctx].text = spasm.decode_string(textLen, textPtr);
    },
    SVGAElement_text_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].text);
    },
    SVGAElement_referrerPolicy_Set: function(ctx, referrerPolicyLen, referrerPolicyPtr) {
      spasm.objects[ctx].referrerPolicy = spasm.decode_string(referrerPolicyLen, referrerPolicyPtr);
    },
    SVGAElement_referrerPolicy_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].referrerPolicy);
    },
    SVGURIReference_href_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].href);
    },
    HTMLHyperlinkElementUtils_href_Set: function(ctx, hrefLen, hrefPtr) {
      spasm.objects[ctx].href = spasm.decode_string(hrefLen, hrefPtr);
    },
    HTMLHyperlinkElementUtils_href_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].href);
    },
    HTMLHyperlinkElementUtils_origin_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].origin);
    },
    SVGAngle_unitType_Get: function(ctx) {
      return spasm.objects[ctx].unitType;
    },
    SVGAngle_value_Set: function(ctx, value) {
      spasm.objects[ctx].value = value;
    },
    SVGAngle_value_Get: function(ctx) {
      return spasm.objects[ctx].value;
    },
    SVGAngle_valueInSpecifiedUnits_Set: function(ctx, valueInSpecifiedUnits) {
      spasm.objects[ctx].valueInSpecifiedUnits = valueInSpecifiedUnits;
    },
    SVGAngle_valueInSpecifiedUnits_Get: function(ctx) {
      return spasm.objects[ctx].valueInSpecifiedUnits;
    },
    SVGAngle_valueAsString_Set: function(ctx, valueAsStringLen, valueAsStringPtr) {
      spasm.objects[ctx].valueAsString = spasm.decode_string(valueAsStringLen, valueAsStringPtr);
    },
    SVGAngle_valueAsString_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].valueAsString);
    },
    SVGAngle_newValueSpecifiedUnits: function(ctx, unitType, valueInSpecifiedUnits) {
      spasm.objects[ctx].newValueSpecifiedUnits(unitType, valueInSpecifiedUnits);
    },
    SVGAngle_convertToSpecifiedUnits: function(ctx, unitType) {
      spasm.objects[ctx].convertToSpecifiedUnits(unitType);
    },
    SVGAnimatedAngle_baseVal_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].baseVal);
    },
    SVGAnimatedAngle_animVal_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].animVal);
    },
    SVGAnimatedBoolean_baseVal_Set: function(ctx, baseVal) {
      spasm.objects[ctx].baseVal = baseVal;
    },
    SVGAnimatedBoolean_baseVal_Get: function(ctx) {
      return spasm.objects[ctx].baseVal;
    },
    SVGAnimatedBoolean_animVal_Get: function(ctx) {
      return spasm.objects[ctx].animVal;
    },
    SVGAnimatedEnumeration_baseVal_Set: function(ctx, baseVal) {
      spasm.objects[ctx].baseVal = baseVal;
    },
    SVGAnimatedEnumeration_baseVal_Get: function(ctx) {
      return spasm.objects[ctx].baseVal;
    },
    SVGAnimatedEnumeration_animVal_Get: function(ctx) {
      return spasm.objects[ctx].animVal;
    },
    SVGAnimatedInteger_baseVal_Set: function(ctx, baseVal) {
      spasm.objects[ctx].baseVal = baseVal;
    },
    SVGAnimatedInteger_baseVal_Get: function(ctx) {
      return spasm.objects[ctx].baseVal;
    },
    SVGAnimatedInteger_animVal_Get: function(ctx) {
      return spasm.objects[ctx].animVal;
    },
    SVGAnimatedLength_baseVal_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].baseVal);
    },
    SVGAnimatedLength_animVal_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].animVal);
    },
    SVGAnimatedLengthList_baseVal_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].baseVal);
    },
    SVGAnimatedLengthList_animVal_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].animVal);
    },
    SVGAnimatedNumber_baseVal_Set: function(ctx, baseVal) {
      spasm.objects[ctx].baseVal = baseVal;
    },
    SVGAnimatedNumber_baseVal_Get: function(ctx) {
      return spasm.objects[ctx].baseVal;
    },
    SVGAnimatedNumber_animVal_Get: function(ctx) {
      return spasm.objects[ctx].animVal;
    },
    SVGAnimatedNumberList_baseVal_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].baseVal);
    },
    SVGAnimatedNumberList_animVal_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].animVal);
    },
    SVGAnimatedPreserveAspectRatio_baseVal_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].baseVal);
    },
    SVGAnimatedPreserveAspectRatio_animVal_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].animVal);
    },
    SVGAnimatedRect_baseVal_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].baseVal);
    },
    SVGAnimatedRect_animVal_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].animVal);
    },
    SVGAnimatedString_baseVal_Set: function(ctx, baseValLen, baseValPtr) {
      spasm.objects[ctx].baseVal = spasm.decode_string(baseValLen, baseValPtr);
    },
    SVGAnimatedString_baseVal_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].baseVal);
    },
    SVGAnimatedString_animVal_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].animVal);
    },
    SVGAnimatedTransformList_baseVal_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].baseVal);
    },
    SVGAnimatedTransformList_animVal_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].animVal);
    },
    SVGBoundingBoxOptions_fill_Set: function(ctx, fill) {
      spasm.objects[ctx].fill = fill;
    },
    SVGBoundingBoxOptions_fill_Get: function(ctx) {
      return spasm.objects[ctx].fill;
    },
    SVGBoundingBoxOptions_stroke_Set: function(ctx, stroke) {
      spasm.objects[ctx].stroke = stroke;
    },
    SVGBoundingBoxOptions_stroke_Get: function(ctx) {
      return spasm.objects[ctx].stroke;
    },
    SVGBoundingBoxOptions_markers_Set: function(ctx, markers) {
      spasm.objects[ctx].markers = markers;
    },
    SVGBoundingBoxOptions_markers_Get: function(ctx) {
      return spasm.objects[ctx].markers;
    },
    SVGBoundingBoxOptions_clipped_Set: function(ctx, clipped) {
      spasm.objects[ctx].clipped = clipped;
    },
    SVGBoundingBoxOptions_clipped_Get: function(ctx) {
      return spasm.objects[ctx].clipped;
    },
    SVGCircleElement_cx_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].cx);
    },
    SVGCircleElement_cy_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].cy);
    },
    SVGCircleElement_r_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].r);
    },
    SVGElement_className_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].className);
    },
    SVGElement_ownerSVGElement_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].ownerSVGElement);
    },
    SVGElement_viewportElement_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].viewportElement);
    },
    GlobalEventHandlers_ongotpointercapture_Set: function(ctx, ongotpointercapture) {
      spasm.objects[ctx].ongotpointercapture = ongotpointercapture;
    },
    GlobalEventHandlers_ongotpointercapture_Get: function(ctx) {
      return spasm.objects[ctx].ongotpointercapture;
    },
    GlobalEventHandlers_onlostpointercapture_Set: function(ctx, onlostpointercapture) {
      spasm.objects[ctx].onlostpointercapture = onlostpointercapture;
    },
    GlobalEventHandlers_onlostpointercapture_Get: function(ctx) {
      return spasm.objects[ctx].onlostpointercapture;
    },
    GlobalEventHandlers_onpointerdown_Set: function(ctx, onpointerdown) {
      spasm.objects[ctx].onpointerdown = onpointerdown;
    },
    GlobalEventHandlers_onpointerdown_Get: function(ctx) {
      return spasm.objects[ctx].onpointerdown;
    },
    GlobalEventHandlers_onpointermove_Set: function(ctx, onpointermove) {
      spasm.objects[ctx].onpointermove = onpointermove;
    },
    GlobalEventHandlers_onpointermove_Get: function(ctx) {
      return spasm.objects[ctx].onpointermove;
    },
    GlobalEventHandlers_onpointerup_Set: function(ctx, onpointerup) {
      spasm.objects[ctx].onpointerup = onpointerup;
    },
    GlobalEventHandlers_onpointerup_Get: function(ctx) {
      return spasm.objects[ctx].onpointerup;
    },
    GlobalEventHandlers_onpointercancel_Set: function(ctx, onpointercancel) {
      spasm.objects[ctx].onpointercancel = onpointercancel;
    },
    GlobalEventHandlers_onpointercancel_Get: function(ctx) {
      return spasm.objects[ctx].onpointercancel;
    },
    GlobalEventHandlers_onpointerover_Set: function(ctx, onpointerover) {
      spasm.objects[ctx].onpointerover = onpointerover;
    },
    GlobalEventHandlers_onpointerover_Get: function(ctx) {
      return spasm.objects[ctx].onpointerover;
    },
    GlobalEventHandlers_onpointerout_Set: function(ctx, onpointerout) {
      spasm.objects[ctx].onpointerout = onpointerout;
    },
    GlobalEventHandlers_onpointerout_Get: function(ctx) {
      return spasm.objects[ctx].onpointerout;
    },
    GlobalEventHandlers_onpointerenter_Set: function(ctx, onpointerenter) {
      spasm.objects[ctx].onpointerenter = onpointerenter;
    },
    GlobalEventHandlers_onpointerenter_Get: function(ctx) {
      return spasm.objects[ctx].onpointerenter;
    },
    GlobalEventHandlers_onpointerleave_Set: function(ctx, onpointerleave) {
      spasm.objects[ctx].onpointerleave = onpointerleave;
    },
    GlobalEventHandlers_onpointerleave_Get: function(ctx) {
      return spasm.objects[ctx].onpointerleave;
    },
    GlobalEventHandlers_ontouchstart_Set: function(ctx, ontouchstart) {
      spasm.objects[ctx].ontouchstart = ontouchstart;
    },
    GlobalEventHandlers_ontouchstart_Get: function(ctx) {
      return spasm.objects[ctx].ontouchstart;
    },
    GlobalEventHandlers_ontouchend_Set: function(ctx, ontouchend) {
      spasm.objects[ctx].ontouchend = ontouchend;
    },
    GlobalEventHandlers_ontouchend_Get: function(ctx) {
      return spasm.objects[ctx].ontouchend;
    },
    GlobalEventHandlers_ontouchmove_Set: function(ctx, ontouchmove) {
      spasm.objects[ctx].ontouchmove = ontouchmove;
    },
    GlobalEventHandlers_ontouchmove_Get: function(ctx) {
      return spasm.objects[ctx].ontouchmove;
    },
    GlobalEventHandlers_ontouchcancel_Set: function(ctx, ontouchcancel) {
      spasm.objects[ctx].ontouchcancel = ontouchcancel;
    },
    GlobalEventHandlers_ontouchcancel_Get: function(ctx) {
      return spasm.objects[ctx].ontouchcancel;
    },
    SVGElementInstance_correspondingElement_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].correspondingElement);
    },
    SVGElementInstance_correspondingUseElement_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].correspondingUseElement);
    },
    HTMLOrSVGElement_dataset_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].dataset);
    },
    HTMLOrSVGElement_focus: function(ctx, options) {
      spasm.objects[ctx].focus(spasm.objects[options]);
    },
    HTMLOrSVGElement_blur: function(ctx) {
      spasm.objects[ctx].blur();
    },
    SVGEllipseElement_cx_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].cx);
    },
    SVGEllipseElement_cy_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].cy);
    },
    SVGEllipseElement_rx_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].rx);
    },
    SVGEllipseElement_ry_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].ry);
    },
    SVGForeignObjectElement_x_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].x);
    },
    SVGForeignObjectElement_y_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].y);
    },
    SVGForeignObjectElement_width_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].width);
    },
    SVGForeignObjectElement_height_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].height);
    },
    SVGGeometryElement_pathLength_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].pathLength);
    },
    SVGGeometryElement_isPointInFill: function(ctx, point) {
      return spasm.objects[ctx].isPointInFill(spasm.objects[point]);
    },
    SVGGeometryElement_isPointInStroke: function(ctx, point) {
      return spasm.objects[ctx].isPointInStroke(spasm.objects[point]);
    },
    SVGGeometryElement_getTotalLength: function(ctx) {
      return spasm.objects[ctx].getTotalLength();
    },
    SVGGeometryElement_getPointAtLength: function(ctx, distance) {
      return spasm.addObject(spasm.objects[ctx].getPointAtLength(distance));
    },
    SVGGradientElement_gradientUnits_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].gradientUnits);
    },
    SVGGradientElement_gradientTransform_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].gradientTransform);
    },
    SVGGradientElement_spreadMethod_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].spreadMethod);
    },
    SVGURIReference_href_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].href);
    },
    SVGGraphicsElement_transform_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].transform);
    },
    SVGGraphicsElement_getBBox: function(ctx, options) {
      return spasm.addObject(spasm.objects[ctx].getBBox(spasm.objects[options]));
    },
    SVGGraphicsElement_getCTM: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].getCTM());
    },
    SVGGraphicsElement_getScreenCTM: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].getScreenCTM());
    },
    SVGTests_requiredExtensions_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].requiredExtensions);
    },
    SVGTests_systemLanguage_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].systemLanguage);
    },
    SVGImageElement_x_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].x);
    },
    SVGImageElement_y_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].y);
    },
    SVGImageElement_width_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].width);
    },
    SVGImageElement_height_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].height);
    },
    SVGImageElement_preserveAspectRatio_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].preserveAspectRatio);
    },
    SVGImageElement_crossOrigin_Set: function(ctx, crossOriginDefined, crossOriginLen, crossOriginPtr) {
      spasm.objects[ctx].crossOrigin = crossOriginDefined ? spasm.decode_string(crossOriginLen, crossOriginPtr) : undefined;
    },
    SVGImageElement_crossOrigin_Get: function(rawResult, ctx) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].crossOrigin);
    },
    SVGURIReference_href_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].href);
    },
    SVGLength_unitType_Get: function(ctx) {
      return spasm.objects[ctx].unitType;
    },
    SVGLength_value_Set: function(ctx, value) {
      spasm.objects[ctx].value = value;
    },
    SVGLength_value_Get: function(ctx) {
      return spasm.objects[ctx].value;
    },
    SVGLength_valueInSpecifiedUnits_Set: function(ctx, valueInSpecifiedUnits) {
      spasm.objects[ctx].valueInSpecifiedUnits = valueInSpecifiedUnits;
    },
    SVGLength_valueInSpecifiedUnits_Get: function(ctx) {
      return spasm.objects[ctx].valueInSpecifiedUnits;
    },
    SVGLength_valueAsString_Set: function(ctx, valueAsStringLen, valueAsStringPtr) {
      spasm.objects[ctx].valueAsString = spasm.decode_string(valueAsStringLen, valueAsStringPtr);
    },
    SVGLength_valueAsString_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].valueAsString);
    },
    SVGLength_newValueSpecifiedUnits: function(ctx, unitType, valueInSpecifiedUnits) {
      spasm.objects[ctx].newValueSpecifiedUnits(unitType, valueInSpecifiedUnits);
    },
    SVGLength_convertToSpecifiedUnits: function(ctx, unitType) {
      spasm.objects[ctx].convertToSpecifiedUnits(unitType);
    },
    SVGLengthList_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    SVGLengthList_numberOfItems_Get: function(ctx) {
      return spasm.objects[ctx].numberOfItems;
    },
    SVGLengthList_clear: function(ctx) {
      spasm.objects[ctx].clear();
    },
    SVGLengthList_initialize: function(ctx, newItem) {
      return spasm.addObject(spasm.objects[ctx].initialize(spasm.objects[newItem]));
    },
    SVGLengthList_getItem_getter: function(ctx, index) {
      return spasm.addObject(spasm.objects[ctx].getItem(index));
    },
    SVGLengthList_insertItemBefore: function(ctx, newItem, index) {
      return spasm.addObject(spasm.objects[ctx].insertItemBefore(spasm.objects[newItem], index));
    },
    SVGLengthList_replaceItem: function(ctx, newItem, index) {
      return spasm.addObject(spasm.objects[ctx].replaceItem(spasm.objects[newItem], index));
    },
    SVGLengthList_removeItem: function(ctx, index) {
      return spasm.addObject(spasm.objects[ctx].removeItem(index));
    },
    SVGLengthList_appendItem: function(ctx, newItem) {
      return spasm.addObject(spasm.objects[ctx].appendItem(spasm.objects[newItem]));
    },
    SVGLengthList_setter__uint_Handle: function(ctx, index, newItem) {
      spasm.objects[ctx][index] = spasm.objects[newItem];
    },
    SVGLineElement_x1_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].x1);
    },
    SVGLineElement_y1_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].y1);
    },
    SVGLineElement_x2_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].x2);
    },
    SVGLineElement_y2_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].y2);
    },
    SVGLinearGradientElement_x1_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].x1);
    },
    SVGLinearGradientElement_y1_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].y1);
    },
    SVGLinearGradientElement_x2_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].x2);
    },
    SVGLinearGradientElement_y2_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].y2);
    },
    SVGMarkerElement_refX_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].refX);
    },
    SVGMarkerElement_refY_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].refY);
    },
    SVGMarkerElement_markerUnits_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].markerUnits);
    },
    SVGMarkerElement_markerWidth_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].markerWidth);
    },
    SVGMarkerElement_markerHeight_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].markerHeight);
    },
    SVGMarkerElement_orientType_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].orientType);
    },
    SVGMarkerElement_orientAngle_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].orientAngle);
    },
    SVGMarkerElement_orient_Set: function(ctx, orientLen, orientPtr) {
      spasm.objects[ctx].orient = spasm.decode_string(orientLen, orientPtr);
    },
    SVGMarkerElement_orient_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].orient);
    },
    SVGMarkerElement_setOrientToAuto: function(ctx) {
      spasm.objects[ctx].setOrientToAuto();
    },
    SVGMarkerElement_setOrientToAngle: function(ctx, angle) {
      spasm.objects[ctx].setOrientToAngle(spasm.objects[angle]);
    },
    SVGFitToViewBox_viewBox_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].viewBox);
    },
    SVGFitToViewBox_preserveAspectRatio_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].preserveAspectRatio);
    },
    SVGNumber_value_Set: function(ctx, value) {
      spasm.objects[ctx].value = value;
    },
    SVGNumber_value_Get: function(ctx) {
      return spasm.objects[ctx].value;
    },
    SVGNumberList_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    SVGNumberList_numberOfItems_Get: function(ctx) {
      return spasm.objects[ctx].numberOfItems;
    },
    SVGNumberList_clear: function(ctx) {
      spasm.objects[ctx].clear();
    },
    SVGNumberList_initialize: function(ctx, newItem) {
      return spasm.addObject(spasm.objects[ctx].initialize(spasm.objects[newItem]));
    },
    SVGNumberList_getItem_getter: function(ctx, index) {
      return spasm.addObject(spasm.objects[ctx].getItem(index));
    },
    SVGNumberList_insertItemBefore: function(ctx, newItem, index) {
      return spasm.addObject(spasm.objects[ctx].insertItemBefore(spasm.objects[newItem], index));
    },
    SVGNumberList_replaceItem: function(ctx, newItem, index) {
      return spasm.addObject(spasm.objects[ctx].replaceItem(spasm.objects[newItem], index));
    },
    SVGNumberList_removeItem: function(ctx, index) {
      return spasm.addObject(spasm.objects[ctx].removeItem(index));
    },
    SVGNumberList_appendItem: function(ctx, newItem) {
      return spasm.addObject(spasm.objects[ctx].appendItem(spasm.objects[newItem]));
    },
    SVGNumberList_setter__uint_Handle: function(ctx, index, newItem) {
      spasm.objects[ctx][index] = spasm.objects[newItem];
    },
    SVGPatternElement_patternUnits_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].patternUnits);
    },
    SVGPatternElement_patternContentUnits_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].patternContentUnits);
    },
    SVGPatternElement_patternTransform_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].patternTransform);
    },
    SVGPatternElement_x_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].x);
    },
    SVGPatternElement_y_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].y);
    },
    SVGPatternElement_width_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].width);
    },
    SVGPatternElement_height_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].height);
    },
    SVGFitToViewBox_viewBox_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].viewBox);
    },
    SVGFitToViewBox_preserveAspectRatio_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].preserveAspectRatio);
    },
    SVGURIReference_href_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].href);
    },
    SVGPointList_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    SVGPointList_numberOfItems_Get: function(ctx) {
      return spasm.objects[ctx].numberOfItems;
    },
    SVGPointList_clear: function(ctx) {
      spasm.objects[ctx].clear();
    },
    SVGPointList_initialize: function(ctx, newItem) {
      return spasm.addObject(spasm.objects[ctx].initialize(spasm.objects[newItem]));
    },
    SVGPointList_getItem_getter: function(ctx, index) {
      return spasm.addObject(spasm.objects[ctx].getItem(index));
    },
    SVGPointList_insertItemBefore: function(ctx, newItem, index) {
      return spasm.addObject(spasm.objects[ctx].insertItemBefore(spasm.objects[newItem], index));
    },
    SVGPointList_replaceItem: function(ctx, newItem, index) {
      return spasm.addObject(spasm.objects[ctx].replaceItem(spasm.objects[newItem], index));
    },
    SVGPointList_removeItem: function(ctx, index) {
      return spasm.addObject(spasm.objects[ctx].removeItem(index));
    },
    SVGPointList_appendItem: function(ctx, newItem) {
      return spasm.addObject(spasm.objects[ctx].appendItem(spasm.objects[newItem]));
    },
    SVGPointList_setter__uint_Handle: function(ctx, index, newItem) {
      spasm.objects[ctx][index] = spasm.objects[newItem];
    },
    SVGAnimatedPoints_points_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].points);
    },
    SVGAnimatedPoints_animatedPoints_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].animatedPoints);
    },
    SVGAnimatedPoints_points_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].points);
    },
    SVGAnimatedPoints_animatedPoints_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].animatedPoints);
    },
    SVGPreserveAspectRatio_align_Set: function(ctx, align) {
      spasm.objects[ctx].align = align;
    },
    SVGPreserveAspectRatio_align_Get: function(ctx) {
      return spasm.objects[ctx].align;
    },
    SVGPreserveAspectRatio_meetOrSlice_Set: function(ctx, meetOrSlice) {
      spasm.objects[ctx].meetOrSlice = meetOrSlice;
    },
    SVGPreserveAspectRatio_meetOrSlice_Get: function(ctx) {
      return spasm.objects[ctx].meetOrSlice;
    },
    SVGRadialGradientElement_cx_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].cx);
    },
    SVGRadialGradientElement_cy_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].cy);
    },
    SVGRadialGradientElement_r_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].r);
    },
    SVGRadialGradientElement_fx_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].fx);
    },
    SVGRadialGradientElement_fy_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].fy);
    },
    SVGRadialGradientElement_fr_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].fr);
    },
    SVGRectElement_x_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].x);
    },
    SVGRectElement_y_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].y);
    },
    SVGRectElement_width_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].width);
    },
    SVGRectElement_height_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].height);
    },
    SVGRectElement_rx_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].rx);
    },
    SVGRectElement_ry_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].ry);
    },
    SVGSVGElement_x_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].x);
    },
    SVGSVGElement_y_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].y);
    },
    SVGSVGElement_width_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].width);
    },
    SVGSVGElement_height_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].height);
    },
    SVGSVGElement_currentScale_Set: function(ctx, currentScale) {
      spasm.objects[ctx].currentScale = currentScale;
    },
    SVGSVGElement_currentScale_Get: function(ctx) {
      return spasm.objects[ctx].currentScale;
    },
    SVGSVGElement_currentTranslate_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].currentTranslate);
    },
    SVGSVGElement_getIntersectionList: function(ctx, rect, referenceElementDefined, referenceElement) {
      return spasm.addObject(spasm.objects[ctx].getIntersectionList(spasm.objects[rect], referenceElementDefined ? spasm.objects[referenceElement] : undefined));
    },
    SVGSVGElement_getEnclosureList: function(ctx, rect, referenceElementDefined, referenceElement) {
      return spasm.addObject(spasm.objects[ctx].getEnclosureList(spasm.objects[rect], referenceElementDefined ? spasm.objects[referenceElement] : undefined));
    },
    SVGSVGElement_checkIntersection: function(ctx, element, rect) {
      return spasm.objects[ctx].checkIntersection(spasm.objects[element], spasm.objects[rect]);
    },
    SVGSVGElement_checkEnclosure: function(ctx, element, rect) {
      return spasm.objects[ctx].checkEnclosure(spasm.objects[element], spasm.objects[rect]);
    },
    SVGSVGElement_deselectAll: function(ctx) {
      spasm.objects[ctx].deselectAll();
    },
    SVGSVGElement_createSVGNumber: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].createSVGNumber());
    },
    SVGSVGElement_createSVGLength: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].createSVGLength());
    },
    SVGSVGElement_createSVGAngle: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].createSVGAngle());
    },
    SVGSVGElement_createSVGPoint: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].createSVGPoint());
    },
    SVGSVGElement_createSVGMatrix: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].createSVGMatrix());
    },
    SVGSVGElement_createSVGRect: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].createSVGRect());
    },
    SVGSVGElement_createSVGTransform: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].createSVGTransform());
    },
    SVGSVGElement_createSVGTransformFromMatrix: function(ctx, matrix) {
      return spasm.addObject(spasm.objects[ctx].createSVGTransformFromMatrix(spasm.objects[matrix]));
    },
    SVGSVGElement_getElementById: function(ctx, elementIdLen, elementIdPtr) {
      return spasm.addObject(spasm.objects[ctx].getElementById(spasm.decode_string(elementIdLen, elementIdPtr)));
    },
    SVGSVGElement_suspendRedraw: function(ctx, maxWaitMilliseconds) {
      return spasm.objects[ctx].suspendRedraw(maxWaitMilliseconds);
    },
    SVGSVGElement_unsuspendRedraw: function(ctx, suspendHandleID) {
      spasm.objects[ctx].unsuspendRedraw(suspendHandleID);
    },
    SVGSVGElement_unsuspendRedrawAll: function(ctx) {
      spasm.objects[ctx].unsuspendRedrawAll();
    },
    SVGSVGElement_forceRedraw: function(ctx) {
      spasm.objects[ctx].forceRedraw();
    },
    SVGFitToViewBox_viewBox_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].viewBox);
    },
    SVGFitToViewBox_preserveAspectRatio_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].preserveAspectRatio);
    },
    SVGScriptElement_type_Set: function(ctx, typeLen, typePtr) {
      spasm.objects[ctx].type = spasm.decode_string(typeLen, typePtr);
    },
    SVGScriptElement_type_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].type);
    },
    SVGScriptElement_crossOrigin_Set: function(ctx, crossOriginDefined, crossOriginLen, crossOriginPtr) {
      spasm.objects[ctx].crossOrigin = crossOriginDefined ? spasm.decode_string(crossOriginLen, crossOriginPtr) : undefined;
    },
    SVGScriptElement_crossOrigin_Get: function(rawResult, ctx) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].crossOrigin);
    },
    SVGURIReference_href_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].href);
    },
    SVGStopElement_offset_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].offset);
    },
    SVGStringList_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    SVGStringList_numberOfItems_Get: function(ctx) {
      return spasm.objects[ctx].numberOfItems;
    },
    SVGStringList_clear: function(ctx) {
      spasm.objects[ctx].clear();
    },
    SVGStringList_initialize: function(rawResult, ctx, newItemLen, newItemPtr) {
      spasm.encode.string(rawResult, spasm.objects[ctx].initialize(spasm.decode_string(newItemLen, newItemPtr)));
    },
    SVGStringList_getItem_getter: function(rawResult, ctx, index) {
      spasm.encode.string(rawResult, spasm.objects[ctx].getItem(index));
    },
    SVGStringList_insertItemBefore: function(rawResult, ctx, newItemLen, newItemPtr, index) {
      spasm.encode.string(rawResult, spasm.objects[ctx].insertItemBefore(spasm.decode_string(newItemLen, newItemPtr), index));
    },
    SVGStringList_replaceItem: function(rawResult, ctx, newItemLen, newItemPtr, index) {
      spasm.encode.string(rawResult, spasm.objects[ctx].replaceItem(spasm.decode_string(newItemLen, newItemPtr), index));
    },
    SVGStringList_removeItem: function(rawResult, ctx, index) {
      spasm.encode.string(rawResult, spasm.objects[ctx].removeItem(index));
    },
    SVGStringList_appendItem: function(rawResult, ctx, newItemLen, newItemPtr) {
      spasm.encode.string(rawResult, spasm.objects[ctx].appendItem(spasm.decode_string(newItemLen, newItemPtr)));
    },
    SVGStringList_setter__uint_string: function(ctx, index, newItemLen, newItemPtr) {
      spasm.objects[ctx][index] = spasm.decode_string(newItemLen, newItemPtr);
    },
    SVGStyleElement_type_Set: function(ctx, typeLen, typePtr) {
      spasm.objects[ctx].type = spasm.decode_string(typeLen, typePtr);
    },
    SVGStyleElement_type_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].type);
    },
    SVGStyleElement_media_Set: function(ctx, mediaLen, mediaPtr) {
      spasm.objects[ctx].media = spasm.decode_string(mediaLen, mediaPtr);
    },
    SVGStyleElement_media_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].media);
    },
    SVGStyleElement_title_Set: function(ctx, titleLen, titlePtr) {
      spasm.objects[ctx].title = spasm.decode_string(titleLen, titlePtr);
    },
    SVGStyleElement_title_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].title);
    },
    LinkStyle_sheet_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].sheet);
    },
    SVGFitToViewBox_viewBox_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].viewBox);
    },
    SVGFitToViewBox_preserveAspectRatio_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].preserveAspectRatio);
    },
    SVGTextContentElement_textLength_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].textLength);
    },
    SVGTextContentElement_lengthAdjust_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].lengthAdjust);
    },
    SVGTextContentElement_getNumberOfChars: function(ctx) {
      return spasm.objects[ctx].getNumberOfChars();
    },
    SVGTextContentElement_getComputedTextLength: function(ctx) {
      return spasm.objects[ctx].getComputedTextLength();
    },
    SVGTextContentElement_getSubStringLength: function(ctx, charnum, nchars) {
      return spasm.objects[ctx].getSubStringLength(charnum, nchars);
    },
    SVGTextContentElement_getStartPositionOfChar: function(ctx, charnum) {
      return spasm.addObject(spasm.objects[ctx].getStartPositionOfChar(charnum));
    },
    SVGTextContentElement_getEndPositionOfChar: function(ctx, charnum) {
      return spasm.addObject(spasm.objects[ctx].getEndPositionOfChar(charnum));
    },
    SVGTextContentElement_getExtentOfChar: function(ctx, charnum) {
      return spasm.addObject(spasm.objects[ctx].getExtentOfChar(charnum));
    },
    SVGTextContentElement_getRotationOfChar: function(ctx, charnum) {
      return spasm.objects[ctx].getRotationOfChar(charnum);
    },
    SVGTextContentElement_getCharNumAtPosition: function(ctx, point) {
      return spasm.objects[ctx].getCharNumAtPosition(spasm.objects[point]);
    },
    SVGTextContentElement_selectSubString: function(ctx, charnum, nchars) {
      spasm.objects[ctx].selectSubString(charnum, nchars);
    },
    SVGTextPathElement_startOffset_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].startOffset);
    },
    SVGTextPathElement_method_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].method);
    },
    SVGTextPathElement_spacing_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].spacing);
    },
    SVGURIReference_href_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].href);
    },
    SVGTextPositioningElement_x_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].x);
    },
    SVGTextPositioningElement_y_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].y);
    },
    SVGTextPositioningElement_dx_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].dx);
    },
    SVGTextPositioningElement_dy_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].dy);
    },
    SVGTextPositioningElement_rotate_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].rotate);
    },
    SVGTransform_type_Get: function(ctx) {
      return spasm.objects[ctx].type;
    },
    SVGTransform_matrix_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].matrix);
    },
    SVGTransform_angle_Get: function(ctx) {
      return spasm.objects[ctx].angle;
    },
    SVGTransform_setMatrix: function(ctx, matrix) {
      spasm.objects[ctx].setMatrix(spasm.objects[matrix]);
    },
    SVGTransform_setTranslate: function(ctx, tx, ty) {
      spasm.objects[ctx].setTranslate(tx, ty);
    },
    SVGTransform_setScale: function(ctx, sx, sy) {
      spasm.objects[ctx].setScale(sx, sy);
    },
    SVGTransform_setRotate: function(ctx, angle, cx, cy) {
      spasm.objects[ctx].setRotate(angle, cx, cy);
    },
    SVGTransform_setSkewX: function(ctx, angle) {
      spasm.objects[ctx].setSkewX(angle);
    },
    SVGTransform_setSkewY: function(ctx, angle) {
      spasm.objects[ctx].setSkewY(angle);
    },
    SVGTransformList_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    SVGTransformList_numberOfItems_Get: function(ctx) {
      return spasm.objects[ctx].numberOfItems;
    },
    SVGTransformList_clear: function(ctx) {
      spasm.objects[ctx].clear();
    },
    SVGTransformList_initialize: function(ctx, newItem) {
      return spasm.addObject(spasm.objects[ctx].initialize(spasm.objects[newItem]));
    },
    SVGTransformList_getItem_getter: function(ctx, index) {
      return spasm.addObject(spasm.objects[ctx].getItem(index));
    },
    SVGTransformList_insertItemBefore: function(ctx, newItem, index) {
      return spasm.addObject(spasm.objects[ctx].insertItemBefore(spasm.objects[newItem], index));
    },
    SVGTransformList_replaceItem: function(ctx, newItem, index) {
      return spasm.addObject(spasm.objects[ctx].replaceItem(spasm.objects[newItem], index));
    },
    SVGTransformList_removeItem: function(ctx, index) {
      return spasm.addObject(spasm.objects[ctx].removeItem(index));
    },
    SVGTransformList_appendItem: function(ctx, newItem) {
      return spasm.addObject(spasm.objects[ctx].appendItem(spasm.objects[newItem]));
    },
    SVGTransformList_setter__uint_Handle: function(ctx, index, newItem) {
      spasm.objects[ctx][index] = spasm.objects[newItem];
    },
    SVGTransformList_createSVGTransformFromMatrix: function(ctx, matrix) {
      return spasm.addObject(spasm.objects[ctx].createSVGTransformFromMatrix(spasm.objects[matrix]));
    },
    SVGTransformList_consolidate: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].consolidate());
    },
    SVGUseElement_x_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].x);
    },
    SVGUseElement_y_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].y);
    },
    SVGUseElement_width_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].width);
    },
    SVGUseElement_height_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].height);
    },
    SVGUseElement_instanceRoot_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].instanceRoot);
    },
    SVGUseElement_animatedInstanceRoot_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].animatedInstanceRoot);
    },
    SVGURIReference_href_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].href);
    },
    SVGFitToViewBox_viewBox_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].viewBox);
    },
    SVGFitToViewBox_preserveAspectRatio_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].preserveAspectRatio);
    },
    ShadowAnimation_sourceAnimation_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].sourceAnimation);
    },
  }
}