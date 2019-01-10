module spasm.bindings.svg;

import spasm.types;
import spasm.bindings.cssom;
import spasm.bindings.dom;
import spasm.bindings.geometry;
import spasm.bindings.html;
import spasm.bindings.linkstyle;

struct SVGAElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGraphicsElement(h);
  }
  auto target() {
    return SVGAnimatedString(JsHandle(SVGAElement_target_Get(this._parent));
  }
  auto download(string download) {
    SVGAElement_download_Set(this._parent, download);
  }
  auto download() {
    return SVGAElement_download_Get(this._parent);
  }
  auto ping(string ping) {
    SVGAElement_ping_Set(this._parent, ping);
  }
  auto ping() {
    return SVGAElement_ping_Get(this._parent);
  }
  auto rel(string rel) {
    SVGAElement_rel_Set(this._parent, rel);
  }
  auto rel() {
    return SVGAElement_rel_Get(this._parent);
  }
  auto relList() {
    return DOMTokenList(JsHandle(SVGAElement_relList_Get(this._parent));
  }
  auto hreflang(string hreflang) {
    SVGAElement_hreflang_Set(this._parent, hreflang);
  }
  auto hreflang() {
    return SVGAElement_hreflang_Get(this._parent);
  }
  auto type(string type) {
    SVGAElement_type_Set(this._parent, type);
  }
  auto type() {
    return SVGAElement_type_Get(this._parent);
  }
  auto text(string text) {
    SVGAElement_text_Set(this._parent, text);
  }
  auto text() {
    return SVGAElement_text_Get(this._parent);
  }
  auto referrerPolicy(string referrerPolicy) {
    SVGAElement_referrerPolicy_Set(this._parent, referrerPolicy);
  }
  auto referrerPolicy() {
    return SVGAElement_referrerPolicy_Get(this._parent);
  }
  auto href() {
    return SVGAnimatedString(JsHandle(SVGURIReference_href_Get(this.handle));
  }
  auto href(string href) {
    HTMLHyperlinkElementUtils_href_Set(this.handle, href);
  }
  auto href() {
    return HTMLHyperlinkElementUtils_href_Get(this.handle);
  }
  auto origin() {
    return HTMLHyperlinkElementUtils_origin_Get(this.handle);
  }
}
struct SVGAngle {
  JsHandle handle;
  alias handle this;
  enum ushort SVG_ANGLETYPE_UNKNOWN = 0;
  enum ushort SVG_ANGLETYPE_UNSPECIFIED = 1;
  enum ushort SVG_ANGLETYPE_DEG = 2;
  enum ushort SVG_ANGLETYPE_RAD = 3;
  enum ushort SVG_ANGLETYPE_GRAD = 4;
  auto unitType() {
    return SVGAngle_unitType_Get(this.handle);
  }
  auto value(float value) {
    SVGAngle_value_Set(this.handle, value);
  }
  auto value() {
    return SVGAngle_value_Get(this.handle);
  }
  auto valueInSpecifiedUnits(float valueInSpecifiedUnits) {
    SVGAngle_valueInSpecifiedUnits_Set(this.handle, valueInSpecifiedUnits);
  }
  auto valueInSpecifiedUnits() {
    return SVGAngle_valueInSpecifiedUnits_Get(this.handle);
  }
  auto valueAsString(string valueAsString) {
    SVGAngle_valueAsString_Set(this.handle, valueAsString);
  }
  auto valueAsString() {
    return SVGAngle_valueAsString_Get(this.handle);
  }
  auto newValueSpecifiedUnits(ushort unitType, float valueInSpecifiedUnits) {
    SVGAngle_newValueSpecifiedUnits(this.handle, unitType, valueInSpecifiedUnits);
  }
  auto convertToSpecifiedUnits(ushort unitType) {
    SVGAngle_convertToSpecifiedUnits(this.handle, unitType);
  }
}
struct SVGAnimatedAngle {
  JsHandle handle;
  alias handle this;
  auto baseVal() {
    return SVGAngle(JsHandle(SVGAnimatedAngle_baseVal_Get(this.handle));
  }
  auto animVal() {
    return SVGAngle(JsHandle(SVGAnimatedAngle_animVal_Get(this.handle));
  }
}
struct SVGAnimatedBoolean {
  JsHandle handle;
  alias handle this;
  auto baseVal(bool baseVal) {
    SVGAnimatedBoolean_baseVal_Set(this.handle, baseVal);
  }
  auto baseVal() {
    return SVGAnimatedBoolean_baseVal_Get(this.handle);
  }
  auto animVal() {
    return SVGAnimatedBoolean_animVal_Get(this.handle);
  }
}
struct SVGAnimatedEnumeration {
  JsHandle handle;
  alias handle this;
  auto baseVal(ushort baseVal) {
    SVGAnimatedEnumeration_baseVal_Set(this.handle, baseVal);
  }
  auto baseVal() {
    return SVGAnimatedEnumeration_baseVal_Get(this.handle);
  }
  auto animVal() {
    return SVGAnimatedEnumeration_animVal_Get(this.handle);
  }
}
struct SVGAnimatedInteger {
  JsHandle handle;
  alias handle this;
  auto baseVal(int baseVal) {
    SVGAnimatedInteger_baseVal_Set(this.handle, baseVal);
  }
  auto baseVal() {
    return SVGAnimatedInteger_baseVal_Get(this.handle);
  }
  auto animVal() {
    return SVGAnimatedInteger_animVal_Get(this.handle);
  }
}
struct SVGAnimatedLength {
  JsHandle handle;
  alias handle this;
  auto baseVal() {
    return SVGLength(JsHandle(SVGAnimatedLength_baseVal_Get(this.handle));
  }
  auto animVal() {
    return SVGLength(JsHandle(SVGAnimatedLength_animVal_Get(this.handle));
  }
}
struct SVGAnimatedLengthList {
  JsHandle handle;
  alias handle this;
  auto baseVal() {
    return SVGLengthList(JsHandle(SVGAnimatedLengthList_baseVal_Get(this.handle));
  }
  auto animVal() {
    return SVGLengthList(JsHandle(SVGAnimatedLengthList_animVal_Get(this.handle));
  }
}
struct SVGAnimatedNumber {
  JsHandle handle;
  alias handle this;
  auto baseVal(float baseVal) {
    SVGAnimatedNumber_baseVal_Set(this.handle, baseVal);
  }
  auto baseVal() {
    return SVGAnimatedNumber_baseVal_Get(this.handle);
  }
  auto animVal() {
    return SVGAnimatedNumber_animVal_Get(this.handle);
  }
}
struct SVGAnimatedNumberList {
  JsHandle handle;
  alias handle this;
  auto baseVal() {
    return SVGNumberList(JsHandle(SVGAnimatedNumberList_baseVal_Get(this.handle));
  }
  auto animVal() {
    return SVGNumberList(JsHandle(SVGAnimatedNumberList_animVal_Get(this.handle));
  }
}
struct SVGAnimatedPreserveAspectRatio {
  JsHandle handle;
  alias handle this;
  auto baseVal() {
    return SVGPreserveAspectRatio(JsHandle(SVGAnimatedPreserveAspectRatio_baseVal_Get(this.handle));
  }
  auto animVal() {
    return SVGPreserveAspectRatio(JsHandle(SVGAnimatedPreserveAspectRatio_animVal_Get(this.handle));
  }
}
struct SVGAnimatedRect {
  JsHandle handle;
  alias handle this;
  auto baseVal() {
    return DOMRect(JsHandle(SVGAnimatedRect_baseVal_Get(this.handle));
  }
  auto animVal() {
    return DOMRectReadOnly(JsHandle(SVGAnimatedRect_animVal_Get(this.handle));
  }
}
struct SVGAnimatedString {
  JsHandle handle;
  alias handle this;
  auto baseVal(string baseVal) {
    SVGAnimatedString_baseVal_Set(this.handle, baseVal);
  }
  auto baseVal() {
    return SVGAnimatedString_baseVal_Get(this.handle);
  }
  auto animVal() {
    return SVGAnimatedString_animVal_Get(this.handle);
  }
}
struct SVGAnimatedTransformList {
  JsHandle handle;
  alias handle this;
  auto baseVal() {
    return SVGTransformList(JsHandle(SVGAnimatedTransformList_baseVal_Get(this.handle));
  }
  auto animVal() {
    return SVGTransformList(JsHandle(SVGAnimatedTransformList_animVal_Get(this.handle));
  }
}
struct SVGBoundingBoxOptions {
  JsHandle handle;
  alias handle this;
  auto fill(bool fill) {
    SVGBoundingBoxOptions_fill_Set(this.handle, fill);
  }
  auto fill() {
    return SVGBoundingBoxOptions_fill_Get(this.handle);
  }
  auto stroke(bool stroke) {
    SVGBoundingBoxOptions_stroke_Set(this.handle, stroke);
  }
  auto stroke() {
    return SVGBoundingBoxOptions_stroke_Get(this.handle);
  }
  auto markers(bool markers) {
    SVGBoundingBoxOptions_markers_Set(this.handle, markers);
  }
  auto markers() {
    return SVGBoundingBoxOptions_markers_Get(this.handle);
  }
  auto clipped(bool clipped) {
    SVGBoundingBoxOptions_clipped_Set(this.handle, clipped);
  }
  auto clipped() {
    return SVGBoundingBoxOptions_clipped_Get(this.handle);
  }
}
struct SVGCircleElement {
  SVGGeometryElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGeometryElement(h);
  }
  auto cx() {
    return SVGAnimatedLength(JsHandle(SVGCircleElement_cx_Get(this._parent));
  }
  auto cy() {
    return SVGAnimatedLength(JsHandle(SVGCircleElement_cy_Get(this._parent));
  }
  auto r() {
    return SVGAnimatedLength(JsHandle(SVGCircleElement_r_Get(this._parent));
  }
}
struct SVGDefsElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGraphicsElement(h);
  }
}
struct SVGDescElement {
  SVGElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGElement(h);
  }
}
struct SVGElement {
  Element _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Element(h);
  }
  auto className() {
    return SVGAnimatedString(JsHandle(SVGElement_className_Get(this._parent));
  }
  auto ownerSVGElement() {
    return SVGElement_ownerSVGElement_Get(this._parent);
  }
  auto viewportElement() {
    return SVGElement_viewportElement_Get(this._parent);
  }
  auto ongotpointercapture(EventHandler ongotpointercapture) {
    GlobalEventHandlers_ongotpointercapture_Set(this.handle, ongotpointercapture);
  }
  auto ongotpointercapture() {
    return GlobalEventHandlers_ongotpointercapture_Get(this.handle);
  }
  auto onlostpointercapture(EventHandler onlostpointercapture) {
    GlobalEventHandlers_onlostpointercapture_Set(this.handle, onlostpointercapture);
  }
  auto onlostpointercapture() {
    return GlobalEventHandlers_onlostpointercapture_Get(this.handle);
  }
  auto onpointerdown(EventHandler onpointerdown) {
    GlobalEventHandlers_onpointerdown_Set(this.handle, onpointerdown);
  }
  auto onpointerdown() {
    return GlobalEventHandlers_onpointerdown_Get(this.handle);
  }
  auto onpointermove(EventHandler onpointermove) {
    GlobalEventHandlers_onpointermove_Set(this.handle, onpointermove);
  }
  auto onpointermove() {
    return GlobalEventHandlers_onpointermove_Get(this.handle);
  }
  auto onpointerup(EventHandler onpointerup) {
    GlobalEventHandlers_onpointerup_Set(this.handle, onpointerup);
  }
  auto onpointerup() {
    return GlobalEventHandlers_onpointerup_Get(this.handle);
  }
  auto onpointercancel(EventHandler onpointercancel) {
    GlobalEventHandlers_onpointercancel_Set(this.handle, onpointercancel);
  }
  auto onpointercancel() {
    return GlobalEventHandlers_onpointercancel_Get(this.handle);
  }
  auto onpointerover(EventHandler onpointerover) {
    GlobalEventHandlers_onpointerover_Set(this.handle, onpointerover);
  }
  auto onpointerover() {
    return GlobalEventHandlers_onpointerover_Get(this.handle);
  }
  auto onpointerout(EventHandler onpointerout) {
    GlobalEventHandlers_onpointerout_Set(this.handle, onpointerout);
  }
  auto onpointerout() {
    return GlobalEventHandlers_onpointerout_Get(this.handle);
  }
  auto onpointerenter(EventHandler onpointerenter) {
    GlobalEventHandlers_onpointerenter_Set(this.handle, onpointerenter);
  }
  auto onpointerenter() {
    return GlobalEventHandlers_onpointerenter_Get(this.handle);
  }
  auto onpointerleave(EventHandler onpointerleave) {
    GlobalEventHandlers_onpointerleave_Set(this.handle, onpointerleave);
  }
  auto onpointerleave() {
    return GlobalEventHandlers_onpointerleave_Get(this.handle);
  }
  auto ontouchstart(EventHandler ontouchstart) {
    GlobalEventHandlers_ontouchstart_Set(this.handle, ontouchstart);
  }
  auto ontouchstart() {
    return GlobalEventHandlers_ontouchstart_Get(this.handle);
  }
  auto ontouchend(EventHandler ontouchend) {
    GlobalEventHandlers_ontouchend_Set(this.handle, ontouchend);
  }
  auto ontouchend() {
    return GlobalEventHandlers_ontouchend_Get(this.handle);
  }
  auto ontouchmove(EventHandler ontouchmove) {
    GlobalEventHandlers_ontouchmove_Set(this.handle, ontouchmove);
  }
  auto ontouchmove() {
    return GlobalEventHandlers_ontouchmove_Get(this.handle);
  }
  auto ontouchcancel(EventHandler ontouchcancel) {
    GlobalEventHandlers_ontouchcancel_Set(this.handle, ontouchcancel);
  }
  auto ontouchcancel() {
    return GlobalEventHandlers_ontouchcancel_Get(this.handle);
  }
  auto correspondingElement() {
    return SVGElementInstance_correspondingElement_Get(this.handle);
  }
  auto correspondingUseElement() {
    return SVGElementInstance_correspondingUseElement_Get(this.handle);
  }
  auto dataset() {
    return DOMStringMap(JsHandle(HTMLOrSVGElement_dataset_Get(this.handle));
  }
  auto focus(FocusOptions options) {
    HTMLOrSVGElement_focus(this.handle, options.handle);
  }
  auto blur() {
    HTMLOrSVGElement_blur(this.handle);
  }
}
struct SVGEllipseElement {
  SVGGeometryElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGeometryElement(h);
  }
  auto cx() {
    return SVGAnimatedLength(JsHandle(SVGEllipseElement_cx_Get(this._parent));
  }
  auto cy() {
    return SVGAnimatedLength(JsHandle(SVGEllipseElement_cy_Get(this._parent));
  }
  auto rx() {
    return SVGAnimatedLength(JsHandle(SVGEllipseElement_rx_Get(this._parent));
  }
  auto ry() {
    return SVGAnimatedLength(JsHandle(SVGEllipseElement_ry_Get(this._parent));
  }
}
struct SVGForeignObjectElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGraphicsElement(h);
  }
  auto x() {
    return SVGAnimatedLength(JsHandle(SVGForeignObjectElement_x_Get(this._parent));
  }
  auto y() {
    return SVGAnimatedLength(JsHandle(SVGForeignObjectElement_y_Get(this._parent));
  }
  auto width() {
    return SVGAnimatedLength(JsHandle(SVGForeignObjectElement_width_Get(this._parent));
  }
  auto height() {
    return SVGAnimatedLength(JsHandle(SVGForeignObjectElement_height_Get(this._parent));
  }
}
struct SVGGElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGraphicsElement(h);
  }
}
struct SVGGeometryElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGraphicsElement(h);
  }
  auto pathLength() {
    return SVGAnimatedNumber(JsHandle(SVGGeometryElement_pathLength_Get(this._parent));
  }
  auto isPointInFill(DOMPointInit point) {
    return SVGGeometryElement_isPointInFill(this._parent, point.handle);
  }
  auto isPointInStroke(DOMPointInit point) {
    return SVGGeometryElement_isPointInStroke(this._parent, point.handle);
  }
  auto getTotalLength() {
    return SVGGeometryElement_getTotalLength(this._parent);
  }
  auto getPointAtLength(float distance) {
    return DOMPoint(JsHandle(SVGGeometryElement_getPointAtLength(this._parent, distance));
  }
}
struct SVGGradientElement {
  SVGElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGElement(h);
  }
  enum ushort SVG_SPREADMETHOD_UNKNOWN = 0;
  enum ushort SVG_SPREADMETHOD_PAD = 1;
  enum ushort SVG_SPREADMETHOD_REFLECT = 2;
  enum ushort SVG_SPREADMETHOD_REPEAT = 3;
  auto gradientUnits() {
    return SVGAnimatedEnumeration(JsHandle(SVGGradientElement_gradientUnits_Get(this._parent));
  }
  auto gradientTransform() {
    return SVGAnimatedTransformList(JsHandle(SVGGradientElement_gradientTransform_Get(this._parent));
  }
  auto spreadMethod() {
    return SVGAnimatedEnumeration(JsHandle(SVGGradientElement_spreadMethod_Get(this._parent));
  }
  auto href() {
    return SVGAnimatedString(JsHandle(SVGURIReference_href_Get(this.handle));
  }
}
struct SVGGraphicsElement {
  SVGElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGElement(h);
  }
  auto transform() {
    return SVGAnimatedTransformList(JsHandle(SVGGraphicsElement_transform_Get(this._parent));
  }
  auto getBBox(SVGBoundingBoxOptions options) {
    return DOMRect(JsHandle(SVGGraphicsElement_getBBox(this._parent, options.handle));
  }
  auto getCTM() {
    return SVGGraphicsElement_getCTM(this._parent);
  }
  auto getScreenCTM() {
    return SVGGraphicsElement_getScreenCTM(this._parent);
  }
  auto requiredExtensions() {
    return SVGStringList(JsHandle(SVGTests_requiredExtensions_Get(this.handle));
  }
  auto systemLanguage() {
    return SVGStringList(JsHandle(SVGTests_systemLanguage_Get(this.handle));
  }
}
struct SVGImageElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGraphicsElement(h);
  }
  auto x() {
    return SVGAnimatedLength(JsHandle(SVGImageElement_x_Get(this._parent));
  }
  auto y() {
    return SVGAnimatedLength(JsHandle(SVGImageElement_y_Get(this._parent));
  }
  auto width() {
    return SVGAnimatedLength(JsHandle(SVGImageElement_width_Get(this._parent));
  }
  auto height() {
    return SVGAnimatedLength(JsHandle(SVGImageElement_height_Get(this._parent));
  }
  auto preserveAspectRatio() {
    return SVGAnimatedPreserveAspectRatio(JsHandle(SVGImageElement_preserveAspectRatio_Get(this._parent));
  }
  auto crossOrigin(Optional!(string) crossOrigin) {
    SVGImageElement_crossOrigin_Set(this._parent, !crossOrigin.empty, crossOrigin.front);
  }
  auto crossOrigin() {
    return SVGImageElement_crossOrigin_Get(this._parent);
  }
  auto href() {
    return SVGAnimatedString(JsHandle(SVGURIReference_href_Get(this.handle));
  }
}
struct SVGLength {
  JsHandle handle;
  alias handle this;
  enum ushort SVG_LENGTHTYPE_UNKNOWN = 0;
  enum ushort SVG_LENGTHTYPE_NUMBER = 1;
  enum ushort SVG_LENGTHTYPE_PERCENTAGE = 2;
  enum ushort SVG_LENGTHTYPE_EMS = 3;
  enum ushort SVG_LENGTHTYPE_EXS = 4;
  enum ushort SVG_LENGTHTYPE_PX = 5;
  enum ushort SVG_LENGTHTYPE_CM = 6;
  enum ushort SVG_LENGTHTYPE_MM = 7;
  enum ushort SVG_LENGTHTYPE_IN = 8;
  enum ushort SVG_LENGTHTYPE_PT = 9;
  enum ushort SVG_LENGTHTYPE_PC = 10;
  auto unitType() {
    return SVGLength_unitType_Get(this.handle);
  }
  auto value(float value) {
    SVGLength_value_Set(this.handle, value);
  }
  auto value() {
    return SVGLength_value_Get(this.handle);
  }
  auto valueInSpecifiedUnits(float valueInSpecifiedUnits) {
    SVGLength_valueInSpecifiedUnits_Set(this.handle, valueInSpecifiedUnits);
  }
  auto valueInSpecifiedUnits() {
    return SVGLength_valueInSpecifiedUnits_Get(this.handle);
  }
  auto valueAsString(string valueAsString) {
    SVGLength_valueAsString_Set(this.handle, valueAsString);
  }
  auto valueAsString() {
    return SVGLength_valueAsString_Get(this.handle);
  }
  auto newValueSpecifiedUnits(ushort unitType, float valueInSpecifiedUnits) {
    SVGLength_newValueSpecifiedUnits(this.handle, unitType, valueInSpecifiedUnits);
  }
  auto convertToSpecifiedUnits(ushort unitType) {
    SVGLength_convertToSpecifiedUnits(this.handle, unitType);
  }
}
struct SVGLengthList {
  JsHandle handle;
  alias handle this;
  auto length() {
    return SVGLengthList_length_Get(this.handle);
  }
  auto numberOfItems() {
    return SVGLengthList_numberOfItems_Get(this.handle);
  }
  auto clear() {
    SVGLengthList_clear(this.handle);
  }
  auto initialize(SVGLength newItem) {
    return SVGLength(JsHandle(SVGLengthList_initialize(this.handle, newItem.handle));
  }
  auto getItem(uint index) {
    return SVGLength(JsHandle(SVGLengthList_getItem_getter(this.handle, index));
  }
  auto insertItemBefore(SVGLength newItem, uint index) {
    return SVGLength(JsHandle(SVGLengthList_insertItemBefore(this.handle, newItem.handle, index));
  }
  auto replaceItem(SVGLength newItem, uint index) {
    return SVGLength(JsHandle(SVGLengthList_replaceItem(this.handle, newItem.handle, index));
  }
  auto removeItem(uint index) {
    return SVGLength(JsHandle(SVGLengthList_removeItem(this.handle, index));
  }
  auto appendItem(SVGLength newItem) {
    return SVGLength(JsHandle(SVGLengthList_appendItem(this.handle, newItem.handle));
  }
  auto opIndexAssign(SVGLength newItem, uint index) {
    SVGLengthList_setter__uint_Handle(this.handle, index, newItem.handle);
  }
  auto opDispatch(uint index)(SVGLength newItem) {
    SVGLengthList_setter__uint_Handle(this.handle, index, newItem.handle);
  }
}
struct SVGLineElement {
  SVGGeometryElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGeometryElement(h);
  }
  auto x1() {
    return SVGAnimatedLength(JsHandle(SVGLineElement_x1_Get(this._parent));
  }
  auto y1() {
    return SVGAnimatedLength(JsHandle(SVGLineElement_y1_Get(this._parent));
  }
  auto x2() {
    return SVGAnimatedLength(JsHandle(SVGLineElement_x2_Get(this._parent));
  }
  auto y2() {
    return SVGAnimatedLength(JsHandle(SVGLineElement_y2_Get(this._parent));
  }
}
struct SVGLinearGradientElement {
  SVGGradientElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGradientElement(h);
  }
  auto x1() {
    return SVGAnimatedLength(JsHandle(SVGLinearGradientElement_x1_Get(this._parent));
  }
  auto y1() {
    return SVGAnimatedLength(JsHandle(SVGLinearGradientElement_y1_Get(this._parent));
  }
  auto x2() {
    return SVGAnimatedLength(JsHandle(SVGLinearGradientElement_x2_Get(this._parent));
  }
  auto y2() {
    return SVGAnimatedLength(JsHandle(SVGLinearGradientElement_y2_Get(this._parent));
  }
}
struct SVGMarkerElement {
  SVGElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGElement(h);
  }
  enum ushort SVG_MARKERUNITS_UNKNOWN = 0;
  enum ushort SVG_MARKERUNITS_USERSPACEONUSE = 1;
  enum ushort SVG_MARKERUNITS_STROKEWIDTH = 2;
  enum ushort SVG_MARKER_ORIENT_UNKNOWN = 0;
  enum ushort SVG_MARKER_ORIENT_AUTO = 1;
  enum ushort SVG_MARKER_ORIENT_ANGLE = 2;
  auto refX() {
    return SVGAnimatedLength(JsHandle(SVGMarkerElement_refX_Get(this._parent));
  }
  auto refY() {
    return SVGAnimatedLength(JsHandle(SVGMarkerElement_refY_Get(this._parent));
  }
  auto markerUnits() {
    return SVGAnimatedEnumeration(JsHandle(SVGMarkerElement_markerUnits_Get(this._parent));
  }
  auto markerWidth() {
    return SVGAnimatedLength(JsHandle(SVGMarkerElement_markerWidth_Get(this._parent));
  }
  auto markerHeight() {
    return SVGAnimatedLength(JsHandle(SVGMarkerElement_markerHeight_Get(this._parent));
  }
  auto orientType() {
    return SVGAnimatedEnumeration(JsHandle(SVGMarkerElement_orientType_Get(this._parent));
  }
  auto orientAngle() {
    return SVGAnimatedAngle(JsHandle(SVGMarkerElement_orientAngle_Get(this._parent));
  }
  auto orient(string orient) {
    SVGMarkerElement_orient_Set(this._parent, orient);
  }
  auto orient() {
    return SVGMarkerElement_orient_Get(this._parent);
  }
  auto setOrientToAuto() {
    SVGMarkerElement_setOrientToAuto(this._parent);
  }
  auto setOrientToAngle(SVGAngle angle) {
    SVGMarkerElement_setOrientToAngle(this._parent, angle.handle);
  }
  auto viewBox() {
    return SVGAnimatedRect(JsHandle(SVGFitToViewBox_viewBox_Get(this.handle));
  }
  auto preserveAspectRatio() {
    return SVGAnimatedPreserveAspectRatio(JsHandle(SVGFitToViewBox_preserveAspectRatio_Get(this.handle));
  }
}
struct SVGMetadataElement {
  SVGElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGElement(h);
  }
}
struct SVGNumber {
  JsHandle handle;
  alias handle this;
  auto value(float value) {
    SVGNumber_value_Set(this.handle, value);
  }
  auto value() {
    return SVGNumber_value_Get(this.handle);
  }
}
struct SVGNumberList {
  JsHandle handle;
  alias handle this;
  auto length() {
    return SVGNumberList_length_Get(this.handle);
  }
  auto numberOfItems() {
    return SVGNumberList_numberOfItems_Get(this.handle);
  }
  auto clear() {
    SVGNumberList_clear(this.handle);
  }
  auto initialize(SVGNumber newItem) {
    return SVGNumber(JsHandle(SVGNumberList_initialize(this.handle, newItem.handle));
  }
  auto getItem(uint index) {
    return SVGNumber(JsHandle(SVGNumberList_getItem_getter(this.handle, index));
  }
  auto insertItemBefore(SVGNumber newItem, uint index) {
    return SVGNumber(JsHandle(SVGNumberList_insertItemBefore(this.handle, newItem.handle, index));
  }
  auto replaceItem(SVGNumber newItem, uint index) {
    return SVGNumber(JsHandle(SVGNumberList_replaceItem(this.handle, newItem.handle, index));
  }
  auto removeItem(uint index) {
    return SVGNumber(JsHandle(SVGNumberList_removeItem(this.handle, index));
  }
  auto appendItem(SVGNumber newItem) {
    return SVGNumber(JsHandle(SVGNumberList_appendItem(this.handle, newItem.handle));
  }
  auto opIndexAssign(SVGNumber newItem, uint index) {
    SVGNumberList_setter__uint_Handle(this.handle, index, newItem.handle);
  }
  auto opDispatch(uint index)(SVGNumber newItem) {
    SVGNumberList_setter__uint_Handle(this.handle, index, newItem.handle);
  }
}
struct SVGPathElement {
  SVGGeometryElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGeometryElement(h);
  }
}
struct SVGPatternElement {
  SVGElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGElement(h);
  }
  auto patternUnits() {
    return SVGAnimatedEnumeration(JsHandle(SVGPatternElement_patternUnits_Get(this._parent));
  }
  auto patternContentUnits() {
    return SVGAnimatedEnumeration(JsHandle(SVGPatternElement_patternContentUnits_Get(this._parent));
  }
  auto patternTransform() {
    return SVGAnimatedTransformList(JsHandle(SVGPatternElement_patternTransform_Get(this._parent));
  }
  auto x() {
    return SVGAnimatedLength(JsHandle(SVGPatternElement_x_Get(this._parent));
  }
  auto y() {
    return SVGAnimatedLength(JsHandle(SVGPatternElement_y_Get(this._parent));
  }
  auto width() {
    return SVGAnimatedLength(JsHandle(SVGPatternElement_width_Get(this._parent));
  }
  auto height() {
    return SVGAnimatedLength(JsHandle(SVGPatternElement_height_Get(this._parent));
  }
  auto viewBox() {
    return SVGAnimatedRect(JsHandle(SVGFitToViewBox_viewBox_Get(this.handle));
  }
  auto preserveAspectRatio() {
    return SVGAnimatedPreserveAspectRatio(JsHandle(SVGFitToViewBox_preserveAspectRatio_Get(this.handle));
  }
  auto href() {
    return SVGAnimatedString(JsHandle(SVGURIReference_href_Get(this.handle));
  }
}
struct SVGPointList {
  JsHandle handle;
  alias handle this;
  auto length() {
    return SVGPointList_length_Get(this.handle);
  }
  auto numberOfItems() {
    return SVGPointList_numberOfItems_Get(this.handle);
  }
  auto clear() {
    SVGPointList_clear(this.handle);
  }
  auto initialize(DOMPoint newItem) {
    return DOMPoint(JsHandle(SVGPointList_initialize(this.handle, newItem.handle));
  }
  auto getItem(uint index) {
    return DOMPoint(JsHandle(SVGPointList_getItem_getter(this.handle, index));
  }
  auto insertItemBefore(DOMPoint newItem, uint index) {
    return DOMPoint(JsHandle(SVGPointList_insertItemBefore(this.handle, newItem.handle, index));
  }
  auto replaceItem(DOMPoint newItem, uint index) {
    return DOMPoint(JsHandle(SVGPointList_replaceItem(this.handle, newItem.handle, index));
  }
  auto removeItem(uint index) {
    return DOMPoint(JsHandle(SVGPointList_removeItem(this.handle, index));
  }
  auto appendItem(DOMPoint newItem) {
    return DOMPoint(JsHandle(SVGPointList_appendItem(this.handle, newItem.handle));
  }
  auto opIndexAssign(DOMPoint newItem, uint index) {
    SVGPointList_setter__uint_Handle(this.handle, index, newItem.handle);
  }
  auto opDispatch(uint index)(DOMPoint newItem) {
    SVGPointList_setter__uint_Handle(this.handle, index, newItem.handle);
  }
}
struct SVGPolygonElement {
  SVGGeometryElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGeometryElement(h);
  }
  auto points() {
    return SVGPointList(JsHandle(SVGAnimatedPoints_points_Get(this.handle));
  }
  auto animatedPoints() {
    return SVGPointList(JsHandle(SVGAnimatedPoints_animatedPoints_Get(this.handle));
  }
}
struct SVGPolylineElement {
  SVGGeometryElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGeometryElement(h);
  }
  auto points() {
    return SVGPointList(JsHandle(SVGAnimatedPoints_points_Get(this.handle));
  }
  auto animatedPoints() {
    return SVGPointList(JsHandle(SVGAnimatedPoints_animatedPoints_Get(this.handle));
  }
}
struct SVGPreserveAspectRatio {
  JsHandle handle;
  alias handle this;
  enum ushort SVG_PRESERVEASPECTRATIO_UNKNOWN = 0;
  enum ushort SVG_PRESERVEASPECTRATIO_NONE = 1;
  enum ushort SVG_PRESERVEASPECTRATIO_XMINYMIN = 2;
  enum ushort SVG_PRESERVEASPECTRATIO_XMIDYMIN = 3;
  enum ushort SVG_PRESERVEASPECTRATIO_XMAXYMIN = 4;
  enum ushort SVG_PRESERVEASPECTRATIO_XMINYMID = 5;
  enum ushort SVG_PRESERVEASPECTRATIO_XMIDYMID = 6;
  enum ushort SVG_PRESERVEASPECTRATIO_XMAXYMID = 7;
  enum ushort SVG_PRESERVEASPECTRATIO_XMINYMAX = 8;
  enum ushort SVG_PRESERVEASPECTRATIO_XMIDYMAX = 9;
  enum ushort SVG_PRESERVEASPECTRATIO_XMAXYMAX = 10;
  enum ushort SVG_MEETORSLICE_UNKNOWN = 0;
  enum ushort SVG_MEETORSLICE_MEET = 1;
  enum ushort SVG_MEETORSLICE_SLICE = 2;
  auto align_(ushort align_) {
    SVGPreserveAspectRatio_align_Set(this.handle, align_);
  }
  auto align_() {
    return SVGPreserveAspectRatio_align_Get(this.handle);
  }
  auto meetOrSlice(ushort meetOrSlice) {
    SVGPreserveAspectRatio_meetOrSlice_Set(this.handle, meetOrSlice);
  }
  auto meetOrSlice() {
    return SVGPreserveAspectRatio_meetOrSlice_Get(this.handle);
  }
}
struct SVGRadialGradientElement {
  SVGGradientElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGradientElement(h);
  }
  auto cx() {
    return SVGAnimatedLength(JsHandle(SVGRadialGradientElement_cx_Get(this._parent));
  }
  auto cy() {
    return SVGAnimatedLength(JsHandle(SVGRadialGradientElement_cy_Get(this._parent));
  }
  auto r() {
    return SVGAnimatedLength(JsHandle(SVGRadialGradientElement_r_Get(this._parent));
  }
  auto fx() {
    return SVGAnimatedLength(JsHandle(SVGRadialGradientElement_fx_Get(this._parent));
  }
  auto fy() {
    return SVGAnimatedLength(JsHandle(SVGRadialGradientElement_fy_Get(this._parent));
  }
  auto fr() {
    return SVGAnimatedLength(JsHandle(SVGRadialGradientElement_fr_Get(this._parent));
  }
}
struct SVGRectElement {
  SVGGeometryElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGeometryElement(h);
  }
  auto x() {
    return SVGAnimatedLength(JsHandle(SVGRectElement_x_Get(this._parent));
  }
  auto y() {
    return SVGAnimatedLength(JsHandle(SVGRectElement_y_Get(this._parent));
  }
  auto width() {
    return SVGAnimatedLength(JsHandle(SVGRectElement_width_Get(this._parent));
  }
  auto height() {
    return SVGAnimatedLength(JsHandle(SVGRectElement_height_Get(this._parent));
  }
  auto rx() {
    return SVGAnimatedLength(JsHandle(SVGRectElement_rx_Get(this._parent));
  }
  auto ry() {
    return SVGAnimatedLength(JsHandle(SVGRectElement_ry_Get(this._parent));
  }
}
struct SVGSVGElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGraphicsElement(h);
  }
  auto x() {
    return SVGAnimatedLength(JsHandle(SVGSVGElement_x_Get(this._parent));
  }
  auto y() {
    return SVGAnimatedLength(JsHandle(SVGSVGElement_y_Get(this._parent));
  }
  auto width() {
    return SVGAnimatedLength(JsHandle(SVGSVGElement_width_Get(this._parent));
  }
  auto height() {
    return SVGAnimatedLength(JsHandle(SVGSVGElement_height_Get(this._parent));
  }
  auto currentScale(float currentScale) {
    SVGSVGElement_currentScale_Set(this._parent, currentScale);
  }
  auto currentScale() {
    return SVGSVGElement_currentScale_Get(this._parent);
  }
  auto currentTranslate() {
    return DOMPointReadOnly(JsHandle(SVGSVGElement_currentTranslate_Get(this._parent));
  }
  auto getIntersectionList(DOMRectReadOnly rect, Optional!(SVGElement) referenceElement) {
    return NodeList(JsHandle(SVGSVGElement_getIntersectionList(this._parent, rect.handle, !referenceElement.empty, referenceElement.front.handle));
  }
  auto getEnclosureList(DOMRectReadOnly rect, Optional!(SVGElement) referenceElement) {
    return NodeList(JsHandle(SVGSVGElement_getEnclosureList(this._parent, rect.handle, !referenceElement.empty, referenceElement.front.handle));
  }
  auto checkIntersection(SVGElement element, DOMRectReadOnly rect) {
    return SVGSVGElement_checkIntersection(this._parent, element.handle, rect.handle);
  }
  auto checkEnclosure(SVGElement element, DOMRectReadOnly rect) {
    return SVGSVGElement_checkEnclosure(this._parent, element.handle, rect.handle);
  }
  auto deselectAll() {
    SVGSVGElement_deselectAll(this._parent);
  }
  auto createSVGNumber() {
    return SVGNumber(JsHandle(SVGSVGElement_createSVGNumber(this._parent));
  }
  auto createSVGLength() {
    return SVGLength(JsHandle(SVGSVGElement_createSVGLength(this._parent));
  }
  auto createSVGAngle() {
    return SVGAngle(JsHandle(SVGSVGElement_createSVGAngle(this._parent));
  }
  auto createSVGPoint() {
    return DOMPoint(JsHandle(SVGSVGElement_createSVGPoint(this._parent));
  }
  auto createSVGMatrix() {
    return DOMMatrix(JsHandle(SVGSVGElement_createSVGMatrix(this._parent));
  }
  auto createSVGRect() {
    return DOMRect(JsHandle(SVGSVGElement_createSVGRect(this._parent));
  }
  auto createSVGTransform() {
    return SVGTransform(JsHandle(SVGSVGElement_createSVGTransform(this._parent));
  }
  auto createSVGTransformFromMatrix(DOMMatrixReadOnly matrix) {
    return SVGTransform(JsHandle(SVGSVGElement_createSVGTransformFromMatrix(this._parent, matrix.handle));
  }
  auto getElementById(string elementId) {
    return Element(JsHandle(SVGSVGElement_getElementById(this._parent, elementId));
  }
  auto suspendRedraw(uint maxWaitMilliseconds) {
    return SVGSVGElement_suspendRedraw(this._parent, maxWaitMilliseconds);
  }
  auto unsuspendRedraw(uint suspendHandleID) {
    SVGSVGElement_unsuspendRedraw(this._parent, suspendHandleID);
  }
  auto unsuspendRedrawAll() {
    SVGSVGElement_unsuspendRedrawAll(this._parent);
  }
  auto forceRedraw() {
    SVGSVGElement_forceRedraw(this._parent);
  }
  auto viewBox() {
    return SVGAnimatedRect(JsHandle(SVGFitToViewBox_viewBox_Get(this.handle));
  }
  auto preserveAspectRatio() {
    return SVGAnimatedPreserveAspectRatio(JsHandle(SVGFitToViewBox_preserveAspectRatio_Get(this.handle));
  }
  enum ushort SVG_ZOOMANDPAN_UNKNOWN = 0;
  enum ushort SVG_ZOOMANDPAN_DISABLE = 1;
  enum ushort SVG_ZOOMANDPAN_MAGNIFY = 2;
}
struct SVGScriptElement {
  SVGElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGElement(h);
  }
  auto type(string type) {
    SVGScriptElement_type_Set(this._parent, type);
  }
  auto type() {
    return SVGScriptElement_type_Get(this._parent);
  }
  auto crossOrigin(Optional!(string) crossOrigin) {
    SVGScriptElement_crossOrigin_Set(this._parent, !crossOrigin.empty, crossOrigin.front);
  }
  auto crossOrigin() {
    return SVGScriptElement_crossOrigin_Get(this._parent);
  }
  auto href() {
    return SVGAnimatedString(JsHandle(SVGURIReference_href_Get(this.handle));
  }
}
struct SVGStopElement {
  SVGElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGElement(h);
  }
  auto offset() {
    return SVGAnimatedNumber(JsHandle(SVGStopElement_offset_Get(this._parent));
  }
}
struct SVGStringList {
  JsHandle handle;
  alias handle this;
  auto length() {
    return SVGStringList_length_Get(this.handle);
  }
  auto numberOfItems() {
    return SVGStringList_numberOfItems_Get(this.handle);
  }
  auto clear() {
    SVGStringList_clear(this.handle);
  }
  auto initialize(string newItem) {
    return SVGStringList_initialize(this.handle, newItem);
  }
  auto getItem(uint index) {
    return SVGStringList_getItem_getter(this.handle, index);
  }
  auto insertItemBefore(string newItem, uint index) {
    return SVGStringList_insertItemBefore(this.handle, newItem, index);
  }
  auto replaceItem(string newItem, uint index) {
    return SVGStringList_replaceItem(this.handle, newItem, index);
  }
  auto removeItem(uint index) {
    return SVGStringList_removeItem(this.handle, index);
  }
  auto appendItem(string newItem) {
    return SVGStringList_appendItem(this.handle, newItem);
  }
  auto opIndexAssign(string newItem, uint index) {
    SVGStringList_setter__uint_string(this.handle, index, newItem);
  }
  auto opDispatch(uint index)(string newItem) {
    SVGStringList_setter__uint_string(this.handle, index, newItem);
  }
}
struct SVGStyleElement {
  SVGElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGElement(h);
  }
  auto type(string type) {
    SVGStyleElement_type_Set(this._parent, type);
  }
  auto type() {
    return SVGStyleElement_type_Get(this._parent);
  }
  auto media(string media) {
    SVGStyleElement_media_Set(this._parent, media);
  }
  auto media() {
    return SVGStyleElement_media_Get(this._parent);
  }
  auto title(string title) {
    SVGStyleElement_title_Set(this._parent, title);
  }
  auto title() {
    return SVGStyleElement_title_Get(this._parent);
  }
  auto sheet() {
    return LinkStyle_sheet_Get(this.handle);
  }
}
struct SVGSwitchElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGraphicsElement(h);
  }
}
struct SVGSymbolElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGraphicsElement(h);
  }
  auto viewBox() {
    return SVGAnimatedRect(JsHandle(SVGFitToViewBox_viewBox_Get(this.handle));
  }
  auto preserveAspectRatio() {
    return SVGAnimatedPreserveAspectRatio(JsHandle(SVGFitToViewBox_preserveAspectRatio_Get(this.handle));
  }
}
struct SVGTSpanElement {
  SVGTextPositioningElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGTextPositioningElement(h);
  }
}
struct SVGTextContentElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGraphicsElement(h);
  }
  enum ushort LENGTHADJUST_UNKNOWN = 0;
  enum ushort LENGTHADJUST_SPACING = 1;
  enum ushort LENGTHADJUST_SPACINGANDGLYPHS = 2;
  auto textLength() {
    return SVGAnimatedLength(JsHandle(SVGTextContentElement_textLength_Get(this._parent));
  }
  auto lengthAdjust() {
    return SVGAnimatedEnumeration(JsHandle(SVGTextContentElement_lengthAdjust_Get(this._parent));
  }
  auto getNumberOfChars() {
    return SVGTextContentElement_getNumberOfChars(this._parent);
  }
  auto getComputedTextLength() {
    return SVGTextContentElement_getComputedTextLength(this._parent);
  }
  auto getSubStringLength(uint charnum, uint nchars) {
    return SVGTextContentElement_getSubStringLength(this._parent, charnum, nchars);
  }
  auto getStartPositionOfChar(uint charnum) {
    return DOMPoint(JsHandle(SVGTextContentElement_getStartPositionOfChar(this._parent, charnum));
  }
  auto getEndPositionOfChar(uint charnum) {
    return DOMPoint(JsHandle(SVGTextContentElement_getEndPositionOfChar(this._parent, charnum));
  }
  auto getExtentOfChar(uint charnum) {
    return DOMRect(JsHandle(SVGTextContentElement_getExtentOfChar(this._parent, charnum));
  }
  auto getRotationOfChar(uint charnum) {
    return SVGTextContentElement_getRotationOfChar(this._parent, charnum);
  }
  auto getCharNumAtPosition(DOMPointInit point) {
    return SVGTextContentElement_getCharNumAtPosition(this._parent, point.handle);
  }
  auto selectSubString(uint charnum, uint nchars) {
    SVGTextContentElement_selectSubString(this._parent, charnum, nchars);
  }
}
struct SVGTextElement {
  SVGTextPositioningElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGTextPositioningElement(h);
  }
}
struct SVGTextPathElement {
  SVGTextContentElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGTextContentElement(h);
  }
  enum ushort TEXTPATH_METHODTYPE_UNKNOWN = 0;
  enum ushort TEXTPATH_METHODTYPE_ALIGN = 1;
  enum ushort TEXTPATH_METHODTYPE_STRETCH = 2;
  enum ushort TEXTPATH_SPACINGTYPE_UNKNOWN = 0;
  enum ushort TEXTPATH_SPACINGTYPE_AUTO = 1;
  enum ushort TEXTPATH_SPACINGTYPE_EXACT = 2;
  auto startOffset() {
    return SVGAnimatedLength(JsHandle(SVGTextPathElement_startOffset_Get(this._parent));
  }
  auto method() {
    return SVGAnimatedEnumeration(JsHandle(SVGTextPathElement_method_Get(this._parent));
  }
  auto spacing() {
    return SVGAnimatedEnumeration(JsHandle(SVGTextPathElement_spacing_Get(this._parent));
  }
  auto href() {
    return SVGAnimatedString(JsHandle(SVGURIReference_href_Get(this.handle));
  }
}
struct SVGTextPositioningElement {
  SVGTextContentElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGTextContentElement(h);
  }
  auto x() {
    return SVGAnimatedLengthList(JsHandle(SVGTextPositioningElement_x_Get(this._parent));
  }
  auto y() {
    return SVGAnimatedLengthList(JsHandle(SVGTextPositioningElement_y_Get(this._parent));
  }
  auto dx() {
    return SVGAnimatedLengthList(JsHandle(SVGTextPositioningElement_dx_Get(this._parent));
  }
  auto dy() {
    return SVGAnimatedLengthList(JsHandle(SVGTextPositioningElement_dy_Get(this._parent));
  }
  auto rotate() {
    return SVGAnimatedNumberList(JsHandle(SVGTextPositioningElement_rotate_Get(this._parent));
  }
}
struct SVGTitleElement {
  SVGElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGElement(h);
  }
}
struct SVGTransform {
  JsHandle handle;
  alias handle this;
  enum ushort SVG_TRANSFORM_UNKNOWN = 0;
  enum ushort SVG_TRANSFORM_MATRIX = 1;
  enum ushort SVG_TRANSFORM_TRANSLATE = 2;
  enum ushort SVG_TRANSFORM_SCALE = 3;
  enum ushort SVG_TRANSFORM_ROTATE = 4;
  enum ushort SVG_TRANSFORM_SKEWX = 5;
  enum ushort SVG_TRANSFORM_SKEWY = 6;
  auto type() {
    return SVGTransform_type_Get(this.handle);
  }
  auto matrix() {
    return DOMMatrix(JsHandle(SVGTransform_matrix_Get(this.handle));
  }
  auto angle() {
    return SVGTransform_angle_Get(this.handle);
  }
  auto setMatrix(DOMMatrixReadOnly matrix) {
    SVGTransform_setMatrix(this.handle, matrix.handle);
  }
  auto setTranslate(float tx, float ty) {
    SVGTransform_setTranslate(this.handle, tx, ty);
  }
  auto setScale(float sx, float sy) {
    SVGTransform_setScale(this.handle, sx, sy);
  }
  auto setRotate(float angle, float cx, float cy) {
    SVGTransform_setRotate(this.handle, angle, cx, cy);
  }
  auto setSkewX(float angle) {
    SVGTransform_setSkewX(this.handle, angle);
  }
  auto setSkewY(float angle) {
    SVGTransform_setSkewY(this.handle, angle);
  }
}
struct SVGTransformList {
  JsHandle handle;
  alias handle this;
  auto length() {
    return SVGTransformList_length_Get(this.handle);
  }
  auto numberOfItems() {
    return SVGTransformList_numberOfItems_Get(this.handle);
  }
  auto clear() {
    SVGTransformList_clear(this.handle);
  }
  auto initialize(SVGTransform newItem) {
    return SVGTransform(JsHandle(SVGTransformList_initialize(this.handle, newItem.handle));
  }
  auto getItem(uint index) {
    return SVGTransform(JsHandle(SVGTransformList_getItem_getter(this.handle, index));
  }
  auto insertItemBefore(SVGTransform newItem, uint index) {
    return SVGTransform(JsHandle(SVGTransformList_insertItemBefore(this.handle, newItem.handle, index));
  }
  auto replaceItem(SVGTransform newItem, uint index) {
    return SVGTransform(JsHandle(SVGTransformList_replaceItem(this.handle, newItem.handle, index));
  }
  auto removeItem(uint index) {
    return SVGTransform(JsHandle(SVGTransformList_removeItem(this.handle, index));
  }
  auto appendItem(SVGTransform newItem) {
    return SVGTransform(JsHandle(SVGTransformList_appendItem(this.handle, newItem.handle));
  }
  auto opIndexAssign(SVGTransform newItem, uint index) {
    SVGTransformList_setter__uint_Handle(this.handle, index, newItem.handle);
  }
  auto opDispatch(uint index)(SVGTransform newItem) {
    SVGTransformList_setter__uint_Handle(this.handle, index, newItem.handle);
  }
  auto createSVGTransformFromMatrix(DOMMatrixReadOnly matrix) {
    return SVGTransform(JsHandle(SVGTransformList_createSVGTransformFromMatrix(this.handle, matrix.handle));
  }
  auto consolidate() {
    return SVGTransformList_consolidate(this.handle);
  }
}
struct SVGUnitTypes {
  JsHandle handle;
  alias handle this;
  enum ushort SVG_UNIT_TYPE_UNKNOWN = 0;
  enum ushort SVG_UNIT_TYPE_USERSPACEONUSE = 1;
  enum ushort SVG_UNIT_TYPE_OBJECTBOUNDINGBOX = 2;
}
struct SVGUnknownElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGraphicsElement(h);
  }
}
struct SVGUseElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGraphicsElement(h);
  }
  auto x() {
    return SVGAnimatedLength(JsHandle(SVGUseElement_x_Get(this._parent));
  }
  auto y() {
    return SVGAnimatedLength(JsHandle(SVGUseElement_y_Get(this._parent));
  }
  auto width() {
    return SVGAnimatedLength(JsHandle(SVGUseElement_width_Get(this._parent));
  }
  auto height() {
    return SVGAnimatedLength(JsHandle(SVGUseElement_height_Get(this._parent));
  }
  auto instanceRoot() {
    return SVGUseElement_instanceRoot_Get(this._parent);
  }
  auto animatedInstanceRoot() {
    return SVGUseElement_animatedInstanceRoot_Get(this._parent);
  }
  auto href() {
    return SVGAnimatedString(JsHandle(SVGURIReference_href_Get(this.handle));
  }
}
struct SVGUseElementShadowRoot {
  ShadowRoot _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = ShadowRoot(h);
  }
}
struct SVGViewElement {
  SVGElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGElement(h);
  }
  auto viewBox() {
    return SVGAnimatedRect(JsHandle(SVGFitToViewBox_viewBox_Get(this.handle));
  }
  auto preserveAspectRatio() {
    return SVGAnimatedPreserveAspectRatio(JsHandle(SVGFitToViewBox_preserveAspectRatio_Get(this.handle));
  }
  enum ushort SVG_ZOOMANDPAN_UNKNOWN = 0;
  enum ushort SVG_ZOOMANDPAN_DISABLE = 1;
  enum ushort SVG_ZOOMANDPAN_MAGNIFY = 2;
}
struct ShadowAnimation {
  Animation _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Animation(h);
  }
  auto sourceAnimation() {
    return Animation(JsHandle(ShadowAnimation_sourceAnimation_Get(this._parent));
  }
}


extern (C) Handle GetSVGDocument_getSVGDocument(Handle);
extern (C) Handle SVGAElement_target_Get(Handle);
extern (C) void SVGAElement_download_Set(Handle, string);
extern (C) string SVGAElement_download_Get(Handle);
extern (C) void SVGAElement_ping_Set(Handle, string);
extern (C) string SVGAElement_ping_Get(Handle);
extern (C) void SVGAElement_rel_Set(Handle, string);
extern (C) string SVGAElement_rel_Get(Handle);
extern (C) Handle SVGAElement_relList_Get(Handle);
extern (C) void SVGAElement_hreflang_Set(Handle, string);
extern (C) string SVGAElement_hreflang_Get(Handle);
extern (C) void SVGAElement_type_Set(Handle, string);
extern (C) string SVGAElement_type_Get(Handle);
extern (C) void SVGAElement_text_Set(Handle, string);
extern (C) string SVGAElement_text_Get(Handle);
extern (C) void SVGAElement_referrerPolicy_Set(Handle, string);
extern (C) string SVGAElement_referrerPolicy_Get(Handle);
extern (C) ushort SVGAngle_unitType_Get(Handle);
extern (C) void SVGAngle_value_Set(Handle, float);
extern (C) float SVGAngle_value_Get(Handle);
extern (C) void SVGAngle_valueInSpecifiedUnits_Set(Handle, float);
extern (C) float SVGAngle_valueInSpecifiedUnits_Get(Handle);
extern (C) void SVGAngle_valueAsString_Set(Handle, string);
extern (C) string SVGAngle_valueAsString_Get(Handle);
extern (C) void SVGAngle_newValueSpecifiedUnits(Handle, ushort, float);
extern (C) void SVGAngle_convertToSpecifiedUnits(Handle, ushort);
extern (C) Handle SVGAnimatedAngle_baseVal_Get(Handle);
extern (C) Handle SVGAnimatedAngle_animVal_Get(Handle);
extern (C) void SVGAnimatedBoolean_baseVal_Set(Handle, bool);
extern (C) bool SVGAnimatedBoolean_baseVal_Get(Handle);
extern (C) bool SVGAnimatedBoolean_animVal_Get(Handle);
extern (C) void SVGAnimatedEnumeration_baseVal_Set(Handle, ushort);
extern (C) ushort SVGAnimatedEnumeration_baseVal_Get(Handle);
extern (C) ushort SVGAnimatedEnumeration_animVal_Get(Handle);
extern (C) void SVGAnimatedInteger_baseVal_Set(Handle, int);
extern (C) int SVGAnimatedInteger_baseVal_Get(Handle);
extern (C) int SVGAnimatedInteger_animVal_Get(Handle);
extern (C) Handle SVGAnimatedLength_baseVal_Get(Handle);
extern (C) Handle SVGAnimatedLength_animVal_Get(Handle);
extern (C) Handle SVGAnimatedLengthList_baseVal_Get(Handle);
extern (C) Handle SVGAnimatedLengthList_animVal_Get(Handle);
extern (C) void SVGAnimatedNumber_baseVal_Set(Handle, float);
extern (C) float SVGAnimatedNumber_baseVal_Get(Handle);
extern (C) float SVGAnimatedNumber_animVal_Get(Handle);
extern (C) Handle SVGAnimatedNumberList_baseVal_Get(Handle);
extern (C) Handle SVGAnimatedNumberList_animVal_Get(Handle);
extern (C) Handle SVGAnimatedPoints_points_Get(Handle);
extern (C) Handle SVGAnimatedPoints_animatedPoints_Get(Handle);
extern (C) Handle SVGAnimatedPreserveAspectRatio_baseVal_Get(Handle);
extern (C) Handle SVGAnimatedPreserveAspectRatio_animVal_Get(Handle);
extern (C) Handle SVGAnimatedRect_baseVal_Get(Handle);
extern (C) Handle SVGAnimatedRect_animVal_Get(Handle);
extern (C) void SVGAnimatedString_baseVal_Set(Handle, string);
extern (C) string SVGAnimatedString_baseVal_Get(Handle);
extern (C) string SVGAnimatedString_animVal_Get(Handle);
extern (C) Handle SVGAnimatedTransformList_baseVal_Get(Handle);
extern (C) Handle SVGAnimatedTransformList_animVal_Get(Handle);
extern (C) void SVGBoundingBoxOptions_fill_Set(Handle, bool);
extern (C) bool SVGBoundingBoxOptions_fill_Get(Handle);
extern (C) void SVGBoundingBoxOptions_stroke_Set(Handle, bool);
extern (C) bool SVGBoundingBoxOptions_stroke_Get(Handle);
extern (C) void SVGBoundingBoxOptions_markers_Set(Handle, bool);
extern (C) bool SVGBoundingBoxOptions_markers_Get(Handle);
extern (C) void SVGBoundingBoxOptions_clipped_Set(Handle, bool);
extern (C) bool SVGBoundingBoxOptions_clipped_Get(Handle);
extern (C) Handle SVGCircleElement_cx_Get(Handle);
extern (C) Handle SVGCircleElement_cy_Get(Handle);
extern (C) Handle SVGCircleElement_r_Get(Handle);
extern (C) Handle SVGElement_className_Get(Handle);
extern (C) Optional!(SVGSVGElement) SVGElement_ownerSVGElement_Get(Handle);
extern (C) Optional!(SVGElement) SVGElement_viewportElement_Get(Handle);
extern (C) Optional!(SVGElement) SVGElementInstance_correspondingElement_Get(Handle);
extern (C) Optional!(SVGUseElement) SVGElementInstance_correspondingUseElement_Get(Handle);
extern (C) Handle SVGEllipseElement_cx_Get(Handle);
extern (C) Handle SVGEllipseElement_cy_Get(Handle);
extern (C) Handle SVGEllipseElement_rx_Get(Handle);
extern (C) Handle SVGEllipseElement_ry_Get(Handle);
extern (C) Handle SVGFitToViewBox_viewBox_Get(Handle);
extern (C) Handle SVGFitToViewBox_preserveAspectRatio_Get(Handle);
extern (C) Handle SVGForeignObjectElement_x_Get(Handle);
extern (C) Handle SVGForeignObjectElement_y_Get(Handle);
extern (C) Handle SVGForeignObjectElement_width_Get(Handle);
extern (C) Handle SVGForeignObjectElement_height_Get(Handle);
extern (C) Handle SVGGeometryElement_pathLength_Get(Handle);
extern (C) bool SVGGeometryElement_isPointInFill(Handle, Handle);
extern (C) bool SVGGeometryElement_isPointInStroke(Handle, Handle);
extern (C) float SVGGeometryElement_getTotalLength(Handle);
extern (C) Handle SVGGeometryElement_getPointAtLength(Handle, float);
extern (C) Handle SVGGradientElement_gradientUnits_Get(Handle);
extern (C) Handle SVGGradientElement_gradientTransform_Get(Handle);
extern (C) Handle SVGGradientElement_spreadMethod_Get(Handle);
extern (C) Handle SVGGraphicsElement_transform_Get(Handle);
extern (C) Handle SVGGraphicsElement_getBBox(Handle, Handle);
extern (C) Optional!(DOMMatrix) SVGGraphicsElement_getCTM(Handle);
extern (C) Optional!(DOMMatrix) SVGGraphicsElement_getScreenCTM(Handle);
extern (C) Handle SVGImageElement_x_Get(Handle);
extern (C) Handle SVGImageElement_y_Get(Handle);
extern (C) Handle SVGImageElement_width_Get(Handle);
extern (C) Handle SVGImageElement_height_Get(Handle);
extern (C) Handle SVGImageElement_preserveAspectRatio_Get(Handle);
extern (C) void SVGImageElement_crossOrigin_Set(Handle, bool, string);
extern (C) Optional!(string) SVGImageElement_crossOrigin_Get(Handle);
extern (C) ushort SVGLength_unitType_Get(Handle);
extern (C) void SVGLength_value_Set(Handle, float);
extern (C) float SVGLength_value_Get(Handle);
extern (C) void SVGLength_valueInSpecifiedUnits_Set(Handle, float);
extern (C) float SVGLength_valueInSpecifiedUnits_Get(Handle);
extern (C) void SVGLength_valueAsString_Set(Handle, string);
extern (C) string SVGLength_valueAsString_Get(Handle);
extern (C) void SVGLength_newValueSpecifiedUnits(Handle, ushort, float);
extern (C) void SVGLength_convertToSpecifiedUnits(Handle, ushort);
extern (C) uint SVGLengthList_length_Get(Handle);
extern (C) uint SVGLengthList_numberOfItems_Get(Handle);
extern (C) void SVGLengthList_clear(Handle);
extern (C) Handle SVGLengthList_initialize(Handle, Handle);
extern (C) Handle SVGLengthList_getItem_getter(Handle, uint);
extern (C) Handle SVGLengthList_insertItemBefore(Handle, Handle, uint);
extern (C) Handle SVGLengthList_replaceItem(Handle, Handle, uint);
extern (C) Handle SVGLengthList_removeItem(Handle, uint);
extern (C) Handle SVGLengthList_appendItem(Handle, Handle);
extern (C) void SVGLengthList_setter__uint_Handle(Handle, uint, Handle);
extern (C) Handle SVGLineElement_x1_Get(Handle);
extern (C) Handle SVGLineElement_y1_Get(Handle);
extern (C) Handle SVGLineElement_x2_Get(Handle);
extern (C) Handle SVGLineElement_y2_Get(Handle);
extern (C) Handle SVGLinearGradientElement_x1_Get(Handle);
extern (C) Handle SVGLinearGradientElement_y1_Get(Handle);
extern (C) Handle SVGLinearGradientElement_x2_Get(Handle);
extern (C) Handle SVGLinearGradientElement_y2_Get(Handle);
extern (C) Handle SVGMarkerElement_refX_Get(Handle);
extern (C) Handle SVGMarkerElement_refY_Get(Handle);
extern (C) Handle SVGMarkerElement_markerUnits_Get(Handle);
extern (C) Handle SVGMarkerElement_markerWidth_Get(Handle);
extern (C) Handle SVGMarkerElement_markerHeight_Get(Handle);
extern (C) Handle SVGMarkerElement_orientType_Get(Handle);
extern (C) Handle SVGMarkerElement_orientAngle_Get(Handle);
extern (C) void SVGMarkerElement_orient_Set(Handle, string);
extern (C) string SVGMarkerElement_orient_Get(Handle);
extern (C) void SVGMarkerElement_setOrientToAuto(Handle);
extern (C) void SVGMarkerElement_setOrientToAngle(Handle, Handle);
extern (C) void SVGNumber_value_Set(Handle, float);
extern (C) float SVGNumber_value_Get(Handle);
extern (C) uint SVGNumberList_length_Get(Handle);
extern (C) uint SVGNumberList_numberOfItems_Get(Handle);
extern (C) void SVGNumberList_clear(Handle);
extern (C) Handle SVGNumberList_initialize(Handle, Handle);
extern (C) Handle SVGNumberList_getItem_getter(Handle, uint);
extern (C) Handle SVGNumberList_insertItemBefore(Handle, Handle, uint);
extern (C) Handle SVGNumberList_replaceItem(Handle, Handle, uint);
extern (C) Handle SVGNumberList_removeItem(Handle, uint);
extern (C) Handle SVGNumberList_appendItem(Handle, Handle);
extern (C) void SVGNumberList_setter__uint_Handle(Handle, uint, Handle);
extern (C) Handle SVGPatternElement_patternUnits_Get(Handle);
extern (C) Handle SVGPatternElement_patternContentUnits_Get(Handle);
extern (C) Handle SVGPatternElement_patternTransform_Get(Handle);
extern (C) Handle SVGPatternElement_x_Get(Handle);
extern (C) Handle SVGPatternElement_y_Get(Handle);
extern (C) Handle SVGPatternElement_width_Get(Handle);
extern (C) Handle SVGPatternElement_height_Get(Handle);
extern (C) uint SVGPointList_length_Get(Handle);
extern (C) uint SVGPointList_numberOfItems_Get(Handle);
extern (C) void SVGPointList_clear(Handle);
extern (C) Handle SVGPointList_initialize(Handle, Handle);
extern (C) Handle SVGPointList_getItem_getter(Handle, uint);
extern (C) Handle SVGPointList_insertItemBefore(Handle, Handle, uint);
extern (C) Handle SVGPointList_replaceItem(Handle, Handle, uint);
extern (C) Handle SVGPointList_removeItem(Handle, uint);
extern (C) Handle SVGPointList_appendItem(Handle, Handle);
extern (C) void SVGPointList_setter__uint_Handle(Handle, uint, Handle);
extern (C) void SVGPreserveAspectRatio_align_Set(Handle, ushort);
extern (C) ushort SVGPreserveAspectRatio_align_Get(Handle);
extern (C) void SVGPreserveAspectRatio_meetOrSlice_Set(Handle, ushort);
extern (C) ushort SVGPreserveAspectRatio_meetOrSlice_Get(Handle);
extern (C) Handle SVGRadialGradientElement_cx_Get(Handle);
extern (C) Handle SVGRadialGradientElement_cy_Get(Handle);
extern (C) Handle SVGRadialGradientElement_r_Get(Handle);
extern (C) Handle SVGRadialGradientElement_fx_Get(Handle);
extern (C) Handle SVGRadialGradientElement_fy_Get(Handle);
extern (C) Handle SVGRadialGradientElement_fr_Get(Handle);
extern (C) Handle SVGRectElement_x_Get(Handle);
extern (C) Handle SVGRectElement_y_Get(Handle);
extern (C) Handle SVGRectElement_width_Get(Handle);
extern (C) Handle SVGRectElement_height_Get(Handle);
extern (C) Handle SVGRectElement_rx_Get(Handle);
extern (C) Handle SVGRectElement_ry_Get(Handle);
extern (C) Handle SVGSVGElement_x_Get(Handle);
extern (C) Handle SVGSVGElement_y_Get(Handle);
extern (C) Handle SVGSVGElement_width_Get(Handle);
extern (C) Handle SVGSVGElement_height_Get(Handle);
extern (C) void SVGSVGElement_currentScale_Set(Handle, float);
extern (C) float SVGSVGElement_currentScale_Get(Handle);
extern (C) Handle SVGSVGElement_currentTranslate_Get(Handle);
extern (C) Handle SVGSVGElement_getIntersectionList(Handle, Handle, bool, Handle);
extern (C) Handle SVGSVGElement_getEnclosureList(Handle, Handle, bool, Handle);
extern (C) bool SVGSVGElement_checkIntersection(Handle, Handle, Handle);
extern (C) bool SVGSVGElement_checkEnclosure(Handle, Handle, Handle);
extern (C) void SVGSVGElement_deselectAll(Handle);
extern (C) Handle SVGSVGElement_createSVGNumber(Handle);
extern (C) Handle SVGSVGElement_createSVGLength(Handle);
extern (C) Handle SVGSVGElement_createSVGAngle(Handle);
extern (C) Handle SVGSVGElement_createSVGPoint(Handle);
extern (C) Handle SVGSVGElement_createSVGMatrix(Handle);
extern (C) Handle SVGSVGElement_createSVGRect(Handle);
extern (C) Handle SVGSVGElement_createSVGTransform(Handle);
extern (C) Handle SVGSVGElement_createSVGTransformFromMatrix(Handle, Handle);
extern (C) Handle SVGSVGElement_getElementById(Handle, string);
extern (C) uint SVGSVGElement_suspendRedraw(Handle, uint);
extern (C) void SVGSVGElement_unsuspendRedraw(Handle, uint);
extern (C) void SVGSVGElement_unsuspendRedrawAll(Handle);
extern (C) void SVGSVGElement_forceRedraw(Handle);
extern (C) void SVGScriptElement_type_Set(Handle, string);
extern (C) string SVGScriptElement_type_Get(Handle);
extern (C) void SVGScriptElement_crossOrigin_Set(Handle, bool, string);
extern (C) Optional!(string) SVGScriptElement_crossOrigin_Get(Handle);
extern (C) Handle SVGStopElement_offset_Get(Handle);
extern (C) uint SVGStringList_length_Get(Handle);
extern (C) uint SVGStringList_numberOfItems_Get(Handle);
extern (C) void SVGStringList_clear(Handle);
extern (C) string SVGStringList_initialize(Handle, string);
extern (C) string SVGStringList_getItem_getter(Handle, uint);
extern (C) string SVGStringList_insertItemBefore(Handle, string, uint);
extern (C) string SVGStringList_replaceItem(Handle, string, uint);
extern (C) string SVGStringList_removeItem(Handle, uint);
extern (C) string SVGStringList_appendItem(Handle, string);
extern (C) void SVGStringList_setter__uint_string(Handle, uint, string);
extern (C) void SVGStyleElement_type_Set(Handle, string);
extern (C) string SVGStyleElement_type_Get(Handle);
extern (C) void SVGStyleElement_media_Set(Handle, string);
extern (C) string SVGStyleElement_media_Get(Handle);
extern (C) void SVGStyleElement_title_Set(Handle, string);
extern (C) string SVGStyleElement_title_Get(Handle);
extern (C) Handle SVGTests_requiredExtensions_Get(Handle);
extern (C) Handle SVGTests_systemLanguage_Get(Handle);
extern (C) Handle SVGTextContentElement_textLength_Get(Handle);
extern (C) Handle SVGTextContentElement_lengthAdjust_Get(Handle);
extern (C) int SVGTextContentElement_getNumberOfChars(Handle);
extern (C) float SVGTextContentElement_getComputedTextLength(Handle);
extern (C) float SVGTextContentElement_getSubStringLength(Handle, uint, uint);
extern (C) Handle SVGTextContentElement_getStartPositionOfChar(Handle, uint);
extern (C) Handle SVGTextContentElement_getEndPositionOfChar(Handle, uint);
extern (C) Handle SVGTextContentElement_getExtentOfChar(Handle, uint);
extern (C) float SVGTextContentElement_getRotationOfChar(Handle, uint);
extern (C) int SVGTextContentElement_getCharNumAtPosition(Handle, Handle);
extern (C) void SVGTextContentElement_selectSubString(Handle, uint, uint);
extern (C) Handle SVGTextPathElement_startOffset_Get(Handle);
extern (C) Handle SVGTextPathElement_method_Get(Handle);
extern (C) Handle SVGTextPathElement_spacing_Get(Handle);
extern (C) Handle SVGTextPositioningElement_x_Get(Handle);
extern (C) Handle SVGTextPositioningElement_y_Get(Handle);
extern (C) Handle SVGTextPositioningElement_dx_Get(Handle);
extern (C) Handle SVGTextPositioningElement_dy_Get(Handle);
extern (C) Handle SVGTextPositioningElement_rotate_Get(Handle);
extern (C) ushort SVGTransform_type_Get(Handle);
extern (C) Handle SVGTransform_matrix_Get(Handle);
extern (C) float SVGTransform_angle_Get(Handle);
extern (C) void SVGTransform_setMatrix(Handle, Handle);
extern (C) void SVGTransform_setTranslate(Handle, float, float);
extern (C) void SVGTransform_setScale(Handle, float, float);
extern (C) void SVGTransform_setRotate(Handle, float, float, float);
extern (C) void SVGTransform_setSkewX(Handle, float);
extern (C) void SVGTransform_setSkewY(Handle, float);
extern (C) uint SVGTransformList_length_Get(Handle);
extern (C) uint SVGTransformList_numberOfItems_Get(Handle);
extern (C) void SVGTransformList_clear(Handle);
extern (C) Handle SVGTransformList_initialize(Handle, Handle);
extern (C) Handle SVGTransformList_getItem_getter(Handle, uint);
extern (C) Handle SVGTransformList_insertItemBefore(Handle, Handle, uint);
extern (C) Handle SVGTransformList_replaceItem(Handle, Handle, uint);
extern (C) Handle SVGTransformList_removeItem(Handle, uint);
extern (C) Handle SVGTransformList_appendItem(Handle, Handle);
extern (C) void SVGTransformList_setter__uint_Handle(Handle, uint, Handle);
extern (C) Handle SVGTransformList_createSVGTransformFromMatrix(Handle, Handle);
extern (C) Optional!(SVGTransform) SVGTransformList_consolidate(Handle);
extern (C) Handle SVGURIReference_href_Get(Handle);
extern (C) Handle SVGUseElement_x_Get(Handle);
extern (C) Handle SVGUseElement_y_Get(Handle);
extern (C) Handle SVGUseElement_width_Get(Handle);
extern (C) Handle SVGUseElement_height_Get(Handle);
extern (C) Optional!(SVGElement) SVGUseElement_instanceRoot_Get(Handle);
extern (C) Optional!(SVGElement) SVGUseElement_animatedInstanceRoot_Get(Handle);
extern (C) Handle ShadowAnimation_sourceAnimation_Get(Handle);