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
    return SVGAnimatedString(SVGAElement_target_Get(this._parent));
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
    return DOMTokenList(SVGAElement_relList_Get(this._parent));
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
    return SVGAnimatedString(SVGURIReference_href_Get(this.handle));
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
    return SVGAngle(SVGAnimatedAngle_baseVal_Get(this.handle));
  }
  auto animVal() {
    return SVGAngle(SVGAnimatedAngle_animVal_Get(this.handle));
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
    return SVGLength(SVGAnimatedLength_baseVal_Get(this.handle));
  }
  auto animVal() {
    return SVGLength(SVGAnimatedLength_animVal_Get(this.handle));
  }
}
struct SVGAnimatedLengthList {
  JsHandle handle;
  alias handle this;
  auto baseVal() {
    return SVGLengthList(SVGAnimatedLengthList_baseVal_Get(this.handle));
  }
  auto animVal() {
    return SVGLengthList(SVGAnimatedLengthList_animVal_Get(this.handle));
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
    return SVGNumberList(SVGAnimatedNumberList_baseVal_Get(this.handle));
  }
  auto animVal() {
    return SVGNumberList(SVGAnimatedNumberList_animVal_Get(this.handle));
  }
}
struct SVGAnimatedPreserveAspectRatio {
  JsHandle handle;
  alias handle this;
  auto baseVal() {
    return SVGPreserveAspectRatio(SVGAnimatedPreserveAspectRatio_baseVal_Get(this.handle));
  }
  auto animVal() {
    return SVGPreserveAspectRatio(SVGAnimatedPreserveAspectRatio_animVal_Get(this.handle));
  }
}
struct SVGAnimatedRect {
  JsHandle handle;
  alias handle this;
  auto baseVal() {
    return DOMRect(SVGAnimatedRect_baseVal_Get(this.handle));
  }
  auto animVal() {
    return DOMRectReadOnly(SVGAnimatedRect_animVal_Get(this.handle));
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
    return SVGTransformList(SVGAnimatedTransformList_baseVal_Get(this.handle));
  }
  auto animVal() {
    return SVGTransformList(SVGAnimatedTransformList_animVal_Get(this.handle));
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
    return SVGAnimatedLength(SVGCircleElement_cx_Get(this._parent));
  }
  auto cy() {
    return SVGAnimatedLength(SVGCircleElement_cy_Get(this._parent));
  }
  auto r() {
    return SVGAnimatedLength(SVGCircleElement_r_Get(this._parent));
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
    return SVGAnimatedString(SVGElement_className_Get(this._parent));
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
    return DOMStringMap(HTMLOrSVGElement_dataset_Get(this.handle));
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
    return SVGAnimatedLength(SVGEllipseElement_cx_Get(this._parent));
  }
  auto cy() {
    return SVGAnimatedLength(SVGEllipseElement_cy_Get(this._parent));
  }
  auto rx() {
    return SVGAnimatedLength(SVGEllipseElement_rx_Get(this._parent));
  }
  auto ry() {
    return SVGAnimatedLength(SVGEllipseElement_ry_Get(this._parent));
  }
}
struct SVGForeignObjectElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGraphicsElement(h);
  }
  auto x() {
    return SVGAnimatedLength(SVGForeignObjectElement_x_Get(this._parent));
  }
  auto y() {
    return SVGAnimatedLength(SVGForeignObjectElement_y_Get(this._parent));
  }
  auto width() {
    return SVGAnimatedLength(SVGForeignObjectElement_width_Get(this._parent));
  }
  auto height() {
    return SVGAnimatedLength(SVGForeignObjectElement_height_Get(this._parent));
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
    return SVGAnimatedNumber(SVGGeometryElement_pathLength_Get(this._parent));
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
    return DOMPoint(SVGGeometryElement_getPointAtLength(this._parent, distance));
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
    return SVGAnimatedEnumeration(SVGGradientElement_gradientUnits_Get(this._parent));
  }
  auto gradientTransform() {
    return SVGAnimatedTransformList(SVGGradientElement_gradientTransform_Get(this._parent));
  }
  auto spreadMethod() {
    return SVGAnimatedEnumeration(SVGGradientElement_spreadMethod_Get(this._parent));
  }
  auto href() {
    return SVGAnimatedString(SVGURIReference_href_Get(this.handle));
  }
}
struct SVGGraphicsElement {
  SVGElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGElement(h);
  }
  auto transform() {
    return SVGAnimatedTransformList(SVGGraphicsElement_transform_Get(this._parent));
  }
  auto getBBox(SVGBoundingBoxOptions options) {
    return DOMRect(SVGGraphicsElement_getBBox(this._parent, options.handle));
  }
  auto getCTM() {
    return SVGGraphicsElement_getCTM(this._parent);
  }
  auto getScreenCTM() {
    return SVGGraphicsElement_getScreenCTM(this._parent);
  }
  auto requiredExtensions() {
    return SVGStringList(SVGTests_requiredExtensions_Get(this.handle));
  }
  auto systemLanguage() {
    return SVGStringList(SVGTests_systemLanguage_Get(this.handle));
  }
}
struct SVGImageElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGraphicsElement(h);
  }
  auto x() {
    return SVGAnimatedLength(SVGImageElement_x_Get(this._parent));
  }
  auto y() {
    return SVGAnimatedLength(SVGImageElement_y_Get(this._parent));
  }
  auto width() {
    return SVGAnimatedLength(SVGImageElement_width_Get(this._parent));
  }
  auto height() {
    return SVGAnimatedLength(SVGImageElement_height_Get(this._parent));
  }
  auto preserveAspectRatio() {
    return SVGAnimatedPreserveAspectRatio(SVGImageElement_preserveAspectRatio_Get(this._parent));
  }
  auto crossOrigin(Optional!(string) crossOrigin) {
    SVGImageElement_crossOrigin_Set(this._parent, !crossOrigin.empty, crossOrigin.front);
  }
  auto crossOrigin() {
    return SVGImageElement_crossOrigin_Get(this._parent);
  }
  auto href() {
    return SVGAnimatedString(SVGURIReference_href_Get(this.handle));
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
    return SVGLength(SVGLengthList_initialize(this.handle, newItem.handle));
  }
  auto getItem(uint index) {
    return SVGLength(SVGLengthList_getItem_getter(this.handle, index));
  }
  auto insertItemBefore(SVGLength newItem, uint index) {
    return SVGLength(SVGLengthList_insertItemBefore(this.handle, newItem.handle, index));
  }
  auto replaceItem(SVGLength newItem, uint index) {
    return SVGLength(SVGLengthList_replaceItem(this.handle, newItem.handle, index));
  }
  auto removeItem(uint index) {
    return SVGLength(SVGLengthList_removeItem(this.handle, index));
  }
  auto appendItem(SVGLength newItem) {
    return SVGLength(SVGLengthList_appendItem(this.handle, newItem.handle));
  }
  auto opIndexAssign(SVGLength newItem, uint index) {
    SVGLengthList_setter__uint_JsHandle(this.handle, index, newItem.handle);
  }
  auto opDispatch(uint index)(SVGLength newItem) {
    SVGLengthList_setter__uint_JsHandle(this.handle, index, newItem.handle);
  }
}
struct SVGLineElement {
  SVGGeometryElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGeometryElement(h);
  }
  auto x1() {
    return SVGAnimatedLength(SVGLineElement_x1_Get(this._parent));
  }
  auto y1() {
    return SVGAnimatedLength(SVGLineElement_y1_Get(this._parent));
  }
  auto x2() {
    return SVGAnimatedLength(SVGLineElement_x2_Get(this._parent));
  }
  auto y2() {
    return SVGAnimatedLength(SVGLineElement_y2_Get(this._parent));
  }
}
struct SVGLinearGradientElement {
  SVGGradientElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGradientElement(h);
  }
  auto x1() {
    return SVGAnimatedLength(SVGLinearGradientElement_x1_Get(this._parent));
  }
  auto y1() {
    return SVGAnimatedLength(SVGLinearGradientElement_y1_Get(this._parent));
  }
  auto x2() {
    return SVGAnimatedLength(SVGLinearGradientElement_x2_Get(this._parent));
  }
  auto y2() {
    return SVGAnimatedLength(SVGLinearGradientElement_y2_Get(this._parent));
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
    return SVGAnimatedLength(SVGMarkerElement_refX_Get(this._parent));
  }
  auto refY() {
    return SVGAnimatedLength(SVGMarkerElement_refY_Get(this._parent));
  }
  auto markerUnits() {
    return SVGAnimatedEnumeration(SVGMarkerElement_markerUnits_Get(this._parent));
  }
  auto markerWidth() {
    return SVGAnimatedLength(SVGMarkerElement_markerWidth_Get(this._parent));
  }
  auto markerHeight() {
    return SVGAnimatedLength(SVGMarkerElement_markerHeight_Get(this._parent));
  }
  auto orientType() {
    return SVGAnimatedEnumeration(SVGMarkerElement_orientType_Get(this._parent));
  }
  auto orientAngle() {
    return SVGAnimatedAngle(SVGMarkerElement_orientAngle_Get(this._parent));
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
    return SVGAnimatedRect(SVGFitToViewBox_viewBox_Get(this.handle));
  }
  auto preserveAspectRatio() {
    return SVGAnimatedPreserveAspectRatio(SVGFitToViewBox_preserveAspectRatio_Get(this.handle));
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
    return SVGNumber(SVGNumberList_initialize(this.handle, newItem.handle));
  }
  auto getItem(uint index) {
    return SVGNumber(SVGNumberList_getItem_getter(this.handle, index));
  }
  auto insertItemBefore(SVGNumber newItem, uint index) {
    return SVGNumber(SVGNumberList_insertItemBefore(this.handle, newItem.handle, index));
  }
  auto replaceItem(SVGNumber newItem, uint index) {
    return SVGNumber(SVGNumberList_replaceItem(this.handle, newItem.handle, index));
  }
  auto removeItem(uint index) {
    return SVGNumber(SVGNumberList_removeItem(this.handle, index));
  }
  auto appendItem(SVGNumber newItem) {
    return SVGNumber(SVGNumberList_appendItem(this.handle, newItem.handle));
  }
  auto opIndexAssign(SVGNumber newItem, uint index) {
    SVGNumberList_setter__uint_JsHandle(this.handle, index, newItem.handle);
  }
  auto opDispatch(uint index)(SVGNumber newItem) {
    SVGNumberList_setter__uint_JsHandle(this.handle, index, newItem.handle);
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
    return SVGAnimatedEnumeration(SVGPatternElement_patternUnits_Get(this._parent));
  }
  auto patternContentUnits() {
    return SVGAnimatedEnumeration(SVGPatternElement_patternContentUnits_Get(this._parent));
  }
  auto patternTransform() {
    return SVGAnimatedTransformList(SVGPatternElement_patternTransform_Get(this._parent));
  }
  auto x() {
    return SVGAnimatedLength(SVGPatternElement_x_Get(this._parent));
  }
  auto y() {
    return SVGAnimatedLength(SVGPatternElement_y_Get(this._parent));
  }
  auto width() {
    return SVGAnimatedLength(SVGPatternElement_width_Get(this._parent));
  }
  auto height() {
    return SVGAnimatedLength(SVGPatternElement_height_Get(this._parent));
  }
  auto viewBox() {
    return SVGAnimatedRect(SVGFitToViewBox_viewBox_Get(this.handle));
  }
  auto preserveAspectRatio() {
    return SVGAnimatedPreserveAspectRatio(SVGFitToViewBox_preserveAspectRatio_Get(this.handle));
  }
  auto href() {
    return SVGAnimatedString(SVGURIReference_href_Get(this.handle));
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
    return DOMPoint(SVGPointList_initialize(this.handle, newItem.handle));
  }
  auto getItem(uint index) {
    return DOMPoint(SVGPointList_getItem_getter(this.handle, index));
  }
  auto insertItemBefore(DOMPoint newItem, uint index) {
    return DOMPoint(SVGPointList_insertItemBefore(this.handle, newItem.handle, index));
  }
  auto replaceItem(DOMPoint newItem, uint index) {
    return DOMPoint(SVGPointList_replaceItem(this.handle, newItem.handle, index));
  }
  auto removeItem(uint index) {
    return DOMPoint(SVGPointList_removeItem(this.handle, index));
  }
  auto appendItem(DOMPoint newItem) {
    return DOMPoint(SVGPointList_appendItem(this.handle, newItem.handle));
  }
  auto opIndexAssign(DOMPoint newItem, uint index) {
    SVGPointList_setter__uint_JsHandle(this.handle, index, newItem.handle);
  }
  auto opDispatch(uint index)(DOMPoint newItem) {
    SVGPointList_setter__uint_JsHandle(this.handle, index, newItem.handle);
  }
}
struct SVGPolygonElement {
  SVGGeometryElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGeometryElement(h);
  }
  auto points() {
    return SVGPointList(SVGAnimatedPoints_points_Get(this.handle));
  }
  auto animatedPoints() {
    return SVGPointList(SVGAnimatedPoints_animatedPoints_Get(this.handle));
  }
}
struct SVGPolylineElement {
  SVGGeometryElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGeometryElement(h);
  }
  auto points() {
    return SVGPointList(SVGAnimatedPoints_points_Get(this.handle));
  }
  auto animatedPoints() {
    return SVGPointList(SVGAnimatedPoints_animatedPoints_Get(this.handle));
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
    return SVGAnimatedLength(SVGRadialGradientElement_cx_Get(this._parent));
  }
  auto cy() {
    return SVGAnimatedLength(SVGRadialGradientElement_cy_Get(this._parent));
  }
  auto r() {
    return SVGAnimatedLength(SVGRadialGradientElement_r_Get(this._parent));
  }
  auto fx() {
    return SVGAnimatedLength(SVGRadialGradientElement_fx_Get(this._parent));
  }
  auto fy() {
    return SVGAnimatedLength(SVGRadialGradientElement_fy_Get(this._parent));
  }
  auto fr() {
    return SVGAnimatedLength(SVGRadialGradientElement_fr_Get(this._parent));
  }
}
struct SVGRectElement {
  SVGGeometryElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGeometryElement(h);
  }
  auto x() {
    return SVGAnimatedLength(SVGRectElement_x_Get(this._parent));
  }
  auto y() {
    return SVGAnimatedLength(SVGRectElement_y_Get(this._parent));
  }
  auto width() {
    return SVGAnimatedLength(SVGRectElement_width_Get(this._parent));
  }
  auto height() {
    return SVGAnimatedLength(SVGRectElement_height_Get(this._parent));
  }
  auto rx() {
    return SVGAnimatedLength(SVGRectElement_rx_Get(this._parent));
  }
  auto ry() {
    return SVGAnimatedLength(SVGRectElement_ry_Get(this._parent));
  }
}
struct SVGSVGElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGraphicsElement(h);
  }
  auto x() {
    return SVGAnimatedLength(SVGSVGElement_x_Get(this._parent));
  }
  auto y() {
    return SVGAnimatedLength(SVGSVGElement_y_Get(this._parent));
  }
  auto width() {
    return SVGAnimatedLength(SVGSVGElement_width_Get(this._parent));
  }
  auto height() {
    return SVGAnimatedLength(SVGSVGElement_height_Get(this._parent));
  }
  auto currentScale(float currentScale) {
    SVGSVGElement_currentScale_Set(this._parent, currentScale);
  }
  auto currentScale() {
    return SVGSVGElement_currentScale_Get(this._parent);
  }
  auto currentTranslate() {
    return DOMPointReadOnly(SVGSVGElement_currentTranslate_Get(this._parent));
  }
  auto getIntersectionList(DOMRectReadOnly rect, Optional!(SVGElement) referenceElement) {
    return NodeList(SVGSVGElement_getIntersectionList(this._parent, rect.handle, !referenceElement.empty, referenceElement.front.handle));
  }
  auto getEnclosureList(DOMRectReadOnly rect, Optional!(SVGElement) referenceElement) {
    return NodeList(SVGSVGElement_getEnclosureList(this._parent, rect.handle, !referenceElement.empty, referenceElement.front.handle));
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
    return SVGNumber(SVGSVGElement_createSVGNumber(this._parent));
  }
  auto createSVGLength() {
    return SVGLength(SVGSVGElement_createSVGLength(this._parent));
  }
  auto createSVGAngle() {
    return SVGAngle(SVGSVGElement_createSVGAngle(this._parent));
  }
  auto createSVGPoint() {
    return DOMPoint(SVGSVGElement_createSVGPoint(this._parent));
  }
  auto createSVGMatrix() {
    return DOMMatrix(SVGSVGElement_createSVGMatrix(this._parent));
  }
  auto createSVGRect() {
    return DOMRect(SVGSVGElement_createSVGRect(this._parent));
  }
  auto createSVGTransform() {
    return SVGTransform(SVGSVGElement_createSVGTransform(this._parent));
  }
  auto createSVGTransformFromMatrix(DOMMatrixReadOnly matrix) {
    return SVGTransform(SVGSVGElement_createSVGTransformFromMatrix(this._parent, matrix.handle));
  }
  auto getElementById(string elementId) {
    return Element(SVGSVGElement_getElementById(this._parent, elementId));
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
    return SVGAnimatedRect(SVGFitToViewBox_viewBox_Get(this.handle));
  }
  auto preserveAspectRatio() {
    return SVGAnimatedPreserveAspectRatio(SVGFitToViewBox_preserveAspectRatio_Get(this.handle));
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
    return SVGAnimatedString(SVGURIReference_href_Get(this.handle));
  }
}
struct SVGStopElement {
  SVGElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGElement(h);
  }
  auto offset() {
    return SVGAnimatedNumber(SVGStopElement_offset_Get(this._parent));
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
    return SVGAnimatedRect(SVGFitToViewBox_viewBox_Get(this.handle));
  }
  auto preserveAspectRatio() {
    return SVGAnimatedPreserveAspectRatio(SVGFitToViewBox_preserveAspectRatio_Get(this.handle));
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
    return SVGAnimatedLength(SVGTextContentElement_textLength_Get(this._parent));
  }
  auto lengthAdjust() {
    return SVGAnimatedEnumeration(SVGTextContentElement_lengthAdjust_Get(this._parent));
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
    return DOMPoint(SVGTextContentElement_getStartPositionOfChar(this._parent, charnum));
  }
  auto getEndPositionOfChar(uint charnum) {
    return DOMPoint(SVGTextContentElement_getEndPositionOfChar(this._parent, charnum));
  }
  auto getExtentOfChar(uint charnum) {
    return DOMRect(SVGTextContentElement_getExtentOfChar(this._parent, charnum));
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
    return SVGAnimatedLength(SVGTextPathElement_startOffset_Get(this._parent));
  }
  auto method() {
    return SVGAnimatedEnumeration(SVGTextPathElement_method_Get(this._parent));
  }
  auto spacing() {
    return SVGAnimatedEnumeration(SVGTextPathElement_spacing_Get(this._parent));
  }
  auto href() {
    return SVGAnimatedString(SVGURIReference_href_Get(this.handle));
  }
}
struct SVGTextPositioningElement {
  SVGTextContentElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGTextContentElement(h);
  }
  auto x() {
    return SVGAnimatedLengthList(SVGTextPositioningElement_x_Get(this._parent));
  }
  auto y() {
    return SVGAnimatedLengthList(SVGTextPositioningElement_y_Get(this._parent));
  }
  auto dx() {
    return SVGAnimatedLengthList(SVGTextPositioningElement_dx_Get(this._parent));
  }
  auto dy() {
    return SVGAnimatedLengthList(SVGTextPositioningElement_dy_Get(this._parent));
  }
  auto rotate() {
    return SVGAnimatedNumberList(SVGTextPositioningElement_rotate_Get(this._parent));
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
    return DOMMatrix(SVGTransform_matrix_Get(this.handle));
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
    return SVGTransform(SVGTransformList_initialize(this.handle, newItem.handle));
  }
  auto getItem(uint index) {
    return SVGTransform(SVGTransformList_getItem_getter(this.handle, index));
  }
  auto insertItemBefore(SVGTransform newItem, uint index) {
    return SVGTransform(SVGTransformList_insertItemBefore(this.handle, newItem.handle, index));
  }
  auto replaceItem(SVGTransform newItem, uint index) {
    return SVGTransform(SVGTransformList_replaceItem(this.handle, newItem.handle, index));
  }
  auto removeItem(uint index) {
    return SVGTransform(SVGTransformList_removeItem(this.handle, index));
  }
  auto appendItem(SVGTransform newItem) {
    return SVGTransform(SVGTransformList_appendItem(this.handle, newItem.handle));
  }
  auto opIndexAssign(SVGTransform newItem, uint index) {
    SVGTransformList_setter__uint_JsHandle(this.handle, index, newItem.handle);
  }
  auto opDispatch(uint index)(SVGTransform newItem) {
    SVGTransformList_setter__uint_JsHandle(this.handle, index, newItem.handle);
  }
  auto createSVGTransformFromMatrix(DOMMatrixReadOnly matrix) {
    return SVGTransform(SVGTransformList_createSVGTransformFromMatrix(this.handle, matrix.handle));
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
    return SVGAnimatedLength(SVGUseElement_x_Get(this._parent));
  }
  auto y() {
    return SVGAnimatedLength(SVGUseElement_y_Get(this._parent));
  }
  auto width() {
    return SVGAnimatedLength(SVGUseElement_width_Get(this._parent));
  }
  auto height() {
    return SVGAnimatedLength(SVGUseElement_height_Get(this._parent));
  }
  auto instanceRoot() {
    return SVGUseElement_instanceRoot_Get(this._parent);
  }
  auto animatedInstanceRoot() {
    return SVGUseElement_animatedInstanceRoot_Get(this._parent);
  }
  auto href() {
    return SVGAnimatedString(SVGURIReference_href_Get(this.handle));
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
    return SVGAnimatedRect(SVGFitToViewBox_viewBox_Get(this.handle));
  }
  auto preserveAspectRatio() {
    return SVGAnimatedPreserveAspectRatio(SVGFitToViewBox_preserveAspectRatio_Get(this.handle));
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
    return Animation(ShadowAnimation_sourceAnimation_Get(this._parent));
  }
}


extern (C) JsHandle GetSVGDocument_getSVGDocument(JsHandle);
extern (C) JsHandle SVGAElement_target_Get(JsHandle);
extern (C) void SVGAElement_download_Set(JsHandle, string);
extern (C) string SVGAElement_download_Get(JsHandle);
extern (C) void SVGAElement_ping_Set(JsHandle, string);
extern (C) string SVGAElement_ping_Get(JsHandle);
extern (C) void SVGAElement_rel_Set(JsHandle, string);
extern (C) string SVGAElement_rel_Get(JsHandle);
extern (C) JsHandle SVGAElement_relList_Get(JsHandle);
extern (C) void SVGAElement_hreflang_Set(JsHandle, string);
extern (C) string SVGAElement_hreflang_Get(JsHandle);
extern (C) void SVGAElement_type_Set(JsHandle, string);
extern (C) string SVGAElement_type_Get(JsHandle);
extern (C) void SVGAElement_text_Set(JsHandle, string);
extern (C) string SVGAElement_text_Get(JsHandle);
extern (C) void SVGAElement_referrerPolicy_Set(JsHandle, string);
extern (C) string SVGAElement_referrerPolicy_Get(JsHandle);
extern (C) ushort SVGAngle_unitType_Get(JsHandle);
extern (C) void SVGAngle_value_Set(JsHandle, float);
extern (C) float SVGAngle_value_Get(JsHandle);
extern (C) void SVGAngle_valueInSpecifiedUnits_Set(JsHandle, float);
extern (C) float SVGAngle_valueInSpecifiedUnits_Get(JsHandle);
extern (C) void SVGAngle_valueAsString_Set(JsHandle, string);
extern (C) string SVGAngle_valueAsString_Get(JsHandle);
extern (C) void SVGAngle_newValueSpecifiedUnits(JsHandle, ushort, float);
extern (C) void SVGAngle_convertToSpecifiedUnits(JsHandle, ushort);
extern (C) JsHandle SVGAnimatedAngle_baseVal_Get(JsHandle);
extern (C) JsHandle SVGAnimatedAngle_animVal_Get(JsHandle);
extern (C) void SVGAnimatedBoolean_baseVal_Set(JsHandle, bool);
extern (C) bool SVGAnimatedBoolean_baseVal_Get(JsHandle);
extern (C) bool SVGAnimatedBoolean_animVal_Get(JsHandle);
extern (C) void SVGAnimatedEnumeration_baseVal_Set(JsHandle, ushort);
extern (C) ushort SVGAnimatedEnumeration_baseVal_Get(JsHandle);
extern (C) ushort SVGAnimatedEnumeration_animVal_Get(JsHandle);
extern (C) void SVGAnimatedInteger_baseVal_Set(JsHandle, int);
extern (C) int SVGAnimatedInteger_baseVal_Get(JsHandle);
extern (C) int SVGAnimatedInteger_animVal_Get(JsHandle);
extern (C) JsHandle SVGAnimatedLength_baseVal_Get(JsHandle);
extern (C) JsHandle SVGAnimatedLength_animVal_Get(JsHandle);
extern (C) JsHandle SVGAnimatedLengthList_baseVal_Get(JsHandle);
extern (C) JsHandle SVGAnimatedLengthList_animVal_Get(JsHandle);
extern (C) void SVGAnimatedNumber_baseVal_Set(JsHandle, float);
extern (C) float SVGAnimatedNumber_baseVal_Get(JsHandle);
extern (C) float SVGAnimatedNumber_animVal_Get(JsHandle);
extern (C) JsHandle SVGAnimatedNumberList_baseVal_Get(JsHandle);
extern (C) JsHandle SVGAnimatedNumberList_animVal_Get(JsHandle);
extern (C) JsHandle SVGAnimatedPoints_points_Get(JsHandle);
extern (C) JsHandle SVGAnimatedPoints_animatedPoints_Get(JsHandle);
extern (C) JsHandle SVGAnimatedPreserveAspectRatio_baseVal_Get(JsHandle);
extern (C) JsHandle SVGAnimatedPreserveAspectRatio_animVal_Get(JsHandle);
extern (C) JsHandle SVGAnimatedRect_baseVal_Get(JsHandle);
extern (C) JsHandle SVGAnimatedRect_animVal_Get(JsHandle);
extern (C) void SVGAnimatedString_baseVal_Set(JsHandle, string);
extern (C) string SVGAnimatedString_baseVal_Get(JsHandle);
extern (C) string SVGAnimatedString_animVal_Get(JsHandle);
extern (C) JsHandle SVGAnimatedTransformList_baseVal_Get(JsHandle);
extern (C) JsHandle SVGAnimatedTransformList_animVal_Get(JsHandle);
extern (C) void SVGBoundingBoxOptions_fill_Set(JsHandle, bool);
extern (C) bool SVGBoundingBoxOptions_fill_Get(JsHandle);
extern (C) void SVGBoundingBoxOptions_stroke_Set(JsHandle, bool);
extern (C) bool SVGBoundingBoxOptions_stroke_Get(JsHandle);
extern (C) void SVGBoundingBoxOptions_markers_Set(JsHandle, bool);
extern (C) bool SVGBoundingBoxOptions_markers_Get(JsHandle);
extern (C) void SVGBoundingBoxOptions_clipped_Set(JsHandle, bool);
extern (C) bool SVGBoundingBoxOptions_clipped_Get(JsHandle);
extern (C) JsHandle SVGCircleElement_cx_Get(JsHandle);
extern (C) JsHandle SVGCircleElement_cy_Get(JsHandle);
extern (C) JsHandle SVGCircleElement_r_Get(JsHandle);
extern (C) JsHandle SVGElement_className_Get(JsHandle);
extern (C) Optional!(SVGSVGElement) SVGElement_ownerSVGElement_Get(JsHandle);
extern (C) Optional!(SVGElement) SVGElement_viewportElement_Get(JsHandle);
extern (C) Optional!(SVGElement) SVGElementInstance_correspondingElement_Get(JsHandle);
extern (C) Optional!(SVGUseElement) SVGElementInstance_correspondingUseElement_Get(JsHandle);
extern (C) JsHandle SVGEllipseElement_cx_Get(JsHandle);
extern (C) JsHandle SVGEllipseElement_cy_Get(JsHandle);
extern (C) JsHandle SVGEllipseElement_rx_Get(JsHandle);
extern (C) JsHandle SVGEllipseElement_ry_Get(JsHandle);
extern (C) JsHandle SVGFitToViewBox_viewBox_Get(JsHandle);
extern (C) JsHandle SVGFitToViewBox_preserveAspectRatio_Get(JsHandle);
extern (C) JsHandle SVGForeignObjectElement_x_Get(JsHandle);
extern (C) JsHandle SVGForeignObjectElement_y_Get(JsHandle);
extern (C) JsHandle SVGForeignObjectElement_width_Get(JsHandle);
extern (C) JsHandle SVGForeignObjectElement_height_Get(JsHandle);
extern (C) JsHandle SVGGeometryElement_pathLength_Get(JsHandle);
extern (C) bool SVGGeometryElement_isPointInFill(JsHandle, JsHandle);
extern (C) bool SVGGeometryElement_isPointInStroke(JsHandle, JsHandle);
extern (C) float SVGGeometryElement_getTotalLength(JsHandle);
extern (C) JsHandle SVGGeometryElement_getPointAtLength(JsHandle, float);
extern (C) JsHandle SVGGradientElement_gradientUnits_Get(JsHandle);
extern (C) JsHandle SVGGradientElement_gradientTransform_Get(JsHandle);
extern (C) JsHandle SVGGradientElement_spreadMethod_Get(JsHandle);
extern (C) JsHandle SVGGraphicsElement_transform_Get(JsHandle);
extern (C) JsHandle SVGGraphicsElement_getBBox(JsHandle, JsHandle);
extern (C) Optional!(DOMMatrix) SVGGraphicsElement_getCTM(JsHandle);
extern (C) Optional!(DOMMatrix) SVGGraphicsElement_getScreenCTM(JsHandle);
extern (C) JsHandle SVGImageElement_x_Get(JsHandle);
extern (C) JsHandle SVGImageElement_y_Get(JsHandle);
extern (C) JsHandle SVGImageElement_width_Get(JsHandle);
extern (C) JsHandle SVGImageElement_height_Get(JsHandle);
extern (C) JsHandle SVGImageElement_preserveAspectRatio_Get(JsHandle);
extern (C) void SVGImageElement_crossOrigin_Set(JsHandle, bool, string);
extern (C) Optional!(string) SVGImageElement_crossOrigin_Get(JsHandle);
extern (C) ushort SVGLength_unitType_Get(JsHandle);
extern (C) void SVGLength_value_Set(JsHandle, float);
extern (C) float SVGLength_value_Get(JsHandle);
extern (C) void SVGLength_valueInSpecifiedUnits_Set(JsHandle, float);
extern (C) float SVGLength_valueInSpecifiedUnits_Get(JsHandle);
extern (C) void SVGLength_valueAsString_Set(JsHandle, string);
extern (C) string SVGLength_valueAsString_Get(JsHandle);
extern (C) void SVGLength_newValueSpecifiedUnits(JsHandle, ushort, float);
extern (C) void SVGLength_convertToSpecifiedUnits(JsHandle, ushort);
extern (C) uint SVGLengthList_length_Get(JsHandle);
extern (C) uint SVGLengthList_numberOfItems_Get(JsHandle);
extern (C) void SVGLengthList_clear(JsHandle);
extern (C) JsHandle SVGLengthList_initialize(JsHandle, JsHandle);
extern (C) JsHandle SVGLengthList_getItem_getter(JsHandle, uint);
extern (C) JsHandle SVGLengthList_insertItemBefore(JsHandle, JsHandle, uint);
extern (C) JsHandle SVGLengthList_replaceItem(JsHandle, JsHandle, uint);
extern (C) JsHandle SVGLengthList_removeItem(JsHandle, uint);
extern (C) JsHandle SVGLengthList_appendItem(JsHandle, JsHandle);
extern (C) void SVGLengthList_setter__uint_JsHandle(JsHandle, uint, JsHandle);
extern (C) JsHandle SVGLineElement_x1_Get(JsHandle);
extern (C) JsHandle SVGLineElement_y1_Get(JsHandle);
extern (C) JsHandle SVGLineElement_x2_Get(JsHandle);
extern (C) JsHandle SVGLineElement_y2_Get(JsHandle);
extern (C) JsHandle SVGLinearGradientElement_x1_Get(JsHandle);
extern (C) JsHandle SVGLinearGradientElement_y1_Get(JsHandle);
extern (C) JsHandle SVGLinearGradientElement_x2_Get(JsHandle);
extern (C) JsHandle SVGLinearGradientElement_y2_Get(JsHandle);
extern (C) JsHandle SVGMarkerElement_refX_Get(JsHandle);
extern (C) JsHandle SVGMarkerElement_refY_Get(JsHandle);
extern (C) JsHandle SVGMarkerElement_markerUnits_Get(JsHandle);
extern (C) JsHandle SVGMarkerElement_markerWidth_Get(JsHandle);
extern (C) JsHandle SVGMarkerElement_markerHeight_Get(JsHandle);
extern (C) JsHandle SVGMarkerElement_orientType_Get(JsHandle);
extern (C) JsHandle SVGMarkerElement_orientAngle_Get(JsHandle);
extern (C) void SVGMarkerElement_orient_Set(JsHandle, string);
extern (C) string SVGMarkerElement_orient_Get(JsHandle);
extern (C) void SVGMarkerElement_setOrientToAuto(JsHandle);
extern (C) void SVGMarkerElement_setOrientToAngle(JsHandle, JsHandle);
extern (C) void SVGNumber_value_Set(JsHandle, float);
extern (C) float SVGNumber_value_Get(JsHandle);
extern (C) uint SVGNumberList_length_Get(JsHandle);
extern (C) uint SVGNumberList_numberOfItems_Get(JsHandle);
extern (C) void SVGNumberList_clear(JsHandle);
extern (C) JsHandle SVGNumberList_initialize(JsHandle, JsHandle);
extern (C) JsHandle SVGNumberList_getItem_getter(JsHandle, uint);
extern (C) JsHandle SVGNumberList_insertItemBefore(JsHandle, JsHandle, uint);
extern (C) JsHandle SVGNumberList_replaceItem(JsHandle, JsHandle, uint);
extern (C) JsHandle SVGNumberList_removeItem(JsHandle, uint);
extern (C) JsHandle SVGNumberList_appendItem(JsHandle, JsHandle);
extern (C) void SVGNumberList_setter__uint_JsHandle(JsHandle, uint, JsHandle);
extern (C) JsHandle SVGPatternElement_patternUnits_Get(JsHandle);
extern (C) JsHandle SVGPatternElement_patternContentUnits_Get(JsHandle);
extern (C) JsHandle SVGPatternElement_patternTransform_Get(JsHandle);
extern (C) JsHandle SVGPatternElement_x_Get(JsHandle);
extern (C) JsHandle SVGPatternElement_y_Get(JsHandle);
extern (C) JsHandle SVGPatternElement_width_Get(JsHandle);
extern (C) JsHandle SVGPatternElement_height_Get(JsHandle);
extern (C) uint SVGPointList_length_Get(JsHandle);
extern (C) uint SVGPointList_numberOfItems_Get(JsHandle);
extern (C) void SVGPointList_clear(JsHandle);
extern (C) JsHandle SVGPointList_initialize(JsHandle, JsHandle);
extern (C) JsHandle SVGPointList_getItem_getter(JsHandle, uint);
extern (C) JsHandle SVGPointList_insertItemBefore(JsHandle, JsHandle, uint);
extern (C) JsHandle SVGPointList_replaceItem(JsHandle, JsHandle, uint);
extern (C) JsHandle SVGPointList_removeItem(JsHandle, uint);
extern (C) JsHandle SVGPointList_appendItem(JsHandle, JsHandle);
extern (C) void SVGPointList_setter__uint_JsHandle(JsHandle, uint, JsHandle);
extern (C) void SVGPreserveAspectRatio_align_Set(JsHandle, ushort);
extern (C) ushort SVGPreserveAspectRatio_align_Get(JsHandle);
extern (C) void SVGPreserveAspectRatio_meetOrSlice_Set(JsHandle, ushort);
extern (C) ushort SVGPreserveAspectRatio_meetOrSlice_Get(JsHandle);
extern (C) JsHandle SVGRadialGradientElement_cx_Get(JsHandle);
extern (C) JsHandle SVGRadialGradientElement_cy_Get(JsHandle);
extern (C) JsHandle SVGRadialGradientElement_r_Get(JsHandle);
extern (C) JsHandle SVGRadialGradientElement_fx_Get(JsHandle);
extern (C) JsHandle SVGRadialGradientElement_fy_Get(JsHandle);
extern (C) JsHandle SVGRadialGradientElement_fr_Get(JsHandle);
extern (C) JsHandle SVGRectElement_x_Get(JsHandle);
extern (C) JsHandle SVGRectElement_y_Get(JsHandle);
extern (C) JsHandle SVGRectElement_width_Get(JsHandle);
extern (C) JsHandle SVGRectElement_height_Get(JsHandle);
extern (C) JsHandle SVGRectElement_rx_Get(JsHandle);
extern (C) JsHandle SVGRectElement_ry_Get(JsHandle);
extern (C) JsHandle SVGSVGElement_x_Get(JsHandle);
extern (C) JsHandle SVGSVGElement_y_Get(JsHandle);
extern (C) JsHandle SVGSVGElement_width_Get(JsHandle);
extern (C) JsHandle SVGSVGElement_height_Get(JsHandle);
extern (C) void SVGSVGElement_currentScale_Set(JsHandle, float);
extern (C) float SVGSVGElement_currentScale_Get(JsHandle);
extern (C) JsHandle SVGSVGElement_currentTranslate_Get(JsHandle);
extern (C) JsHandle SVGSVGElement_getIntersectionList(JsHandle, JsHandle, bool, JsHandle);
extern (C) JsHandle SVGSVGElement_getEnclosureList(JsHandle, JsHandle, bool, JsHandle);
extern (C) bool SVGSVGElement_checkIntersection(JsHandle, JsHandle, JsHandle);
extern (C) bool SVGSVGElement_checkEnclosure(JsHandle, JsHandle, JsHandle);
extern (C) void SVGSVGElement_deselectAll(JsHandle);
extern (C) JsHandle SVGSVGElement_createSVGNumber(JsHandle);
extern (C) JsHandle SVGSVGElement_createSVGLength(JsHandle);
extern (C) JsHandle SVGSVGElement_createSVGAngle(JsHandle);
extern (C) JsHandle SVGSVGElement_createSVGPoint(JsHandle);
extern (C) JsHandle SVGSVGElement_createSVGMatrix(JsHandle);
extern (C) JsHandle SVGSVGElement_createSVGRect(JsHandle);
extern (C) JsHandle SVGSVGElement_createSVGTransform(JsHandle);
extern (C) JsHandle SVGSVGElement_createSVGTransformFromMatrix(JsHandle, JsHandle);
extern (C) JsHandle SVGSVGElement_getElementById(JsHandle, string);
extern (C) uint SVGSVGElement_suspendRedraw(JsHandle, uint);
extern (C) void SVGSVGElement_unsuspendRedraw(JsHandle, uint);
extern (C) void SVGSVGElement_unsuspendRedrawAll(JsHandle);
extern (C) void SVGSVGElement_forceRedraw(JsHandle);
extern (C) void SVGScriptElement_type_Set(JsHandle, string);
extern (C) string SVGScriptElement_type_Get(JsHandle);
extern (C) void SVGScriptElement_crossOrigin_Set(JsHandle, bool, string);
extern (C) Optional!(string) SVGScriptElement_crossOrigin_Get(JsHandle);
extern (C) JsHandle SVGStopElement_offset_Get(JsHandle);
extern (C) uint SVGStringList_length_Get(JsHandle);
extern (C) uint SVGStringList_numberOfItems_Get(JsHandle);
extern (C) void SVGStringList_clear(JsHandle);
extern (C) string SVGStringList_initialize(JsHandle, string);
extern (C) string SVGStringList_getItem_getter(JsHandle, uint);
extern (C) string SVGStringList_insertItemBefore(JsHandle, string, uint);
extern (C) string SVGStringList_replaceItem(JsHandle, string, uint);
extern (C) string SVGStringList_removeItem(JsHandle, uint);
extern (C) string SVGStringList_appendItem(JsHandle, string);
extern (C) void SVGStringList_setter__uint_string(JsHandle, uint, string);
extern (C) void SVGStyleElement_type_Set(JsHandle, string);
extern (C) string SVGStyleElement_type_Get(JsHandle);
extern (C) void SVGStyleElement_media_Set(JsHandle, string);
extern (C) string SVGStyleElement_media_Get(JsHandle);
extern (C) void SVGStyleElement_title_Set(JsHandle, string);
extern (C) string SVGStyleElement_title_Get(JsHandle);
extern (C) JsHandle SVGTests_requiredExtensions_Get(JsHandle);
extern (C) JsHandle SVGTests_systemLanguage_Get(JsHandle);
extern (C) JsHandle SVGTextContentElement_textLength_Get(JsHandle);
extern (C) JsHandle SVGTextContentElement_lengthAdjust_Get(JsHandle);
extern (C) int SVGTextContentElement_getNumberOfChars(JsHandle);
extern (C) float SVGTextContentElement_getComputedTextLength(JsHandle);
extern (C) float SVGTextContentElement_getSubStringLength(JsHandle, uint, uint);
extern (C) JsHandle SVGTextContentElement_getStartPositionOfChar(JsHandle, uint);
extern (C) JsHandle SVGTextContentElement_getEndPositionOfChar(JsHandle, uint);
extern (C) JsHandle SVGTextContentElement_getExtentOfChar(JsHandle, uint);
extern (C) float SVGTextContentElement_getRotationOfChar(JsHandle, uint);
extern (C) int SVGTextContentElement_getCharNumAtPosition(JsHandle, JsHandle);
extern (C) void SVGTextContentElement_selectSubString(JsHandle, uint, uint);
extern (C) JsHandle SVGTextPathElement_startOffset_Get(JsHandle);
extern (C) JsHandle SVGTextPathElement_method_Get(JsHandle);
extern (C) JsHandle SVGTextPathElement_spacing_Get(JsHandle);
extern (C) JsHandle SVGTextPositioningElement_x_Get(JsHandle);
extern (C) JsHandle SVGTextPositioningElement_y_Get(JsHandle);
extern (C) JsHandle SVGTextPositioningElement_dx_Get(JsHandle);
extern (C) JsHandle SVGTextPositioningElement_dy_Get(JsHandle);
extern (C) JsHandle SVGTextPositioningElement_rotate_Get(JsHandle);
extern (C) ushort SVGTransform_type_Get(JsHandle);
extern (C) JsHandle SVGTransform_matrix_Get(JsHandle);
extern (C) float SVGTransform_angle_Get(JsHandle);
extern (C) void SVGTransform_setMatrix(JsHandle, JsHandle);
extern (C) void SVGTransform_setTranslate(JsHandle, float, float);
extern (C) void SVGTransform_setScale(JsHandle, float, float);
extern (C) void SVGTransform_setRotate(JsHandle, float, float, float);
extern (C) void SVGTransform_setSkewX(JsHandle, float);
extern (C) void SVGTransform_setSkewY(JsHandle, float);
extern (C) uint SVGTransformList_length_Get(JsHandle);
extern (C) uint SVGTransformList_numberOfItems_Get(JsHandle);
extern (C) void SVGTransformList_clear(JsHandle);
extern (C) JsHandle SVGTransformList_initialize(JsHandle, JsHandle);
extern (C) JsHandle SVGTransformList_getItem_getter(JsHandle, uint);
extern (C) JsHandle SVGTransformList_insertItemBefore(JsHandle, JsHandle, uint);
extern (C) JsHandle SVGTransformList_replaceItem(JsHandle, JsHandle, uint);
extern (C) JsHandle SVGTransformList_removeItem(JsHandle, uint);
extern (C) JsHandle SVGTransformList_appendItem(JsHandle, JsHandle);
extern (C) void SVGTransformList_setter__uint_JsHandle(JsHandle, uint, JsHandle);
extern (C) JsHandle SVGTransformList_createSVGTransformFromMatrix(JsHandle, JsHandle);
extern (C) Optional!(SVGTransform) SVGTransformList_consolidate(JsHandle);
extern (C) JsHandle SVGURIReference_href_Get(JsHandle);
extern (C) JsHandle SVGUseElement_x_Get(JsHandle);
extern (C) JsHandle SVGUseElement_y_Get(JsHandle);
extern (C) JsHandle SVGUseElement_width_Get(JsHandle);
extern (C) JsHandle SVGUseElement_height_Get(JsHandle);
extern (C) Optional!(SVGElement) SVGUseElement_instanceRoot_Get(JsHandle);
extern (C) Optional!(SVGElement) SVGUseElement_animatedInstanceRoot_Get(JsHandle);
extern (C) JsHandle ShadowAnimation_sourceAnimation_Get(JsHandle);