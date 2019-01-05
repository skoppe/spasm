module spasm.bindings.svg;

import spasm.types;
import spasm.bindings.geometry : DOMMatrix;
import spasm.bindings.geometry : DOMMatrixReadOnly;
import spasm.bindings.geometry : DOMPoint;
import spasm.bindings.geometry : DOMPointInit;
import spasm.bindings.geometry : DOMPointReadOnly;
import spasm.bindings.geometry : DOMRect;
import spasm.bindings.geometry : DOMRectReadOnly;
import spasm.bindings.html : DOMStringMap;
import spasm.bindings.dom : DOMTokenList;
import spasm.bindings.dom : Element;
import spasm.bindings.html : EventHandler;
import spasm.bindings.html : FocusOptions;
import spasm.bindings.dom : NodeList;
import spasm.bindings.cssom : StyleSheet;

struct SVGAElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  SVGAnimatedString target() {
    return SVGAnimatedString(SVGAElement_target_Get(handle));
  }
  void download(string download) {
    SVGAElement_download_Set(handle, download);
  }
  string download() {
    return SVGAElement_download_Get(handle);
  }
  void ping(string ping) {
    SVGAElement_ping_Set(handle, ping.handle);
  }
  string ping() {
    return string(SVGAElement_ping_Get(handle));
  }
  void rel(string rel) {
    SVGAElement_rel_Set(handle, rel);
  }
  string rel() {
    return SVGAElement_rel_Get(handle);
  }
  DOMTokenList relList() {
    return DOMTokenList(SVGAElement_relList_Get(handle));
  }
  void hreflang(string hreflang) {
    SVGAElement_hreflang_Set(handle, hreflang);
  }
  string hreflang() {
    return SVGAElement_hreflang_Get(handle);
  }
  void type(string type) {
    SVGAElement_type_Set(handle, type);
  }
  string type() {
    return SVGAElement_type_Get(handle);
  }
  void text(string text) {
    SVGAElement_text_Set(handle, text);
  }
  string text() {
    return SVGAElement_text_Get(handle);
  }
  void referrerPolicy(string referrerPolicy) {
    SVGAElement_referrerPolicy_Set(handle, referrerPolicy);
  }
  string referrerPolicy() {
    return SVGAElement_referrerPolicy_Get(handle);
  }
  SVGAnimatedString href() {
    return SVGAnimatedString(SVGURIReference_href_Get(handle));
  }
  void href(string href) {
    HTMLHyperlinkElementUtils_href_Set(handle, href.handle);
  }
  string href() {
    return string(HTMLHyperlinkElementUtils_href_Get(handle));
  }
  string origin() {
    return string(HTMLHyperlinkElementUtils_origin_Get(handle));
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
  ushort unitType() {
    return SVGAngle_unitType_Get(handle);
  }
  void value(float value) {
    SVGAngle_value_Set(handle, value);
  }
  float value() {
    return SVGAngle_value_Get(handle);
  }
  void valueInSpecifiedUnits(float valueInSpecifiedUnits) {
    SVGAngle_valueInSpecifiedUnits_Set(handle, valueInSpecifiedUnits);
  }
  float valueInSpecifiedUnits() {
    return SVGAngle_valueInSpecifiedUnits_Get(handle);
  }
  void valueAsString(string valueAsString) {
    SVGAngle_valueAsString_Set(handle, valueAsString);
  }
  string valueAsString() {
    return SVGAngle_valueAsString_Get(handle);
  }
  void newValueSpecifiedUnits(ushort unitType, float valueInSpecifiedUnits) {
    SVGAngle_newValueSpecifiedUnits(handle, unitType, valueInSpecifiedUnits);
  }
  void convertToSpecifiedUnits(ushort unitType) {
    SVGAngle_convertToSpecifiedUnits(handle, unitType);
  }
}
struct SVGAnimatedAngle {
  JsHandle handle;
  alias handle this;
  SVGAngle baseVal() {
    return SVGAngle(SVGAnimatedAngle_baseVal_Get(handle));
  }
  SVGAngle animVal() {
    return SVGAngle(SVGAnimatedAngle_animVal_Get(handle));
  }
}
struct SVGAnimatedBoolean {
  JsHandle handle;
  alias handle this;
  void baseVal(bool baseVal) {
    SVGAnimatedBoolean_baseVal_Set(handle, baseVal);
  }
  bool baseVal() {
    return SVGAnimatedBoolean_baseVal_Get(handle);
  }
  bool animVal() {
    return SVGAnimatedBoolean_animVal_Get(handle);
  }
}
struct SVGAnimatedEnumeration {
  JsHandle handle;
  alias handle this;
  void baseVal(ushort baseVal) {
    SVGAnimatedEnumeration_baseVal_Set(handle, baseVal);
  }
  ushort baseVal() {
    return SVGAnimatedEnumeration_baseVal_Get(handle);
  }
  ushort animVal() {
    return SVGAnimatedEnumeration_animVal_Get(handle);
  }
}
struct SVGAnimatedInteger {
  JsHandle handle;
  alias handle this;
  void baseVal(int baseVal) {
    SVGAnimatedInteger_baseVal_Set(handle, baseVal);
  }
  int baseVal() {
    return SVGAnimatedInteger_baseVal_Get(handle);
  }
  int animVal() {
    return SVGAnimatedInteger_animVal_Get(handle);
  }
}
struct SVGAnimatedLength {
  JsHandle handle;
  alias handle this;
  SVGLength baseVal() {
    return SVGLength(SVGAnimatedLength_baseVal_Get(handle));
  }
  SVGLength animVal() {
    return SVGLength(SVGAnimatedLength_animVal_Get(handle));
  }
}
struct SVGAnimatedLengthList {
  JsHandle handle;
  alias handle this;
  SVGLengthList baseVal() {
    return SVGLengthList(SVGAnimatedLengthList_baseVal_Get(handle));
  }
  SVGLengthList animVal() {
    return SVGLengthList(SVGAnimatedLengthList_animVal_Get(handle));
  }
}
struct SVGAnimatedNumber {
  JsHandle handle;
  alias handle this;
  void baseVal(float baseVal) {
    SVGAnimatedNumber_baseVal_Set(handle, baseVal);
  }
  float baseVal() {
    return SVGAnimatedNumber_baseVal_Get(handle);
  }
  float animVal() {
    return SVGAnimatedNumber_animVal_Get(handle);
  }
}
struct SVGAnimatedNumberList {
  JsHandle handle;
  alias handle this;
  SVGNumberList baseVal() {
    return SVGNumberList(SVGAnimatedNumberList_baseVal_Get(handle));
  }
  SVGNumberList animVal() {
    return SVGNumberList(SVGAnimatedNumberList_animVal_Get(handle));
  }
}
struct SVGAnimatedPreserveAspectRatio {
  JsHandle handle;
  alias handle this;
  SVGPreserveAspectRatio baseVal() {
    return SVGPreserveAspectRatio(SVGAnimatedPreserveAspectRatio_baseVal_Get(handle));
  }
  SVGPreserveAspectRatio animVal() {
    return SVGPreserveAspectRatio(SVGAnimatedPreserveAspectRatio_animVal_Get(handle));
  }
}
struct SVGAnimatedRect {
  JsHandle handle;
  alias handle this;
  DOMRect baseVal() {
    return DOMRect(SVGAnimatedRect_baseVal_Get(handle));
  }
  DOMRectReadOnly animVal() {
    return DOMRectReadOnly(SVGAnimatedRect_animVal_Get(handle));
  }
}
struct SVGAnimatedString {
  JsHandle handle;
  alias handle this;
  void baseVal(string baseVal) {
    SVGAnimatedString_baseVal_Set(handle, baseVal);
  }
  string baseVal() {
    return SVGAnimatedString_baseVal_Get(handle);
  }
  string animVal() {
    return SVGAnimatedString_animVal_Get(handle);
  }
}
struct SVGAnimatedTransformList {
  JsHandle handle;
  alias handle this;
  SVGTransformList baseVal() {
    return SVGTransformList(SVGAnimatedTransformList_baseVal_Get(handle));
  }
  SVGTransformList animVal() {
    return SVGTransformList(SVGAnimatedTransformList_animVal_Get(handle));
  }
}
struct SVGBoundingBoxOptions {
  JsHandle handle;
  alias handle this;
  void fill(bool fill) {
    SVGBoundingBoxOptions_fill_Set(handle, fill);
  }
  bool fill() {
    return SVGBoundingBoxOptions_fill_Get(handle);
  }
  void stroke(bool stroke) {
    SVGBoundingBoxOptions_stroke_Set(handle, stroke);
  }
  bool stroke() {
    return SVGBoundingBoxOptions_stroke_Get(handle);
  }
  void markers(bool markers) {
    SVGBoundingBoxOptions_markers_Set(handle, markers);
  }
  bool markers() {
    return SVGBoundingBoxOptions_markers_Get(handle);
  }
  void clipped(bool clipped) {
    SVGBoundingBoxOptions_clipped_Set(handle, clipped);
  }
  bool clipped() {
    return SVGBoundingBoxOptions_clipped_Get(handle);
  }
}
struct SVGCircleElement {
  SVGGeometryElement _parent;
  alias _parent this;
  SVGAnimatedLength cx() {
    return SVGAnimatedLength(SVGCircleElement_cx_Get(handle));
  }
  SVGAnimatedLength cy() {
    return SVGAnimatedLength(SVGCircleElement_cy_Get(handle));
  }
  SVGAnimatedLength r() {
    return SVGAnimatedLength(SVGCircleElement_r_Get(handle));
  }
}
struct SVGDefsElement {
  SVGGraphicsElement _parent;
  alias _parent this;
}
struct SVGDescElement {
  SVGElement _parent;
  alias _parent this;
}
struct SVGElement {
  Element _parent;
  alias _parent this;
  SVGAnimatedString className() {
    return SVGAnimatedString(SVGElement_className_Get(handle));
  }
  Optional!(SVGSVGElement) ownerSVGElement() {
    return SVGElement_ownerSVGElement_Get(handle);
  }
  Optional!(SVGElement) viewportElement() {
    return SVGElement_viewportElement_Get(handle);
  }
  void ongotpointercapture(EventHandler ongotpointercapture) {
    GlobalEventHandlers_ongotpointercapture_Set(handle, !ongotpointercapture.empty, ongotpointercapture.value);
  }
  EventHandler ongotpointercapture() {
    return GlobalEventHandlers_ongotpointercapture_Get(handle);
  }
  void onlostpointercapture(EventHandler onlostpointercapture) {
    GlobalEventHandlers_onlostpointercapture_Set(handle, !onlostpointercapture.empty, onlostpointercapture.value);
  }
  EventHandler onlostpointercapture() {
    return GlobalEventHandlers_onlostpointercapture_Get(handle);
  }
  void onpointerdown(EventHandler onpointerdown) {
    GlobalEventHandlers_onpointerdown_Set(handle, !onpointerdown.empty, onpointerdown.value);
  }
  EventHandler onpointerdown() {
    return GlobalEventHandlers_onpointerdown_Get(handle);
  }
  void onpointermove(EventHandler onpointermove) {
    GlobalEventHandlers_onpointermove_Set(handle, !onpointermove.empty, onpointermove.value);
  }
  EventHandler onpointermove() {
    return GlobalEventHandlers_onpointermove_Get(handle);
  }
  void onpointerup(EventHandler onpointerup) {
    GlobalEventHandlers_onpointerup_Set(handle, !onpointerup.empty, onpointerup.value);
  }
  EventHandler onpointerup() {
    return GlobalEventHandlers_onpointerup_Get(handle);
  }
  void onpointercancel(EventHandler onpointercancel) {
    GlobalEventHandlers_onpointercancel_Set(handle, !onpointercancel.empty, onpointercancel.value);
  }
  EventHandler onpointercancel() {
    return GlobalEventHandlers_onpointercancel_Get(handle);
  }
  void onpointerover(EventHandler onpointerover) {
    GlobalEventHandlers_onpointerover_Set(handle, !onpointerover.empty, onpointerover.value);
  }
  EventHandler onpointerover() {
    return GlobalEventHandlers_onpointerover_Get(handle);
  }
  void onpointerout(EventHandler onpointerout) {
    GlobalEventHandlers_onpointerout_Set(handle, !onpointerout.empty, onpointerout.value);
  }
  EventHandler onpointerout() {
    return GlobalEventHandlers_onpointerout_Get(handle);
  }
  void onpointerenter(EventHandler onpointerenter) {
    GlobalEventHandlers_onpointerenter_Set(handle, !onpointerenter.empty, onpointerenter.value);
  }
  EventHandler onpointerenter() {
    return GlobalEventHandlers_onpointerenter_Get(handle);
  }
  void onpointerleave(EventHandler onpointerleave) {
    GlobalEventHandlers_onpointerleave_Set(handle, !onpointerleave.empty, onpointerleave.value);
  }
  EventHandler onpointerleave() {
    return GlobalEventHandlers_onpointerleave_Get(handle);
  }
  void ontouchstart(EventHandler ontouchstart) {
    GlobalEventHandlers_ontouchstart_Set(handle, !ontouchstart.empty, ontouchstart.value);
  }
  EventHandler ontouchstart() {
    return GlobalEventHandlers_ontouchstart_Get(handle);
  }
  void ontouchend(EventHandler ontouchend) {
    GlobalEventHandlers_ontouchend_Set(handle, !ontouchend.empty, ontouchend.value);
  }
  EventHandler ontouchend() {
    return GlobalEventHandlers_ontouchend_Get(handle);
  }
  void ontouchmove(EventHandler ontouchmove) {
    GlobalEventHandlers_ontouchmove_Set(handle, !ontouchmove.empty, ontouchmove.value);
  }
  EventHandler ontouchmove() {
    return GlobalEventHandlers_ontouchmove_Get(handle);
  }
  void ontouchcancel(EventHandler ontouchcancel) {
    GlobalEventHandlers_ontouchcancel_Set(handle, !ontouchcancel.empty, ontouchcancel.value);
  }
  EventHandler ontouchcancel() {
    return GlobalEventHandlers_ontouchcancel_Get(handle);
  }
  Optional!(SVGElement) correspondingElement() {
    return SVGElementInstance_correspondingElement_Get(handle);
  }
  Optional!(SVGUseElement) correspondingUseElement() {
    return SVGElementInstance_correspondingUseElement_Get(handle);
  }
  DOMStringMap dataset() {
    return DOMStringMap(HTMLOrSVGElement_dataset_Get(handle));
  }
  void focus(FocusOptions options) {
    HTMLOrSVGElement_focus(handle, options.handle);
  }
  void blur() {
    HTMLOrSVGElement_blur(handle);
  }
}
struct SVGEllipseElement {
  SVGGeometryElement _parent;
  alias _parent this;
  SVGAnimatedLength cx() {
    return SVGAnimatedLength(SVGEllipseElement_cx_Get(handle));
  }
  SVGAnimatedLength cy() {
    return SVGAnimatedLength(SVGEllipseElement_cy_Get(handle));
  }
  SVGAnimatedLength rx() {
    return SVGAnimatedLength(SVGEllipseElement_rx_Get(handle));
  }
  SVGAnimatedLength ry() {
    return SVGAnimatedLength(SVGEllipseElement_ry_Get(handle));
  }
}
struct SVGForeignObjectElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  SVGAnimatedLength x() {
    return SVGAnimatedLength(SVGForeignObjectElement_x_Get(handle));
  }
  SVGAnimatedLength y() {
    return SVGAnimatedLength(SVGForeignObjectElement_y_Get(handle));
  }
  SVGAnimatedLength width() {
    return SVGAnimatedLength(SVGForeignObjectElement_width_Get(handle));
  }
  SVGAnimatedLength height() {
    return SVGAnimatedLength(SVGForeignObjectElement_height_Get(handle));
  }
}
struct SVGGElement {
  SVGGraphicsElement _parent;
  alias _parent this;
}
struct SVGGeometryElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  SVGAnimatedNumber pathLength() {
    return SVGAnimatedNumber(SVGGeometryElement_pathLength_Get(handle));
  }
  bool isPointInFill(DOMPointInit point) {
    return SVGGeometryElement_isPointInFill(handle, point.handle);
  }
  bool isPointInStroke(DOMPointInit point) {
    return SVGGeometryElement_isPointInStroke(handle, point.handle);
  }
  float getTotalLength() {
    return SVGGeometryElement_getTotalLength(handle);
  }
  DOMPoint getPointAtLength(float distance) {
    return DOMPoint(SVGGeometryElement_getPointAtLength(handle, distance));
  }
}
struct SVGGradientElement {
  SVGElement _parent;
  alias _parent this;
  enum ushort SVG_SPREADMETHOD_UNKNOWN = 0;
  enum ushort SVG_SPREADMETHOD_PAD = 1;
  enum ushort SVG_SPREADMETHOD_REFLECT = 2;
  enum ushort SVG_SPREADMETHOD_REPEAT = 3;
  SVGAnimatedEnumeration gradientUnits() {
    return SVGAnimatedEnumeration(SVGGradientElement_gradientUnits_Get(handle));
  }
  SVGAnimatedTransformList gradientTransform() {
    return SVGAnimatedTransformList(SVGGradientElement_gradientTransform_Get(handle));
  }
  SVGAnimatedEnumeration spreadMethod() {
    return SVGAnimatedEnumeration(SVGGradientElement_spreadMethod_Get(handle));
  }
  SVGAnimatedString href() {
    return SVGAnimatedString(SVGURIReference_href_Get(handle));
  }
}
struct SVGGraphicsElement {
  SVGElement _parent;
  alias _parent this;
  SVGAnimatedTransformList transform() {
    return SVGAnimatedTransformList(SVGGraphicsElement_transform_Get(handle));
  }
  DOMRect getBBox(SVGBoundingBoxOptions options) {
    return DOMRect(SVGGraphicsElement_getBBox(handle, options.handle));
  }
  Optional!(DOMMatrix) getCTM() {
    return SVGGraphicsElement_getCTM(handle);
  }
  Optional!(DOMMatrix) getScreenCTM() {
    return SVGGraphicsElement_getScreenCTM(handle);
  }
  SVGStringList requiredExtensions() {
    return SVGStringList(SVGTests_requiredExtensions_Get(handle));
  }
  SVGStringList systemLanguage() {
    return SVGStringList(SVGTests_systemLanguage_Get(handle));
  }
}
struct SVGImageElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  SVGAnimatedLength x() {
    return SVGAnimatedLength(SVGImageElement_x_Get(handle));
  }
  SVGAnimatedLength y() {
    return SVGAnimatedLength(SVGImageElement_y_Get(handle));
  }
  SVGAnimatedLength width() {
    return SVGAnimatedLength(SVGImageElement_width_Get(handle));
  }
  SVGAnimatedLength height() {
    return SVGAnimatedLength(SVGImageElement_height_Get(handle));
  }
  SVGAnimatedPreserveAspectRatio preserveAspectRatio() {
    return SVGAnimatedPreserveAspectRatio(SVGImageElement_preserveAspectRatio_Get(handle));
  }
  void crossOrigin(Optional!(string) crossOrigin) {
    SVGImageElement_crossOrigin_Set(handle, !crossOrigin.empty, crossOrigin.value);
  }
  Optional!(string) crossOrigin() {
    return SVGImageElement_crossOrigin_Get(handle);
  }
  SVGAnimatedString href() {
    return SVGAnimatedString(SVGURIReference_href_Get(handle));
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
  ushort unitType() {
    return SVGLength_unitType_Get(handle);
  }
  void value(float value) {
    SVGLength_value_Set(handle, value);
  }
  float value() {
    return SVGLength_value_Get(handle);
  }
  void valueInSpecifiedUnits(float valueInSpecifiedUnits) {
    SVGLength_valueInSpecifiedUnits_Set(handle, valueInSpecifiedUnits);
  }
  float valueInSpecifiedUnits() {
    return SVGLength_valueInSpecifiedUnits_Get(handle);
  }
  void valueAsString(string valueAsString) {
    SVGLength_valueAsString_Set(handle, valueAsString);
  }
  string valueAsString() {
    return SVGLength_valueAsString_Get(handle);
  }
  void newValueSpecifiedUnits(ushort unitType, float valueInSpecifiedUnits) {
    SVGLength_newValueSpecifiedUnits(handle, unitType, valueInSpecifiedUnits);
  }
  void convertToSpecifiedUnits(ushort unitType) {
    SVGLength_convertToSpecifiedUnits(handle, unitType);
  }
}
struct SVGLengthList {
  JsHandle handle;
  alias handle this;
  uint length() {
    return SVGLengthList_length_Get(handle);
  }
  uint numberOfItems() {
    return SVGLengthList_numberOfItems_Get(handle);
  }
  void clear() {
    SVGLengthList_clear(handle);
  }
  SVGLength initialize(SVGLength newItem) {
    return SVGLength(SVGLengthList_initialize(handle, newItem.handle));
  }
  SVGLength getItem(uint index) {
    return SVGLength(SVGLengthList_getItem_getter(handle, index));
  }
  SVGLength insertItemBefore(SVGLength newItem, uint index) {
    return SVGLength(SVGLengthList_insertItemBefore(handle, newItem.handle, index));
  }
  SVGLength replaceItem(SVGLength newItem, uint index) {
    return SVGLength(SVGLengthList_replaceItem(handle, newItem.handle, index));
  }
  SVGLength removeItem(uint index) {
    return SVGLength(SVGLengthList_removeItem(handle, index));
  }
  SVGLength appendItem(SVGLength newItem) {
    return SVGLength(SVGLengthList_appendItem(handle, newItem.handle));
  }
  void opIndexAssign(SVGLength newItem, uint index) {
    SVGLengthList_setter__uint_JsHandle(handle, index, newItem.handle);
  }
  void opDispatch(uint index)(SVGLength newItem) {
    SVGLengthList_setter__uint_JsHandle(handle, index, newItem.handle);
  }
}
struct SVGLineElement {
  SVGGeometryElement _parent;
  alias _parent this;
  SVGAnimatedLength x1() {
    return SVGAnimatedLength(SVGLineElement_x1_Get(handle));
  }
  SVGAnimatedLength y1() {
    return SVGAnimatedLength(SVGLineElement_y1_Get(handle));
  }
  SVGAnimatedLength x2() {
    return SVGAnimatedLength(SVGLineElement_x2_Get(handle));
  }
  SVGAnimatedLength y2() {
    return SVGAnimatedLength(SVGLineElement_y2_Get(handle));
  }
}
struct SVGLinearGradientElement {
  SVGGradientElement _parent;
  alias _parent this;
  SVGAnimatedLength x1() {
    return SVGAnimatedLength(SVGLinearGradientElement_x1_Get(handle));
  }
  SVGAnimatedLength y1() {
    return SVGAnimatedLength(SVGLinearGradientElement_y1_Get(handle));
  }
  SVGAnimatedLength x2() {
    return SVGAnimatedLength(SVGLinearGradientElement_x2_Get(handle));
  }
  SVGAnimatedLength y2() {
    return SVGAnimatedLength(SVGLinearGradientElement_y2_Get(handle));
  }
}
struct SVGMarkerElement {
  SVGElement _parent;
  alias _parent this;
  enum ushort SVG_MARKERUNITS_UNKNOWN = 0;
  enum ushort SVG_MARKERUNITS_USERSPACEONUSE = 1;
  enum ushort SVG_MARKERUNITS_STROKEWIDTH = 2;
  enum ushort SVG_MARKER_ORIENT_UNKNOWN = 0;
  enum ushort SVG_MARKER_ORIENT_AUTO = 1;
  enum ushort SVG_MARKER_ORIENT_ANGLE = 2;
  SVGAnimatedLength refX() {
    return SVGAnimatedLength(SVGMarkerElement_refX_Get(handle));
  }
  SVGAnimatedLength refY() {
    return SVGAnimatedLength(SVGMarkerElement_refY_Get(handle));
  }
  SVGAnimatedEnumeration markerUnits() {
    return SVGAnimatedEnumeration(SVGMarkerElement_markerUnits_Get(handle));
  }
  SVGAnimatedLength markerWidth() {
    return SVGAnimatedLength(SVGMarkerElement_markerWidth_Get(handle));
  }
  SVGAnimatedLength markerHeight() {
    return SVGAnimatedLength(SVGMarkerElement_markerHeight_Get(handle));
  }
  SVGAnimatedEnumeration orientType() {
    return SVGAnimatedEnumeration(SVGMarkerElement_orientType_Get(handle));
  }
  SVGAnimatedAngle orientAngle() {
    return SVGAnimatedAngle(SVGMarkerElement_orientAngle_Get(handle));
  }
  void orient(string orient) {
    SVGMarkerElement_orient_Set(handle, orient);
  }
  string orient() {
    return SVGMarkerElement_orient_Get(handle);
  }
  void setOrientToAuto() {
    SVGMarkerElement_setOrientToAuto(handle);
  }
  void setOrientToAngle(SVGAngle angle) {
    SVGMarkerElement_setOrientToAngle(handle, angle.handle);
  }
  SVGAnimatedRect viewBox() {
    return SVGAnimatedRect(SVGFitToViewBox_viewBox_Get(handle));
  }
  SVGAnimatedPreserveAspectRatio preserveAspectRatio() {
    return SVGAnimatedPreserveAspectRatio(SVGFitToViewBox_preserveAspectRatio_Get(handle));
  }
}
struct SVGMetadataElement {
  SVGElement _parent;
  alias _parent this;
}
struct SVGNumber {
  JsHandle handle;
  alias handle this;
  void value(float value) {
    SVGNumber_value_Set(handle, value);
  }
  float value() {
    return SVGNumber_value_Get(handle);
  }
}
struct SVGNumberList {
  JsHandle handle;
  alias handle this;
  uint length() {
    return SVGNumberList_length_Get(handle);
  }
  uint numberOfItems() {
    return SVGNumberList_numberOfItems_Get(handle);
  }
  void clear() {
    SVGNumberList_clear(handle);
  }
  SVGNumber initialize(SVGNumber newItem) {
    return SVGNumber(SVGNumberList_initialize(handle, newItem.handle));
  }
  SVGNumber getItem(uint index) {
    return SVGNumber(SVGNumberList_getItem_getter(handle, index));
  }
  SVGNumber insertItemBefore(SVGNumber newItem, uint index) {
    return SVGNumber(SVGNumberList_insertItemBefore(handle, newItem.handle, index));
  }
  SVGNumber replaceItem(SVGNumber newItem, uint index) {
    return SVGNumber(SVGNumberList_replaceItem(handle, newItem.handle, index));
  }
  SVGNumber removeItem(uint index) {
    return SVGNumber(SVGNumberList_removeItem(handle, index));
  }
  SVGNumber appendItem(SVGNumber newItem) {
    return SVGNumber(SVGNumberList_appendItem(handle, newItem.handle));
  }
  void opIndexAssign(SVGNumber newItem, uint index) {
    SVGNumberList_setter__uint_JsHandle(handle, index, newItem.handle);
  }
  void opDispatch(uint index)(SVGNumber newItem) {
    SVGNumberList_setter__uint_JsHandle(handle, index, newItem.handle);
  }
}
struct SVGPathElement {
  SVGGeometryElement _parent;
  alias _parent this;
}
struct SVGPatternElement {
  SVGElement _parent;
  alias _parent this;
  SVGAnimatedEnumeration patternUnits() {
    return SVGAnimatedEnumeration(SVGPatternElement_patternUnits_Get(handle));
  }
  SVGAnimatedEnumeration patternContentUnits() {
    return SVGAnimatedEnumeration(SVGPatternElement_patternContentUnits_Get(handle));
  }
  SVGAnimatedTransformList patternTransform() {
    return SVGAnimatedTransformList(SVGPatternElement_patternTransform_Get(handle));
  }
  SVGAnimatedLength x() {
    return SVGAnimatedLength(SVGPatternElement_x_Get(handle));
  }
  SVGAnimatedLength y() {
    return SVGAnimatedLength(SVGPatternElement_y_Get(handle));
  }
  SVGAnimatedLength width() {
    return SVGAnimatedLength(SVGPatternElement_width_Get(handle));
  }
  SVGAnimatedLength height() {
    return SVGAnimatedLength(SVGPatternElement_height_Get(handle));
  }
  SVGAnimatedRect viewBox() {
    return SVGAnimatedRect(SVGFitToViewBox_viewBox_Get(handle));
  }
  SVGAnimatedPreserveAspectRatio preserveAspectRatio() {
    return SVGAnimatedPreserveAspectRatio(SVGFitToViewBox_preserveAspectRatio_Get(handle));
  }
  SVGAnimatedString href() {
    return SVGAnimatedString(SVGURIReference_href_Get(handle));
  }
}
struct SVGPointList {
  JsHandle handle;
  alias handle this;
  uint length() {
    return SVGPointList_length_Get(handle);
  }
  uint numberOfItems() {
    return SVGPointList_numberOfItems_Get(handle);
  }
  void clear() {
    SVGPointList_clear(handle);
  }
  DOMPoint initialize(DOMPoint newItem) {
    return DOMPoint(SVGPointList_initialize(handle, newItem.handle));
  }
  DOMPoint getItem(uint index) {
    return DOMPoint(SVGPointList_getItem_getter(handle, index));
  }
  DOMPoint insertItemBefore(DOMPoint newItem, uint index) {
    return DOMPoint(SVGPointList_insertItemBefore(handle, newItem.handle, index));
  }
  DOMPoint replaceItem(DOMPoint newItem, uint index) {
    return DOMPoint(SVGPointList_replaceItem(handle, newItem.handle, index));
  }
  DOMPoint removeItem(uint index) {
    return DOMPoint(SVGPointList_removeItem(handle, index));
  }
  DOMPoint appendItem(DOMPoint newItem) {
    return DOMPoint(SVGPointList_appendItem(handle, newItem.handle));
  }
  void opIndexAssign(DOMPoint newItem, uint index) {
    SVGPointList_setter__uint_JsHandle(handle, index, newItem.handle);
  }
  void opDispatch(uint index)(DOMPoint newItem) {
    SVGPointList_setter__uint_JsHandle(handle, index, newItem.handle);
  }
}
struct SVGPolygonElement {
  SVGGeometryElement _parent;
  alias _parent this;
  SVGPointList points() {
    return SVGPointList(SVGAnimatedPoints_points_Get(handle));
  }
  SVGPointList animatedPoints() {
    return SVGPointList(SVGAnimatedPoints_animatedPoints_Get(handle));
  }
}
struct SVGPolylineElement {
  SVGGeometryElement _parent;
  alias _parent this;
  SVGPointList points() {
    return SVGPointList(SVGAnimatedPoints_points_Get(handle));
  }
  SVGPointList animatedPoints() {
    return SVGPointList(SVGAnimatedPoints_animatedPoints_Get(handle));
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
  void align_(ushort align_) {
    SVGPreserveAspectRatio_align_Set(handle, align_);
  }
  ushort align_() {
    return SVGPreserveAspectRatio_align_Get(handle);
  }
  void meetOrSlice(ushort meetOrSlice) {
    SVGPreserveAspectRatio_meetOrSlice_Set(handle, meetOrSlice);
  }
  ushort meetOrSlice() {
    return SVGPreserveAspectRatio_meetOrSlice_Get(handle);
  }
}
struct SVGRadialGradientElement {
  SVGGradientElement _parent;
  alias _parent this;
  SVGAnimatedLength cx() {
    return SVGAnimatedLength(SVGRadialGradientElement_cx_Get(handle));
  }
  SVGAnimatedLength cy() {
    return SVGAnimatedLength(SVGRadialGradientElement_cy_Get(handle));
  }
  SVGAnimatedLength r() {
    return SVGAnimatedLength(SVGRadialGradientElement_r_Get(handle));
  }
  SVGAnimatedLength fx() {
    return SVGAnimatedLength(SVGRadialGradientElement_fx_Get(handle));
  }
  SVGAnimatedLength fy() {
    return SVGAnimatedLength(SVGRadialGradientElement_fy_Get(handle));
  }
  SVGAnimatedLength fr() {
    return SVGAnimatedLength(SVGRadialGradientElement_fr_Get(handle));
  }
}
struct SVGRectElement {
  SVGGeometryElement _parent;
  alias _parent this;
  SVGAnimatedLength x() {
    return SVGAnimatedLength(SVGRectElement_x_Get(handle));
  }
  SVGAnimatedLength y() {
    return SVGAnimatedLength(SVGRectElement_y_Get(handle));
  }
  SVGAnimatedLength width() {
    return SVGAnimatedLength(SVGRectElement_width_Get(handle));
  }
  SVGAnimatedLength height() {
    return SVGAnimatedLength(SVGRectElement_height_Get(handle));
  }
  SVGAnimatedLength rx() {
    return SVGAnimatedLength(SVGRectElement_rx_Get(handle));
  }
  SVGAnimatedLength ry() {
    return SVGAnimatedLength(SVGRectElement_ry_Get(handle));
  }
}
struct SVGSVGElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  SVGAnimatedLength x() {
    return SVGAnimatedLength(SVGSVGElement_x_Get(handle));
  }
  SVGAnimatedLength y() {
    return SVGAnimatedLength(SVGSVGElement_y_Get(handle));
  }
  SVGAnimatedLength width() {
    return SVGAnimatedLength(SVGSVGElement_width_Get(handle));
  }
  SVGAnimatedLength height() {
    return SVGAnimatedLength(SVGSVGElement_height_Get(handle));
  }
  void currentScale(float currentScale) {
    SVGSVGElement_currentScale_Set(handle, currentScale);
  }
  float currentScale() {
    return SVGSVGElement_currentScale_Get(handle);
  }
  DOMPointReadOnly currentTranslate() {
    return DOMPointReadOnly(SVGSVGElement_currentTranslate_Get(handle));
  }
  NodeList getIntersectionList(DOMRectReadOnly rect, Optional!(SVGElement) referenceElement) {
    return NodeList(SVGSVGElement_getIntersectionList(handle, rect.handle, !referenceElement.empty, referenceElement.value.handle));
  }
  NodeList getEnclosureList(DOMRectReadOnly rect, Optional!(SVGElement) referenceElement) {
    return NodeList(SVGSVGElement_getEnclosureList(handle, rect.handle, !referenceElement.empty, referenceElement.value.handle));
  }
  bool checkIntersection(SVGElement element, DOMRectReadOnly rect) {
    return SVGSVGElement_checkIntersection(handle, element.handle, rect.handle);
  }
  bool checkEnclosure(SVGElement element, DOMRectReadOnly rect) {
    return SVGSVGElement_checkEnclosure(handle, element.handle, rect.handle);
  }
  void deselectAll() {
    SVGSVGElement_deselectAll(handle);
  }
  SVGNumber createSVGNumber() {
    return SVGNumber(SVGSVGElement_createSVGNumber(handle));
  }
  SVGLength createSVGLength() {
    return SVGLength(SVGSVGElement_createSVGLength(handle));
  }
  SVGAngle createSVGAngle() {
    return SVGAngle(SVGSVGElement_createSVGAngle(handle));
  }
  DOMPoint createSVGPoint() {
    return DOMPoint(SVGSVGElement_createSVGPoint(handle));
  }
  DOMMatrix createSVGMatrix() {
    return DOMMatrix(SVGSVGElement_createSVGMatrix(handle));
  }
  DOMRect createSVGRect() {
    return DOMRect(SVGSVGElement_createSVGRect(handle));
  }
  SVGTransform createSVGTransform() {
    return SVGTransform(SVGSVGElement_createSVGTransform(handle));
  }
  SVGTransform createSVGTransformFromMatrix(DOMMatrixReadOnly matrix) {
    return SVGTransform(SVGSVGElement_createSVGTransformFromMatrix(handle, matrix.handle));
  }
  Element getElementById(string elementId) {
    return Element(SVGSVGElement_getElementById(handle, elementId));
  }
  uint suspendRedraw(uint maxWaitMilliseconds) {
    return SVGSVGElement_suspendRedraw(handle, maxWaitMilliseconds);
  }
  void unsuspendRedraw(uint suspendHandleID) {
    SVGSVGElement_unsuspendRedraw(handle, suspendHandleID);
  }
  void unsuspendRedrawAll() {
    SVGSVGElement_unsuspendRedrawAll(handle);
  }
  void forceRedraw() {
    SVGSVGElement_forceRedraw(handle);
  }
  SVGAnimatedRect viewBox() {
    return SVGAnimatedRect(SVGFitToViewBox_viewBox_Get(handle));
  }
  SVGAnimatedPreserveAspectRatio preserveAspectRatio() {
    return SVGAnimatedPreserveAspectRatio(SVGFitToViewBox_preserveAspectRatio_Get(handle));
  }
  enum ushort SVG_ZOOMANDPAN_UNKNOWN = 0;
  enum ushort SVG_ZOOMANDPAN_DISABLE = 1;
  enum ushort SVG_ZOOMANDPAN_MAGNIFY = 2;
}
struct SVGScriptElement {
  SVGElement _parent;
  alias _parent this;
  void type(string type) {
    SVGScriptElement_type_Set(handle, type);
  }
  string type() {
    return SVGScriptElement_type_Get(handle);
  }
  void crossOrigin(Optional!(string) crossOrigin) {
    SVGScriptElement_crossOrigin_Set(handle, !crossOrigin.empty, crossOrigin.value);
  }
  Optional!(string) crossOrigin() {
    return SVGScriptElement_crossOrigin_Get(handle);
  }
  SVGAnimatedString href() {
    return SVGAnimatedString(SVGURIReference_href_Get(handle));
  }
}
struct SVGStopElement {
  SVGElement _parent;
  alias _parent this;
  SVGAnimatedNumber offset() {
    return SVGAnimatedNumber(SVGStopElement_offset_Get(handle));
  }
}
struct SVGStringList {
  JsHandle handle;
  alias handle this;
  uint length() {
    return SVGStringList_length_Get(handle);
  }
  uint numberOfItems() {
    return SVGStringList_numberOfItems_Get(handle);
  }
  void clear() {
    SVGStringList_clear(handle);
  }
  string initialize(string newItem) {
    return SVGStringList_initialize(handle, newItem);
  }
  string getItem(uint index) {
    return SVGStringList_getItem_getter(handle, index);
  }
  string insertItemBefore(string newItem, uint index) {
    return SVGStringList_insertItemBefore(handle, newItem, index);
  }
  string replaceItem(string newItem, uint index) {
    return SVGStringList_replaceItem(handle, newItem, index);
  }
  string removeItem(uint index) {
    return SVGStringList_removeItem(handle, index);
  }
  string appendItem(string newItem) {
    return SVGStringList_appendItem(handle, newItem);
  }
  void opIndexAssign(string newItem, uint index) {
    SVGStringList_setter__uint_string(handle, index, newItem);
  }
  void opDispatch(uint index)(string newItem) {
    SVGStringList_setter__uint_string(handle, index, newItem);
  }
}
struct SVGStyleElement {
  SVGElement _parent;
  alias _parent this;
  void type(string type) {
    SVGStyleElement_type_Set(handle, type);
  }
  string type() {
    return SVGStyleElement_type_Get(handle);
  }
  void media(string media) {
    SVGStyleElement_media_Set(handle, media);
  }
  string media() {
    return SVGStyleElement_media_Get(handle);
  }
  void title(string title) {
    SVGStyleElement_title_Set(handle, title);
  }
  string title() {
    return SVGStyleElement_title_Get(handle);
  }
  Optional!(StyleSheet) sheet() {
    return LinkStyle_sheet_Get(handle);
  }
}
struct SVGSwitchElement {
  SVGGraphicsElement _parent;
  alias _parent this;
}
struct SVGSymbolElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  SVGAnimatedRect viewBox() {
    return SVGAnimatedRect(SVGFitToViewBox_viewBox_Get(handle));
  }
  SVGAnimatedPreserveAspectRatio preserveAspectRatio() {
    return SVGAnimatedPreserveAspectRatio(SVGFitToViewBox_preserveAspectRatio_Get(handle));
  }
}
struct SVGTSpanElement {
  SVGTextPositioningElement _parent;
  alias _parent this;
}
struct SVGTextContentElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  enum ushort LENGTHADJUST_UNKNOWN = 0;
  enum ushort LENGTHADJUST_SPACING = 1;
  enum ushort LENGTHADJUST_SPACINGANDGLYPHS = 2;
  SVGAnimatedLength textLength() {
    return SVGAnimatedLength(SVGTextContentElement_textLength_Get(handle));
  }
  SVGAnimatedEnumeration lengthAdjust() {
    return SVGAnimatedEnumeration(SVGTextContentElement_lengthAdjust_Get(handle));
  }
  int getNumberOfChars() {
    return SVGTextContentElement_getNumberOfChars(handle);
  }
  float getComputedTextLength() {
    return SVGTextContentElement_getComputedTextLength(handle);
  }
  float getSubStringLength(uint charnum, uint nchars) {
    return SVGTextContentElement_getSubStringLength(handle, charnum, nchars);
  }
  DOMPoint getStartPositionOfChar(uint charnum) {
    return DOMPoint(SVGTextContentElement_getStartPositionOfChar(handle, charnum));
  }
  DOMPoint getEndPositionOfChar(uint charnum) {
    return DOMPoint(SVGTextContentElement_getEndPositionOfChar(handle, charnum));
  }
  DOMRect getExtentOfChar(uint charnum) {
    return DOMRect(SVGTextContentElement_getExtentOfChar(handle, charnum));
  }
  float getRotationOfChar(uint charnum) {
    return SVGTextContentElement_getRotationOfChar(handle, charnum);
  }
  int getCharNumAtPosition(DOMPointInit point) {
    return SVGTextContentElement_getCharNumAtPosition(handle, point.handle);
  }
  void selectSubString(uint charnum, uint nchars) {
    SVGTextContentElement_selectSubString(handle, charnum, nchars);
  }
}
struct SVGTextElement {
  SVGTextPositioningElement _parent;
  alias _parent this;
}
struct SVGTextPathElement {
  SVGTextContentElement _parent;
  alias _parent this;
  enum ushort TEXTPATH_METHODTYPE_UNKNOWN = 0;
  enum ushort TEXTPATH_METHODTYPE_ALIGN = 1;
  enum ushort TEXTPATH_METHODTYPE_STRETCH = 2;
  enum ushort TEXTPATH_SPACINGTYPE_UNKNOWN = 0;
  enum ushort TEXTPATH_SPACINGTYPE_AUTO = 1;
  enum ushort TEXTPATH_SPACINGTYPE_EXACT = 2;
  SVGAnimatedLength startOffset() {
    return SVGAnimatedLength(SVGTextPathElement_startOffset_Get(handle));
  }
  SVGAnimatedEnumeration method() {
    return SVGAnimatedEnumeration(SVGTextPathElement_method_Get(handle));
  }
  SVGAnimatedEnumeration spacing() {
    return SVGAnimatedEnumeration(SVGTextPathElement_spacing_Get(handle));
  }
  SVGAnimatedString href() {
    return SVGAnimatedString(SVGURIReference_href_Get(handle));
  }
}
struct SVGTextPositioningElement {
  SVGTextContentElement _parent;
  alias _parent this;
  SVGAnimatedLengthList x() {
    return SVGAnimatedLengthList(SVGTextPositioningElement_x_Get(handle));
  }
  SVGAnimatedLengthList y() {
    return SVGAnimatedLengthList(SVGTextPositioningElement_y_Get(handle));
  }
  SVGAnimatedLengthList dx() {
    return SVGAnimatedLengthList(SVGTextPositioningElement_dx_Get(handle));
  }
  SVGAnimatedLengthList dy() {
    return SVGAnimatedLengthList(SVGTextPositioningElement_dy_Get(handle));
  }
  SVGAnimatedNumberList rotate() {
    return SVGAnimatedNumberList(SVGTextPositioningElement_rotate_Get(handle));
  }
}
struct SVGTitleElement {
  SVGElement _parent;
  alias _parent this;
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
  ushort type() {
    return SVGTransform_type_Get(handle);
  }
  DOMMatrix matrix() {
    return DOMMatrix(SVGTransform_matrix_Get(handle));
  }
  float angle() {
    return SVGTransform_angle_Get(handle);
  }
  void setMatrix(DOMMatrixReadOnly matrix) {
    SVGTransform_setMatrix(handle, matrix.handle);
  }
  void setTranslate(float tx, float ty) {
    SVGTransform_setTranslate(handle, tx, ty);
  }
  void setScale(float sx, float sy) {
    SVGTransform_setScale(handle, sx, sy);
  }
  void setRotate(float angle, float cx, float cy) {
    SVGTransform_setRotate(handle, angle, cx, cy);
  }
  void setSkewX(float angle) {
    SVGTransform_setSkewX(handle, angle);
  }
  void setSkewY(float angle) {
    SVGTransform_setSkewY(handle, angle);
  }
}
struct SVGTransformList {
  JsHandle handle;
  alias handle this;
  uint length() {
    return SVGTransformList_length_Get(handle);
  }
  uint numberOfItems() {
    return SVGTransformList_numberOfItems_Get(handle);
  }
  void clear() {
    SVGTransformList_clear(handle);
  }
  SVGTransform initialize(SVGTransform newItem) {
    return SVGTransform(SVGTransformList_initialize(handle, newItem.handle));
  }
  SVGTransform getItem(uint index) {
    return SVGTransform(SVGTransformList_getItem_getter(handle, index));
  }
  SVGTransform insertItemBefore(SVGTransform newItem, uint index) {
    return SVGTransform(SVGTransformList_insertItemBefore(handle, newItem.handle, index));
  }
  SVGTransform replaceItem(SVGTransform newItem, uint index) {
    return SVGTransform(SVGTransformList_replaceItem(handle, newItem.handle, index));
  }
  SVGTransform removeItem(uint index) {
    return SVGTransform(SVGTransformList_removeItem(handle, index));
  }
  SVGTransform appendItem(SVGTransform newItem) {
    return SVGTransform(SVGTransformList_appendItem(handle, newItem.handle));
  }
  void opIndexAssign(SVGTransform newItem, uint index) {
    SVGTransformList_setter__uint_JsHandle(handle, index, newItem.handle);
  }
  void opDispatch(uint index)(SVGTransform newItem) {
    SVGTransformList_setter__uint_JsHandle(handle, index, newItem.handle);
  }
  SVGTransform createSVGTransformFromMatrix(DOMMatrixReadOnly matrix) {
    return SVGTransform(SVGTransformList_createSVGTransformFromMatrix(handle, matrix.handle));
  }
  Optional!(SVGTransform) consolidate() {
    return SVGTransformList_consolidate(handle);
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
}
struct SVGUseElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  SVGAnimatedLength x() {
    return SVGAnimatedLength(SVGUseElement_x_Get(handle));
  }
  SVGAnimatedLength y() {
    return SVGAnimatedLength(SVGUseElement_y_Get(handle));
  }
  SVGAnimatedLength width() {
    return SVGAnimatedLength(SVGUseElement_width_Get(handle));
  }
  SVGAnimatedLength height() {
    return SVGAnimatedLength(SVGUseElement_height_Get(handle));
  }
  Optional!(SVGElement) instanceRoot() {
    return SVGUseElement_instanceRoot_Get(handle);
  }
  Optional!(SVGElement) animatedInstanceRoot() {
    return SVGUseElement_animatedInstanceRoot_Get(handle);
  }
  SVGAnimatedString href() {
    return SVGAnimatedString(SVGURIReference_href_Get(handle));
  }
}
struct SVGUseElementShadowRoot {
  ShadowRoot _parent;
  alias _parent this;
}
struct SVGViewElement {
  SVGElement _parent;
  alias _parent this;
  SVGAnimatedRect viewBox() {
    return SVGAnimatedRect(SVGFitToViewBox_viewBox_Get(handle));
  }
  SVGAnimatedPreserveAspectRatio preserveAspectRatio() {
    return SVGAnimatedPreserveAspectRatio(SVGFitToViewBox_preserveAspectRatio_Get(handle));
  }
  enum ushort SVG_ZOOMANDPAN_UNKNOWN = 0;
  enum ushort SVG_ZOOMANDPAN_DISABLE = 1;
  enum ushort SVG_ZOOMANDPAN_MAGNIFY = 2;
}
struct ShadowAnimation {
  Animation _parent;
  alias _parent this;
  Animation sourceAnimation() {
    return Animation(ShadowAnimation_sourceAnimation_Get(handle));
  }
}


extern (C) JsHandle SVGAElement_target_Get(JsHandle);
extern (C) void SVGAElement_download_Set(JsHandle, string);
extern (C) string SVGAElement_download_Get(JsHandle);
extern (C) void SVGAElement_ping_Set(JsHandle, JsHandle);
extern (C) JsHandle SVGAElement_ping_Get(JsHandle);
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
extern (C) JsHandle SVGURIReference_href_Get(JsHandle);
extern (C) void HTMLHyperlinkElementUtils_href_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLHyperlinkElementUtils_href_Get(JsHandle);
extern (C) JsHandle HTMLHyperlinkElementUtils_origin_Get(JsHandle);
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
extern (C) void GlobalEventHandlers_ongotpointercapture_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ongotpointercapture_Get(JsHandle);
extern (C) void GlobalEventHandlers_onlostpointercapture_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onlostpointercapture_Get(JsHandle);
extern (C) void GlobalEventHandlers_onpointerdown_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onpointerdown_Get(JsHandle);
extern (C) void GlobalEventHandlers_onpointermove_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onpointermove_Get(JsHandle);
extern (C) void GlobalEventHandlers_onpointerup_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onpointerup_Get(JsHandle);
extern (C) void GlobalEventHandlers_onpointercancel_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onpointercancel_Get(JsHandle);
extern (C) void GlobalEventHandlers_onpointerover_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onpointerover_Get(JsHandle);
extern (C) void GlobalEventHandlers_onpointerout_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onpointerout_Get(JsHandle);
extern (C) void GlobalEventHandlers_onpointerenter_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onpointerenter_Get(JsHandle);
extern (C) void GlobalEventHandlers_onpointerleave_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onpointerleave_Get(JsHandle);
extern (C) void GlobalEventHandlers_ontouchstart_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ontouchstart_Get(JsHandle);
extern (C) void GlobalEventHandlers_ontouchend_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ontouchend_Get(JsHandle);
extern (C) void GlobalEventHandlers_ontouchmove_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ontouchmove_Get(JsHandle);
extern (C) void GlobalEventHandlers_ontouchcancel_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ontouchcancel_Get(JsHandle);
extern (C) Optional!(SVGElement) SVGElementInstance_correspondingElement_Get(JsHandle);
extern (C) Optional!(SVGUseElement) SVGElementInstance_correspondingUseElement_Get(JsHandle);
extern (C) JsHandle HTMLOrSVGElement_dataset_Get(JsHandle);
extern (C) void HTMLOrSVGElement_focus(JsHandle, JsHandle);
extern (C) void HTMLOrSVGElement_blur(JsHandle);
extern (C) JsHandle SVGEllipseElement_cx_Get(JsHandle);
extern (C) JsHandle SVGEllipseElement_cy_Get(JsHandle);
extern (C) JsHandle SVGEllipseElement_rx_Get(JsHandle);
extern (C) JsHandle SVGEllipseElement_ry_Get(JsHandle);
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
extern (C) JsHandle SVGURIReference_href_Get(JsHandle);
extern (C) JsHandle SVGGraphicsElement_transform_Get(JsHandle);
extern (C) JsHandle SVGGraphicsElement_getBBox(JsHandle, JsHandle);
extern (C) Optional!(DOMMatrix) SVGGraphicsElement_getCTM(JsHandle);
extern (C) Optional!(DOMMatrix) SVGGraphicsElement_getScreenCTM(JsHandle);
extern (C) JsHandle SVGTests_requiredExtensions_Get(JsHandle);
extern (C) JsHandle SVGTests_systemLanguage_Get(JsHandle);
extern (C) JsHandle SVGImageElement_x_Get(JsHandle);
extern (C) JsHandle SVGImageElement_y_Get(JsHandle);
extern (C) JsHandle SVGImageElement_width_Get(JsHandle);
extern (C) JsHandle SVGImageElement_height_Get(JsHandle);
extern (C) JsHandle SVGImageElement_preserveAspectRatio_Get(JsHandle);
extern (C) void SVGImageElement_crossOrigin_Set(JsHandle, bool, string);
extern (C) Optional!(string) SVGImageElement_crossOrigin_Get(JsHandle);
extern (C) JsHandle SVGURIReference_href_Get(JsHandle);
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
extern (C) JsHandle SVGFitToViewBox_viewBox_Get(JsHandle);
extern (C) JsHandle SVGFitToViewBox_preserveAspectRatio_Get(JsHandle);
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
extern (C) JsHandle SVGFitToViewBox_viewBox_Get(JsHandle);
extern (C) JsHandle SVGFitToViewBox_preserveAspectRatio_Get(JsHandle);
extern (C) JsHandle SVGURIReference_href_Get(JsHandle);
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
extern (C) JsHandle SVGAnimatedPoints_points_Get(JsHandle);
extern (C) JsHandle SVGAnimatedPoints_animatedPoints_Get(JsHandle);
extern (C) JsHandle SVGAnimatedPoints_points_Get(JsHandle);
extern (C) JsHandle SVGAnimatedPoints_animatedPoints_Get(JsHandle);
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
extern (C) JsHandle SVGFitToViewBox_viewBox_Get(JsHandle);
extern (C) JsHandle SVGFitToViewBox_preserveAspectRatio_Get(JsHandle);
extern (C) void SVGScriptElement_type_Set(JsHandle, string);
extern (C) string SVGScriptElement_type_Get(JsHandle);
extern (C) void SVGScriptElement_crossOrigin_Set(JsHandle, bool, string);
extern (C) Optional!(string) SVGScriptElement_crossOrigin_Get(JsHandle);
extern (C) JsHandle SVGURIReference_href_Get(JsHandle);
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
extern (C) Optional!(StyleSheet) LinkStyle_sheet_Get(JsHandle);
extern (C) JsHandle SVGFitToViewBox_viewBox_Get(JsHandle);
extern (C) JsHandle SVGFitToViewBox_preserveAspectRatio_Get(JsHandle);
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
extern (C) JsHandle SVGURIReference_href_Get(JsHandle);
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
extern (C) JsHandle SVGUseElement_x_Get(JsHandle);
extern (C) JsHandle SVGUseElement_y_Get(JsHandle);
extern (C) JsHandle SVGUseElement_width_Get(JsHandle);
extern (C) JsHandle SVGUseElement_height_Get(JsHandle);
extern (C) Optional!(SVGElement) SVGUseElement_instanceRoot_Get(JsHandle);
extern (C) Optional!(SVGElement) SVGUseElement_animatedInstanceRoot_Get(JsHandle);
extern (C) JsHandle SVGURIReference_href_Get(JsHandle);
extern (C) JsHandle SVGFitToViewBox_viewBox_Get(JsHandle);
extern (C) JsHandle SVGFitToViewBox_preserveAspectRatio_Get(JsHandle);
extern (C) JsHandle ShadowAnimation_sourceAnimation_Get(JsHandle);