module spasm.bindings.svg;

import spasm.types;
import spasm.bindings.cssom;
import spasm.bindings.dom;
import spasm.bindings.geometry;
import spasm.bindings.html;

@safe:
nothrow:

struct SVGAElement {
  nothrow:
  spasm.bindings.svg.SVGGraphicsElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGGraphicsElement(h);
  }
  auto target() {
    return SVGAnimatedString(SVGAElement_target_Get(this._parent));
  }
  void download(string download) {
    SVGAElement_download_Set(this._parent, download);
  }
  auto download() {
    return SVGAElement_download_Get(this._parent);
  }
  void ping(string ping) {
    SVGAElement_ping_Set(this._parent, ping);
  }
  auto ping() {
    return SVGAElement_ping_Get(this._parent);
  }
  void rel(string rel) {
    SVGAElement_rel_Set(this._parent, rel);
  }
  auto rel() {
    return SVGAElement_rel_Get(this._parent);
  }
  auto relList() {
    return DOMTokenList(SVGAElement_relList_Get(this._parent));
  }
  void hreflang(string hreflang) {
    SVGAElement_hreflang_Set(this._parent, hreflang);
  }
  auto hreflang() {
    return SVGAElement_hreflang_Get(this._parent);
  }
  void type(string type) {
    SVGAElement_type_Set(this._parent, type);
  }
  auto type() {
    return SVGAElement_type_Get(this._parent);
  }
  void text(string text) {
    SVGAElement_text_Set(this._parent, text);
  }
  auto text() {
    return SVGAElement_text_Get(this._parent);
  }
  void referrerPolicy(string referrerPolicy) {
    SVGAElement_referrerPolicy_Set(this._parent, referrerPolicy);
  }
  auto referrerPolicy() {
    return SVGAElement_referrerPolicy_Get(this._parent);
  }
  auto href() {
    return SVGAnimatedString(SVGURIReference_href_Get(this._parent));
  }
  void href(string href) {
    HTMLHyperlinkElementUtils_href_Set(this._parent, href);
  }
  auto href() {
    return HTMLHyperlinkElementUtils_href_Get(this._parent);
  }
  auto origin() {
    return HTMLHyperlinkElementUtils_origin_Get(this._parent);
  }
  void protocol(string protocol) {
    HTMLHyperlinkElementUtils_protocol_Set(this._parent, protocol);
  }
  auto protocol() {
    return HTMLHyperlinkElementUtils_protocol_Get(this._parent);
  }
  void username(string username) {
    HTMLHyperlinkElementUtils_username_Set(this._parent, username);
  }
  auto username() {
    return HTMLHyperlinkElementUtils_username_Get(this._parent);
  }
  void password(string password) {
    HTMLHyperlinkElementUtils_password_Set(this._parent, password);
  }
  auto password() {
    return HTMLHyperlinkElementUtils_password_Get(this._parent);
  }
  void host(string host) {
    HTMLHyperlinkElementUtils_host_Set(this._parent, host);
  }
  auto host() {
    return HTMLHyperlinkElementUtils_host_Get(this._parent);
  }
  void hostname(string hostname) {
    HTMLHyperlinkElementUtils_hostname_Set(this._parent, hostname);
  }
  auto hostname() {
    return HTMLHyperlinkElementUtils_hostname_Get(this._parent);
  }
  void port(string port) {
    HTMLHyperlinkElementUtils_port_Set(this._parent, port);
  }
  auto port() {
    return HTMLHyperlinkElementUtils_port_Get(this._parent);
  }
  void pathname(string pathname) {
    HTMLHyperlinkElementUtils_pathname_Set(this._parent, pathname);
  }
  auto pathname() {
    return HTMLHyperlinkElementUtils_pathname_Get(this._parent);
  }
  void search(string search) {
    HTMLHyperlinkElementUtils_search_Set(this._parent, search);
  }
  auto search() {
    return HTMLHyperlinkElementUtils_search_Get(this._parent);
  }
  void hash(string hash) {
    HTMLHyperlinkElementUtils_hash_Set(this._parent, hash);
  }
  auto hash() {
    return HTMLHyperlinkElementUtils_hash_Get(this._parent);
  }
}
struct SVGAngle {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  enum ushort SVG_ANGLETYPE_UNKNOWN = 0;
  enum ushort SVG_ANGLETYPE_UNSPECIFIED = 1;
  enum ushort SVG_ANGLETYPE_DEG = 2;
  enum ushort SVG_ANGLETYPE_RAD = 3;
  enum ushort SVG_ANGLETYPE_GRAD = 4;
  auto unitType() {
    return SVGAngle_unitType_Get(this.handle);
  }
  void value(float value) {
    SVGAngle_value_Set(this.handle, value);
  }
  auto value() {
    return SVGAngle_value_Get(this.handle);
  }
  void valueInSpecifiedUnits(float valueInSpecifiedUnits) {
    SVGAngle_valueInSpecifiedUnits_Set(this.handle, valueInSpecifiedUnits);
  }
  auto valueInSpecifiedUnits() {
    return SVGAngle_valueInSpecifiedUnits_Get(this.handle);
  }
  void valueAsString(string valueAsString) {
    SVGAngle_valueAsString_Set(this.handle, valueAsString);
  }
  auto valueAsString() {
    return SVGAngle_valueAsString_Get(this.handle);
  }
  void newValueSpecifiedUnits(ushort unitType, float valueInSpecifiedUnits) {
    SVGAngle_newValueSpecifiedUnits(this.handle, unitType, valueInSpecifiedUnits);
  }
  void convertToSpecifiedUnits(ushort unitType) {
    SVGAngle_convertToSpecifiedUnits(this.handle, unitType);
  }
}
struct SVGAnimatedAngle {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto baseVal() {
    return SVGAngle(SVGAnimatedAngle_baseVal_Get(this.handle));
  }
  auto animVal() {
    return SVGAngle(SVGAnimatedAngle_animVal_Get(this.handle));
  }
}
struct SVGAnimatedBoolean {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  void baseVal(bool baseVal) {
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
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  void baseVal(ushort baseVal) {
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
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  void baseVal(int baseVal) {
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
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto baseVal() {
    return SVGLength(SVGAnimatedLength_baseVal_Get(this.handle));
  }
  auto animVal() {
    return SVGLength(SVGAnimatedLength_animVal_Get(this.handle));
  }
}
struct SVGAnimatedLengthList {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto baseVal() {
    return SVGLengthList(SVGAnimatedLengthList_baseVal_Get(this.handle));
  }
  auto animVal() {
    return SVGLengthList(SVGAnimatedLengthList_animVal_Get(this.handle));
  }
}
struct SVGAnimatedNumber {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  void baseVal(float baseVal) {
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
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto baseVal() {
    return SVGNumberList(SVGAnimatedNumberList_baseVal_Get(this.handle));
  }
  auto animVal() {
    return SVGNumberList(SVGAnimatedNumberList_animVal_Get(this.handle));
  }
}
struct SVGAnimatedPreserveAspectRatio {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto baseVal() {
    return SVGPreserveAspectRatio(SVGAnimatedPreserveAspectRatio_baseVal_Get(this.handle));
  }
  auto animVal() {
    return SVGPreserveAspectRatio(SVGAnimatedPreserveAspectRatio_animVal_Get(this.handle));
  }
}
struct SVGAnimatedRect {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto baseVal() {
    return DOMRect(SVGAnimatedRect_baseVal_Get(this.handle));
  }
  auto animVal() {
    return DOMRectReadOnly(SVGAnimatedRect_animVal_Get(this.handle));
  }
}
struct SVGAnimatedString {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  void baseVal(string baseVal) {
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
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto baseVal() {
    return SVGTransformList(SVGAnimatedTransformList_baseVal_Get(this.handle));
  }
  auto animVal() {
    return SVGTransformList(SVGAnimatedTransformList_animVal_Get(this.handle));
  }
}
struct SVGBoundingBoxOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return SVGBoundingBoxOptions(spasm_add__object());
  }
  void fill(bool fill) {
    SVGBoundingBoxOptions_fill_Set(this.handle, fill);
  }
  auto fill() {
    return SVGBoundingBoxOptions_fill_Get(this.handle);
  }
  void stroke(bool stroke) {
    SVGBoundingBoxOptions_stroke_Set(this.handle, stroke);
  }
  auto stroke() {
    return SVGBoundingBoxOptions_stroke_Get(this.handle);
  }
  void markers(bool markers) {
    SVGBoundingBoxOptions_markers_Set(this.handle, markers);
  }
  auto markers() {
    return SVGBoundingBoxOptions_markers_Get(this.handle);
  }
  void clipped(bool clipped) {
    SVGBoundingBoxOptions_clipped_Set(this.handle, clipped);
  }
  auto clipped() {
    return SVGBoundingBoxOptions_clipped_Get(this.handle);
  }
}
struct SVGCircleElement {
  nothrow:
  spasm.bindings.svg.SVGGeometryElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGGeometryElement(h);
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
  nothrow:
  spasm.bindings.svg.SVGGraphicsElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGGraphicsElement(h);
  }
}
struct SVGDescElement {
  nothrow:
  spasm.bindings.svg.SVGElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGElement(h);
  }
}
struct SVGElement {
  nothrow:
  spasm.bindings.dom.Element _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Element(h);
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
  void onabort(EventHandler onabort) {
    GlobalEventHandlers_onabort_Set(this._parent, onabort);
  }
  auto onabort() {
    return GlobalEventHandlers_onabort_Get(this._parent);
  }
  void onauxclick(EventHandler onauxclick) {
    GlobalEventHandlers_onauxclick_Set(this._parent, onauxclick);
  }
  auto onauxclick() {
    return GlobalEventHandlers_onauxclick_Get(this._parent);
  }
  void onblur(EventHandler onblur) {
    GlobalEventHandlers_onblur_Set(this._parent, onblur);
  }
  auto onblur() {
    return GlobalEventHandlers_onblur_Get(this._parent);
  }
  void oncancel(EventHandler oncancel) {
    GlobalEventHandlers_oncancel_Set(this._parent, oncancel);
  }
  auto oncancel() {
    return GlobalEventHandlers_oncancel_Get(this._parent);
  }
  void oncanplay(EventHandler oncanplay) {
    GlobalEventHandlers_oncanplay_Set(this._parent, oncanplay);
  }
  auto oncanplay() {
    return GlobalEventHandlers_oncanplay_Get(this._parent);
  }
  void oncanplaythrough(EventHandler oncanplaythrough) {
    GlobalEventHandlers_oncanplaythrough_Set(this._parent, oncanplaythrough);
  }
  auto oncanplaythrough() {
    return GlobalEventHandlers_oncanplaythrough_Get(this._parent);
  }
  void onchange(EventHandler onchange) {
    GlobalEventHandlers_onchange_Set(this._parent, onchange);
  }
  auto onchange() {
    return GlobalEventHandlers_onchange_Get(this._parent);
  }
  void onclick(EventHandler onclick) {
    GlobalEventHandlers_onclick_Set(this._parent, onclick);
  }
  auto onclick() {
    return GlobalEventHandlers_onclick_Get(this._parent);
  }
  void onclose(EventHandler onclose) {
    GlobalEventHandlers_onclose_Set(this._parent, onclose);
  }
  auto onclose() {
    return GlobalEventHandlers_onclose_Get(this._parent);
  }
  void oncontextmenu(EventHandler oncontextmenu) {
    GlobalEventHandlers_oncontextmenu_Set(this._parent, oncontextmenu);
  }
  auto oncontextmenu() {
    return GlobalEventHandlers_oncontextmenu_Get(this._parent);
  }
  void oncuechange(EventHandler oncuechange) {
    GlobalEventHandlers_oncuechange_Set(this._parent, oncuechange);
  }
  auto oncuechange() {
    return GlobalEventHandlers_oncuechange_Get(this._parent);
  }
  void ondblclick(EventHandler ondblclick) {
    GlobalEventHandlers_ondblclick_Set(this._parent, ondblclick);
  }
  auto ondblclick() {
    return GlobalEventHandlers_ondblclick_Get(this._parent);
  }
  void ondrag(EventHandler ondrag) {
    GlobalEventHandlers_ondrag_Set(this._parent, ondrag);
  }
  auto ondrag() {
    return GlobalEventHandlers_ondrag_Get(this._parent);
  }
  void ondragend(EventHandler ondragend) {
    GlobalEventHandlers_ondragend_Set(this._parent, ondragend);
  }
  auto ondragend() {
    return GlobalEventHandlers_ondragend_Get(this._parent);
  }
  void ondragenter(EventHandler ondragenter) {
    GlobalEventHandlers_ondragenter_Set(this._parent, ondragenter);
  }
  auto ondragenter() {
    return GlobalEventHandlers_ondragenter_Get(this._parent);
  }
  void ondragexit(EventHandler ondragexit) {
    GlobalEventHandlers_ondragexit_Set(this._parent, ondragexit);
  }
  auto ondragexit() {
    return GlobalEventHandlers_ondragexit_Get(this._parent);
  }
  void ondragleave(EventHandler ondragleave) {
    GlobalEventHandlers_ondragleave_Set(this._parent, ondragleave);
  }
  auto ondragleave() {
    return GlobalEventHandlers_ondragleave_Get(this._parent);
  }
  void ondragover(EventHandler ondragover) {
    GlobalEventHandlers_ondragover_Set(this._parent, ondragover);
  }
  auto ondragover() {
    return GlobalEventHandlers_ondragover_Get(this._parent);
  }
  void ondragstart(EventHandler ondragstart) {
    GlobalEventHandlers_ondragstart_Set(this._parent, ondragstart);
  }
  auto ondragstart() {
    return GlobalEventHandlers_ondragstart_Get(this._parent);
  }
  void ondrop(EventHandler ondrop) {
    GlobalEventHandlers_ondrop_Set(this._parent, ondrop);
  }
  auto ondrop() {
    return GlobalEventHandlers_ondrop_Get(this._parent);
  }
  void ondurationchange(EventHandler ondurationchange) {
    GlobalEventHandlers_ondurationchange_Set(this._parent, ondurationchange);
  }
  auto ondurationchange() {
    return GlobalEventHandlers_ondurationchange_Get(this._parent);
  }
  void onemptied(EventHandler onemptied) {
    GlobalEventHandlers_onemptied_Set(this._parent, onemptied);
  }
  auto onemptied() {
    return GlobalEventHandlers_onemptied_Get(this._parent);
  }
  void onended(EventHandler onended) {
    GlobalEventHandlers_onended_Set(this._parent, onended);
  }
  auto onended() {
    return GlobalEventHandlers_onended_Get(this._parent);
  }
  void onerror(scope ref OnErrorEventHandler onerror) {
    GlobalEventHandlers_onerror_Set(this._parent, !onerror.empty, onerror.front);
  }
  auto onerror() {
    return GlobalEventHandlers_onerror_Get(this._parent);
  }
  void onfocus(EventHandler onfocus) {
    GlobalEventHandlers_onfocus_Set(this._parent, onfocus);
  }
  auto onfocus() {
    return GlobalEventHandlers_onfocus_Get(this._parent);
  }
  void oninput(EventHandler oninput) {
    GlobalEventHandlers_oninput_Set(this._parent, oninput);
  }
  auto oninput() {
    return GlobalEventHandlers_oninput_Get(this._parent);
  }
  void oninvalid(EventHandler oninvalid) {
    GlobalEventHandlers_oninvalid_Set(this._parent, oninvalid);
  }
  auto oninvalid() {
    return GlobalEventHandlers_oninvalid_Get(this._parent);
  }
  void onkeydown(EventHandler onkeydown) {
    GlobalEventHandlers_onkeydown_Set(this._parent, onkeydown);
  }
  auto onkeydown() {
    return GlobalEventHandlers_onkeydown_Get(this._parent);
  }
  void onkeypress(EventHandler onkeypress) {
    GlobalEventHandlers_onkeypress_Set(this._parent, onkeypress);
  }
  auto onkeypress() {
    return GlobalEventHandlers_onkeypress_Get(this._parent);
  }
  void onkeyup(EventHandler onkeyup) {
    GlobalEventHandlers_onkeyup_Set(this._parent, onkeyup);
  }
  auto onkeyup() {
    return GlobalEventHandlers_onkeyup_Get(this._parent);
  }
  void onload(EventHandler onload) {
    GlobalEventHandlers_onload_Set(this._parent, onload);
  }
  auto onload() {
    return GlobalEventHandlers_onload_Get(this._parent);
  }
  void onloadeddata(EventHandler onloadeddata) {
    GlobalEventHandlers_onloadeddata_Set(this._parent, onloadeddata);
  }
  auto onloadeddata() {
    return GlobalEventHandlers_onloadeddata_Get(this._parent);
  }
  void onloadedmetadata(EventHandler onloadedmetadata) {
    GlobalEventHandlers_onloadedmetadata_Set(this._parent, onloadedmetadata);
  }
  auto onloadedmetadata() {
    return GlobalEventHandlers_onloadedmetadata_Get(this._parent);
  }
  void onloadend(EventHandler onloadend) {
    GlobalEventHandlers_onloadend_Set(this._parent, onloadend);
  }
  auto onloadend() {
    return GlobalEventHandlers_onloadend_Get(this._parent);
  }
  void onloadstart(EventHandler onloadstart) {
    GlobalEventHandlers_onloadstart_Set(this._parent, onloadstart);
  }
  auto onloadstart() {
    return GlobalEventHandlers_onloadstart_Get(this._parent);
  }
  void onmousedown(EventHandler onmousedown) {
    GlobalEventHandlers_onmousedown_Set(this._parent, onmousedown);
  }
  auto onmousedown() {
    return GlobalEventHandlers_onmousedown_Get(this._parent);
  }
  void onmouseenter(EventHandler onmouseenter) {
    GlobalEventHandlers_onmouseenter_Set(this._parent, onmouseenter);
  }
  auto onmouseenter() {
    return GlobalEventHandlers_onmouseenter_Get(this._parent);
  }
  void onmouseleave(EventHandler onmouseleave) {
    GlobalEventHandlers_onmouseleave_Set(this._parent, onmouseleave);
  }
  auto onmouseleave() {
    return GlobalEventHandlers_onmouseleave_Get(this._parent);
  }
  void onmousemove(EventHandler onmousemove) {
    GlobalEventHandlers_onmousemove_Set(this._parent, onmousemove);
  }
  auto onmousemove() {
    return GlobalEventHandlers_onmousemove_Get(this._parent);
  }
  void onmouseout(EventHandler onmouseout) {
    GlobalEventHandlers_onmouseout_Set(this._parent, onmouseout);
  }
  auto onmouseout() {
    return GlobalEventHandlers_onmouseout_Get(this._parent);
  }
  void onmouseover(EventHandler onmouseover) {
    GlobalEventHandlers_onmouseover_Set(this._parent, onmouseover);
  }
  auto onmouseover() {
    return GlobalEventHandlers_onmouseover_Get(this._parent);
  }
  void onmouseup(EventHandler onmouseup) {
    GlobalEventHandlers_onmouseup_Set(this._parent, onmouseup);
  }
  auto onmouseup() {
    return GlobalEventHandlers_onmouseup_Get(this._parent);
  }
  void onwheel(EventHandler onwheel) {
    GlobalEventHandlers_onwheel_Set(this._parent, onwheel);
  }
  auto onwheel() {
    return GlobalEventHandlers_onwheel_Get(this._parent);
  }
  void onpause(EventHandler onpause) {
    GlobalEventHandlers_onpause_Set(this._parent, onpause);
  }
  auto onpause() {
    return GlobalEventHandlers_onpause_Get(this._parent);
  }
  void onplay(EventHandler onplay) {
    GlobalEventHandlers_onplay_Set(this._parent, onplay);
  }
  auto onplay() {
    return GlobalEventHandlers_onplay_Get(this._parent);
  }
  void onplaying(EventHandler onplaying) {
    GlobalEventHandlers_onplaying_Set(this._parent, onplaying);
  }
  auto onplaying() {
    return GlobalEventHandlers_onplaying_Get(this._parent);
  }
  void onprogress(EventHandler onprogress) {
    GlobalEventHandlers_onprogress_Set(this._parent, onprogress);
  }
  auto onprogress() {
    return GlobalEventHandlers_onprogress_Get(this._parent);
  }
  void onratechange(EventHandler onratechange) {
    GlobalEventHandlers_onratechange_Set(this._parent, onratechange);
  }
  auto onratechange() {
    return GlobalEventHandlers_onratechange_Get(this._parent);
  }
  void onreset(EventHandler onreset) {
    GlobalEventHandlers_onreset_Set(this._parent, onreset);
  }
  auto onreset() {
    return GlobalEventHandlers_onreset_Get(this._parent);
  }
  void onresize(EventHandler onresize) {
    GlobalEventHandlers_onresize_Set(this._parent, onresize);
  }
  auto onresize() {
    return GlobalEventHandlers_onresize_Get(this._parent);
  }
  void onscroll(EventHandler onscroll) {
    GlobalEventHandlers_onscroll_Set(this._parent, onscroll);
  }
  auto onscroll() {
    return GlobalEventHandlers_onscroll_Get(this._parent);
  }
  void onsecuritypolicyviolation(EventHandler onsecuritypolicyviolation) {
    GlobalEventHandlers_onsecuritypolicyviolation_Set(this._parent, onsecuritypolicyviolation);
  }
  auto onsecuritypolicyviolation() {
    return GlobalEventHandlers_onsecuritypolicyviolation_Get(this._parent);
  }
  void onseeked(EventHandler onseeked) {
    GlobalEventHandlers_onseeked_Set(this._parent, onseeked);
  }
  auto onseeked() {
    return GlobalEventHandlers_onseeked_Get(this._parent);
  }
  void onseeking(EventHandler onseeking) {
    GlobalEventHandlers_onseeking_Set(this._parent, onseeking);
  }
  auto onseeking() {
    return GlobalEventHandlers_onseeking_Get(this._parent);
  }
  void onselect(EventHandler onselect) {
    GlobalEventHandlers_onselect_Set(this._parent, onselect);
  }
  auto onselect() {
    return GlobalEventHandlers_onselect_Get(this._parent);
  }
  void onstalled(EventHandler onstalled) {
    GlobalEventHandlers_onstalled_Set(this._parent, onstalled);
  }
  auto onstalled() {
    return GlobalEventHandlers_onstalled_Get(this._parent);
  }
  void onsubmit(EventHandler onsubmit) {
    GlobalEventHandlers_onsubmit_Set(this._parent, onsubmit);
  }
  auto onsubmit() {
    return GlobalEventHandlers_onsubmit_Get(this._parent);
  }
  void onsuspend(EventHandler onsuspend) {
    GlobalEventHandlers_onsuspend_Set(this._parent, onsuspend);
  }
  auto onsuspend() {
    return GlobalEventHandlers_onsuspend_Get(this._parent);
  }
  void ontimeupdate(EventHandler ontimeupdate) {
    GlobalEventHandlers_ontimeupdate_Set(this._parent, ontimeupdate);
  }
  auto ontimeupdate() {
    return GlobalEventHandlers_ontimeupdate_Get(this._parent);
  }
  void ontoggle(EventHandler ontoggle) {
    GlobalEventHandlers_ontoggle_Set(this._parent, ontoggle);
  }
  auto ontoggle() {
    return GlobalEventHandlers_ontoggle_Get(this._parent);
  }
  void onvolumechange(EventHandler onvolumechange) {
    GlobalEventHandlers_onvolumechange_Set(this._parent, onvolumechange);
  }
  auto onvolumechange() {
    return GlobalEventHandlers_onvolumechange_Get(this._parent);
  }
  void onwaiting(EventHandler onwaiting) {
    GlobalEventHandlers_onwaiting_Set(this._parent, onwaiting);
  }
  auto onwaiting() {
    return GlobalEventHandlers_onwaiting_Get(this._parent);
  }
  void ongotpointercapture(EventHandler ongotpointercapture) {
    GlobalEventHandlers_ongotpointercapture_Set(this._parent, ongotpointercapture);
  }
  auto ongotpointercapture() {
    return GlobalEventHandlers_ongotpointercapture_Get(this._parent);
  }
  void onlostpointercapture(EventHandler onlostpointercapture) {
    GlobalEventHandlers_onlostpointercapture_Set(this._parent, onlostpointercapture);
  }
  auto onlostpointercapture() {
    return GlobalEventHandlers_onlostpointercapture_Get(this._parent);
  }
  void onpointerdown(EventHandler onpointerdown) {
    GlobalEventHandlers_onpointerdown_Set(this._parent, onpointerdown);
  }
  auto onpointerdown() {
    return GlobalEventHandlers_onpointerdown_Get(this._parent);
  }
  void onpointermove(EventHandler onpointermove) {
    GlobalEventHandlers_onpointermove_Set(this._parent, onpointermove);
  }
  auto onpointermove() {
    return GlobalEventHandlers_onpointermove_Get(this._parent);
  }
  void onpointerup(EventHandler onpointerup) {
    GlobalEventHandlers_onpointerup_Set(this._parent, onpointerup);
  }
  auto onpointerup() {
    return GlobalEventHandlers_onpointerup_Get(this._parent);
  }
  void onpointercancel(EventHandler onpointercancel) {
    GlobalEventHandlers_onpointercancel_Set(this._parent, onpointercancel);
  }
  auto onpointercancel() {
    return GlobalEventHandlers_onpointercancel_Get(this._parent);
  }
  void onpointerover(EventHandler onpointerover) {
    GlobalEventHandlers_onpointerover_Set(this._parent, onpointerover);
  }
  auto onpointerover() {
    return GlobalEventHandlers_onpointerover_Get(this._parent);
  }
  void onpointerout(EventHandler onpointerout) {
    GlobalEventHandlers_onpointerout_Set(this._parent, onpointerout);
  }
  auto onpointerout() {
    return GlobalEventHandlers_onpointerout_Get(this._parent);
  }
  void onpointerenter(EventHandler onpointerenter) {
    GlobalEventHandlers_onpointerenter_Set(this._parent, onpointerenter);
  }
  auto onpointerenter() {
    return GlobalEventHandlers_onpointerenter_Get(this._parent);
  }
  void onpointerleave(EventHandler onpointerleave) {
    GlobalEventHandlers_onpointerleave_Set(this._parent, onpointerleave);
  }
  auto onpointerleave() {
    return GlobalEventHandlers_onpointerleave_Get(this._parent);
  }
  void ontouchstart(EventHandler ontouchstart) {
    GlobalEventHandlers_ontouchstart_Set(this._parent, ontouchstart);
  }
  auto ontouchstart() {
    return GlobalEventHandlers_ontouchstart_Get(this._parent);
  }
  void ontouchend(EventHandler ontouchend) {
    GlobalEventHandlers_ontouchend_Set(this._parent, ontouchend);
  }
  auto ontouchend() {
    return GlobalEventHandlers_ontouchend_Get(this._parent);
  }
  void ontouchmove(EventHandler ontouchmove) {
    GlobalEventHandlers_ontouchmove_Set(this._parent, ontouchmove);
  }
  auto ontouchmove() {
    return GlobalEventHandlers_ontouchmove_Get(this._parent);
  }
  void ontouchcancel(EventHandler ontouchcancel) {
    GlobalEventHandlers_ontouchcancel_Set(this._parent, ontouchcancel);
  }
  auto ontouchcancel() {
    return GlobalEventHandlers_ontouchcancel_Get(this._parent);
  }
  void oncopy(EventHandler oncopy) {
    DocumentAndElementEventHandlers_oncopy_Set(this._parent, oncopy);
  }
  auto oncopy() {
    return DocumentAndElementEventHandlers_oncopy_Get(this._parent);
  }
  void oncut(EventHandler oncut) {
    DocumentAndElementEventHandlers_oncut_Set(this._parent, oncut);
  }
  auto oncut() {
    return DocumentAndElementEventHandlers_oncut_Get(this._parent);
  }
  void onpaste(EventHandler onpaste) {
    DocumentAndElementEventHandlers_onpaste_Set(this._parent, onpaste);
  }
  auto onpaste() {
    return DocumentAndElementEventHandlers_onpaste_Get(this._parent);
  }
  auto correspondingElement() {
    return SVGElementInstance_correspondingElement_Get(this._parent);
  }
  auto correspondingUseElement() {
    return SVGElementInstance_correspondingUseElement_Get(this._parent);
  }
  auto dataset() {
    return DOMStringMap(HTMLOrSVGElement_dataset_Get(this._parent));
  }
  void nonce(string nonce) {
    HTMLOrSVGElement_nonce_Set(this._parent, nonce);
  }
  auto nonce() {
    return HTMLOrSVGElement_nonce_Get(this._parent);
  }
  void tabIndex(int tabIndex) {
    HTMLOrSVGElement_tabIndex_Set(this._parent, tabIndex);
  }
  auto tabIndex() {
    return HTMLOrSVGElement_tabIndex_Get(this._parent);
  }
  void focus(scope ref FocusOptions options) {
    HTMLOrSVGElement_focus(this._parent, options.handle);
  }
  void focus() {
    HTMLOrSVGElement_focus_0(this._parent);
  }
  void blur() {
    HTMLOrSVGElement_blur(this._parent);
  }
  auto style() {
    return CSSStyleDeclaration(ElementCSSInlineStyle_style_Get(this._parent));
  }
}
struct SVGEllipseElement {
  nothrow:
  spasm.bindings.svg.SVGGeometryElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGGeometryElement(h);
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
  nothrow:
  spasm.bindings.svg.SVGGraphicsElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGGraphicsElement(h);
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
  nothrow:
  spasm.bindings.svg.SVGGraphicsElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGGraphicsElement(h);
  }
}
struct SVGGeometryElement {
  nothrow:
  spasm.bindings.svg.SVGGraphicsElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGGraphicsElement(h);
  }
  auto pathLength() {
    return SVGAnimatedNumber(SVGGeometryElement_pathLength_Get(this._parent));
  }
  auto isPointInFill(scope ref DOMPointInit point) {
    return SVGGeometryElement_isPointInFill(this._parent, point.handle);
  }
  auto isPointInFill() {
    return SVGGeometryElement_isPointInFill_0(this._parent);
  }
  auto isPointInStroke(scope ref DOMPointInit point) {
    return SVGGeometryElement_isPointInStroke(this._parent, point.handle);
  }
  auto isPointInStroke() {
    return SVGGeometryElement_isPointInStroke_0(this._parent);
  }
  auto getTotalLength() {
    return SVGGeometryElement_getTotalLength(this._parent);
  }
  auto getPointAtLength(float distance) {
    return DOMPoint(SVGGeometryElement_getPointAtLength(this._parent, distance));
  }
}
struct SVGGradientElement {
  nothrow:
  spasm.bindings.svg.SVGElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGElement(h);
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
    return SVGAnimatedString(SVGURIReference_href_Get(this._parent));
  }
}
struct SVGGraphicsElement {
  nothrow:
  spasm.bindings.svg.SVGElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGElement(h);
  }
  auto transform() {
    return SVGAnimatedTransformList(SVGGraphicsElement_transform_Get(this._parent));
  }
  auto getBBox(scope ref SVGBoundingBoxOptions options) {
    return DOMRect(SVGGraphicsElement_getBBox(this._parent, options.handle));
  }
  auto getBBox() {
    return DOMRect(SVGGraphicsElement_getBBox_0(this._parent));
  }
  auto getCTM() {
    return SVGGraphicsElement_getCTM(this._parent);
  }
  auto getScreenCTM() {
    return SVGGraphicsElement_getScreenCTM(this._parent);
  }
  auto requiredExtensions() {
    return SVGStringList(SVGTests_requiredExtensions_Get(this._parent));
  }
  auto systemLanguage() {
    return SVGStringList(SVGTests_systemLanguage_Get(this._parent));
  }
}
struct SVGImageElement {
  nothrow:
  spasm.bindings.svg.SVGGraphicsElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGGraphicsElement(h);
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
  void crossOrigin(scope ref Optional!(string) crossOrigin) {
    SVGImageElement_crossOrigin_Set(this._parent, !crossOrigin.empty, crossOrigin.front);
  }
  auto crossOrigin() {
    return SVGImageElement_crossOrigin_Get(this._parent);
  }
  auto href() {
    return SVGAnimatedString(SVGURIReference_href_Get(this._parent));
  }
}
struct SVGLength {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
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
  void value(float value) {
    SVGLength_value_Set(this.handle, value);
  }
  auto value() {
    return SVGLength_value_Get(this.handle);
  }
  void valueInSpecifiedUnits(float valueInSpecifiedUnits) {
    SVGLength_valueInSpecifiedUnits_Set(this.handle, valueInSpecifiedUnits);
  }
  auto valueInSpecifiedUnits() {
    return SVGLength_valueInSpecifiedUnits_Get(this.handle);
  }
  void valueAsString(string valueAsString) {
    SVGLength_valueAsString_Set(this.handle, valueAsString);
  }
  auto valueAsString() {
    return SVGLength_valueAsString_Get(this.handle);
  }
  void newValueSpecifiedUnits(ushort unitType, float valueInSpecifiedUnits) {
    SVGLength_newValueSpecifiedUnits(this.handle, unitType, valueInSpecifiedUnits);
  }
  void convertToSpecifiedUnits(ushort unitType) {
    SVGLength_convertToSpecifiedUnits(this.handle, unitType);
  }
}
struct SVGLengthList {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto length() {
    return SVGLengthList_length_Get(this.handle);
  }
  auto numberOfItems() {
    return SVGLengthList_numberOfItems_Get(this.handle);
  }
  void clear() {
    SVGLengthList_clear(this.handle);
  }
  auto initialize(scope ref SVGLength newItem) {
    return SVGLength(SVGLengthList_initialize(this.handle, newItem.handle));
  }
  auto getItem(uint index) {
    return SVGLength(SVGLengthList_getItem_getter(this.handle, index));
  }
  auto insertItemBefore(scope ref SVGLength newItem, uint index) {
    return SVGLength(SVGLengthList_insertItemBefore(this.handle, newItem.handle, index));
  }
  auto replaceItem(scope ref SVGLength newItem, uint index) {
    return SVGLength(SVGLengthList_replaceItem(this.handle, newItem.handle, index));
  }
  auto removeItem(uint index) {
    return SVGLength(SVGLengthList_removeItem(this.handle, index));
  }
  auto appendItem(scope ref SVGLength newItem) {
    return SVGLength(SVGLengthList_appendItem(this.handle, newItem.handle));
  }
  void opIndexAssign(scope ref SVGLength newItem, uint index) {
    SVGLengthList_setter__uint_Handle(this.handle, index, newItem.handle);
  }
  void opDispatch(uint index)(scope ref SVGLength newItem) {
    SVGLengthList_setter__uint_Handle(this.handle, index, newItem.handle);
  }
}
struct SVGLineElement {
  nothrow:
  spasm.bindings.svg.SVGGeometryElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGGeometryElement(h);
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
  nothrow:
  spasm.bindings.svg.SVGGradientElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGGradientElement(h);
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
  nothrow:
  spasm.bindings.svg.SVGElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGElement(h);
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
  void orient(string orient) {
    SVGMarkerElement_orient_Set(this._parent, orient);
  }
  auto orient() {
    return SVGMarkerElement_orient_Get(this._parent);
  }
  void setOrientToAuto() {
    SVGMarkerElement_setOrientToAuto(this._parent);
  }
  void setOrientToAngle(scope ref SVGAngle angle) {
    SVGMarkerElement_setOrientToAngle(this._parent, angle.handle);
  }
  auto viewBox() {
    return SVGAnimatedRect(SVGFitToViewBox_viewBox_Get(this._parent));
  }
  auto preserveAspectRatio() {
    return SVGAnimatedPreserveAspectRatio(SVGFitToViewBox_preserveAspectRatio_Get(this._parent));
  }
}
struct SVGMetadataElement {
  nothrow:
  spasm.bindings.svg.SVGElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGElement(h);
  }
}
struct SVGNumber {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  void value(float value) {
    SVGNumber_value_Set(this.handle, value);
  }
  auto value() {
    return SVGNumber_value_Get(this.handle);
  }
}
struct SVGNumberList {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto length() {
    return SVGNumberList_length_Get(this.handle);
  }
  auto numberOfItems() {
    return SVGNumberList_numberOfItems_Get(this.handle);
  }
  void clear() {
    SVGNumberList_clear(this.handle);
  }
  auto initialize(scope ref SVGNumber newItem) {
    return SVGNumber(SVGNumberList_initialize(this.handle, newItem.handle));
  }
  auto getItem(uint index) {
    return SVGNumber(SVGNumberList_getItem_getter(this.handle, index));
  }
  auto insertItemBefore(scope ref SVGNumber newItem, uint index) {
    return SVGNumber(SVGNumberList_insertItemBefore(this.handle, newItem.handle, index));
  }
  auto replaceItem(scope ref SVGNumber newItem, uint index) {
    return SVGNumber(SVGNumberList_replaceItem(this.handle, newItem.handle, index));
  }
  auto removeItem(uint index) {
    return SVGNumber(SVGNumberList_removeItem(this.handle, index));
  }
  auto appendItem(scope ref SVGNumber newItem) {
    return SVGNumber(SVGNumberList_appendItem(this.handle, newItem.handle));
  }
  void opIndexAssign(scope ref SVGNumber newItem, uint index) {
    SVGNumberList_setter__uint_Handle(this.handle, index, newItem.handle);
  }
  void opDispatch(uint index)(scope ref SVGNumber newItem) {
    SVGNumberList_setter__uint_Handle(this.handle, index, newItem.handle);
  }
}
struct SVGPathElement {
  nothrow:
  spasm.bindings.svg.SVGGeometryElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGGeometryElement(h);
  }
}
struct SVGPatternElement {
  nothrow:
  spasm.bindings.svg.SVGElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGElement(h);
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
    return SVGAnimatedRect(SVGFitToViewBox_viewBox_Get(this._parent));
  }
  auto preserveAspectRatio() {
    return SVGAnimatedPreserveAspectRatio(SVGFitToViewBox_preserveAspectRatio_Get(this._parent));
  }
  auto href() {
    return SVGAnimatedString(SVGURIReference_href_Get(this._parent));
  }
}
struct SVGPointList {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto length() {
    return SVGPointList_length_Get(this.handle);
  }
  auto numberOfItems() {
    return SVGPointList_numberOfItems_Get(this.handle);
  }
  void clear() {
    SVGPointList_clear(this.handle);
  }
  auto initialize(scope ref DOMPoint newItem) {
    return DOMPoint(SVGPointList_initialize(this.handle, newItem._parent));
  }
  auto getItem(uint index) {
    return DOMPoint(SVGPointList_getItem_getter(this.handle, index));
  }
  auto insertItemBefore(scope ref DOMPoint newItem, uint index) {
    return DOMPoint(SVGPointList_insertItemBefore(this.handle, newItem._parent, index));
  }
  auto replaceItem(scope ref DOMPoint newItem, uint index) {
    return DOMPoint(SVGPointList_replaceItem(this.handle, newItem._parent, index));
  }
  auto removeItem(uint index) {
    return DOMPoint(SVGPointList_removeItem(this.handle, index));
  }
  auto appendItem(scope ref DOMPoint newItem) {
    return DOMPoint(SVGPointList_appendItem(this.handle, newItem._parent));
  }
  void opIndexAssign(scope ref DOMPoint newItem, uint index) {
    SVGPointList_setter__uint_Handle(this.handle, index, newItem._parent);
  }
  void opDispatch(uint index)(scope ref DOMPoint newItem) {
    SVGPointList_setter__uint_Handle(this.handle, index, newItem._parent);
  }
}
struct SVGPolygonElement {
  nothrow:
  spasm.bindings.svg.SVGGeometryElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGGeometryElement(h);
  }
  auto points() {
    return SVGPointList(SVGAnimatedPoints_points_Get(this._parent));
  }
  auto animatedPoints() {
    return SVGPointList(SVGAnimatedPoints_animatedPoints_Get(this._parent));
  }
}
struct SVGPolylineElement {
  nothrow:
  spasm.bindings.svg.SVGGeometryElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGGeometryElement(h);
  }
  auto points() {
    return SVGPointList(SVGAnimatedPoints_points_Get(this._parent));
  }
  auto animatedPoints() {
    return SVGPointList(SVGAnimatedPoints_animatedPoints_Get(this._parent));
  }
}
struct SVGPreserveAspectRatio {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
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
    SVGPreserveAspectRatio_align_Set(this.handle, align_);
  }
  auto align_() {
    return SVGPreserveAspectRatio_align_Get(this.handle);
  }
  void meetOrSlice(ushort meetOrSlice) {
    SVGPreserveAspectRatio_meetOrSlice_Set(this.handle, meetOrSlice);
  }
  auto meetOrSlice() {
    return SVGPreserveAspectRatio_meetOrSlice_Get(this.handle);
  }
}
struct SVGRadialGradientElement {
  nothrow:
  spasm.bindings.svg.SVGGradientElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGGradientElement(h);
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
  nothrow:
  spasm.bindings.svg.SVGGeometryElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGGeometryElement(h);
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
  nothrow:
  spasm.bindings.svg.SVGGraphicsElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGGraphicsElement(h);
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
  void currentScale(float currentScale) {
    SVGSVGElement_currentScale_Set(this._parent, currentScale);
  }
  auto currentScale() {
    return SVGSVGElement_currentScale_Get(this._parent);
  }
  auto currentTranslate() {
    return DOMPointReadOnly(SVGSVGElement_currentTranslate_Get(this._parent));
  }
  auto getIntersectionList(scope ref DOMRectReadOnly rect, scope ref Optional!(SVGElement) referenceElement) {
    return NodeList(SVGSVGElement_getIntersectionList(this._parent, rect.handle, !referenceElement.empty, referenceElement.front._parent));
  }
  auto getEnclosureList(scope ref DOMRectReadOnly rect, scope ref Optional!(SVGElement) referenceElement) {
    return NodeList(SVGSVGElement_getEnclosureList(this._parent, rect.handle, !referenceElement.empty, referenceElement.front._parent));
  }
  auto checkIntersection(scope ref SVGElement element, scope ref DOMRectReadOnly rect) {
    return SVGSVGElement_checkIntersection(this._parent, element._parent, rect.handle);
  }
  auto checkEnclosure(scope ref SVGElement element, scope ref DOMRectReadOnly rect) {
    return SVGSVGElement_checkEnclosure(this._parent, element._parent, rect.handle);
  }
  void deselectAll() {
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
  auto createSVGTransformFromMatrix(scope ref DOMMatrixReadOnly matrix) {
    return SVGTransform(SVGSVGElement_createSVGTransformFromMatrix(this._parent, matrix.handle));
  }
  auto getElementById(string elementId) {
    return Element(SVGSVGElement_getElementById(this._parent, elementId));
  }
  auto suspendRedraw(uint maxWaitMilliseconds) {
    return SVGSVGElement_suspendRedraw(this._parent, maxWaitMilliseconds);
  }
  void unsuspendRedraw(uint suspendHandleID) {
    SVGSVGElement_unsuspendRedraw(this._parent, suspendHandleID);
  }
  void unsuspendRedrawAll() {
    SVGSVGElement_unsuspendRedrawAll(this._parent);
  }
  void forceRedraw() {
    SVGSVGElement_forceRedraw(this._parent);
  }
  auto viewBox() {
    return SVGAnimatedRect(SVGFitToViewBox_viewBox_Get(this._parent));
  }
  auto preserveAspectRatio() {
    return SVGAnimatedPreserveAspectRatio(SVGFitToViewBox_preserveAspectRatio_Get(this._parent));
  }
  enum ushort SVG_ZOOMANDPAN_UNKNOWN = 0;
  enum ushort SVG_ZOOMANDPAN_DISABLE = 1;
  enum ushort SVG_ZOOMANDPAN_MAGNIFY = 2;
  void zoomAndPan(ushort zoomAndPan) {
    SVGZoomAndPan_zoomAndPan_Set(this._parent, zoomAndPan);
  }
  auto zoomAndPan() {
    return SVGZoomAndPan_zoomAndPan_Get(this._parent);
  }
  void onafterprint(EventHandler onafterprint) {
    WindowEventHandlers_onafterprint_Set(this._parent, onafterprint);
  }
  auto onafterprint() {
    return WindowEventHandlers_onafterprint_Get(this._parent);
  }
  void onbeforeprint(EventHandler onbeforeprint) {
    WindowEventHandlers_onbeforeprint_Set(this._parent, onbeforeprint);
  }
  auto onbeforeprint() {
    return WindowEventHandlers_onbeforeprint_Get(this._parent);
  }
  void onbeforeunload(scope ref OnBeforeUnloadEventHandler onbeforeunload) {
    WindowEventHandlers_onbeforeunload_Set(this._parent, !onbeforeunload.empty, onbeforeunload.front);
  }
  auto onbeforeunload() {
    return WindowEventHandlers_onbeforeunload_Get(this._parent);
  }
  void onhashchange(EventHandler onhashchange) {
    WindowEventHandlers_onhashchange_Set(this._parent, onhashchange);
  }
  auto onhashchange() {
    return WindowEventHandlers_onhashchange_Get(this._parent);
  }
  void onlanguagechange(EventHandler onlanguagechange) {
    WindowEventHandlers_onlanguagechange_Set(this._parent, onlanguagechange);
  }
  auto onlanguagechange() {
    return WindowEventHandlers_onlanguagechange_Get(this._parent);
  }
  void onmessage(EventHandler onmessage) {
    WindowEventHandlers_onmessage_Set(this._parent, onmessage);
  }
  auto onmessage() {
    return WindowEventHandlers_onmessage_Get(this._parent);
  }
  void onmessageerror(EventHandler onmessageerror) {
    WindowEventHandlers_onmessageerror_Set(this._parent, onmessageerror);
  }
  auto onmessageerror() {
    return WindowEventHandlers_onmessageerror_Get(this._parent);
  }
  void onoffline(EventHandler onoffline) {
    WindowEventHandlers_onoffline_Set(this._parent, onoffline);
  }
  auto onoffline() {
    return WindowEventHandlers_onoffline_Get(this._parent);
  }
  void ononline(EventHandler ononline) {
    WindowEventHandlers_ononline_Set(this._parent, ononline);
  }
  auto ononline() {
    return WindowEventHandlers_ononline_Get(this._parent);
  }
  void onpagehide(EventHandler onpagehide) {
    WindowEventHandlers_onpagehide_Set(this._parent, onpagehide);
  }
  auto onpagehide() {
    return WindowEventHandlers_onpagehide_Get(this._parent);
  }
  void onpageshow(EventHandler onpageshow) {
    WindowEventHandlers_onpageshow_Set(this._parent, onpageshow);
  }
  auto onpageshow() {
    return WindowEventHandlers_onpageshow_Get(this._parent);
  }
  void onpopstate(EventHandler onpopstate) {
    WindowEventHandlers_onpopstate_Set(this._parent, onpopstate);
  }
  auto onpopstate() {
    return WindowEventHandlers_onpopstate_Get(this._parent);
  }
  void onrejectionhandled(EventHandler onrejectionhandled) {
    WindowEventHandlers_onrejectionhandled_Set(this._parent, onrejectionhandled);
  }
  auto onrejectionhandled() {
    return WindowEventHandlers_onrejectionhandled_Get(this._parent);
  }
  void onstorage(EventHandler onstorage) {
    WindowEventHandlers_onstorage_Set(this._parent, onstorage);
  }
  auto onstorage() {
    return WindowEventHandlers_onstorage_Get(this._parent);
  }
  void onunhandledrejection(EventHandler onunhandledrejection) {
    WindowEventHandlers_onunhandledrejection_Set(this._parent, onunhandledrejection);
  }
  auto onunhandledrejection() {
    return WindowEventHandlers_onunhandledrejection_Get(this._parent);
  }
  void onunload(EventHandler onunload) {
    WindowEventHandlers_onunload_Set(this._parent, onunload);
  }
  auto onunload() {
    return WindowEventHandlers_onunload_Get(this._parent);
  }
}
struct SVGScriptElement {
  nothrow:
  spasm.bindings.svg.SVGElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGElement(h);
  }
  void type(string type) {
    SVGScriptElement_type_Set(this._parent, type);
  }
  auto type() {
    return SVGScriptElement_type_Get(this._parent);
  }
  void crossOrigin(scope ref Optional!(string) crossOrigin) {
    SVGScriptElement_crossOrigin_Set(this._parent, !crossOrigin.empty, crossOrigin.front);
  }
  auto crossOrigin() {
    return SVGScriptElement_crossOrigin_Get(this._parent);
  }
  auto href() {
    return SVGAnimatedString(SVGURIReference_href_Get(this._parent));
  }
}
struct SVGStopElement {
  nothrow:
  spasm.bindings.svg.SVGElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGElement(h);
  }
  auto offset() {
    return SVGAnimatedNumber(SVGStopElement_offset_Get(this._parent));
  }
}
struct SVGStringList {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto length() {
    return SVGStringList_length_Get(this.handle);
  }
  auto numberOfItems() {
    return SVGStringList_numberOfItems_Get(this.handle);
  }
  void clear() {
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
  void opIndexAssign(string newItem, uint index) {
    SVGStringList_setter__uint_string(this.handle, index, newItem);
  }
  void opDispatch(uint index)(string newItem) {
    SVGStringList_setter__uint_string(this.handle, index, newItem);
  }
}
struct SVGStyleElement {
  nothrow:
  spasm.bindings.svg.SVGElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGElement(h);
  }
  void type(string type) {
    SVGStyleElement_type_Set(this._parent, type);
  }
  auto type() {
    return SVGStyleElement_type_Get(this._parent);
  }
  void media(string media) {
    SVGStyleElement_media_Set(this._parent, media);
  }
  auto media() {
    return SVGStyleElement_media_Get(this._parent);
  }
  void title(string title) {
    SVGStyleElement_title_Set(this._parent, title);
  }
  auto title() {
    return SVGStyleElement_title_Get(this._parent);
  }
}
struct SVGSwitchElement {
  nothrow:
  spasm.bindings.svg.SVGGraphicsElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGGraphicsElement(h);
  }
}
struct SVGSymbolElement {
  nothrow:
  spasm.bindings.svg.SVGGraphicsElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGGraphicsElement(h);
  }
  auto viewBox() {
    return SVGAnimatedRect(SVGFitToViewBox_viewBox_Get(this._parent));
  }
  auto preserveAspectRatio() {
    return SVGAnimatedPreserveAspectRatio(SVGFitToViewBox_preserveAspectRatio_Get(this._parent));
  }
}
struct SVGTSpanElement {
  nothrow:
  spasm.bindings.svg.SVGTextPositioningElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGTextPositioningElement(h);
  }
}
struct SVGTextContentElement {
  nothrow:
  spasm.bindings.svg.SVGGraphicsElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGGraphicsElement(h);
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
  auto getCharNumAtPosition(scope ref DOMPointInit point) {
    return SVGTextContentElement_getCharNumAtPosition(this._parent, point.handle);
  }
  auto getCharNumAtPosition() {
    return SVGTextContentElement_getCharNumAtPosition_0(this._parent);
  }
  void selectSubString(uint charnum, uint nchars) {
    SVGTextContentElement_selectSubString(this._parent, charnum, nchars);
  }
}
struct SVGTextElement {
  nothrow:
  spasm.bindings.svg.SVGTextPositioningElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGTextPositioningElement(h);
  }
}
struct SVGTextPathElement {
  nothrow:
  spasm.bindings.svg.SVGTextContentElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGTextContentElement(h);
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
    return SVGAnimatedString(SVGURIReference_href_Get(this._parent));
  }
}
struct SVGTextPositioningElement {
  nothrow:
  spasm.bindings.svg.SVGTextContentElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGTextContentElement(h);
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
  nothrow:
  spasm.bindings.svg.SVGElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGElement(h);
  }
}
struct SVGTransform {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
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
  void setMatrix(scope ref DOMMatrixReadOnly matrix) {
    SVGTransform_setMatrix(this.handle, matrix.handle);
  }
  void setTranslate(float tx, float ty) {
    SVGTransform_setTranslate(this.handle, tx, ty);
  }
  void setScale(float sx, float sy) {
    SVGTransform_setScale(this.handle, sx, sy);
  }
  void setRotate(float angle, float cx, float cy) {
    SVGTransform_setRotate(this.handle, angle, cx, cy);
  }
  void setSkewX(float angle) {
    SVGTransform_setSkewX(this.handle, angle);
  }
  void setSkewY(float angle) {
    SVGTransform_setSkewY(this.handle, angle);
  }
}
struct SVGTransformList {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto length() {
    return SVGTransformList_length_Get(this.handle);
  }
  auto numberOfItems() {
    return SVGTransformList_numberOfItems_Get(this.handle);
  }
  void clear() {
    SVGTransformList_clear(this.handle);
  }
  auto initialize(scope ref SVGTransform newItem) {
    return SVGTransform(SVGTransformList_initialize(this.handle, newItem.handle));
  }
  auto getItem(uint index) {
    return SVGTransform(SVGTransformList_getItem_getter(this.handle, index));
  }
  auto insertItemBefore(scope ref SVGTransform newItem, uint index) {
    return SVGTransform(SVGTransformList_insertItemBefore(this.handle, newItem.handle, index));
  }
  auto replaceItem(scope ref SVGTransform newItem, uint index) {
    return SVGTransform(SVGTransformList_replaceItem(this.handle, newItem.handle, index));
  }
  auto removeItem(uint index) {
    return SVGTransform(SVGTransformList_removeItem(this.handle, index));
  }
  auto appendItem(scope ref SVGTransform newItem) {
    return SVGTransform(SVGTransformList_appendItem(this.handle, newItem.handle));
  }
  void opIndexAssign(scope ref SVGTransform newItem, uint index) {
    SVGTransformList_setter__uint_Handle(this.handle, index, newItem.handle);
  }
  void opDispatch(uint index)(scope ref SVGTransform newItem) {
    SVGTransformList_setter__uint_Handle(this.handle, index, newItem.handle);
  }
  auto createSVGTransformFromMatrix(scope ref DOMMatrixReadOnly matrix) {
    return SVGTransform(SVGTransformList_createSVGTransformFromMatrix(this.handle, matrix.handle));
  }
  auto consolidate() {
    return SVGTransformList_consolidate(this.handle);
  }
}
struct SVGUnitTypes {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  enum ushort SVG_UNIT_TYPE_UNKNOWN = 0;
  enum ushort SVG_UNIT_TYPE_USERSPACEONUSE = 1;
  enum ushort SVG_UNIT_TYPE_OBJECTBOUNDINGBOX = 2;
}
struct SVGUnknownElement {
  nothrow:
  spasm.bindings.svg.SVGGraphicsElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGGraphicsElement(h);
  }
}
struct SVGUseElement {
  nothrow:
  spasm.bindings.svg.SVGGraphicsElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGGraphicsElement(h);
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
    return SVGAnimatedString(SVGURIReference_href_Get(this._parent));
  }
}
struct SVGUseElementShadowRoot {
  nothrow:
  spasm.bindings.dom.ShadowRoot _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .ShadowRoot(h);
  }
}
struct SVGViewElement {
  nothrow:
  spasm.bindings.svg.SVGElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGElement(h);
  }
  auto viewBox() {
    return SVGAnimatedRect(SVGFitToViewBox_viewBox_Get(this._parent));
  }
  auto preserveAspectRatio() {
    return SVGAnimatedPreserveAspectRatio(SVGFitToViewBox_preserveAspectRatio_Get(this._parent));
  }
  enum ushort SVG_ZOOMANDPAN_UNKNOWN = 0;
  enum ushort SVG_ZOOMANDPAN_DISABLE = 1;
  enum ushort SVG_ZOOMANDPAN_MAGNIFY = 2;
  void zoomAndPan(ushort zoomAndPan) {
    SVGZoomAndPan_zoomAndPan_Set(this._parent, zoomAndPan);
  }
  auto zoomAndPan() {
    return SVGZoomAndPan_zoomAndPan_Get(this._parent);
  }
}
struct ShadowAnimation {
  nothrow:
  Animation _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Animation(h);
  }
  auto sourceAnimation() {
    return Animation(ShadowAnimation_sourceAnimation_Get(this._parent));
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
extern (C) bool SVGGeometryElement_isPointInFill_0(Handle);
extern (C) bool SVGGeometryElement_isPointInStroke(Handle, Handle);
extern (C) bool SVGGeometryElement_isPointInStroke_0(Handle);
extern (C) float SVGGeometryElement_getTotalLength(Handle);
extern (C) Handle SVGGeometryElement_getPointAtLength(Handle, float);
extern (C) Handle SVGGradientElement_gradientUnits_Get(Handle);
extern (C) Handle SVGGradientElement_gradientTransform_Get(Handle);
extern (C) Handle SVGGradientElement_spreadMethod_Get(Handle);
extern (C) Handle SVGGraphicsElement_transform_Get(Handle);
extern (C) Handle SVGGraphicsElement_getBBox(Handle, Handle);
extern (C) Handle SVGGraphicsElement_getBBox_0(Handle);
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
extern (C) int SVGTextContentElement_getCharNumAtPosition_0(Handle);
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
extern (C) void SVGZoomAndPan_zoomAndPan_Set(Handle, ushort);
extern (C) ushort SVGZoomAndPan_zoomAndPan_Get(Handle);
extern (C) Handle ShadowAnimation_sourceAnimation_Get(Handle);