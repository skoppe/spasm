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
    auto result = SVGAnimatedString(JsHandle(SVGAElement_target_Get(this._parent)));
    return result;
  }
  auto download(string download) {
    SVGAElement_download_Set(this._parent, download);
  }
  auto download() {
    auto result = SVGAElement_download_Get(this._parent);
    return result;
  }
  auto ping(string ping) {
    SVGAElement_ping_Set(this._parent, ping);
  }
  auto ping() {
    auto result = SVGAElement_ping_Get(this._parent);
    return result;
  }
  auto rel(string rel) {
    SVGAElement_rel_Set(this._parent, rel);
  }
  auto rel() {
    auto result = SVGAElement_rel_Get(this._parent);
    return result;
  }
  auto relList() {
    auto result = DOMTokenList(JsHandle(SVGAElement_relList_Get(this._parent)));
    return result;
  }
  auto hreflang(string hreflang) {
    SVGAElement_hreflang_Set(this._parent, hreflang);
  }
  auto hreflang() {
    auto result = SVGAElement_hreflang_Get(this._parent);
    return result;
  }
  auto type(string type) {
    SVGAElement_type_Set(this._parent, type);
  }
  auto type() {
    auto result = SVGAElement_type_Get(this._parent);
    return result;
  }
  auto text(string text) {
    SVGAElement_text_Set(this._parent, text);
  }
  auto text() {
    auto result = SVGAElement_text_Get(this._parent);
    return result;
  }
  auto referrerPolicy(string referrerPolicy) {
    SVGAElement_referrerPolicy_Set(this._parent, referrerPolicy);
  }
  auto referrerPolicy() {
    auto result = SVGAElement_referrerPolicy_Get(this._parent);
    return result;
  }
  auto href() {
    auto result = SVGAnimatedString(JsHandle(SVGURIReference_href_Get(this._parent)));
    return result;
  }
  auto href(string href) {
    HTMLHyperlinkElementUtils_href_Set(this._parent, href);
  }
  auto href() {
    auto result = HTMLHyperlinkElementUtils_href_Get(this._parent);
    return result;
  }
  auto origin() {
    auto result = HTMLHyperlinkElementUtils_origin_Get(this._parent);
    return result;
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
    auto result = SVGAngle_unitType_Get(this.handle);
    return result;
  }
  auto value(float value) {
    SVGAngle_value_Set(this.handle, value);
  }
  auto value() {
    auto result = SVGAngle_value_Get(this.handle);
    return result;
  }
  auto valueInSpecifiedUnits(float valueInSpecifiedUnits) {
    SVGAngle_valueInSpecifiedUnits_Set(this.handle, valueInSpecifiedUnits);
  }
  auto valueInSpecifiedUnits() {
    auto result = SVGAngle_valueInSpecifiedUnits_Get(this.handle);
    return result;
  }
  auto valueAsString(string valueAsString) {
    SVGAngle_valueAsString_Set(this.handle, valueAsString);
  }
  auto valueAsString() {
    auto result = SVGAngle_valueAsString_Get(this.handle);
    return result;
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
    auto result = SVGAngle(JsHandle(SVGAnimatedAngle_baseVal_Get(this.handle)));
    return result;
  }
  auto animVal() {
    auto result = SVGAngle(JsHandle(SVGAnimatedAngle_animVal_Get(this.handle)));
    return result;
  }
}
struct SVGAnimatedBoolean {
  JsHandle handle;
  alias handle this;
  auto baseVal(bool baseVal) {
    SVGAnimatedBoolean_baseVal_Set(this.handle, baseVal);
  }
  auto baseVal() {
    auto result = SVGAnimatedBoolean_baseVal_Get(this.handle);
    return result;
  }
  auto animVal() {
    auto result = SVGAnimatedBoolean_animVal_Get(this.handle);
    return result;
  }
}
struct SVGAnimatedEnumeration {
  JsHandle handle;
  alias handle this;
  auto baseVal(ushort baseVal) {
    SVGAnimatedEnumeration_baseVal_Set(this.handle, baseVal);
  }
  auto baseVal() {
    auto result = SVGAnimatedEnumeration_baseVal_Get(this.handle);
    return result;
  }
  auto animVal() {
    auto result = SVGAnimatedEnumeration_animVal_Get(this.handle);
    return result;
  }
}
struct SVGAnimatedInteger {
  JsHandle handle;
  alias handle this;
  auto baseVal(int baseVal) {
    SVGAnimatedInteger_baseVal_Set(this.handle, baseVal);
  }
  auto baseVal() {
    auto result = SVGAnimatedInteger_baseVal_Get(this.handle);
    return result;
  }
  auto animVal() {
    auto result = SVGAnimatedInteger_animVal_Get(this.handle);
    return result;
  }
}
struct SVGAnimatedLength {
  JsHandle handle;
  alias handle this;
  auto baseVal() {
    auto result = SVGLength(JsHandle(SVGAnimatedLength_baseVal_Get(this.handle)));
    return result;
  }
  auto animVal() {
    auto result = SVGLength(JsHandle(SVGAnimatedLength_animVal_Get(this.handle)));
    return result;
  }
}
struct SVGAnimatedLengthList {
  JsHandle handle;
  alias handle this;
  auto baseVal() {
    auto result = SVGLengthList(JsHandle(SVGAnimatedLengthList_baseVal_Get(this.handle)));
    return result;
  }
  auto animVal() {
    auto result = SVGLengthList(JsHandle(SVGAnimatedLengthList_animVal_Get(this.handle)));
    return result;
  }
}
struct SVGAnimatedNumber {
  JsHandle handle;
  alias handle this;
  auto baseVal(float baseVal) {
    SVGAnimatedNumber_baseVal_Set(this.handle, baseVal);
  }
  auto baseVal() {
    auto result = SVGAnimatedNumber_baseVal_Get(this.handle);
    return result;
  }
  auto animVal() {
    auto result = SVGAnimatedNumber_animVal_Get(this.handle);
    return result;
  }
}
struct SVGAnimatedNumberList {
  JsHandle handle;
  alias handle this;
  auto baseVal() {
    auto result = SVGNumberList(JsHandle(SVGAnimatedNumberList_baseVal_Get(this.handle)));
    return result;
  }
  auto animVal() {
    auto result = SVGNumberList(JsHandle(SVGAnimatedNumberList_animVal_Get(this.handle)));
    return result;
  }
}
struct SVGAnimatedPreserveAspectRatio {
  JsHandle handle;
  alias handle this;
  auto baseVal() {
    auto result = SVGPreserveAspectRatio(JsHandle(SVGAnimatedPreserveAspectRatio_baseVal_Get(this.handle)));
    return result;
  }
  auto animVal() {
    auto result = SVGPreserveAspectRatio(JsHandle(SVGAnimatedPreserveAspectRatio_animVal_Get(this.handle)));
    return result;
  }
}
struct SVGAnimatedRect {
  JsHandle handle;
  alias handle this;
  auto baseVal() {
    auto result = DOMRect(JsHandle(SVGAnimatedRect_baseVal_Get(this.handle)));
    return result;
  }
  auto animVal() {
    auto result = DOMRectReadOnly(JsHandle(SVGAnimatedRect_animVal_Get(this.handle)));
    return result;
  }
}
struct SVGAnimatedString {
  JsHandle handle;
  alias handle this;
  auto baseVal(string baseVal) {
    SVGAnimatedString_baseVal_Set(this.handle, baseVal);
  }
  auto baseVal() {
    auto result = SVGAnimatedString_baseVal_Get(this.handle);
    return result;
  }
  auto animVal() {
    auto result = SVGAnimatedString_animVal_Get(this.handle);
    return result;
  }
}
struct SVGAnimatedTransformList {
  JsHandle handle;
  alias handle this;
  auto baseVal() {
    auto result = SVGTransformList(JsHandle(SVGAnimatedTransformList_baseVal_Get(this.handle)));
    return result;
  }
  auto animVal() {
    auto result = SVGTransformList(JsHandle(SVGAnimatedTransformList_animVal_Get(this.handle)));
    return result;
  }
}
struct SVGBoundingBoxOptions {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return SVGBoundingBoxOptions(JsHandle(spasm_add__object()));
  }
  auto fill(bool fill) {
    SVGBoundingBoxOptions_fill_Set(this.handle, fill);
  }
  auto fill() {
    auto result = SVGBoundingBoxOptions_fill_Get(this.handle);
    return result;
  }
  auto stroke(bool stroke) {
    SVGBoundingBoxOptions_stroke_Set(this.handle, stroke);
  }
  auto stroke() {
    auto result = SVGBoundingBoxOptions_stroke_Get(this.handle);
    return result;
  }
  auto markers(bool markers) {
    SVGBoundingBoxOptions_markers_Set(this.handle, markers);
  }
  auto markers() {
    auto result = SVGBoundingBoxOptions_markers_Get(this.handle);
    return result;
  }
  auto clipped(bool clipped) {
    SVGBoundingBoxOptions_clipped_Set(this.handle, clipped);
  }
  auto clipped() {
    auto result = SVGBoundingBoxOptions_clipped_Get(this.handle);
    return result;
  }
}
struct SVGCircleElement {
  SVGGeometryElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGeometryElement(h);
  }
  auto cx() {
    auto result = SVGAnimatedLength(JsHandle(SVGCircleElement_cx_Get(this._parent)));
    return result;
  }
  auto cy() {
    auto result = SVGAnimatedLength(JsHandle(SVGCircleElement_cy_Get(this._parent)));
    return result;
  }
  auto r() {
    auto result = SVGAnimatedLength(JsHandle(SVGCircleElement_r_Get(this._parent)));
    return result;
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
    auto result = SVGAnimatedString(JsHandle(SVGElement_className_Get(this._parent)));
    return result;
  }
  auto ownerSVGElement() {
    auto result = SVGElement_ownerSVGElement_Get(this._parent);
    return result;
  }
  auto viewportElement() {
    auto result = SVGElement_viewportElement_Get(this._parent);
    return result;
  }
  auto ongotpointercapture(EventHandler ongotpointercapture) {
    GlobalEventHandlers_ongotpointercapture_Set(this._parent, ongotpointercapture);
  }
  auto ongotpointercapture() {
    auto result = GlobalEventHandlers_ongotpointercapture_Get(this._parent);
    return result;
  }
  auto onlostpointercapture(EventHandler onlostpointercapture) {
    GlobalEventHandlers_onlostpointercapture_Set(this._parent, onlostpointercapture);
  }
  auto onlostpointercapture() {
    auto result = GlobalEventHandlers_onlostpointercapture_Get(this._parent);
    return result;
  }
  auto onpointerdown(EventHandler onpointerdown) {
    GlobalEventHandlers_onpointerdown_Set(this._parent, onpointerdown);
  }
  auto onpointerdown() {
    auto result = GlobalEventHandlers_onpointerdown_Get(this._parent);
    return result;
  }
  auto onpointermove(EventHandler onpointermove) {
    GlobalEventHandlers_onpointermove_Set(this._parent, onpointermove);
  }
  auto onpointermove() {
    auto result = GlobalEventHandlers_onpointermove_Get(this._parent);
    return result;
  }
  auto onpointerup(EventHandler onpointerup) {
    GlobalEventHandlers_onpointerup_Set(this._parent, onpointerup);
  }
  auto onpointerup() {
    auto result = GlobalEventHandlers_onpointerup_Get(this._parent);
    return result;
  }
  auto onpointercancel(EventHandler onpointercancel) {
    GlobalEventHandlers_onpointercancel_Set(this._parent, onpointercancel);
  }
  auto onpointercancel() {
    auto result = GlobalEventHandlers_onpointercancel_Get(this._parent);
    return result;
  }
  auto onpointerover(EventHandler onpointerover) {
    GlobalEventHandlers_onpointerover_Set(this._parent, onpointerover);
  }
  auto onpointerover() {
    auto result = GlobalEventHandlers_onpointerover_Get(this._parent);
    return result;
  }
  auto onpointerout(EventHandler onpointerout) {
    GlobalEventHandlers_onpointerout_Set(this._parent, onpointerout);
  }
  auto onpointerout() {
    auto result = GlobalEventHandlers_onpointerout_Get(this._parent);
    return result;
  }
  auto onpointerenter(EventHandler onpointerenter) {
    GlobalEventHandlers_onpointerenter_Set(this._parent, onpointerenter);
  }
  auto onpointerenter() {
    auto result = GlobalEventHandlers_onpointerenter_Get(this._parent);
    return result;
  }
  auto onpointerleave(EventHandler onpointerleave) {
    GlobalEventHandlers_onpointerleave_Set(this._parent, onpointerleave);
  }
  auto onpointerleave() {
    auto result = GlobalEventHandlers_onpointerleave_Get(this._parent);
    return result;
  }
  auto ontouchstart(EventHandler ontouchstart) {
    GlobalEventHandlers_ontouchstart_Set(this._parent, ontouchstart);
  }
  auto ontouchstart() {
    auto result = GlobalEventHandlers_ontouchstart_Get(this._parent);
    return result;
  }
  auto ontouchend(EventHandler ontouchend) {
    GlobalEventHandlers_ontouchend_Set(this._parent, ontouchend);
  }
  auto ontouchend() {
    auto result = GlobalEventHandlers_ontouchend_Get(this._parent);
    return result;
  }
  auto ontouchmove(EventHandler ontouchmove) {
    GlobalEventHandlers_ontouchmove_Set(this._parent, ontouchmove);
  }
  auto ontouchmove() {
    auto result = GlobalEventHandlers_ontouchmove_Get(this._parent);
    return result;
  }
  auto ontouchcancel(EventHandler ontouchcancel) {
    GlobalEventHandlers_ontouchcancel_Set(this._parent, ontouchcancel);
  }
  auto ontouchcancel() {
    auto result = GlobalEventHandlers_ontouchcancel_Get(this._parent);
    return result;
  }
  auto correspondingElement() {
    auto result = SVGElementInstance_correspondingElement_Get(this._parent);
    return result;
  }
  auto correspondingUseElement() {
    auto result = SVGElementInstance_correspondingUseElement_Get(this._parent);
    return result;
  }
  auto dataset() {
    auto result = DOMStringMap(JsHandle(HTMLOrSVGElement_dataset_Get(this._parent)));
    return result;
  }
  auto focus(FocusOptions options) {
    HTMLOrSVGElement_focus(this._parent, options.handle);
  }
  auto blur() {
    HTMLOrSVGElement_blur(this._parent);
  }
}
struct SVGEllipseElement {
  SVGGeometryElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGeometryElement(h);
  }
  auto cx() {
    auto result = SVGAnimatedLength(JsHandle(SVGEllipseElement_cx_Get(this._parent)));
    return result;
  }
  auto cy() {
    auto result = SVGAnimatedLength(JsHandle(SVGEllipseElement_cy_Get(this._parent)));
    return result;
  }
  auto rx() {
    auto result = SVGAnimatedLength(JsHandle(SVGEllipseElement_rx_Get(this._parent)));
    return result;
  }
  auto ry() {
    auto result = SVGAnimatedLength(JsHandle(SVGEllipseElement_ry_Get(this._parent)));
    return result;
  }
}
struct SVGForeignObjectElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGraphicsElement(h);
  }
  auto x() {
    auto result = SVGAnimatedLength(JsHandle(SVGForeignObjectElement_x_Get(this._parent)));
    return result;
  }
  auto y() {
    auto result = SVGAnimatedLength(JsHandle(SVGForeignObjectElement_y_Get(this._parent)));
    return result;
  }
  auto width() {
    auto result = SVGAnimatedLength(JsHandle(SVGForeignObjectElement_width_Get(this._parent)));
    return result;
  }
  auto height() {
    auto result = SVGAnimatedLength(JsHandle(SVGForeignObjectElement_height_Get(this._parent)));
    return result;
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
    auto result = SVGAnimatedNumber(JsHandle(SVGGeometryElement_pathLength_Get(this._parent)));
    return result;
  }
  auto isPointInFill(DOMPointInit point) {
    auto result = SVGGeometryElement_isPointInFill(this._parent, point.handle);
    return result;
  }
  auto isPointInStroke(DOMPointInit point) {
    auto result = SVGGeometryElement_isPointInStroke(this._parent, point.handle);
    return result;
  }
  auto getTotalLength() {
    auto result = SVGGeometryElement_getTotalLength(this._parent);
    return result;
  }
  auto getPointAtLength(float distance) {
    auto result = DOMPoint(JsHandle(SVGGeometryElement_getPointAtLength(this._parent, distance)));
    return result;
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
    auto result = SVGAnimatedEnumeration(JsHandle(SVGGradientElement_gradientUnits_Get(this._parent)));
    return result;
  }
  auto gradientTransform() {
    auto result = SVGAnimatedTransformList(JsHandle(SVGGradientElement_gradientTransform_Get(this._parent)));
    return result;
  }
  auto spreadMethod() {
    auto result = SVGAnimatedEnumeration(JsHandle(SVGGradientElement_spreadMethod_Get(this._parent)));
    return result;
  }
  auto href() {
    auto result = SVGAnimatedString(JsHandle(SVGURIReference_href_Get(this._parent)));
    return result;
  }
}
struct SVGGraphicsElement {
  SVGElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGElement(h);
  }
  auto transform() {
    auto result = SVGAnimatedTransformList(JsHandle(SVGGraphicsElement_transform_Get(this._parent)));
    return result;
  }
  auto getBBox(SVGBoundingBoxOptions options) {
    auto result = DOMRect(JsHandle(SVGGraphicsElement_getBBox(this._parent, options.handle)));
    return result;
  }
  auto getCTM() {
    auto result = SVGGraphicsElement_getCTM(this._parent);
    return result;
  }
  auto getScreenCTM() {
    auto result = SVGGraphicsElement_getScreenCTM(this._parent);
    return result;
  }
  auto requiredExtensions() {
    auto result = SVGStringList(JsHandle(SVGTests_requiredExtensions_Get(this._parent)));
    return result;
  }
  auto systemLanguage() {
    auto result = SVGStringList(JsHandle(SVGTests_systemLanguage_Get(this._parent)));
    return result;
  }
}
struct SVGImageElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGraphicsElement(h);
  }
  auto x() {
    auto result = SVGAnimatedLength(JsHandle(SVGImageElement_x_Get(this._parent)));
    return result;
  }
  auto y() {
    auto result = SVGAnimatedLength(JsHandle(SVGImageElement_y_Get(this._parent)));
    return result;
  }
  auto width() {
    auto result = SVGAnimatedLength(JsHandle(SVGImageElement_width_Get(this._parent)));
    return result;
  }
  auto height() {
    auto result = SVGAnimatedLength(JsHandle(SVGImageElement_height_Get(this._parent)));
    return result;
  }
  auto preserveAspectRatio() {
    auto result = SVGAnimatedPreserveAspectRatio(JsHandle(SVGImageElement_preserveAspectRatio_Get(this._parent)));
    return result;
  }
  auto crossOrigin(Optional!(string) crossOrigin) {
    SVGImageElement_crossOrigin_Set(this._parent, !crossOrigin.empty, crossOrigin.front);
  }
  auto crossOrigin() {
    auto result = SVGImageElement_crossOrigin_Get(this._parent);
    return result;
  }
  auto href() {
    auto result = SVGAnimatedString(JsHandle(SVGURIReference_href_Get(this._parent)));
    return result;
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
    auto result = SVGLength_unitType_Get(this.handle);
    return result;
  }
  auto value(float value) {
    SVGLength_value_Set(this.handle, value);
  }
  auto value() {
    auto result = SVGLength_value_Get(this.handle);
    return result;
  }
  auto valueInSpecifiedUnits(float valueInSpecifiedUnits) {
    SVGLength_valueInSpecifiedUnits_Set(this.handle, valueInSpecifiedUnits);
  }
  auto valueInSpecifiedUnits() {
    auto result = SVGLength_valueInSpecifiedUnits_Get(this.handle);
    return result;
  }
  auto valueAsString(string valueAsString) {
    SVGLength_valueAsString_Set(this.handle, valueAsString);
  }
  auto valueAsString() {
    auto result = SVGLength_valueAsString_Get(this.handle);
    return result;
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
    auto result = SVGLengthList_length_Get(this.handle);
    return result;
  }
  auto numberOfItems() {
    auto result = SVGLengthList_numberOfItems_Get(this.handle);
    return result;
  }
  auto clear() {
    SVGLengthList_clear(this.handle);
  }
  auto initialize(SVGLength newItem) {
    auto result = SVGLength(JsHandle(SVGLengthList_initialize(this.handle, newItem.handle)));
    return result;
  }
  auto getItem(uint index) {
    auto result = SVGLength(JsHandle(SVGLengthList_getItem_getter(this.handle, index)));
    return result;
  }
  auto insertItemBefore(SVGLength newItem, uint index) {
    auto result = SVGLength(JsHandle(SVGLengthList_insertItemBefore(this.handle, newItem.handle, index)));
    return result;
  }
  auto replaceItem(SVGLength newItem, uint index) {
    auto result = SVGLength(JsHandle(SVGLengthList_replaceItem(this.handle, newItem.handle, index)));
    return result;
  }
  auto removeItem(uint index) {
    auto result = SVGLength(JsHandle(SVGLengthList_removeItem(this.handle, index)));
    return result;
  }
  auto appendItem(SVGLength newItem) {
    auto result = SVGLength(JsHandle(SVGLengthList_appendItem(this.handle, newItem.handle)));
    return result;
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
    auto result = SVGAnimatedLength(JsHandle(SVGLineElement_x1_Get(this._parent)));
    return result;
  }
  auto y1() {
    auto result = SVGAnimatedLength(JsHandle(SVGLineElement_y1_Get(this._parent)));
    return result;
  }
  auto x2() {
    auto result = SVGAnimatedLength(JsHandle(SVGLineElement_x2_Get(this._parent)));
    return result;
  }
  auto y2() {
    auto result = SVGAnimatedLength(JsHandle(SVGLineElement_y2_Get(this._parent)));
    return result;
  }
}
struct SVGLinearGradientElement {
  SVGGradientElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGradientElement(h);
  }
  auto x1() {
    auto result = SVGAnimatedLength(JsHandle(SVGLinearGradientElement_x1_Get(this._parent)));
    return result;
  }
  auto y1() {
    auto result = SVGAnimatedLength(JsHandle(SVGLinearGradientElement_y1_Get(this._parent)));
    return result;
  }
  auto x2() {
    auto result = SVGAnimatedLength(JsHandle(SVGLinearGradientElement_x2_Get(this._parent)));
    return result;
  }
  auto y2() {
    auto result = SVGAnimatedLength(JsHandle(SVGLinearGradientElement_y2_Get(this._parent)));
    return result;
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
    auto result = SVGAnimatedLength(JsHandle(SVGMarkerElement_refX_Get(this._parent)));
    return result;
  }
  auto refY() {
    auto result = SVGAnimatedLength(JsHandle(SVGMarkerElement_refY_Get(this._parent)));
    return result;
  }
  auto markerUnits() {
    auto result = SVGAnimatedEnumeration(JsHandle(SVGMarkerElement_markerUnits_Get(this._parent)));
    return result;
  }
  auto markerWidth() {
    auto result = SVGAnimatedLength(JsHandle(SVGMarkerElement_markerWidth_Get(this._parent)));
    return result;
  }
  auto markerHeight() {
    auto result = SVGAnimatedLength(JsHandle(SVGMarkerElement_markerHeight_Get(this._parent)));
    return result;
  }
  auto orientType() {
    auto result = SVGAnimatedEnumeration(JsHandle(SVGMarkerElement_orientType_Get(this._parent)));
    return result;
  }
  auto orientAngle() {
    auto result = SVGAnimatedAngle(JsHandle(SVGMarkerElement_orientAngle_Get(this._parent)));
    return result;
  }
  auto orient(string orient) {
    SVGMarkerElement_orient_Set(this._parent, orient);
  }
  auto orient() {
    auto result = SVGMarkerElement_orient_Get(this._parent);
    return result;
  }
  auto setOrientToAuto() {
    SVGMarkerElement_setOrientToAuto(this._parent);
  }
  auto setOrientToAngle(SVGAngle angle) {
    SVGMarkerElement_setOrientToAngle(this._parent, angle.handle);
  }
  auto viewBox() {
    auto result = SVGAnimatedRect(JsHandle(SVGFitToViewBox_viewBox_Get(this._parent)));
    return result;
  }
  auto preserveAspectRatio() {
    auto result = SVGAnimatedPreserveAspectRatio(JsHandle(SVGFitToViewBox_preserveAspectRatio_Get(this._parent)));
    return result;
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
    auto result = SVGNumber_value_Get(this.handle);
    return result;
  }
}
struct SVGNumberList {
  JsHandle handle;
  alias handle this;
  auto length() {
    auto result = SVGNumberList_length_Get(this.handle);
    return result;
  }
  auto numberOfItems() {
    auto result = SVGNumberList_numberOfItems_Get(this.handle);
    return result;
  }
  auto clear() {
    SVGNumberList_clear(this.handle);
  }
  auto initialize(SVGNumber newItem) {
    auto result = SVGNumber(JsHandle(SVGNumberList_initialize(this.handle, newItem.handle)));
    return result;
  }
  auto getItem(uint index) {
    auto result = SVGNumber(JsHandle(SVGNumberList_getItem_getter(this.handle, index)));
    return result;
  }
  auto insertItemBefore(SVGNumber newItem, uint index) {
    auto result = SVGNumber(JsHandle(SVGNumberList_insertItemBefore(this.handle, newItem.handle, index)));
    return result;
  }
  auto replaceItem(SVGNumber newItem, uint index) {
    auto result = SVGNumber(JsHandle(SVGNumberList_replaceItem(this.handle, newItem.handle, index)));
    return result;
  }
  auto removeItem(uint index) {
    auto result = SVGNumber(JsHandle(SVGNumberList_removeItem(this.handle, index)));
    return result;
  }
  auto appendItem(SVGNumber newItem) {
    auto result = SVGNumber(JsHandle(SVGNumberList_appendItem(this.handle, newItem.handle)));
    return result;
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
    auto result = SVGAnimatedEnumeration(JsHandle(SVGPatternElement_patternUnits_Get(this._parent)));
    return result;
  }
  auto patternContentUnits() {
    auto result = SVGAnimatedEnumeration(JsHandle(SVGPatternElement_patternContentUnits_Get(this._parent)));
    return result;
  }
  auto patternTransform() {
    auto result = SVGAnimatedTransformList(JsHandle(SVGPatternElement_patternTransform_Get(this._parent)));
    return result;
  }
  auto x() {
    auto result = SVGAnimatedLength(JsHandle(SVGPatternElement_x_Get(this._parent)));
    return result;
  }
  auto y() {
    auto result = SVGAnimatedLength(JsHandle(SVGPatternElement_y_Get(this._parent)));
    return result;
  }
  auto width() {
    auto result = SVGAnimatedLength(JsHandle(SVGPatternElement_width_Get(this._parent)));
    return result;
  }
  auto height() {
    auto result = SVGAnimatedLength(JsHandle(SVGPatternElement_height_Get(this._parent)));
    return result;
  }
  auto viewBox() {
    auto result = SVGAnimatedRect(JsHandle(SVGFitToViewBox_viewBox_Get(this._parent)));
    return result;
  }
  auto preserveAspectRatio() {
    auto result = SVGAnimatedPreserveAspectRatio(JsHandle(SVGFitToViewBox_preserveAspectRatio_Get(this._parent)));
    return result;
  }
  auto href() {
    auto result = SVGAnimatedString(JsHandle(SVGURIReference_href_Get(this._parent)));
    return result;
  }
}
struct SVGPointList {
  JsHandle handle;
  alias handle this;
  auto length() {
    auto result = SVGPointList_length_Get(this.handle);
    return result;
  }
  auto numberOfItems() {
    auto result = SVGPointList_numberOfItems_Get(this.handle);
    return result;
  }
  auto clear() {
    SVGPointList_clear(this.handle);
  }
  auto initialize(DOMPoint newItem) {
    auto result = DOMPoint(JsHandle(SVGPointList_initialize(this.handle, newItem.handle)));
    return result;
  }
  auto getItem(uint index) {
    auto result = DOMPoint(JsHandle(SVGPointList_getItem_getter(this.handle, index)));
    return result;
  }
  auto insertItemBefore(DOMPoint newItem, uint index) {
    auto result = DOMPoint(JsHandle(SVGPointList_insertItemBefore(this.handle, newItem.handle, index)));
    return result;
  }
  auto replaceItem(DOMPoint newItem, uint index) {
    auto result = DOMPoint(JsHandle(SVGPointList_replaceItem(this.handle, newItem.handle, index)));
    return result;
  }
  auto removeItem(uint index) {
    auto result = DOMPoint(JsHandle(SVGPointList_removeItem(this.handle, index)));
    return result;
  }
  auto appendItem(DOMPoint newItem) {
    auto result = DOMPoint(JsHandle(SVGPointList_appendItem(this.handle, newItem.handle)));
    return result;
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
    auto result = SVGPointList(JsHandle(SVGAnimatedPoints_points_Get(this._parent)));
    return result;
  }
  auto animatedPoints() {
    auto result = SVGPointList(JsHandle(SVGAnimatedPoints_animatedPoints_Get(this._parent)));
    return result;
  }
}
struct SVGPolylineElement {
  SVGGeometryElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGeometryElement(h);
  }
  auto points() {
    auto result = SVGPointList(JsHandle(SVGAnimatedPoints_points_Get(this._parent)));
    return result;
  }
  auto animatedPoints() {
    auto result = SVGPointList(JsHandle(SVGAnimatedPoints_animatedPoints_Get(this._parent)));
    return result;
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
    auto result = SVGPreserveAspectRatio_align_Get(this.handle);
    return result;
  }
  auto meetOrSlice(ushort meetOrSlice) {
    SVGPreserveAspectRatio_meetOrSlice_Set(this.handle, meetOrSlice);
  }
  auto meetOrSlice() {
    auto result = SVGPreserveAspectRatio_meetOrSlice_Get(this.handle);
    return result;
  }
}
struct SVGRadialGradientElement {
  SVGGradientElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGradientElement(h);
  }
  auto cx() {
    auto result = SVGAnimatedLength(JsHandle(SVGRadialGradientElement_cx_Get(this._parent)));
    return result;
  }
  auto cy() {
    auto result = SVGAnimatedLength(JsHandle(SVGRadialGradientElement_cy_Get(this._parent)));
    return result;
  }
  auto r() {
    auto result = SVGAnimatedLength(JsHandle(SVGRadialGradientElement_r_Get(this._parent)));
    return result;
  }
  auto fx() {
    auto result = SVGAnimatedLength(JsHandle(SVGRadialGradientElement_fx_Get(this._parent)));
    return result;
  }
  auto fy() {
    auto result = SVGAnimatedLength(JsHandle(SVGRadialGradientElement_fy_Get(this._parent)));
    return result;
  }
  auto fr() {
    auto result = SVGAnimatedLength(JsHandle(SVGRadialGradientElement_fr_Get(this._parent)));
    return result;
  }
}
struct SVGRectElement {
  SVGGeometryElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGeometryElement(h);
  }
  auto x() {
    auto result = SVGAnimatedLength(JsHandle(SVGRectElement_x_Get(this._parent)));
    return result;
  }
  auto y() {
    auto result = SVGAnimatedLength(JsHandle(SVGRectElement_y_Get(this._parent)));
    return result;
  }
  auto width() {
    auto result = SVGAnimatedLength(JsHandle(SVGRectElement_width_Get(this._parent)));
    return result;
  }
  auto height() {
    auto result = SVGAnimatedLength(JsHandle(SVGRectElement_height_Get(this._parent)));
    return result;
  }
  auto rx() {
    auto result = SVGAnimatedLength(JsHandle(SVGRectElement_rx_Get(this._parent)));
    return result;
  }
  auto ry() {
    auto result = SVGAnimatedLength(JsHandle(SVGRectElement_ry_Get(this._parent)));
    return result;
  }
}
struct SVGSVGElement {
  SVGGraphicsElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGGraphicsElement(h);
  }
  auto x() {
    auto result = SVGAnimatedLength(JsHandle(SVGSVGElement_x_Get(this._parent)));
    return result;
  }
  auto y() {
    auto result = SVGAnimatedLength(JsHandle(SVGSVGElement_y_Get(this._parent)));
    return result;
  }
  auto width() {
    auto result = SVGAnimatedLength(JsHandle(SVGSVGElement_width_Get(this._parent)));
    return result;
  }
  auto height() {
    auto result = SVGAnimatedLength(JsHandle(SVGSVGElement_height_Get(this._parent)));
    return result;
  }
  auto currentScale(float currentScale) {
    SVGSVGElement_currentScale_Set(this._parent, currentScale);
  }
  auto currentScale() {
    auto result = SVGSVGElement_currentScale_Get(this._parent);
    return result;
  }
  auto currentTranslate() {
    auto result = DOMPointReadOnly(JsHandle(SVGSVGElement_currentTranslate_Get(this._parent)));
    return result;
  }
  auto getIntersectionList(DOMRectReadOnly rect, Optional!(SVGElement) referenceElement) {
    auto result = NodeList(JsHandle(SVGSVGElement_getIntersectionList(this._parent, rect.handle, !referenceElement.empty, referenceElement.front.handle)));
    return result;
  }
  auto getEnclosureList(DOMRectReadOnly rect, Optional!(SVGElement) referenceElement) {
    auto result = NodeList(JsHandle(SVGSVGElement_getEnclosureList(this._parent, rect.handle, !referenceElement.empty, referenceElement.front.handle)));
    return result;
  }
  auto checkIntersection(SVGElement element, DOMRectReadOnly rect) {
    auto result = SVGSVGElement_checkIntersection(this._parent, element.handle, rect.handle);
    return result;
  }
  auto checkEnclosure(SVGElement element, DOMRectReadOnly rect) {
    auto result = SVGSVGElement_checkEnclosure(this._parent, element.handle, rect.handle);
    return result;
  }
  auto deselectAll() {
    SVGSVGElement_deselectAll(this._parent);
  }
  auto createSVGNumber() {
    auto result = SVGNumber(JsHandle(SVGSVGElement_createSVGNumber(this._parent)));
    return result;
  }
  auto createSVGLength() {
    auto result = SVGLength(JsHandle(SVGSVGElement_createSVGLength(this._parent)));
    return result;
  }
  auto createSVGAngle() {
    auto result = SVGAngle(JsHandle(SVGSVGElement_createSVGAngle(this._parent)));
    return result;
  }
  auto createSVGPoint() {
    auto result = DOMPoint(JsHandle(SVGSVGElement_createSVGPoint(this._parent)));
    return result;
  }
  auto createSVGMatrix() {
    auto result = DOMMatrix(JsHandle(SVGSVGElement_createSVGMatrix(this._parent)));
    return result;
  }
  auto createSVGRect() {
    auto result = DOMRect(JsHandle(SVGSVGElement_createSVGRect(this._parent)));
    return result;
  }
  auto createSVGTransform() {
    auto result = SVGTransform(JsHandle(SVGSVGElement_createSVGTransform(this._parent)));
    return result;
  }
  auto createSVGTransformFromMatrix(DOMMatrixReadOnly matrix) {
    auto result = SVGTransform(JsHandle(SVGSVGElement_createSVGTransformFromMatrix(this._parent, matrix.handle)));
    return result;
  }
  auto getElementById(string elementId) {
    auto result = Element(JsHandle(SVGSVGElement_getElementById(this._parent, elementId)));
    return result;
  }
  auto suspendRedraw(uint maxWaitMilliseconds) {
    auto result = SVGSVGElement_suspendRedraw(this._parent, maxWaitMilliseconds);
    return result;
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
    auto result = SVGAnimatedRect(JsHandle(SVGFitToViewBox_viewBox_Get(this._parent)));
    return result;
  }
  auto preserveAspectRatio() {
    auto result = SVGAnimatedPreserveAspectRatio(JsHandle(SVGFitToViewBox_preserveAspectRatio_Get(this._parent)));
    return result;
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
    auto result = SVGScriptElement_type_Get(this._parent);
    return result;
  }
  auto crossOrigin(Optional!(string) crossOrigin) {
    SVGScriptElement_crossOrigin_Set(this._parent, !crossOrigin.empty, crossOrigin.front);
  }
  auto crossOrigin() {
    auto result = SVGScriptElement_crossOrigin_Get(this._parent);
    return result;
  }
  auto href() {
    auto result = SVGAnimatedString(JsHandle(SVGURIReference_href_Get(this._parent)));
    return result;
  }
}
struct SVGStopElement {
  SVGElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGElement(h);
  }
  auto offset() {
    auto result = SVGAnimatedNumber(JsHandle(SVGStopElement_offset_Get(this._parent)));
    return result;
  }
}
struct SVGStringList {
  JsHandle handle;
  alias handle this;
  auto length() {
    auto result = SVGStringList_length_Get(this.handle);
    return result;
  }
  auto numberOfItems() {
    auto result = SVGStringList_numberOfItems_Get(this.handle);
    return result;
  }
  auto clear() {
    SVGStringList_clear(this.handle);
  }
  auto initialize(string newItem) {
    auto result = SVGStringList_initialize(this.handle, newItem);
    return result;
  }
  auto getItem(uint index) {
    auto result = SVGStringList_getItem_getter(this.handle, index);
    return result;
  }
  auto insertItemBefore(string newItem, uint index) {
    auto result = SVGStringList_insertItemBefore(this.handle, newItem, index);
    return result;
  }
  auto replaceItem(string newItem, uint index) {
    auto result = SVGStringList_replaceItem(this.handle, newItem, index);
    return result;
  }
  auto removeItem(uint index) {
    auto result = SVGStringList_removeItem(this.handle, index);
    return result;
  }
  auto appendItem(string newItem) {
    auto result = SVGStringList_appendItem(this.handle, newItem);
    return result;
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
    auto result = SVGStyleElement_type_Get(this._parent);
    return result;
  }
  auto media(string media) {
    SVGStyleElement_media_Set(this._parent, media);
  }
  auto media() {
    auto result = SVGStyleElement_media_Get(this._parent);
    return result;
  }
  auto title(string title) {
    SVGStyleElement_title_Set(this._parent, title);
  }
  auto title() {
    auto result = SVGStyleElement_title_Get(this._parent);
    return result;
  }
  auto sheet() {
    auto result = LinkStyle_sheet_Get(this._parent);
    return result;
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
    auto result = SVGAnimatedRect(JsHandle(SVGFitToViewBox_viewBox_Get(this._parent)));
    return result;
  }
  auto preserveAspectRatio() {
    auto result = SVGAnimatedPreserveAspectRatio(JsHandle(SVGFitToViewBox_preserveAspectRatio_Get(this._parent)));
    return result;
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
    auto result = SVGAnimatedLength(JsHandle(SVGTextContentElement_textLength_Get(this._parent)));
    return result;
  }
  auto lengthAdjust() {
    auto result = SVGAnimatedEnumeration(JsHandle(SVGTextContentElement_lengthAdjust_Get(this._parent)));
    return result;
  }
  auto getNumberOfChars() {
    auto result = SVGTextContentElement_getNumberOfChars(this._parent);
    return result;
  }
  auto getComputedTextLength() {
    auto result = SVGTextContentElement_getComputedTextLength(this._parent);
    return result;
  }
  auto getSubStringLength(uint charnum, uint nchars) {
    auto result = SVGTextContentElement_getSubStringLength(this._parent, charnum, nchars);
    return result;
  }
  auto getStartPositionOfChar(uint charnum) {
    auto result = DOMPoint(JsHandle(SVGTextContentElement_getStartPositionOfChar(this._parent, charnum)));
    return result;
  }
  auto getEndPositionOfChar(uint charnum) {
    auto result = DOMPoint(JsHandle(SVGTextContentElement_getEndPositionOfChar(this._parent, charnum)));
    return result;
  }
  auto getExtentOfChar(uint charnum) {
    auto result = DOMRect(JsHandle(SVGTextContentElement_getExtentOfChar(this._parent, charnum)));
    return result;
  }
  auto getRotationOfChar(uint charnum) {
    auto result = SVGTextContentElement_getRotationOfChar(this._parent, charnum);
    return result;
  }
  auto getCharNumAtPosition(DOMPointInit point) {
    auto result = SVGTextContentElement_getCharNumAtPosition(this._parent, point.handle);
    return result;
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
    auto result = SVGAnimatedLength(JsHandle(SVGTextPathElement_startOffset_Get(this._parent)));
    return result;
  }
  auto method() {
    auto result = SVGAnimatedEnumeration(JsHandle(SVGTextPathElement_method_Get(this._parent)));
    return result;
  }
  auto spacing() {
    auto result = SVGAnimatedEnumeration(JsHandle(SVGTextPathElement_spacing_Get(this._parent)));
    return result;
  }
  auto href() {
    auto result = SVGAnimatedString(JsHandle(SVGURIReference_href_Get(this._parent)));
    return result;
  }
}
struct SVGTextPositioningElement {
  SVGTextContentElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = SVGTextContentElement(h);
  }
  auto x() {
    auto result = SVGAnimatedLengthList(JsHandle(SVGTextPositioningElement_x_Get(this._parent)));
    return result;
  }
  auto y() {
    auto result = SVGAnimatedLengthList(JsHandle(SVGTextPositioningElement_y_Get(this._parent)));
    return result;
  }
  auto dx() {
    auto result = SVGAnimatedLengthList(JsHandle(SVGTextPositioningElement_dx_Get(this._parent)));
    return result;
  }
  auto dy() {
    auto result = SVGAnimatedLengthList(JsHandle(SVGTextPositioningElement_dy_Get(this._parent)));
    return result;
  }
  auto rotate() {
    auto result = SVGAnimatedNumberList(JsHandle(SVGTextPositioningElement_rotate_Get(this._parent)));
    return result;
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
    auto result = SVGTransform_type_Get(this.handle);
    return result;
  }
  auto matrix() {
    auto result = DOMMatrix(JsHandle(SVGTransform_matrix_Get(this.handle)));
    return result;
  }
  auto angle() {
    auto result = SVGTransform_angle_Get(this.handle);
    return result;
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
    auto result = SVGTransformList_length_Get(this.handle);
    return result;
  }
  auto numberOfItems() {
    auto result = SVGTransformList_numberOfItems_Get(this.handle);
    return result;
  }
  auto clear() {
    SVGTransformList_clear(this.handle);
  }
  auto initialize(SVGTransform newItem) {
    auto result = SVGTransform(JsHandle(SVGTransformList_initialize(this.handle, newItem.handle)));
    return result;
  }
  auto getItem(uint index) {
    auto result = SVGTransform(JsHandle(SVGTransformList_getItem_getter(this.handle, index)));
    return result;
  }
  auto insertItemBefore(SVGTransform newItem, uint index) {
    auto result = SVGTransform(JsHandle(SVGTransformList_insertItemBefore(this.handle, newItem.handle, index)));
    return result;
  }
  auto replaceItem(SVGTransform newItem, uint index) {
    auto result = SVGTransform(JsHandle(SVGTransformList_replaceItem(this.handle, newItem.handle, index)));
    return result;
  }
  auto removeItem(uint index) {
    auto result = SVGTransform(JsHandle(SVGTransformList_removeItem(this.handle, index)));
    return result;
  }
  auto appendItem(SVGTransform newItem) {
    auto result = SVGTransform(JsHandle(SVGTransformList_appendItem(this.handle, newItem.handle)));
    return result;
  }
  auto opIndexAssign(SVGTransform newItem, uint index) {
    SVGTransformList_setter__uint_Handle(this.handle, index, newItem.handle);
  }
  auto opDispatch(uint index)(SVGTransform newItem) {
    SVGTransformList_setter__uint_Handle(this.handle, index, newItem.handle);
  }
  auto createSVGTransformFromMatrix(DOMMatrixReadOnly matrix) {
    auto result = SVGTransform(JsHandle(SVGTransformList_createSVGTransformFromMatrix(this.handle, matrix.handle)));
    return result;
  }
  auto consolidate() {
    auto result = SVGTransformList_consolidate(this.handle);
    return result;
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
    auto result = SVGAnimatedLength(JsHandle(SVGUseElement_x_Get(this._parent)));
    return result;
  }
  auto y() {
    auto result = SVGAnimatedLength(JsHandle(SVGUseElement_y_Get(this._parent)));
    return result;
  }
  auto width() {
    auto result = SVGAnimatedLength(JsHandle(SVGUseElement_width_Get(this._parent)));
    return result;
  }
  auto height() {
    auto result = SVGAnimatedLength(JsHandle(SVGUseElement_height_Get(this._parent)));
    return result;
  }
  auto instanceRoot() {
    auto result = SVGUseElement_instanceRoot_Get(this._parent);
    return result;
  }
  auto animatedInstanceRoot() {
    auto result = SVGUseElement_animatedInstanceRoot_Get(this._parent);
    return result;
  }
  auto href() {
    auto result = SVGAnimatedString(JsHandle(SVGURIReference_href_Get(this._parent)));
    return result;
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
    auto result = SVGAnimatedRect(JsHandle(SVGFitToViewBox_viewBox_Get(this._parent)));
    return result;
  }
  auto preserveAspectRatio() {
    auto result = SVGAnimatedPreserveAspectRatio(JsHandle(SVGFitToViewBox_preserveAspectRatio_Get(this._parent)));
    return result;
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
    auto result = Animation(JsHandle(ShadowAnimation_sourceAnimation_Get(this._parent)));
    return result;
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
extern (C) void SVGBoundingBoxOptions_create(Handle);
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