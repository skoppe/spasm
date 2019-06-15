module spasm.bindings.html;

import spasm.types;
import spasm.bindings.clipboard;
import spasm.bindings.common;
import spasm.bindings.cssom;
import spasm.bindings.dom;
import spasm.bindings.domhighrestimestamp;
import spasm.bindings.encoding;
import spasm.bindings.fetch;
import spasm.bindings.fileapi;
import spasm.bindings.geometry;
import spasm.bindings.indexeddb;
import spasm.bindings.mediasource;
import spasm.bindings.mediastream;
import spasm.bindings.notifications;
import spasm.bindings.permissions;
import spasm.bindings.serviceworker;
import spasm.bindings.streams;
import spasm.bindings.svg;
import spasm.bindings.uievents;
import spasm.bindings.url;
import spasm.bindings.vibration;
import spasm.bindings.webappsec;
import spasm.bindings.webgl2;
import spasm.bindings.webgl;
import spasm.bindings.xhr;

@safe:
nothrow:

struct ApplicationCache {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
  }
  enum ushort UNCACHED = 0;
  enum ushort IDLE = 1;
  enum ushort CHECKING = 2;
  enum ushort DOWNLOADING = 3;
  enum ushort UPDATEREADY = 4;
  enum ushort OBSOLETE = 5;
  auto status() {
    return ApplicationCache_status_Get(this._parent);
  }
  void update() {
    ApplicationCache_update(this._parent);
  }
  void abort() {
    ApplicationCache_abort(this._parent);
  }
  void swapCache() {
    ApplicationCache_swapCache(this._parent);
  }
  void onchecking(EventHandler onchecking) {
    ApplicationCache_onchecking_Set(this._parent, onchecking);
  }
  auto onchecking() {
    return ApplicationCache_onchecking_Get(this._parent);
  }
  void onerror(EventHandler onerror) {
    ApplicationCache_onerror_Set(this._parent, onerror);
  }
  auto onerror() {
    return ApplicationCache_onerror_Get(this._parent);
  }
  void onnoupdate(EventHandler onnoupdate) {
    ApplicationCache_onnoupdate_Set(this._parent, onnoupdate);
  }
  auto onnoupdate() {
    return ApplicationCache_onnoupdate_Get(this._parent);
  }
  void ondownloading(EventHandler ondownloading) {
    ApplicationCache_ondownloading_Set(this._parent, ondownloading);
  }
  auto ondownloading() {
    return ApplicationCache_ondownloading_Get(this._parent);
  }
  void onprogress(EventHandler onprogress) {
    ApplicationCache_onprogress_Set(this._parent, onprogress);
  }
  auto onprogress() {
    return ApplicationCache_onprogress_Get(this._parent);
  }
  void onupdateready(EventHandler onupdateready) {
    ApplicationCache_onupdateready_Set(this._parent, onupdateready);
  }
  auto onupdateready() {
    return ApplicationCache_onupdateready_Get(this._parent);
  }
  void oncached(EventHandler oncached) {
    ApplicationCache_oncached_Set(this._parent, oncached);
  }
  auto oncached() {
    return ApplicationCache_oncached_Get(this._parent);
  }
  void onobsolete(EventHandler onobsolete) {
    ApplicationCache_onobsolete_Set(this._parent, onobsolete);
  }
  auto onobsolete() {
    return ApplicationCache_onobsolete_Get(this._parent);
  }
}
struct AssignedNodesOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return AssignedNodesOptions(spasm_add__object());
  }
  void flatten(bool flatten) {
    AssignedNodesOptions_flatten_Set(this.handle, flatten);
  }
  auto flatten() {
    return AssignedNodesOptions_flatten_Get(this.handle);
  }
}
struct AudioTrack {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto id() {
    return AudioTrack_id_Get(this.handle);
  }
  auto kind() {
    return AudioTrack_kind_Get(this.handle);
  }
  auto label() {
    return AudioTrack_label_Get(this.handle);
  }
  auto language() {
    return AudioTrack_language_Get(this.handle);
  }
  void enabled(bool enabled) {
    AudioTrack_enabled_Set(this.handle, enabled);
  }
  auto enabled() {
    return AudioTrack_enabled_Get(this.handle);
  }
  auto sourceBuffer() {
    return AudioTrack_sourceBuffer_Get(this.handle);
  }
}
struct AudioTrackList {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
  }
  auto length() {
    return AudioTrackList_length_Get(this._parent);
  }
  auto opIndex(uint index) {
    return AudioTrack(AudioTrackList_getter__uint(this._parent, index));
  }
  auto opDispatch(uint index)() {
    return AudioTrack(AudioTrackList_getter__uint(this._parent, index));
  }
  auto getTrackById(string id) {
    return AudioTrackList_getTrackById(this._parent, id);
  }
  void onchange(EventHandler onchange) {
    AudioTrackList_onchange_Set(this._parent, onchange);
  }
  auto onchange() {
    return AudioTrackList_onchange_Get(this._parent);
  }
  void onaddtrack(EventHandler onaddtrack) {
    AudioTrackList_onaddtrack_Set(this._parent, onaddtrack);
  }
  auto onaddtrack() {
    return AudioTrackList_onaddtrack_Get(this._parent);
  }
  void onremovetrack(EventHandler onremovetrack) {
    AudioTrackList_onremovetrack_Set(this._parent, onremovetrack);
  }
  auto onremovetrack() {
    return AudioTrackList_onremovetrack_Get(this._parent);
  }
}
struct BarProp {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto visible() {
    return BarProp_visible_Get(this.handle);
  }
}
struct BeforeUnloadEvent {
  nothrow:
  spasm.bindings.dom.Event _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Event(h);
  }
  void returnValue(string returnValue) {
    BeforeUnloadEvent_returnValue_Set(this._parent, returnValue);
  }
  auto returnValue() {
    return BeforeUnloadEvent_returnValue_Get(this._parent);
  }
}
enum BinaryType {
  blob,
  arraybuffer
}
alias BlobCallback = void delegate(Optional!(Blob));
struct BroadcastChannel {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
  }
  auto name() {
    return BroadcastChannel_name_Get(this._parent);
  }
  void postMessage(T0)(scope auto ref T0 message) {
    Handle _handle_message = getOrCreateHandle(message);
    BroadcastChannel_postMessage(this._parent, _handle_message);
    dropHandle!(T0)(_handle_message);
  }
  void close() {
    BroadcastChannel_close(this._parent);
  }
  void onmessage(EventHandler onmessage) {
    BroadcastChannel_onmessage_Set(this._parent, onmessage);
  }
  auto onmessage() {
    return BroadcastChannel_onmessage_Get(this._parent);
  }
  void onmessageerror(EventHandler onmessageerror) {
    BroadcastChannel_onmessageerror_Set(this._parent, onmessageerror);
  }
  auto onmessageerror() {
    return BroadcastChannel_onmessageerror_Get(this._parent);
  }
}
enum CanPlayTypeResult {
  none,
  maybe,
  probably
}
enum CanvasDirection {
  ltr,
  rtl,
  inherit
}
enum CanvasFillRule {
  nonzero,
  evenodd
}
struct CanvasGradient {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  void addColorStop(double offset, string color) {
    CanvasGradient_addColorStop(this.handle, offset, color);
  }
}
alias CanvasImageSource = SumType!(HTMLOrSVGImageElement, HTMLVideoElement, HTMLCanvasElement, ImageBitmap, OffscreenCanvas);
enum CanvasLineCap {
  butt,
  round,
  square
}
enum CanvasLineJoin {
  round,
  bevel,
  miter
}
struct CanvasPattern {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  void setTransform(scope ref DOMMatrix2DInit transform) {
    CanvasPattern_setTransform(this.handle, transform.handle);
  }
  void setTransform() {
    CanvasPattern_setTransform_0(this.handle);
  }
}
struct CanvasRenderingContext2D {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto canvas() {
    return HTMLCanvasElement(CanvasRenderingContext2D_canvas_Get(this.handle));
  }
  void closePath() {
    CanvasPath_closePath(this.handle);
  }
  void moveTo(double x, double y) {
    CanvasPath_moveTo(this.handle, x, y);
  }
  void lineTo(double x, double y) {
    CanvasPath_lineTo(this.handle, x, y);
  }
  void quadraticCurveTo(double cpx, double cpy, double x, double y) {
    CanvasPath_quadraticCurveTo(this.handle, cpx, cpy, x, y);
  }
  void bezierCurveTo(double cp1x, double cp1y, double cp2x, double cp2y, double x, double y) {
    CanvasPath_bezierCurveTo(this.handle, cp1x, cp1y, cp2x, cp2y, x, y);
  }
  void arcTo(double x1, double y1, double x2, double y2, double radius) {
    CanvasPath_arcTo(this.handle, x1, y1, x2, y2, radius);
  }
  void rect(double x, double y, double w, double h) {
    CanvasPath_rect(this.handle, x, y, w, h);
  }
  void arc(double x, double y, double radius, double startAngle, double endAngle, bool anticlockwise /* = false */) {
    CanvasPath_arc(this.handle, x, y, radius, startAngle, endAngle, anticlockwise);
  }
  void arc(double x, double y, double radius, double startAngle, double endAngle) {
    CanvasPath_arc_0(this.handle, x, y, radius, startAngle, endAngle);
  }
  void ellipse(double x, double y, double radiusX, double radiusY, double rotation, double startAngle, double endAngle, bool anticlockwise /* = false */) {
    CanvasPath_ellipse(this.handle, x, y, radiusX, radiusY, rotation, startAngle, endAngle, anticlockwise);
  }
  void ellipse(double x, double y, double radiusX, double radiusY, double rotation, double startAngle, double endAngle) {
    CanvasPath_ellipse_0(this.handle, x, y, radiusX, radiusY, rotation, startAngle, endAngle);
  }
  void font(string font) {
    CanvasTextDrawingStyles_font_Set(this.handle, font);
  }
  auto font() {
    return CanvasTextDrawingStyles_font_Get(this.handle);
  }
  void textAlign(CanvasTextAlign textAlign) {
    CanvasTextDrawingStyles_textAlign_Set(this.handle, textAlign);
  }
  auto textAlign() {
    return CanvasTextDrawingStyles_textAlign_Get(this.handle);
  }
  void textBaseline(CanvasTextBaseline textBaseline) {
    CanvasTextDrawingStyles_textBaseline_Set(this.handle, textBaseline);
  }
  auto textBaseline() {
    return CanvasTextDrawingStyles_textBaseline_Get(this.handle);
  }
  void direction(CanvasDirection direction) {
    CanvasTextDrawingStyles_direction_Set(this.handle, direction);
  }
  auto direction() {
    return CanvasTextDrawingStyles_direction_Get(this.handle);
  }
  void lineWidth(double lineWidth) {
    CanvasPathDrawingStyles_lineWidth_Set(this.handle, lineWidth);
  }
  auto lineWidth() {
    return CanvasPathDrawingStyles_lineWidth_Get(this.handle);
  }
  void lineCap(CanvasLineCap lineCap) {
    CanvasPathDrawingStyles_lineCap_Set(this.handle, lineCap);
  }
  auto lineCap() {
    return CanvasPathDrawingStyles_lineCap_Get(this.handle);
  }
  void lineJoin(CanvasLineJoin lineJoin) {
    CanvasPathDrawingStyles_lineJoin_Set(this.handle, lineJoin);
  }
  auto lineJoin() {
    return CanvasPathDrawingStyles_lineJoin_Get(this.handle);
  }
  void miterLimit(double miterLimit) {
    CanvasPathDrawingStyles_miterLimit_Set(this.handle, miterLimit);
  }
  auto miterLimit() {
    return CanvasPathDrawingStyles_miterLimit_Get(this.handle);
  }
  void setLineDash(scope ref Sequence!(double) segments) {
    CanvasPathDrawingStyles_setLineDash(this.handle, segments.handle);
  }
  auto getLineDash() {
    return Sequence!(double)(CanvasPathDrawingStyles_getLineDash(this.handle));
  }
  void lineDashOffset(double lineDashOffset) {
    CanvasPathDrawingStyles_lineDashOffset_Set(this.handle, lineDashOffset);
  }
  auto lineDashOffset() {
    return CanvasPathDrawingStyles_lineDashOffset_Get(this.handle);
  }
  auto createImageData(int sw, int sh) {
    return ImageData(CanvasImageData_createImageData__int_int(this.handle, sw, sh));
  }
  auto createImageData(scope ref ImageData imagedata) {
    return ImageData(CanvasImageData_createImageData__Handle(this.handle, imagedata.handle));
  }
  auto getImageData(int sx, int sy, int sw, int sh) {
    return ImageData(CanvasImageData_getImageData(this.handle, sx, sy, sw, sh));
  }
  void putImageData(scope ref ImageData imagedata, int dx, int dy) {
    CanvasImageData_putImageData__Handle_int_int(this.handle, imagedata.handle, dx, dy);
  }
  void putImageData(scope ref ImageData imagedata, int dx, int dy, int dirtyX, int dirtyY, int dirtyWidth, int dirtyHeight) {
    CanvasImageData_putImageData__Handle_int_int_int_int_int_int(this.handle, imagedata.handle, dx, dy, dirtyX, dirtyY, dirtyWidth, dirtyHeight);
  }
  void drawImage(scope ref CanvasImageSource image, double dx, double dy) {
    CanvasDrawImage_drawImage__CanvasImageSource_double_double(this.handle, image, dx, dy);
  }
  void drawImage(scope ref CanvasImageSource image, double dx, double dy, double dw, double dh) {
    CanvasDrawImage_drawImage__CanvasImageSource_double_double_double_double(this.handle, image, dx, dy, dw, dh);
  }
  void drawImage(scope ref CanvasImageSource image, double sx, double sy, double sw, double sh, double dx, double dy, double dw, double dh) {
    CanvasDrawImage_drawImage__CanvasImageSource_double_double_double_double_double_double_double_double(this.handle, image, sx, sy, sw, sh, dx, dy, dw, dh);
  }
  void fillText(string text, double x, double y, double maxWidth) {
    CanvasText_fillText(this.handle, text, x, y, maxWidth);
  }
  void fillText(string text, double x, double y) {
    CanvasText_fillText_0(this.handle, text, x, y);
  }
  void strokeText(string text, double x, double y, double maxWidth) {
    CanvasText_strokeText(this.handle, text, x, y, maxWidth);
  }
  void strokeText(string text, double x, double y) {
    CanvasText_strokeText_0(this.handle, text, x, y);
  }
  auto measureText(string text) {
    return TextMetrics(CanvasText_measureText(this.handle, text));
  }
  void drawFocusIfNeeded(scope ref Element element) {
    CanvasUserInterface_drawFocusIfNeeded__Handle(this.handle, element._parent);
  }
  void drawFocusIfNeeded(scope ref Path2D path, scope ref Element element) {
    CanvasUserInterface_drawFocusIfNeeded__Handle_Handle(this.handle, path.handle, element._parent);
  }
  void scrollPathIntoView() {
    CanvasUserInterface_scrollPathIntoView__(this.handle);
  }
  void scrollPathIntoView(scope ref Path2D path) {
    CanvasUserInterface_scrollPathIntoView__Handle(this.handle, path.handle);
  }
  void beginPath() {
    CanvasDrawPath_beginPath(this.handle);
  }
  void fill(CanvasFillRule fillRule /* = "nonzero" */) {
    CanvasDrawPath_fill__CanvasFillRule(this.handle, fillRule);
  }
  void fill() {
    CanvasDrawPath_fill_0_(this.handle);
  }
  void fill(scope ref Path2D path, CanvasFillRule fillRule /* = "nonzero" */) {
    CanvasDrawPath_fill__Handle_CanvasFillRule(this.handle, path.handle, fillRule);
  }
  void fill(scope ref Path2D path) {
    CanvasDrawPath_fill_0_Handle(this.handle, path.handle);
  }
  void stroke() {
    CanvasDrawPath_stroke__(this.handle);
  }
  void stroke(scope ref Path2D path) {
    CanvasDrawPath_stroke__Handle(this.handle, path.handle);
  }
  void clip(CanvasFillRule fillRule /* = "nonzero" */) {
    CanvasDrawPath_clip__CanvasFillRule(this.handle, fillRule);
  }
  void clip() {
    CanvasDrawPath_clip_0_(this.handle);
  }
  void clip(scope ref Path2D path, CanvasFillRule fillRule /* = "nonzero" */) {
    CanvasDrawPath_clip__Handle_CanvasFillRule(this.handle, path.handle, fillRule);
  }
  void clip(scope ref Path2D path) {
    CanvasDrawPath_clip_0_Handle(this.handle, path.handle);
  }
  auto isPointInPath(double x, double y, CanvasFillRule fillRule /* = "nonzero" */) {
    return CanvasDrawPath_isPointInPath__double_double_CanvasFillRule(this.handle, x, y, fillRule);
  }
  auto isPointInPath(double x, double y) {
    return CanvasDrawPath_isPointInPath_0_double_double(this.handle, x, y);
  }
  auto isPointInPath(scope ref Path2D path, double x, double y, CanvasFillRule fillRule /* = "nonzero" */) {
    return CanvasDrawPath_isPointInPath__Handle_double_double_CanvasFillRule(this.handle, path.handle, x, y, fillRule);
  }
  auto isPointInPath(scope ref Path2D path, double x, double y) {
    return CanvasDrawPath_isPointInPath_0_Handle_double_double(this.handle, path.handle, x, y);
  }
  auto isPointInStroke(double x, double y) {
    return CanvasDrawPath_isPointInStroke__double_double(this.handle, x, y);
  }
  auto isPointInStroke(scope ref Path2D path, double x, double y) {
    return CanvasDrawPath_isPointInStroke__Handle_double_double(this.handle, path.handle, x, y);
  }
  void clearRect(double x, double y, double w, double h) {
    CanvasRect_clearRect(this.handle, x, y, w, h);
  }
  void fillRect(double x, double y, double w, double h) {
    CanvasRect_fillRect(this.handle, x, y, w, h);
  }
  void strokeRect(double x, double y, double w, double h) {
    CanvasRect_strokeRect(this.handle, x, y, w, h);
  }
  void filter(string filter) {
    CanvasFilters_filter_Set(this.handle, filter);
  }
  auto filter() {
    return CanvasFilters_filter_Get(this.handle);
  }
  void shadowOffsetX(double shadowOffsetX) {
    CanvasShadowStyles_shadowOffsetX_Set(this.handle, shadowOffsetX);
  }
  auto shadowOffsetX() {
    return CanvasShadowStyles_shadowOffsetX_Get(this.handle);
  }
  void shadowOffsetY(double shadowOffsetY) {
    CanvasShadowStyles_shadowOffsetY_Set(this.handle, shadowOffsetY);
  }
  auto shadowOffsetY() {
    return CanvasShadowStyles_shadowOffsetY_Get(this.handle);
  }
  void shadowBlur(double shadowBlur) {
    CanvasShadowStyles_shadowBlur_Set(this.handle, shadowBlur);
  }
  auto shadowBlur() {
    return CanvasShadowStyles_shadowBlur_Get(this.handle);
  }
  void shadowColor(string shadowColor) {
    CanvasShadowStyles_shadowColor_Set(this.handle, shadowColor);
  }
  auto shadowColor() {
    return CanvasShadowStyles_shadowColor_Get(this.handle);
  }
  void strokeStyle(scope ref SumType!(string, CanvasGradient, CanvasPattern) strokeStyle) {
    CanvasFillStrokeStyles_strokeStyle_Set(this.handle, strokeStyle);
  }
  auto strokeStyle() {
    return CanvasFillStrokeStyles_strokeStyle_Get(this.handle);
  }
  void fillStyle(scope ref SumType!(string, CanvasGradient, CanvasPattern) fillStyle) {
    CanvasFillStrokeStyles_fillStyle_Set(this.handle, fillStyle);
  }
  auto fillStyle() {
    return CanvasFillStrokeStyles_fillStyle_Get(this.handle);
  }
  auto createLinearGradient(double x0, double y0, double x1, double y1) {
    return CanvasGradient(CanvasFillStrokeStyles_createLinearGradient(this.handle, x0, y0, x1, y1));
  }
  auto createRadialGradient(double x0, double y0, double r0, double x1, double y1, double r1) {
    return CanvasGradient(CanvasFillStrokeStyles_createRadialGradient(this.handle, x0, y0, r0, x1, y1, r1));
  }
  auto createPattern(scope ref CanvasImageSource image, string repetition) {
    return CanvasFillStrokeStyles_createPattern(this.handle, image, repetition);
  }
  void imageSmoothingEnabled(bool imageSmoothingEnabled) {
    CanvasImageSmoothing_imageSmoothingEnabled_Set(this.handle, imageSmoothingEnabled);
  }
  auto imageSmoothingEnabled() {
    return CanvasImageSmoothing_imageSmoothingEnabled_Get(this.handle);
  }
  void imageSmoothingQuality(ImageSmoothingQuality imageSmoothingQuality) {
    CanvasImageSmoothing_imageSmoothingQuality_Set(this.handle, imageSmoothingQuality);
  }
  auto imageSmoothingQuality() {
    return CanvasImageSmoothing_imageSmoothingQuality_Get(this.handle);
  }
  void globalAlpha(double globalAlpha) {
    CanvasCompositing_globalAlpha_Set(this.handle, globalAlpha);
  }
  auto globalAlpha() {
    return CanvasCompositing_globalAlpha_Get(this.handle);
  }
  void globalCompositeOperation(string globalCompositeOperation) {
    CanvasCompositing_globalCompositeOperation_Set(this.handle, globalCompositeOperation);
  }
  auto globalCompositeOperation() {
    return CanvasCompositing_globalCompositeOperation_Get(this.handle);
  }
  void scale(double x, double y) {
    CanvasTransform_scale(this.handle, x, y);
  }
  void rotate(double angle) {
    CanvasTransform_rotate(this.handle, angle);
  }
  void translate(double x, double y) {
    CanvasTransform_translate(this.handle, x, y);
  }
  void transform(double a, double b, double c, double d, double e, double f) {
    CanvasTransform_transform(this.handle, a, b, c, d, e, f);
  }
  auto getTransform() {
    return DOMMatrix(CanvasTransform_getTransform(this.handle));
  }
  void setTransform(double a, double b, double c, double d, double e, double f) {
    CanvasTransform_setTransform__double_double_double_double_double_double(this.handle, a, b, c, d, e, f);
  }
  void setTransform(scope ref DOMMatrix2DInit transform) {
    CanvasTransform_setTransform__Handle(this.handle, transform.handle);
  }
  void setTransform() {
    CanvasTransform_setTransform_0(this.handle);
  }
  void resetTransform() {
    CanvasTransform_resetTransform(this.handle);
  }
  void save() {
    CanvasState_save(this.handle);
  }
  void restore() {
    CanvasState_restore(this.handle);
  }
}
struct CanvasRenderingContext2DSettings {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return CanvasRenderingContext2DSettings(spasm_add__object());
  }
  void alpha(bool alpha) {
    CanvasRenderingContext2DSettings_alpha_Set(this.handle, alpha);
  }
  auto alpha() {
    return CanvasRenderingContext2DSettings_alpha_Get(this.handle);
  }
}
enum CanvasTextAlign {
  start,
  end,
  left,
  right,
  center
}
enum CanvasTextBaseline {
  top,
  hanging,
  middle,
  alphabetic,
  ideographic,
  bottom
}
struct CloseEvent {
  nothrow:
  spasm.bindings.dom.Event _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Event(h);
  }
  auto wasClean() {
    return CloseEvent_wasClean_Get(this._parent);
  }
  auto code() {
    return CloseEvent_code_Get(this._parent);
  }
  auto reason() {
    return CloseEvent_reason_Get(this._parent);
  }
}
struct CloseEventInit {
  nothrow:
  spasm.bindings.dom.EventInit _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventInit(h);
  }
  static auto create() {
    return CloseEventInit(spasm_add__object());
  }
  void wasClean(bool wasClean) {
    CloseEventInit_wasClean_Set(this._parent, wasClean);
  }
  auto wasClean() {
    return CloseEventInit_wasClean_Get(this._parent);
  }
  void code(ushort code) {
    CloseEventInit_code_Set(this._parent, code);
  }
  auto code() {
    return CloseEventInit_code_Get(this._parent);
  }
  void reason(string reason) {
    CloseEventInit_reason_Set(this._parent, reason);
  }
  auto reason() {
    return CloseEventInit_reason_Get(this._parent);
  }
}
enum ColorSpaceConversion {
  none,
  default_
}
alias CustomElementConstructor = Any delegate();
struct CustomElementRegistry {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  void define(string name, CustomElementConstructor constructor, scope ref ElementDefinitionOptions options) {
    CustomElementRegistry_define(this.handle, name, constructor, options.handle);
  }
  void define(string name, CustomElementConstructor constructor) {
    CustomElementRegistry_define_0(this.handle, name, constructor);
  }
  auto get(string name) {
    return Any(CustomElementRegistry_get(this.handle, name));
  }
  auto whenDefined(string name) {
    return Promise!(void)(CustomElementRegistry_whenDefined(this.handle, name));
  }
  void upgrade(scope ref Node root) {
    CustomElementRegistry_upgrade(this.handle, root._parent);
  }
}
struct DOMStringList {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto length() {
    return DOMStringList_length_Get(this.handle);
  }
  auto item(uint index) {
    return DOMStringList_item_getter(this.handle, index);
  }
  auto contains(string string) {
    return DOMStringList_contains(this.handle, string);
  }
}
struct DOMStringMap {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto opIndex(string name) {
    return DOMStringMap_getter__string(this.handle, name);
  }
  auto opDispatch(string name)() {
    return DOMStringMap_getter__string(this.handle, name);
  }
  void opIndexAssign(string value, string name) {
    DOMStringMap_setter__string_string(this.handle, name, value);
  }
  void opDispatch(string name)(string value) {
    DOMStringMap_setter__string_string(this.handle, name, value);
  }
  void remove(string name) {
    DOMStringMap_deleter(this.handle, name);
  }
}
struct DataTransfer {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  void dropEffect(string dropEffect) {
    DataTransfer_dropEffect_Set(this.handle, dropEffect);
  }
  auto dropEffect() {
    return DataTransfer_dropEffect_Get(this.handle);
  }
  void effectAllowed(string effectAllowed) {
    DataTransfer_effectAllowed_Set(this.handle, effectAllowed);
  }
  auto effectAllowed() {
    return DataTransfer_effectAllowed_Get(this.handle);
  }
  auto items() {
    return DataTransferItemList(DataTransfer_items_Get(this.handle));
  }
  void setDragImage(scope ref Element image, int x, int y) {
    DataTransfer_setDragImage(this.handle, image._parent, x, y);
  }
  auto types() {
    return FrozenArray!(string)(DataTransfer_types_Get(this.handle));
  }
  auto getData(string format) {
    return DataTransfer_getData(this.handle, format);
  }
  void setData(string format, string data) {
    DataTransfer_setData(this.handle, format, data);
  }
  void clearData(string format) {
    DataTransfer_clearData(this.handle, format);
  }
  void clearData() {
    DataTransfer_clearData_0(this.handle);
  }
  auto files() {
    return FileList(DataTransfer_files_Get(this.handle));
  }
}
struct DataTransferItem {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto kind() {
    return DataTransferItem_kind_Get(this.handle);
  }
  auto type() {
    return DataTransferItem_type_Get(this.handle);
  }
  void getAsString(scope ref Optional!(FunctionStringCallback) _callback) {
    DataTransferItem_getAsString(this.handle, !_callback.empty, _callback.front);
  }
  auto getAsFile() {
    return DataTransferItem_getAsFile(this.handle);
  }
}
struct DataTransferItemList {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto length() {
    return DataTransferItemList_length_Get(this.handle);
  }
  auto opIndex(uint index) {
    return DataTransferItem(DataTransferItemList_getter__uint(this.handle, index));
  }
  auto opDispatch(uint index)() {
    return DataTransferItem(DataTransferItemList_getter__uint(this.handle, index));
  }
  auto add(string data, string type) {
    return DataTransferItemList_add__string_string(this.handle, data, type);
  }
  auto add(scope ref File data) {
    return DataTransferItemList_add__Handle(this.handle, data._parent);
  }
  void remove(uint index) {
    DataTransferItemList_remove(this.handle, index);
  }
  void clear() {
    DataTransferItemList_clear(this.handle);
  }
}
struct DedicatedWorkerGlobalScope {
  nothrow:
  spasm.bindings.html.WorkerGlobalScope _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .WorkerGlobalScope(h);
  }
  auto name() {
    return DedicatedWorkerGlobalScope_name_Get(this._parent);
  }
  void postMessage(T0)(scope auto ref T0 message, scope ref Sequence!(JsObject) transfer) {
    Handle _handle_message = getOrCreateHandle(message);
    DedicatedWorkerGlobalScope_postMessage__Handle_sequence(this._parent, _handle_message, transfer.handle);
    dropHandle!(T0)(_handle_message);
  }
  void postMessage(T0)(scope auto ref T0 message, scope ref PostMessageOptions options) {
    Handle _handle_message = getOrCreateHandle(message);
    DedicatedWorkerGlobalScope_postMessage__Handle_Handle(this._parent, _handle_message, options.handle);
    dropHandle!(T0)(_handle_message);
  }
  void postMessage(T0)(scope auto ref T0 message) {
    Handle _handle_message = getOrCreateHandle(message);
    DedicatedWorkerGlobalScope_postMessage_0(this._parent, _handle_message);
    dropHandle!(T0)(_handle_message);
  }
  void close() {
    DedicatedWorkerGlobalScope_close(this._parent);
  }
  void onmessage(EventHandler onmessage) {
    DedicatedWorkerGlobalScope_onmessage_Set(this._parent, onmessage);
  }
  auto onmessage() {
    return DedicatedWorkerGlobalScope_onmessage_Get(this._parent);
  }
  void onmessageerror(EventHandler onmessageerror) {
    DedicatedWorkerGlobalScope_onmessageerror_Set(this._parent, onmessageerror);
  }
  auto onmessageerror() {
    return DedicatedWorkerGlobalScope_onmessageerror_Get(this._parent);
  }
  auto requestAnimationFrame(FrameRequestCallback callback) {
    return AnimationFrameProvider_requestAnimationFrame(this._parent, callback);
  }
  void cancelAnimationFrame(uint handle) {
    AnimationFrameProvider_cancelAnimationFrame(this._parent, handle);
  }
}
enum DocumentReadyState {
  loading,
  interactive,
  complete
}
struct DragEvent {
  nothrow:
  spasm.bindings.uievents.MouseEvent _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .MouseEvent(h);
  }
  auto dataTransfer() {
    return DragEvent_dataTransfer_Get(this._parent);
  }
}
struct DragEventInit {
  nothrow:
  spasm.bindings.uievents.MouseEventInit _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .MouseEventInit(h);
  }
  static auto create() {
    return DragEventInit(spasm_add__object());
  }
  void dataTransfer(scope ref Optional!(DataTransfer) dataTransfer) {
    DragEventInit_dataTransfer_Set(this._parent, !dataTransfer.empty, dataTransfer.front.handle);
  }
  auto dataTransfer() {
    return DragEventInit_dataTransfer_Get(this._parent);
  }
}
struct ElementDefinitionOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return ElementDefinitionOptions(spasm_add__object());
  }
  void extends(string extends) {
    ElementDefinitionOptions_extends_Set(this.handle, extends);
  }
  auto extends() {
    return ElementDefinitionOptions_extends_Get(this.handle);
  }
}
struct ErrorEvent {
  nothrow:
  spasm.bindings.dom.Event _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Event(h);
  }
  auto message() {
    return ErrorEvent_message_Get(this._parent);
  }
  auto filename() {
    return ErrorEvent_filename_Get(this._parent);
  }
  auto lineno() {
    return ErrorEvent_lineno_Get(this._parent);
  }
  auto colno() {
    return ErrorEvent_colno_Get(this._parent);
  }
  auto error() {
    return Any(ErrorEvent_error_Get(this._parent));
  }
}
struct ErrorEventInit {
  nothrow:
  spasm.bindings.dom.EventInit _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventInit(h);
  }
  static auto create() {
    return ErrorEventInit(spasm_add__object());
  }
  void message(string message) {
    ErrorEventInit_message_Set(this._parent, message);
  }
  auto message() {
    return ErrorEventInit_message_Get(this._parent);
  }
  void filename(string filename) {
    ErrorEventInit_filename_Set(this._parent, filename);
  }
  auto filename() {
    return ErrorEventInit_filename_Get(this._parent);
  }
  void lineno(uint lineno) {
    ErrorEventInit_lineno_Set(this._parent, lineno);
  }
  auto lineno() {
    return ErrorEventInit_lineno_Get(this._parent);
  }
  void colno(uint colno) {
    ErrorEventInit_colno_Set(this._parent, colno);
  }
  auto colno() {
    return ErrorEventInit_colno_Get(this._parent);
  }
  void error(T0)(scope auto ref T0 error) {
    Handle _handle_error = getOrCreateHandle(error);
    ErrorEventInit_error_Set(this._parent, _handle_error);
    dropHandle!(T0)(_handle_error);
  }
  auto error() {
    return Any(ErrorEventInit_error_Get(this._parent));
  }
}
alias EventHandler = EventHandlerNonNull;
alias EventHandlerNonNull = Any delegate(Event);
struct EventSource {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
  }
  auto url() {
    return EventSource_url_Get(this._parent);
  }
  auto withCredentials() {
    return EventSource_withCredentials_Get(this._parent);
  }
  enum ushort CONNECTING = 0;
  enum ushort OPEN = 1;
  enum ushort CLOSED = 2;
  auto readyState() {
    return EventSource_readyState_Get(this._parent);
  }
  void onopen(EventHandler onopen) {
    EventSource_onopen_Set(this._parent, onopen);
  }
  auto onopen() {
    return EventSource_onopen_Get(this._parent);
  }
  void onmessage(EventHandler onmessage) {
    EventSource_onmessage_Set(this._parent, onmessage);
  }
  auto onmessage() {
    return EventSource_onmessage_Get(this._parent);
  }
  void onerror(EventHandler onerror) {
    EventSource_onerror_Set(this._parent, onerror);
  }
  auto onerror() {
    return EventSource_onerror_Get(this._parent);
  }
  void close() {
    EventSource_close(this._parent);
  }
}
struct EventSourceInit {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return EventSourceInit(spasm_add__object());
  }
  void withCredentials(bool withCredentials) {
    EventSourceInit_withCredentials_Set(this.handle, withCredentials);
  }
  auto withCredentials() {
    return EventSourceInit_withCredentials_Get(this.handle);
  }
}
struct External {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  void AddSearchProvider() {
    External_AddSearchProvider(this.handle);
  }
  void IsSearchProviderInstalled() {
    External_IsSearchProviderInstalled(this.handle);
  }
}
struct FocusOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return FocusOptions(spasm_add__object());
  }
  void preventScroll(bool preventScroll) {
    FocusOptions_preventScroll_Set(this.handle, preventScroll);
  }
  auto preventScroll() {
    return FocusOptions_preventScroll_Get(this.handle);
  }
}
alias FrameRequestCallback = void delegate(double);
alias FunctionStringCallback = void delegate(string);
struct HTMLAllCollection {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto length() {
    return HTMLAllCollection_length_Get(this.handle);
  }
  auto opIndex(uint index) {
    return Element(HTMLAllCollection_getter__uint(this.handle, index));
  }
  auto opDispatch(uint index)() {
    return Element(HTMLAllCollection_getter__uint(this.handle, index));
  }
  auto namedItem(string name) {
    return HTMLAllCollection_namedItem_getter(this.handle, name);
  }
  auto item(string nameOrIndex) {
    return HTMLAllCollection_item(this.handle, nameOrIndex);
  }
  auto item() {
    return HTMLAllCollection_item_0(this.handle);
  }
}
struct HTMLAnchorElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void target(string target) {
    HTMLAnchorElement_target_Set(this._parent, target);
  }
  auto target() {
    return HTMLAnchorElement_target_Get(this._parent);
  }
  void download(string download) {
    HTMLAnchorElement_download_Set(this._parent, download);
  }
  auto download() {
    return HTMLAnchorElement_download_Get(this._parent);
  }
  void ping(string ping) {
    HTMLAnchorElement_ping_Set(this._parent, ping);
  }
  auto ping() {
    return HTMLAnchorElement_ping_Get(this._parent);
  }
  void rel(string rel) {
    HTMLAnchorElement_rel_Set(this._parent, rel);
  }
  auto rel() {
    return HTMLAnchorElement_rel_Get(this._parent);
  }
  auto relList() {
    return DOMTokenList(HTMLAnchorElement_relList_Get(this._parent));
  }
  void hreflang(string hreflang) {
    HTMLAnchorElement_hreflang_Set(this._parent, hreflang);
  }
  auto hreflang() {
    return HTMLAnchorElement_hreflang_Get(this._parent);
  }
  void type(string type) {
    HTMLAnchorElement_type_Set(this._parent, type);
  }
  auto type() {
    return HTMLAnchorElement_type_Get(this._parent);
  }
  void text(string text) {
    HTMLAnchorElement_text_Set(this._parent, text);
  }
  auto text() {
    return HTMLAnchorElement_text_Get(this._parent);
  }
  void referrerPolicy(string referrerPolicy) {
    HTMLAnchorElement_referrerPolicy_Set(this._parent, referrerPolicy);
  }
  auto referrerPolicy() {
    return HTMLAnchorElement_referrerPolicy_Get(this._parent);
  }
  void coords(string coords) {
    HTMLAnchorElement_coords_Set(this._parent, coords);
  }
  auto coords() {
    return HTMLAnchorElement_coords_Get(this._parent);
  }
  void charset(string charset) {
    HTMLAnchorElement_charset_Set(this._parent, charset);
  }
  auto charset() {
    return HTMLAnchorElement_charset_Get(this._parent);
  }
  void name(string name) {
    HTMLAnchorElement_name_Set(this._parent, name);
  }
  auto name() {
    return HTMLAnchorElement_name_Get(this._parent);
  }
  void rev(string rev) {
    HTMLAnchorElement_rev_Set(this._parent, rev);
  }
  auto rev() {
    return HTMLAnchorElement_rev_Get(this._parent);
  }
  void shape(string shape) {
    HTMLAnchorElement_shape_Set(this._parent, shape);
  }
  auto shape() {
    return HTMLAnchorElement_shape_Get(this._parent);
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
struct HTMLAreaElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void alt(string alt) {
    HTMLAreaElement_alt_Set(this._parent, alt);
  }
  auto alt() {
    return HTMLAreaElement_alt_Get(this._parent);
  }
  void coords(string coords) {
    HTMLAreaElement_coords_Set(this._parent, coords);
  }
  auto coords() {
    return HTMLAreaElement_coords_Get(this._parent);
  }
  void shape(string shape) {
    HTMLAreaElement_shape_Set(this._parent, shape);
  }
  auto shape() {
    return HTMLAreaElement_shape_Get(this._parent);
  }
  void target(string target) {
    HTMLAreaElement_target_Set(this._parent, target);
  }
  auto target() {
    return HTMLAreaElement_target_Get(this._parent);
  }
  void download(string download) {
    HTMLAreaElement_download_Set(this._parent, download);
  }
  auto download() {
    return HTMLAreaElement_download_Get(this._parent);
  }
  void ping(string ping) {
    HTMLAreaElement_ping_Set(this._parent, ping);
  }
  auto ping() {
    return HTMLAreaElement_ping_Get(this._parent);
  }
  void rel(string rel) {
    HTMLAreaElement_rel_Set(this._parent, rel);
  }
  auto rel() {
    return HTMLAreaElement_rel_Get(this._parent);
  }
  auto relList() {
    return DOMTokenList(HTMLAreaElement_relList_Get(this._parent));
  }
  void referrerPolicy(string referrerPolicy) {
    HTMLAreaElement_referrerPolicy_Set(this._parent, referrerPolicy);
  }
  auto referrerPolicy() {
    return HTMLAreaElement_referrerPolicy_Get(this._parent);
  }
  void noHref(bool noHref) {
    HTMLAreaElement_noHref_Set(this._parent, noHref);
  }
  auto noHref() {
    return HTMLAreaElement_noHref_Get(this._parent);
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
struct HTMLAudioElement {
  nothrow:
  spasm.bindings.html.HTMLMediaElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLMediaElement(h);
  }
}
struct HTMLBRElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void clear(string clear) {
    HTMLBRElement_clear_Set(this._parent, clear);
  }
  auto clear() {
    return HTMLBRElement_clear_Get(this._parent);
  }
}
struct HTMLBaseElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void href(string href) {
    HTMLBaseElement_href_Set(this._parent, href);
  }
  auto href() {
    return HTMLBaseElement_href_Get(this._parent);
  }
  void target(string target) {
    HTMLBaseElement_target_Set(this._parent, target);
  }
  auto target() {
    return HTMLBaseElement_target_Get(this._parent);
  }
}
struct HTMLBodyElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void text(string text) {
    HTMLBodyElement_text_Set(this._parent, text);
  }
  auto text() {
    return HTMLBodyElement_text_Get(this._parent);
  }
  void link(string link) {
    HTMLBodyElement_link_Set(this._parent, link);
  }
  auto link() {
    return HTMLBodyElement_link_Get(this._parent);
  }
  void vLink(string vLink) {
    HTMLBodyElement_vLink_Set(this._parent, vLink);
  }
  auto vLink() {
    return HTMLBodyElement_vLink_Get(this._parent);
  }
  void aLink(string aLink) {
    HTMLBodyElement_aLink_Set(this._parent, aLink);
  }
  auto aLink() {
    return HTMLBodyElement_aLink_Get(this._parent);
  }
  void bgColor(string bgColor) {
    HTMLBodyElement_bgColor_Set(this._parent, bgColor);
  }
  auto bgColor() {
    return HTMLBodyElement_bgColor_Get(this._parent);
  }
  void background(string background) {
    HTMLBodyElement_background_Set(this._parent, background);
  }
  auto background() {
    return HTMLBodyElement_background_Get(this._parent);
  }
  void onorientationchange(EventHandler onorientationchange) {
    HTMLBodyElement_onorientationchange_Set(this._parent, onorientationchange);
  }
  auto onorientationchange() {
    return HTMLBodyElement_onorientationchange_Get(this._parent);
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
struct HTMLButtonElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void autofocus(bool autofocus) {
    HTMLButtonElement_autofocus_Set(this._parent, autofocus);
  }
  auto autofocus() {
    return HTMLButtonElement_autofocus_Get(this._parent);
  }
  void disabled(bool disabled) {
    HTMLButtonElement_disabled_Set(this._parent, disabled);
  }
  auto disabled() {
    return HTMLButtonElement_disabled_Get(this._parent);
  }
  auto form() {
    return HTMLButtonElement_form_Get(this._parent);
  }
  void formAction(string formAction) {
    HTMLButtonElement_formAction_Set(this._parent, formAction);
  }
  auto formAction() {
    return HTMLButtonElement_formAction_Get(this._parent);
  }
  void formEnctype(string formEnctype) {
    HTMLButtonElement_formEnctype_Set(this._parent, formEnctype);
  }
  auto formEnctype() {
    return HTMLButtonElement_formEnctype_Get(this._parent);
  }
  void formMethod(string formMethod) {
    HTMLButtonElement_formMethod_Set(this._parent, formMethod);
  }
  auto formMethod() {
    return HTMLButtonElement_formMethod_Get(this._parent);
  }
  void formNoValidate(bool formNoValidate) {
    HTMLButtonElement_formNoValidate_Set(this._parent, formNoValidate);
  }
  auto formNoValidate() {
    return HTMLButtonElement_formNoValidate_Get(this._parent);
  }
  void formTarget(string formTarget) {
    HTMLButtonElement_formTarget_Set(this._parent, formTarget);
  }
  auto formTarget() {
    return HTMLButtonElement_formTarget_Get(this._parent);
  }
  void name(string name) {
    HTMLButtonElement_name_Set(this._parent, name);
  }
  auto name() {
    return HTMLButtonElement_name_Get(this._parent);
  }
  void type(string type) {
    HTMLButtonElement_type_Set(this._parent, type);
  }
  auto type() {
    return HTMLButtonElement_type_Get(this._parent);
  }
  void value(string value) {
    HTMLButtonElement_value_Set(this._parent, value);
  }
  auto value() {
    return HTMLButtonElement_value_Get(this._parent);
  }
  auto willValidate() {
    return HTMLButtonElement_willValidate_Get(this._parent);
  }
  auto validity() {
    return ValidityState(HTMLButtonElement_validity_Get(this._parent));
  }
  auto validationMessage() {
    return HTMLButtonElement_validationMessage_Get(this._parent);
  }
  auto checkValidity() {
    return HTMLButtonElement_checkValidity(this._parent);
  }
  auto reportValidity() {
    return HTMLButtonElement_reportValidity(this._parent);
  }
  void setCustomValidity(string error) {
    HTMLButtonElement_setCustomValidity(this._parent, error);
  }
  auto labels() {
    return NodeList(HTMLButtonElement_labels_Get(this._parent));
  }
}
struct HTMLCanvasElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void width(uint width) {
    HTMLCanvasElement_width_Set(this._parent, width);
  }
  auto width() {
    return HTMLCanvasElement_width_Get(this._parent);
  }
  void height(uint height) {
    HTMLCanvasElement_height_Set(this._parent, height);
  }
  auto height() {
    return HTMLCanvasElement_height_Get(this._parent);
  }
  auto getContext(T1)(string contextId, scope auto ref T1 options /* = null */) {
    Handle _handle_options = getOrCreateHandle(options);
    auto result = HTMLCanvasElement_getContext(this._parent, contextId, _handle_options);
    dropHandle!(T1)(_handle_options);
    return result;
  }
  auto getContext(string contextId) {
    return HTMLCanvasElement_getContext_0(this._parent, contextId);
  }
  auto toDataURL(T1)(string type, scope auto ref T1 quality) {
    Handle _handle_quality = getOrCreateHandle(quality);
    auto result = HTMLCanvasElement_toDataURL(this._parent, type, _handle_quality);
    dropHandle!(T1)(_handle_quality);
    return result;
  }
  auto toDataURL(string type) {
    return HTMLCanvasElement_toDataURL_0(this._parent, type);
  }
  auto toDataURL() {
    return HTMLCanvasElement_toDataURL_1(this._parent);
  }
  void toBlob(T2)(BlobCallback _callback, string type, scope auto ref T2 quality) {
    Handle _handle_quality = getOrCreateHandle(quality);
    HTMLCanvasElement_toBlob(this._parent, _callback, type, _handle_quality);
    dropHandle!(T2)(_handle_quality);
  }
  void toBlob(BlobCallback _callback, string type) {
    HTMLCanvasElement_toBlob_0(this._parent, _callback, type);
  }
  void toBlob(BlobCallback _callback) {
    HTMLCanvasElement_toBlob_1(this._parent, _callback);
  }
  auto transferControlToOffscreen() {
    return OffscreenCanvas(HTMLCanvasElement_transferControlToOffscreen(this._parent));
  }
}
struct HTMLDListElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void compact(bool compact) {
    HTMLDListElement_compact_Set(this._parent, compact);
  }
  auto compact() {
    return HTMLDListElement_compact_Get(this._parent);
  }
}
struct HTMLDataElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void value(string value) {
    HTMLDataElement_value_Set(this._parent, value);
  }
  auto value() {
    return HTMLDataElement_value_Get(this._parent);
  }
}
struct HTMLDataListElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  auto options() {
    return HTMLCollection(HTMLDataListElement_options_Get(this._parent));
  }
}
struct HTMLDetailsElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void open(bool open) {
    HTMLDetailsElement_open_Set(this._parent, open);
  }
  auto open() {
    return HTMLDetailsElement_open_Get(this._parent);
  }
}
struct HTMLDialogElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void open(bool open) {
    HTMLDialogElement_open_Set(this._parent, open);
  }
  auto open() {
    return HTMLDialogElement_open_Get(this._parent);
  }
  void returnValue(string returnValue) {
    HTMLDialogElement_returnValue_Set(this._parent, returnValue);
  }
  auto returnValue() {
    return HTMLDialogElement_returnValue_Get(this._parent);
  }
  void show() {
    HTMLDialogElement_show(this._parent);
  }
  void showModal() {
    HTMLDialogElement_showModal(this._parent);
  }
  void close(string returnValue) {
    HTMLDialogElement_close(this._parent, returnValue);
  }
  void close() {
    HTMLDialogElement_close_0(this._parent);
  }
}
struct HTMLDirectoryElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void compact(bool compact) {
    HTMLDirectoryElement_compact_Set(this._parent, compact);
  }
  auto compact() {
    return HTMLDirectoryElement_compact_Get(this._parent);
  }
}
struct HTMLDivElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void align_(string align_) {
    HTMLDivElement_align_Set(this._parent, align_);
  }
  auto align_() {
    return HTMLDivElement_align_Get(this._parent);
  }
}
struct HTMLElement {
  nothrow:
  spasm.bindings.dom.Element _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Element(h);
  }
  void title(string title) {
    HTMLElement_title_Set(this._parent, title);
  }
  auto title() {
    return HTMLElement_title_Get(this._parent);
  }
  void lang(string lang) {
    HTMLElement_lang_Set(this._parent, lang);
  }
  auto lang() {
    return HTMLElement_lang_Get(this._parent);
  }
  void translate(bool translate) {
    HTMLElement_translate_Set(this._parent, translate);
  }
  auto translate() {
    return HTMLElement_translate_Get(this._parent);
  }
  void dir(string dir) {
    HTMLElement_dir_Set(this._parent, dir);
  }
  auto dir() {
    return HTMLElement_dir_Get(this._parent);
  }
  void hidden(bool hidden) {
    HTMLElement_hidden_Set(this._parent, hidden);
  }
  auto hidden() {
    return HTMLElement_hidden_Get(this._parent);
  }
  void click() {
    HTMLElement_click(this._parent);
  }
  void accessKey(string accessKey) {
    HTMLElement_accessKey_Set(this._parent, accessKey);
  }
  auto accessKey() {
    return HTMLElement_accessKey_Get(this._parent);
  }
  auto accessKeyLabel() {
    return HTMLElement_accessKeyLabel_Get(this._parent);
  }
  void draggable(bool draggable) {
    HTMLElement_draggable_Set(this._parent, draggable);
  }
  auto draggable() {
    return HTMLElement_draggable_Get(this._parent);
  }
  void spellcheck(bool spellcheck) {
    HTMLElement_spellcheck_Set(this._parent, spellcheck);
  }
  auto spellcheck() {
    return HTMLElement_spellcheck_Get(this._parent);
  }
  void autocapitalize(string autocapitalize) {
    HTMLElement_autocapitalize_Set(this._parent, autocapitalize);
  }
  auto autocapitalize() {
    return HTMLElement_autocapitalize_Get(this._parent);
  }
  void innerText(string innerText) {
    HTMLElement_innerText_Set(this._parent, innerText);
  }
  auto innerText() {
    return HTMLElement_innerText_Get(this._parent);
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
  void contentEditable(string contentEditable) {
    ElementContentEditable_contentEditable_Set(this._parent, contentEditable);
  }
  auto contentEditable() {
    return ElementContentEditable_contentEditable_Get(this._parent);
  }
  void enterKeyHint(string enterKeyHint) {
    ElementContentEditable_enterKeyHint_Set(this._parent, enterKeyHint);
  }
  auto enterKeyHint() {
    return ElementContentEditable_enterKeyHint_Get(this._parent);
  }
  auto isContentEditable() {
    return ElementContentEditable_isContentEditable_Get(this._parent);
  }
  void inputMode(string inputMode) {
    ElementContentEditable_inputMode_Set(this._parent, inputMode);
  }
  auto inputMode() {
    return ElementContentEditable_inputMode_Get(this._parent);
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
  auto style() {
    return CSSStyleDeclaration(ElementCSSInlineStyle_style_Get(this._parent));
  }
}
struct HTMLEmbedElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void src(string src) {
    HTMLEmbedElement_src_Set(this._parent, src);
  }
  auto src() {
    return HTMLEmbedElement_src_Get(this._parent);
  }
  void type(string type) {
    HTMLEmbedElement_type_Set(this._parent, type);
  }
  auto type() {
    return HTMLEmbedElement_type_Get(this._parent);
  }
  void width(string width) {
    HTMLEmbedElement_width_Set(this._parent, width);
  }
  auto width() {
    return HTMLEmbedElement_width_Get(this._parent);
  }
  void height(string height) {
    HTMLEmbedElement_height_Set(this._parent, height);
  }
  auto height() {
    return HTMLEmbedElement_height_Get(this._parent);
  }
  auto getSVGDocument() {
    return HTMLEmbedElement_getSVGDocument(this._parent);
  }
  void align_(string align_) {
    HTMLEmbedElement_align_Set(this._parent, align_);
  }
  auto align_() {
    return HTMLEmbedElement_align_Get(this._parent);
  }
  void name(string name) {
    HTMLEmbedElement_name_Set(this._parent, name);
  }
  auto name() {
    return HTMLEmbedElement_name_Get(this._parent);
  }
}
struct HTMLFieldSetElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void disabled(bool disabled) {
    HTMLFieldSetElement_disabled_Set(this._parent, disabled);
  }
  auto disabled() {
    return HTMLFieldSetElement_disabled_Get(this._parent);
  }
  auto form() {
    return HTMLFieldSetElement_form_Get(this._parent);
  }
  void name(string name) {
    HTMLFieldSetElement_name_Set(this._parent, name);
  }
  auto name() {
    return HTMLFieldSetElement_name_Get(this._parent);
  }
  auto type() {
    return HTMLFieldSetElement_type_Get(this._parent);
  }
  auto elements() {
    return HTMLCollection(HTMLFieldSetElement_elements_Get(this._parent));
  }
  auto willValidate() {
    return HTMLFieldSetElement_willValidate_Get(this._parent);
  }
  auto validity() {
    return ValidityState(HTMLFieldSetElement_validity_Get(this._parent));
  }
  auto validationMessage() {
    return HTMLFieldSetElement_validationMessage_Get(this._parent);
  }
  auto checkValidity() {
    return HTMLFieldSetElement_checkValidity(this._parent);
  }
  auto reportValidity() {
    return HTMLFieldSetElement_reportValidity(this._parent);
  }
  void setCustomValidity(string error) {
    HTMLFieldSetElement_setCustomValidity(this._parent, error);
  }
}
struct HTMLFontElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void color(string color) {
    HTMLFontElement_color_Set(this._parent, color);
  }
  auto color() {
    return HTMLFontElement_color_Get(this._parent);
  }
  void face(string face) {
    HTMLFontElement_face_Set(this._parent, face);
  }
  auto face() {
    return HTMLFontElement_face_Get(this._parent);
  }
  void size(string size) {
    HTMLFontElement_size_Set(this._parent, size);
  }
  auto size() {
    return HTMLFontElement_size_Get(this._parent);
  }
}
struct HTMLFormControlsCollection {
  nothrow:
  spasm.bindings.dom.HTMLCollection _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLCollection(h);
  }
  auto namedItem(string name) {
    return HTMLFormControlsCollection_namedItem_getter(this._parent, name);
  }
}
struct HTMLFormElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void acceptCharset(string acceptCharset) {
    HTMLFormElement_acceptCharset_Set(this._parent, acceptCharset);
  }
  auto acceptCharset() {
    return HTMLFormElement_acceptCharset_Get(this._parent);
  }
  void action(string action) {
    HTMLFormElement_action_Set(this._parent, action);
  }
  auto action() {
    return HTMLFormElement_action_Get(this._parent);
  }
  void autocomplete(string autocomplete) {
    HTMLFormElement_autocomplete_Set(this._parent, autocomplete);
  }
  auto autocomplete() {
    return HTMLFormElement_autocomplete_Get(this._parent);
  }
  void enctype(string enctype) {
    HTMLFormElement_enctype_Set(this._parent, enctype);
  }
  auto enctype() {
    return HTMLFormElement_enctype_Get(this._parent);
  }
  void encoding(string encoding) {
    HTMLFormElement_encoding_Set(this._parent, encoding);
  }
  auto encoding() {
    return HTMLFormElement_encoding_Get(this._parent);
  }
  void method(string method) {
    HTMLFormElement_method_Set(this._parent, method);
  }
  auto method() {
    return HTMLFormElement_method_Get(this._parent);
  }
  void name(string name) {
    HTMLFormElement_name_Set(this._parent, name);
  }
  auto name() {
    return HTMLFormElement_name_Get(this._parent);
  }
  void noValidate(bool noValidate) {
    HTMLFormElement_noValidate_Set(this._parent, noValidate);
  }
  auto noValidate() {
    return HTMLFormElement_noValidate_Get(this._parent);
  }
  void target(string target) {
    HTMLFormElement_target_Set(this._parent, target);
  }
  auto target() {
    return HTMLFormElement_target_Get(this._parent);
  }
  auto elements() {
    return HTMLFormControlsCollection(HTMLFormElement_elements_Get(this._parent));
  }
  auto length() {
    return HTMLFormElement_length_Get(this._parent);
  }
  auto opIndex(uint index) {
    return Element(HTMLFormElement_getter__uint(this._parent, index));
  }
  auto opDispatch(uint index)() {
    return Element(HTMLFormElement_getter__uint(this._parent, index));
  }
  auto opIndex(string name) {
    return HTMLFormElement_getter__string(this._parent, name);
  }
  auto opDispatch(string name)() {
    return HTMLFormElement_getter__string(this._parent, name);
  }
  void submit() {
    HTMLFormElement_submit(this._parent);
  }
  void reset() {
    HTMLFormElement_reset(this._parent);
  }
  auto checkValidity() {
    return HTMLFormElement_checkValidity(this._parent);
  }
  auto reportValidity() {
    return HTMLFormElement_reportValidity(this._parent);
  }
}
struct HTMLFrameElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void name(string name) {
    HTMLFrameElement_name_Set(this._parent, name);
  }
  auto name() {
    return HTMLFrameElement_name_Get(this._parent);
  }
  void scrolling(string scrolling) {
    HTMLFrameElement_scrolling_Set(this._parent, scrolling);
  }
  auto scrolling() {
    return HTMLFrameElement_scrolling_Get(this._parent);
  }
  void src(string src) {
    HTMLFrameElement_src_Set(this._parent, src);
  }
  auto src() {
    return HTMLFrameElement_src_Get(this._parent);
  }
  void frameBorder(string frameBorder) {
    HTMLFrameElement_frameBorder_Set(this._parent, frameBorder);
  }
  auto frameBorder() {
    return HTMLFrameElement_frameBorder_Get(this._parent);
  }
  void longDesc(string longDesc) {
    HTMLFrameElement_longDesc_Set(this._parent, longDesc);
  }
  auto longDesc() {
    return HTMLFrameElement_longDesc_Get(this._parent);
  }
  void noResize(bool noResize) {
    HTMLFrameElement_noResize_Set(this._parent, noResize);
  }
  auto noResize() {
    return HTMLFrameElement_noResize_Get(this._parent);
  }
  auto contentDocument() {
    return HTMLFrameElement_contentDocument_Get(this._parent);
  }
  auto contentWindow() {
    return HTMLFrameElement_contentWindow_Get(this._parent);
  }
  void marginHeight(string marginHeight) {
    HTMLFrameElement_marginHeight_Set(this._parent, marginHeight);
  }
  auto marginHeight() {
    return HTMLFrameElement_marginHeight_Get(this._parent);
  }
  void marginWidth(string marginWidth) {
    HTMLFrameElement_marginWidth_Set(this._parent, marginWidth);
  }
  auto marginWidth() {
    return HTMLFrameElement_marginWidth_Get(this._parent);
  }
}
struct HTMLFrameSetElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void cols(string cols) {
    HTMLFrameSetElement_cols_Set(this._parent, cols);
  }
  auto cols() {
    return HTMLFrameSetElement_cols_Get(this._parent);
  }
  void rows(string rows) {
    HTMLFrameSetElement_rows_Set(this._parent, rows);
  }
  auto rows() {
    return HTMLFrameSetElement_rows_Get(this._parent);
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
struct HTMLHRElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void align_(string align_) {
    HTMLHRElement_align_Set(this._parent, align_);
  }
  auto align_() {
    return HTMLHRElement_align_Get(this._parent);
  }
  void color(string color) {
    HTMLHRElement_color_Set(this._parent, color);
  }
  auto color() {
    return HTMLHRElement_color_Get(this._parent);
  }
  void noShade(bool noShade) {
    HTMLHRElement_noShade_Set(this._parent, noShade);
  }
  auto noShade() {
    return HTMLHRElement_noShade_Get(this._parent);
  }
  void size(string size) {
    HTMLHRElement_size_Set(this._parent, size);
  }
  auto size() {
    return HTMLHRElement_size_Get(this._parent);
  }
  void width(string width) {
    HTMLHRElement_width_Set(this._parent, width);
  }
  auto width() {
    return HTMLHRElement_width_Get(this._parent);
  }
}
struct HTMLHeadElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
}
struct HTMLHeadingElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void align_(string align_) {
    HTMLHeadingElement_align_Set(this._parent, align_);
  }
  auto align_() {
    return HTMLHeadingElement_align_Get(this._parent);
  }
}
struct HTMLHtmlElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void version_(string version_) {
    HTMLHtmlElement_version_Set(this._parent, version_);
  }
  auto version_() {
    return HTMLHtmlElement_version_Get(this._parent);
  }
}
struct HTMLIFrameElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void src(string src) {
    HTMLIFrameElement_src_Set(this._parent, src);
  }
  auto src() {
    return HTMLIFrameElement_src_Get(this._parent);
  }
  void srcdoc(string srcdoc) {
    HTMLIFrameElement_srcdoc_Set(this._parent, srcdoc);
  }
  auto srcdoc() {
    return HTMLIFrameElement_srcdoc_Get(this._parent);
  }
  void name(string name) {
    HTMLIFrameElement_name_Set(this._parent, name);
  }
  auto name() {
    return HTMLIFrameElement_name_Get(this._parent);
  }
  auto sandbox() {
    return DOMTokenList(HTMLIFrameElement_sandbox_Get(this._parent));
  }
  void allow(string allow) {
    HTMLIFrameElement_allow_Set(this._parent, allow);
  }
  auto allow() {
    return HTMLIFrameElement_allow_Get(this._parent);
  }
  void allowFullscreen(bool allowFullscreen) {
    HTMLIFrameElement_allowFullscreen_Set(this._parent, allowFullscreen);
  }
  auto allowFullscreen() {
    return HTMLIFrameElement_allowFullscreen_Get(this._parent);
  }
  void allowPaymentRequest(bool allowPaymentRequest) {
    HTMLIFrameElement_allowPaymentRequest_Set(this._parent, allowPaymentRequest);
  }
  auto allowPaymentRequest() {
    return HTMLIFrameElement_allowPaymentRequest_Get(this._parent);
  }
  void width(string width) {
    HTMLIFrameElement_width_Set(this._parent, width);
  }
  auto width() {
    return HTMLIFrameElement_width_Get(this._parent);
  }
  void height(string height) {
    HTMLIFrameElement_height_Set(this._parent, height);
  }
  auto height() {
    return HTMLIFrameElement_height_Get(this._parent);
  }
  void referrerPolicy(string referrerPolicy) {
    HTMLIFrameElement_referrerPolicy_Set(this._parent, referrerPolicy);
  }
  auto referrerPolicy() {
    return HTMLIFrameElement_referrerPolicy_Get(this._parent);
  }
  auto contentDocument() {
    return HTMLIFrameElement_contentDocument_Get(this._parent);
  }
  auto contentWindow() {
    return HTMLIFrameElement_contentWindow_Get(this._parent);
  }
  auto getSVGDocument() {
    return HTMLIFrameElement_getSVGDocument(this._parent);
  }
  void align_(string align_) {
    HTMLIFrameElement_align_Set(this._parent, align_);
  }
  auto align_() {
    return HTMLIFrameElement_align_Get(this._parent);
  }
  void scrolling(string scrolling) {
    HTMLIFrameElement_scrolling_Set(this._parent, scrolling);
  }
  auto scrolling() {
    return HTMLIFrameElement_scrolling_Get(this._parent);
  }
  void frameBorder(string frameBorder) {
    HTMLIFrameElement_frameBorder_Set(this._parent, frameBorder);
  }
  auto frameBorder() {
    return HTMLIFrameElement_frameBorder_Get(this._parent);
  }
  void longDesc(string longDesc) {
    HTMLIFrameElement_longDesc_Set(this._parent, longDesc);
  }
  auto longDesc() {
    return HTMLIFrameElement_longDesc_Get(this._parent);
  }
  void marginHeight(string marginHeight) {
    HTMLIFrameElement_marginHeight_Set(this._parent, marginHeight);
  }
  auto marginHeight() {
    return HTMLIFrameElement_marginHeight_Get(this._parent);
  }
  void marginWidth(string marginWidth) {
    HTMLIFrameElement_marginWidth_Set(this._parent, marginWidth);
  }
  auto marginWidth() {
    return HTMLIFrameElement_marginWidth_Get(this._parent);
  }
}
struct HTMLImageElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void alt(string alt) {
    HTMLImageElement_alt_Set(this._parent, alt);
  }
  auto alt() {
    return HTMLImageElement_alt_Get(this._parent);
  }
  void src(string src) {
    HTMLImageElement_src_Set(this._parent, src);
  }
  auto src() {
    return HTMLImageElement_src_Get(this._parent);
  }
  void srcset(string srcset) {
    HTMLImageElement_srcset_Set(this._parent, srcset);
  }
  auto srcset() {
    return HTMLImageElement_srcset_Get(this._parent);
  }
  void sizes(string sizes) {
    HTMLImageElement_sizes_Set(this._parent, sizes);
  }
  auto sizes() {
    return HTMLImageElement_sizes_Get(this._parent);
  }
  void crossOrigin(scope ref Optional!(string) crossOrigin) {
    HTMLImageElement_crossOrigin_Set(this._parent, !crossOrigin.empty, crossOrigin.front);
  }
  auto crossOrigin() {
    return HTMLImageElement_crossOrigin_Get(this._parent);
  }
  void useMap(string useMap) {
    HTMLImageElement_useMap_Set(this._parent, useMap);
  }
  auto useMap() {
    return HTMLImageElement_useMap_Get(this._parent);
  }
  void isMap(bool isMap) {
    HTMLImageElement_isMap_Set(this._parent, isMap);
  }
  auto isMap() {
    return HTMLImageElement_isMap_Get(this._parent);
  }
  void width(uint width) {
    HTMLImageElement_width_Set(this._parent, width);
  }
  auto width() {
    return HTMLImageElement_width_Get(this._parent);
  }
  void height(uint height) {
    HTMLImageElement_height_Set(this._parent, height);
  }
  auto height() {
    return HTMLImageElement_height_Get(this._parent);
  }
  auto naturalWidth() {
    return HTMLImageElement_naturalWidth_Get(this._parent);
  }
  auto naturalHeight() {
    return HTMLImageElement_naturalHeight_Get(this._parent);
  }
  auto complete() {
    return HTMLImageElement_complete_Get(this._parent);
  }
  auto currentSrc() {
    return HTMLImageElement_currentSrc_Get(this._parent);
  }
  void referrerPolicy(string referrerPolicy) {
    HTMLImageElement_referrerPolicy_Set(this._parent, referrerPolicy);
  }
  auto referrerPolicy() {
    return HTMLImageElement_referrerPolicy_Get(this._parent);
  }
  void decoding(string decoding) {
    HTMLImageElement_decoding_Set(this._parent, decoding);
  }
  auto decoding() {
    return HTMLImageElement_decoding_Get(this._parent);
  }
  auto decode() {
    return Promise!(void)(HTMLImageElement_decode(this._parent));
  }
  void name(string name) {
    HTMLImageElement_name_Set(this._parent, name);
  }
  auto name() {
    return HTMLImageElement_name_Get(this._parent);
  }
  void lowsrc(string lowsrc) {
    HTMLImageElement_lowsrc_Set(this._parent, lowsrc);
  }
  auto lowsrc() {
    return HTMLImageElement_lowsrc_Get(this._parent);
  }
  void align_(string align_) {
    HTMLImageElement_align_Set(this._parent, align_);
  }
  auto align_() {
    return HTMLImageElement_align_Get(this._parent);
  }
  void hspace(uint hspace) {
    HTMLImageElement_hspace_Set(this._parent, hspace);
  }
  auto hspace() {
    return HTMLImageElement_hspace_Get(this._parent);
  }
  void vspace(uint vspace) {
    HTMLImageElement_vspace_Set(this._parent, vspace);
  }
  auto vspace() {
    return HTMLImageElement_vspace_Get(this._parent);
  }
  void longDesc(string longDesc) {
    HTMLImageElement_longDesc_Set(this._parent, longDesc);
  }
  auto longDesc() {
    return HTMLImageElement_longDesc_Get(this._parent);
  }
  void border(string border) {
    HTMLImageElement_border_Set(this._parent, border);
  }
  auto border() {
    return HTMLImageElement_border_Get(this._parent);
  }
}
struct HTMLInputElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void accept(string accept) {
    HTMLInputElement_accept_Set(this._parent, accept);
  }
  auto accept() {
    return HTMLInputElement_accept_Get(this._parent);
  }
  void alt(string alt) {
    HTMLInputElement_alt_Set(this._parent, alt);
  }
  auto alt() {
    return HTMLInputElement_alt_Get(this._parent);
  }
  void autocomplete(string autocomplete) {
    HTMLInputElement_autocomplete_Set(this._parent, autocomplete);
  }
  auto autocomplete() {
    return HTMLInputElement_autocomplete_Get(this._parent);
  }
  void autofocus(bool autofocus) {
    HTMLInputElement_autofocus_Set(this._parent, autofocus);
  }
  auto autofocus() {
    return HTMLInputElement_autofocus_Get(this._parent);
  }
  void defaultChecked(bool defaultChecked) {
    HTMLInputElement_defaultChecked_Set(this._parent, defaultChecked);
  }
  auto defaultChecked() {
    return HTMLInputElement_defaultChecked_Get(this._parent);
  }
  void checked(bool checked) {
    HTMLInputElement_checked_Set(this._parent, checked);
  }
  auto checked() {
    return HTMLInputElement_checked_Get(this._parent);
  }
  void dirName(string dirName) {
    HTMLInputElement_dirName_Set(this._parent, dirName);
  }
  auto dirName() {
    return HTMLInputElement_dirName_Get(this._parent);
  }
  void disabled(bool disabled) {
    HTMLInputElement_disabled_Set(this._parent, disabled);
  }
  auto disabled() {
    return HTMLInputElement_disabled_Get(this._parent);
  }
  auto form() {
    return HTMLInputElement_form_Get(this._parent);
  }
  void files(scope ref Optional!(FileList) files) {
    HTMLInputElement_files_Set(this._parent, !files.empty, files.front.handle);
  }
  auto files() {
    return HTMLInputElement_files_Get(this._parent);
  }
  void formAction(string formAction) {
    HTMLInputElement_formAction_Set(this._parent, formAction);
  }
  auto formAction() {
    return HTMLInputElement_formAction_Get(this._parent);
  }
  void formEnctype(string formEnctype) {
    HTMLInputElement_formEnctype_Set(this._parent, formEnctype);
  }
  auto formEnctype() {
    return HTMLInputElement_formEnctype_Get(this._parent);
  }
  void formMethod(string formMethod) {
    HTMLInputElement_formMethod_Set(this._parent, formMethod);
  }
  auto formMethod() {
    return HTMLInputElement_formMethod_Get(this._parent);
  }
  void formNoValidate(bool formNoValidate) {
    HTMLInputElement_formNoValidate_Set(this._parent, formNoValidate);
  }
  auto formNoValidate() {
    return HTMLInputElement_formNoValidate_Get(this._parent);
  }
  void formTarget(string formTarget) {
    HTMLInputElement_formTarget_Set(this._parent, formTarget);
  }
  auto formTarget() {
    return HTMLInputElement_formTarget_Get(this._parent);
  }
  void height(uint height) {
    HTMLInputElement_height_Set(this._parent, height);
  }
  auto height() {
    return HTMLInputElement_height_Get(this._parent);
  }
  void indeterminate(bool indeterminate) {
    HTMLInputElement_indeterminate_Set(this._parent, indeterminate);
  }
  auto indeterminate() {
    return HTMLInputElement_indeterminate_Get(this._parent);
  }
  auto list() {
    return HTMLInputElement_list_Get(this._parent);
  }
  void max(string max) {
    HTMLInputElement_max_Set(this._parent, max);
  }
  auto max() {
    return HTMLInputElement_max_Get(this._parent);
  }
  void maxLength(int maxLength) {
    HTMLInputElement_maxLength_Set(this._parent, maxLength);
  }
  auto maxLength() {
    return HTMLInputElement_maxLength_Get(this._parent);
  }
  void min(string min) {
    HTMLInputElement_min_Set(this._parent, min);
  }
  auto min() {
    return HTMLInputElement_min_Get(this._parent);
  }
  void minLength(int minLength) {
    HTMLInputElement_minLength_Set(this._parent, minLength);
  }
  auto minLength() {
    return HTMLInputElement_minLength_Get(this._parent);
  }
  void multiple(bool multiple) {
    HTMLInputElement_multiple_Set(this._parent, multiple);
  }
  auto multiple() {
    return HTMLInputElement_multiple_Get(this._parent);
  }
  void name(string name) {
    HTMLInputElement_name_Set(this._parent, name);
  }
  auto name() {
    return HTMLInputElement_name_Get(this._parent);
  }
  void pattern(string pattern) {
    HTMLInputElement_pattern_Set(this._parent, pattern);
  }
  auto pattern() {
    return HTMLInputElement_pattern_Get(this._parent);
  }
  void placeholder(string placeholder) {
    HTMLInputElement_placeholder_Set(this._parent, placeholder);
  }
  auto placeholder() {
    return HTMLInputElement_placeholder_Get(this._parent);
  }
  void readOnly(bool readOnly) {
    HTMLInputElement_readOnly_Set(this._parent, readOnly);
  }
  auto readOnly() {
    return HTMLInputElement_readOnly_Get(this._parent);
  }
  void required(bool required) {
    HTMLInputElement_required_Set(this._parent, required);
  }
  auto required() {
    return HTMLInputElement_required_Get(this._parent);
  }
  void size(uint size) {
    HTMLInputElement_size_Set(this._parent, size);
  }
  auto size() {
    return HTMLInputElement_size_Get(this._parent);
  }
  void src(string src) {
    HTMLInputElement_src_Set(this._parent, src);
  }
  auto src() {
    return HTMLInputElement_src_Get(this._parent);
  }
  void step(string step) {
    HTMLInputElement_step_Set(this._parent, step);
  }
  auto step() {
    return HTMLInputElement_step_Get(this._parent);
  }
  void type(string type) {
    HTMLInputElement_type_Set(this._parent, type);
  }
  auto type() {
    return HTMLInputElement_type_Get(this._parent);
  }
  void defaultValue(string defaultValue) {
    HTMLInputElement_defaultValue_Set(this._parent, defaultValue);
  }
  auto defaultValue() {
    return HTMLInputElement_defaultValue_Get(this._parent);
  }
  void value(string value) {
    HTMLInputElement_value_Set(this._parent, value);
  }
  auto value() {
    return HTMLInputElement_value_Get(this._parent);
  }
  void valueAsDate(scope ref Optional!(JsObject) valueAsDate) {
    HTMLInputElement_valueAsDate_Set(this._parent, !valueAsDate.empty, valueAsDate.front.handle);
  }
  auto valueAsDate() {
    return HTMLInputElement_valueAsDate_Get(this._parent);
  }
  void valueAsNumber(double valueAsNumber) {
    HTMLInputElement_valueAsNumber_Set(this._parent, valueAsNumber);
  }
  auto valueAsNumber() {
    return HTMLInputElement_valueAsNumber_Get(this._parent);
  }
  void width(uint width) {
    HTMLInputElement_width_Set(this._parent, width);
  }
  auto width() {
    return HTMLInputElement_width_Get(this._parent);
  }
  void stepUp(int n /* = 1 */) {
    HTMLInputElement_stepUp(this._parent, n);
  }
  void stepUp() {
    HTMLInputElement_stepUp_0(this._parent);
  }
  void stepDown(int n /* = 1 */) {
    HTMLInputElement_stepDown(this._parent, n);
  }
  void stepDown() {
    HTMLInputElement_stepDown_0(this._parent);
  }
  auto willValidate() {
    return HTMLInputElement_willValidate_Get(this._parent);
  }
  auto validity() {
    return ValidityState(HTMLInputElement_validity_Get(this._parent));
  }
  auto validationMessage() {
    return HTMLInputElement_validationMessage_Get(this._parent);
  }
  auto checkValidity() {
    return HTMLInputElement_checkValidity(this._parent);
  }
  auto reportValidity() {
    return HTMLInputElement_reportValidity(this._parent);
  }
  void setCustomValidity(string error) {
    HTMLInputElement_setCustomValidity(this._parent, error);
  }
  auto labels() {
    return HTMLInputElement_labels_Get(this._parent);
  }
  void select() {
    HTMLInputElement_select(this._parent);
  }
  void selectionStart(scope ref Optional!(uint) selectionStart) {
    HTMLInputElement_selectionStart_Set(this._parent, !selectionStart.empty, selectionStart.front);
  }
  auto selectionStart() {
    return HTMLInputElement_selectionStart_Get(this._parent);
  }
  void selectionEnd(scope ref Optional!(uint) selectionEnd) {
    HTMLInputElement_selectionEnd_Set(this._parent, !selectionEnd.empty, selectionEnd.front);
  }
  auto selectionEnd() {
    return HTMLInputElement_selectionEnd_Get(this._parent);
  }
  void selectionDirection(scope ref Optional!(string) selectionDirection) {
    HTMLInputElement_selectionDirection_Set(this._parent, !selectionDirection.empty, selectionDirection.front);
  }
  auto selectionDirection() {
    return HTMLInputElement_selectionDirection_Get(this._parent);
  }
  void setRangeText(string replacement) {
    HTMLInputElement_setRangeText__string(this._parent, replacement);
  }
  void setRangeText(string replacement, uint start, uint end, SelectionMode selectionMode /* = "preserve" */) {
    HTMLInputElement_setRangeText__string_uint_uint_SelectionMode(this._parent, replacement, start, end, selectionMode);
  }
  void setRangeText(string replacement, uint start, uint end) {
    HTMLInputElement_setRangeText_0(this._parent, replacement, start, end);
  }
  void setSelectionRange(uint start, uint end, string direction) {
    HTMLInputElement_setSelectionRange(this._parent, start, end, direction);
  }
  void setSelectionRange(uint start, uint end) {
    HTMLInputElement_setSelectionRange_0(this._parent, start, end);
  }
  void align_(string align_) {
    HTMLInputElement_align_Set(this._parent, align_);
  }
  auto align_() {
    return HTMLInputElement_align_Get(this._parent);
  }
  void useMap(string useMap) {
    HTMLInputElement_useMap_Set(this._parent, useMap);
  }
  auto useMap() {
    return HTMLInputElement_useMap_Get(this._parent);
  }
}
struct HTMLLIElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void value(int value) {
    HTMLLIElement_value_Set(this._parent, value);
  }
  auto value() {
    return HTMLLIElement_value_Get(this._parent);
  }
  void type(string type) {
    HTMLLIElement_type_Set(this._parent, type);
  }
  auto type() {
    return HTMLLIElement_type_Get(this._parent);
  }
}
struct HTMLLabelElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  auto form() {
    return HTMLLabelElement_form_Get(this._parent);
  }
  void htmlFor(string htmlFor) {
    HTMLLabelElement_htmlFor_Set(this._parent, htmlFor);
  }
  auto htmlFor() {
    return HTMLLabelElement_htmlFor_Get(this._parent);
  }
  auto control() {
    return HTMLLabelElement_control_Get(this._parent);
  }
}
struct HTMLLegendElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  auto form() {
    return HTMLLegendElement_form_Get(this._parent);
  }
  void align_(string align_) {
    HTMLLegendElement_align_Set(this._parent, align_);
  }
  auto align_() {
    return HTMLLegendElement_align_Get(this._parent);
  }
}
struct HTMLLinkElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void href(string href) {
    HTMLLinkElement_href_Set(this._parent, href);
  }
  auto href() {
    return HTMLLinkElement_href_Get(this._parent);
  }
  void crossOrigin(scope ref Optional!(string) crossOrigin) {
    HTMLLinkElement_crossOrigin_Set(this._parent, !crossOrigin.empty, crossOrigin.front);
  }
  auto crossOrigin() {
    return HTMLLinkElement_crossOrigin_Get(this._parent);
  }
  void rel(string rel) {
    HTMLLinkElement_rel_Set(this._parent, rel);
  }
  auto rel() {
    return HTMLLinkElement_rel_Get(this._parent);
  }
  void as(string as) {
    HTMLLinkElement_as_Set(this._parent, as);
  }
  auto as() {
    return HTMLLinkElement_as_Get(this._parent);
  }
  auto relList() {
    return DOMTokenList(HTMLLinkElement_relList_Get(this._parent));
  }
  void media(string media) {
    HTMLLinkElement_media_Set(this._parent, media);
  }
  auto media() {
    return HTMLLinkElement_media_Get(this._parent);
  }
  void integrity(string integrity) {
    HTMLLinkElement_integrity_Set(this._parent, integrity);
  }
  auto integrity() {
    return HTMLLinkElement_integrity_Get(this._parent);
  }
  void hreflang(string hreflang) {
    HTMLLinkElement_hreflang_Set(this._parent, hreflang);
  }
  auto hreflang() {
    return HTMLLinkElement_hreflang_Get(this._parent);
  }
  void type(string type) {
    HTMLLinkElement_type_Set(this._parent, type);
  }
  auto type() {
    return HTMLLinkElement_type_Get(this._parent);
  }
  auto sizes() {
    return DOMTokenList(HTMLLinkElement_sizes_Get(this._parent));
  }
  void referrerPolicy(string referrerPolicy) {
    HTMLLinkElement_referrerPolicy_Set(this._parent, referrerPolicy);
  }
  auto referrerPolicy() {
    return HTMLLinkElement_referrerPolicy_Get(this._parent);
  }
  void charset(string charset) {
    HTMLLinkElement_charset_Set(this._parent, charset);
  }
  auto charset() {
    return HTMLLinkElement_charset_Get(this._parent);
  }
  void rev(string rev) {
    HTMLLinkElement_rev_Set(this._parent, rev);
  }
  auto rev() {
    return HTMLLinkElement_rev_Get(this._parent);
  }
  void target(string target) {
    HTMLLinkElement_target_Set(this._parent, target);
  }
  auto target() {
    return HTMLLinkElement_target_Get(this._parent);
  }
}
struct HTMLMapElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void name(string name) {
    HTMLMapElement_name_Set(this._parent, name);
  }
  auto name() {
    return HTMLMapElement_name_Get(this._parent);
  }
  auto areas() {
    return HTMLCollection(HTMLMapElement_areas_Get(this._parent));
  }
}
struct HTMLMarqueeElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void behavior(string behavior) {
    HTMLMarqueeElement_behavior_Set(this._parent, behavior);
  }
  auto behavior() {
    return HTMLMarqueeElement_behavior_Get(this._parent);
  }
  void bgColor(string bgColor) {
    HTMLMarqueeElement_bgColor_Set(this._parent, bgColor);
  }
  auto bgColor() {
    return HTMLMarqueeElement_bgColor_Get(this._parent);
  }
  void direction(string direction) {
    HTMLMarqueeElement_direction_Set(this._parent, direction);
  }
  auto direction() {
    return HTMLMarqueeElement_direction_Get(this._parent);
  }
  void height(string height) {
    HTMLMarqueeElement_height_Set(this._parent, height);
  }
  auto height() {
    return HTMLMarqueeElement_height_Get(this._parent);
  }
  void hspace(uint hspace) {
    HTMLMarqueeElement_hspace_Set(this._parent, hspace);
  }
  auto hspace() {
    return HTMLMarqueeElement_hspace_Get(this._parent);
  }
  void loop(int loop) {
    HTMLMarqueeElement_loop_Set(this._parent, loop);
  }
  auto loop() {
    return HTMLMarqueeElement_loop_Get(this._parent);
  }
  void scrollAmount(uint scrollAmount) {
    HTMLMarqueeElement_scrollAmount_Set(this._parent, scrollAmount);
  }
  auto scrollAmount() {
    return HTMLMarqueeElement_scrollAmount_Get(this._parent);
  }
  void scrollDelay(uint scrollDelay) {
    HTMLMarqueeElement_scrollDelay_Set(this._parent, scrollDelay);
  }
  auto scrollDelay() {
    return HTMLMarqueeElement_scrollDelay_Get(this._parent);
  }
  void trueSpeed(bool trueSpeed) {
    HTMLMarqueeElement_trueSpeed_Set(this._parent, trueSpeed);
  }
  auto trueSpeed() {
    return HTMLMarqueeElement_trueSpeed_Get(this._parent);
  }
  void vspace(uint vspace) {
    HTMLMarqueeElement_vspace_Set(this._parent, vspace);
  }
  auto vspace() {
    return HTMLMarqueeElement_vspace_Get(this._parent);
  }
  void width(string width) {
    HTMLMarqueeElement_width_Set(this._parent, width);
  }
  auto width() {
    return HTMLMarqueeElement_width_Get(this._parent);
  }
  void onbounce(EventHandler onbounce) {
    HTMLMarqueeElement_onbounce_Set(this._parent, onbounce);
  }
  auto onbounce() {
    return HTMLMarqueeElement_onbounce_Get(this._parent);
  }
  void onfinish(EventHandler onfinish) {
    HTMLMarqueeElement_onfinish_Set(this._parent, onfinish);
  }
  auto onfinish() {
    return HTMLMarqueeElement_onfinish_Get(this._parent);
  }
  void onstart(EventHandler onstart) {
    HTMLMarqueeElement_onstart_Set(this._parent, onstart);
  }
  auto onstart() {
    return HTMLMarqueeElement_onstart_Get(this._parent);
  }
  void start() {
    HTMLMarqueeElement_start(this._parent);
  }
  void stop() {
    HTMLMarqueeElement_stop(this._parent);
  }
}
struct HTMLMediaElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  auto error() {
    return HTMLMediaElement_error_Get(this._parent);
  }
  void src(string src) {
    HTMLMediaElement_src_Set(this._parent, src);
  }
  auto src() {
    return HTMLMediaElement_src_Get(this._parent);
  }
  void srcObject(scope ref Optional!(MediaProvider) srcObject) {
    HTMLMediaElement_srcObject_Set(this._parent, !srcObject.empty, srcObject.front);
  }
  auto srcObject() {
    return HTMLMediaElement_srcObject_Get(this._parent);
  }
  auto currentSrc() {
    return HTMLMediaElement_currentSrc_Get(this._parent);
  }
  void crossOrigin(scope ref Optional!(string) crossOrigin) {
    HTMLMediaElement_crossOrigin_Set(this._parent, !crossOrigin.empty, crossOrigin.front);
  }
  auto crossOrigin() {
    return HTMLMediaElement_crossOrigin_Get(this._parent);
  }
  enum ushort NETWORK_EMPTY = 0;
  enum ushort NETWORK_IDLE = 1;
  enum ushort NETWORK_LOADING = 2;
  enum ushort NETWORK_NO_SOURCE = 3;
  auto networkState() {
    return HTMLMediaElement_networkState_Get(this._parent);
  }
  void preload(string preload) {
    HTMLMediaElement_preload_Set(this._parent, preload);
  }
  auto preload() {
    return HTMLMediaElement_preload_Get(this._parent);
  }
  auto buffered() {
    return TimeRanges(HTMLMediaElement_buffered_Get(this._parent));
  }
  void load() {
    HTMLMediaElement_load(this._parent);
  }
  auto canPlayType(string type) {
    return HTMLMediaElement_canPlayType(this._parent, type);
  }
  enum ushort HAVE_NOTHING = 0;
  enum ushort HAVE_METADATA = 1;
  enum ushort HAVE_CURRENT_DATA = 2;
  enum ushort HAVE_FUTURE_DATA = 3;
  enum ushort HAVE_ENOUGH_DATA = 4;
  auto readyState() {
    return HTMLMediaElement_readyState_Get(this._parent);
  }
  auto seeking() {
    return HTMLMediaElement_seeking_Get(this._parent);
  }
  void currentTime(double currentTime) {
    HTMLMediaElement_currentTime_Set(this._parent, currentTime);
  }
  auto currentTime() {
    return HTMLMediaElement_currentTime_Get(this._parent);
  }
  void fastSeek(double time) {
    HTMLMediaElement_fastSeek(this._parent, time);
  }
  auto duration() {
    return HTMLMediaElement_duration_Get(this._parent);
  }
  auto getStartDate() {
    return JsObject(HTMLMediaElement_getStartDate(this._parent));
  }
  auto paused() {
    return HTMLMediaElement_paused_Get(this._parent);
  }
  void defaultPlaybackRate(double defaultPlaybackRate) {
    HTMLMediaElement_defaultPlaybackRate_Set(this._parent, defaultPlaybackRate);
  }
  auto defaultPlaybackRate() {
    return HTMLMediaElement_defaultPlaybackRate_Get(this._parent);
  }
  void playbackRate(double playbackRate) {
    HTMLMediaElement_playbackRate_Set(this._parent, playbackRate);
  }
  auto playbackRate() {
    return HTMLMediaElement_playbackRate_Get(this._parent);
  }
  auto played() {
    return TimeRanges(HTMLMediaElement_played_Get(this._parent));
  }
  auto seekable() {
    return TimeRanges(HTMLMediaElement_seekable_Get(this._parent));
  }
  auto ended() {
    return HTMLMediaElement_ended_Get(this._parent);
  }
  void autoplay(bool autoplay) {
    HTMLMediaElement_autoplay_Set(this._parent, autoplay);
  }
  auto autoplay() {
    return HTMLMediaElement_autoplay_Get(this._parent);
  }
  void loop(bool loop) {
    HTMLMediaElement_loop_Set(this._parent, loop);
  }
  auto loop() {
    return HTMLMediaElement_loop_Get(this._parent);
  }
  auto play() {
    return Promise!(void)(HTMLMediaElement_play(this._parent));
  }
  void pause() {
    HTMLMediaElement_pause(this._parent);
  }
  void controls(bool controls) {
    HTMLMediaElement_controls_Set(this._parent, controls);
  }
  auto controls() {
    return HTMLMediaElement_controls_Get(this._parent);
  }
  void volume(double volume) {
    HTMLMediaElement_volume_Set(this._parent, volume);
  }
  auto volume() {
    return HTMLMediaElement_volume_Get(this._parent);
  }
  void muted(bool muted) {
    HTMLMediaElement_muted_Set(this._parent, muted);
  }
  auto muted() {
    return HTMLMediaElement_muted_Get(this._parent);
  }
  void defaultMuted(bool defaultMuted) {
    HTMLMediaElement_defaultMuted_Set(this._parent, defaultMuted);
  }
  auto defaultMuted() {
    return HTMLMediaElement_defaultMuted_Get(this._parent);
  }
  auto audioTracks() {
    return AudioTrackList(HTMLMediaElement_audioTracks_Get(this._parent));
  }
  auto videoTracks() {
    return VideoTrackList(HTMLMediaElement_videoTracks_Get(this._parent));
  }
  auto textTracks() {
    return TextTrackList(HTMLMediaElement_textTracks_Get(this._parent));
  }
  auto addTextTrack(TextTrackKind kind, string label /* = "" */, string language /* = "" */) {
    return TextTrack(HTMLMediaElement_addTextTrack(this._parent, kind, label, language));
  }
  auto addTextTrack(TextTrackKind kind, string label /* = "" */) {
    return TextTrack(HTMLMediaElement_addTextTrack_0(this._parent, kind, label));
  }
  auto addTextTrack(TextTrackKind kind) {
    return TextTrack(HTMLMediaElement_addTextTrack_1(this._parent, kind));
  }
}
struct HTMLMenuElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void compact(bool compact) {
    HTMLMenuElement_compact_Set(this._parent, compact);
  }
  auto compact() {
    return HTMLMenuElement_compact_Get(this._parent);
  }
}
struct HTMLMetaElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void name(string name) {
    HTMLMetaElement_name_Set(this._parent, name);
  }
  auto name() {
    return HTMLMetaElement_name_Get(this._parent);
  }
  void httpEquiv(string httpEquiv) {
    HTMLMetaElement_httpEquiv_Set(this._parent, httpEquiv);
  }
  auto httpEquiv() {
    return HTMLMetaElement_httpEquiv_Get(this._parent);
  }
  void content(string content) {
    HTMLMetaElement_content_Set(this._parent, content);
  }
  auto content() {
    return HTMLMetaElement_content_Get(this._parent);
  }
  void scheme(string scheme) {
    HTMLMetaElement_scheme_Set(this._parent, scheme);
  }
  auto scheme() {
    return HTMLMetaElement_scheme_Get(this._parent);
  }
}
struct HTMLMeterElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void value(double value) {
    HTMLMeterElement_value_Set(this._parent, value);
  }
  auto value() {
    return HTMLMeterElement_value_Get(this._parent);
  }
  void min(double min) {
    HTMLMeterElement_min_Set(this._parent, min);
  }
  auto min() {
    return HTMLMeterElement_min_Get(this._parent);
  }
  void max(double max) {
    HTMLMeterElement_max_Set(this._parent, max);
  }
  auto max() {
    return HTMLMeterElement_max_Get(this._parent);
  }
  void low(double low) {
    HTMLMeterElement_low_Set(this._parent, low);
  }
  auto low() {
    return HTMLMeterElement_low_Get(this._parent);
  }
  void high(double high) {
    HTMLMeterElement_high_Set(this._parent, high);
  }
  auto high() {
    return HTMLMeterElement_high_Get(this._parent);
  }
  void optimum(double optimum) {
    HTMLMeterElement_optimum_Set(this._parent, optimum);
  }
  auto optimum() {
    return HTMLMeterElement_optimum_Get(this._parent);
  }
  auto labels() {
    return NodeList(HTMLMeterElement_labels_Get(this._parent));
  }
}
struct HTMLModElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void cite(string cite) {
    HTMLModElement_cite_Set(this._parent, cite);
  }
  auto cite() {
    return HTMLModElement_cite_Get(this._parent);
  }
  void dateTime(string dateTime) {
    HTMLModElement_dateTime_Set(this._parent, dateTime);
  }
  auto dateTime() {
    return HTMLModElement_dateTime_Get(this._parent);
  }
}
struct HTMLOListElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void reversed(bool reversed) {
    HTMLOListElement_reversed_Set(this._parent, reversed);
  }
  auto reversed() {
    return HTMLOListElement_reversed_Get(this._parent);
  }
  void start(int start) {
    HTMLOListElement_start_Set(this._parent, start);
  }
  auto start() {
    return HTMLOListElement_start_Get(this._parent);
  }
  void type(string type) {
    HTMLOListElement_type_Set(this._parent, type);
  }
  auto type() {
    return HTMLOListElement_type_Get(this._parent);
  }
  void compact(bool compact) {
    HTMLOListElement_compact_Set(this._parent, compact);
  }
  auto compact() {
    return HTMLOListElement_compact_Get(this._parent);
  }
}
struct HTMLObjectElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void data(string data) {
    HTMLObjectElement_data_Set(this._parent, data);
  }
  auto data() {
    return HTMLObjectElement_data_Get(this._parent);
  }
  void type(string type) {
    HTMLObjectElement_type_Set(this._parent, type);
  }
  auto type() {
    return HTMLObjectElement_type_Get(this._parent);
  }
  void typeMustMatch(bool typeMustMatch) {
    HTMLObjectElement_typeMustMatch_Set(this._parent, typeMustMatch);
  }
  auto typeMustMatch() {
    return HTMLObjectElement_typeMustMatch_Get(this._parent);
  }
  void name(string name) {
    HTMLObjectElement_name_Set(this._parent, name);
  }
  auto name() {
    return HTMLObjectElement_name_Get(this._parent);
  }
  void useMap(string useMap) {
    HTMLObjectElement_useMap_Set(this._parent, useMap);
  }
  auto useMap() {
    return HTMLObjectElement_useMap_Get(this._parent);
  }
  auto form() {
    return HTMLObjectElement_form_Get(this._parent);
  }
  void width(string width) {
    HTMLObjectElement_width_Set(this._parent, width);
  }
  auto width() {
    return HTMLObjectElement_width_Get(this._parent);
  }
  void height(string height) {
    HTMLObjectElement_height_Set(this._parent, height);
  }
  auto height() {
    return HTMLObjectElement_height_Get(this._parent);
  }
  auto contentDocument() {
    return HTMLObjectElement_contentDocument_Get(this._parent);
  }
  auto contentWindow() {
    return HTMLObjectElement_contentWindow_Get(this._parent);
  }
  auto getSVGDocument() {
    return HTMLObjectElement_getSVGDocument(this._parent);
  }
  auto willValidate() {
    return HTMLObjectElement_willValidate_Get(this._parent);
  }
  auto validity() {
    return ValidityState(HTMLObjectElement_validity_Get(this._parent));
  }
  auto validationMessage() {
    return HTMLObjectElement_validationMessage_Get(this._parent);
  }
  auto checkValidity() {
    return HTMLObjectElement_checkValidity(this._parent);
  }
  auto reportValidity() {
    return HTMLObjectElement_reportValidity(this._parent);
  }
  void setCustomValidity(string error) {
    HTMLObjectElement_setCustomValidity(this._parent, error);
  }
  void align_(string align_) {
    HTMLObjectElement_align_Set(this._parent, align_);
  }
  auto align_() {
    return HTMLObjectElement_align_Get(this._parent);
  }
  void archive(string archive) {
    HTMLObjectElement_archive_Set(this._parent, archive);
  }
  auto archive() {
    return HTMLObjectElement_archive_Get(this._parent);
  }
  void code(string code) {
    HTMLObjectElement_code_Set(this._parent, code);
  }
  auto code() {
    return HTMLObjectElement_code_Get(this._parent);
  }
  void declare(bool declare) {
    HTMLObjectElement_declare_Set(this._parent, declare);
  }
  auto declare() {
    return HTMLObjectElement_declare_Get(this._parent);
  }
  void hspace(uint hspace) {
    HTMLObjectElement_hspace_Set(this._parent, hspace);
  }
  auto hspace() {
    return HTMLObjectElement_hspace_Get(this._parent);
  }
  void standby(string standby) {
    HTMLObjectElement_standby_Set(this._parent, standby);
  }
  auto standby() {
    return HTMLObjectElement_standby_Get(this._parent);
  }
  void vspace(uint vspace) {
    HTMLObjectElement_vspace_Set(this._parent, vspace);
  }
  auto vspace() {
    return HTMLObjectElement_vspace_Get(this._parent);
  }
  void codeBase(string codeBase) {
    HTMLObjectElement_codeBase_Set(this._parent, codeBase);
  }
  auto codeBase() {
    return HTMLObjectElement_codeBase_Get(this._parent);
  }
  void codeType(string codeType) {
    HTMLObjectElement_codeType_Set(this._parent, codeType);
  }
  auto codeType() {
    return HTMLObjectElement_codeType_Get(this._parent);
  }
  void border(string border) {
    HTMLObjectElement_border_Set(this._parent, border);
  }
  auto border() {
    return HTMLObjectElement_border_Get(this._parent);
  }
}
struct HTMLOptGroupElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void disabled(bool disabled) {
    HTMLOptGroupElement_disabled_Set(this._parent, disabled);
  }
  auto disabled() {
    return HTMLOptGroupElement_disabled_Get(this._parent);
  }
  void label(string label) {
    HTMLOptGroupElement_label_Set(this._parent, label);
  }
  auto label() {
    return HTMLOptGroupElement_label_Get(this._parent);
  }
}
struct HTMLOptionElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void disabled(bool disabled) {
    HTMLOptionElement_disabled_Set(this._parent, disabled);
  }
  auto disabled() {
    return HTMLOptionElement_disabled_Get(this._parent);
  }
  auto form() {
    return HTMLOptionElement_form_Get(this._parent);
  }
  void label(string label) {
    HTMLOptionElement_label_Set(this._parent, label);
  }
  auto label() {
    return HTMLOptionElement_label_Get(this._parent);
  }
  void defaultSelected(bool defaultSelected) {
    HTMLOptionElement_defaultSelected_Set(this._parent, defaultSelected);
  }
  auto defaultSelected() {
    return HTMLOptionElement_defaultSelected_Get(this._parent);
  }
  void selected(bool selected) {
    HTMLOptionElement_selected_Set(this._parent, selected);
  }
  auto selected() {
    return HTMLOptionElement_selected_Get(this._parent);
  }
  void value(string value) {
    HTMLOptionElement_value_Set(this._parent, value);
  }
  auto value() {
    return HTMLOptionElement_value_Get(this._parent);
  }
  void text(string text) {
    HTMLOptionElement_text_Set(this._parent, text);
  }
  auto text() {
    return HTMLOptionElement_text_Get(this._parent);
  }
  auto index() {
    return HTMLOptionElement_index_Get(this._parent);
  }
}
struct HTMLOptionsCollection {
  nothrow:
  spasm.bindings.dom.HTMLCollection _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLCollection(h);
  }
  void length(uint length) {
    HTMLOptionsCollection_length_Set(this._parent, length);
  }
  auto length() {
    return HTMLOptionsCollection_length_Get(this._parent);
  }
  void opIndexAssign(scope ref Optional!(HTMLOptionElement) option, uint index) {
    HTMLOptionsCollection_setter__uint_optional_Handle(this._parent, index, !option.empty, option.front._parent);
  }
  void opDispatch(uint index)(scope ref Optional!(HTMLOptionElement) option) {
    HTMLOptionsCollection_setter__uint_optional_Handle(this._parent, index, !option.empty, option.front._parent);
  }
  void add(scope ref SumType!(HTMLOptionElement, HTMLOptGroupElement) element, scope ref Optional!(SumType!(HTMLElement, int)) before /* = no!(SumType!(HTMLElement, int)) */) {
    HTMLOptionsCollection_add(this._parent, element, !before.empty, before.front);
  }
  void add(scope ref SumType!(HTMLOptionElement, HTMLOptGroupElement) element) {
    HTMLOptionsCollection_add_0(this._parent, element);
  }
  void remove(int index) {
    HTMLOptionsCollection_remove(this._parent, index);
  }
  void selectedIndex(int selectedIndex) {
    HTMLOptionsCollection_selectedIndex_Set(this._parent, selectedIndex);
  }
  auto selectedIndex() {
    return HTMLOptionsCollection_selectedIndex_Get(this._parent);
  }
}
alias HTMLOrSVGImageElement = SumType!(HTMLImageElement, SVGImageElement);
alias HTMLOrSVGScriptElement = SumType!(HTMLScriptElement, SVGScriptElement);
struct HTMLOutputElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  auto htmlFor() {
    return DOMTokenList(HTMLOutputElement_htmlFor_Get(this._parent));
  }
  auto form() {
    return HTMLOutputElement_form_Get(this._parent);
  }
  void name(string name) {
    HTMLOutputElement_name_Set(this._parent, name);
  }
  auto name() {
    return HTMLOutputElement_name_Get(this._parent);
  }
  auto type() {
    return HTMLOutputElement_type_Get(this._parent);
  }
  void defaultValue(string defaultValue) {
    HTMLOutputElement_defaultValue_Set(this._parent, defaultValue);
  }
  auto defaultValue() {
    return HTMLOutputElement_defaultValue_Get(this._parent);
  }
  void value(string value) {
    HTMLOutputElement_value_Set(this._parent, value);
  }
  auto value() {
    return HTMLOutputElement_value_Get(this._parent);
  }
  auto willValidate() {
    return HTMLOutputElement_willValidate_Get(this._parent);
  }
  auto validity() {
    return ValidityState(HTMLOutputElement_validity_Get(this._parent));
  }
  auto validationMessage() {
    return HTMLOutputElement_validationMessage_Get(this._parent);
  }
  auto checkValidity() {
    return HTMLOutputElement_checkValidity(this._parent);
  }
  auto reportValidity() {
    return HTMLOutputElement_reportValidity(this._parent);
  }
  void setCustomValidity(string error) {
    HTMLOutputElement_setCustomValidity(this._parent, error);
  }
  auto labels() {
    return NodeList(HTMLOutputElement_labels_Get(this._parent));
  }
}
struct HTMLParagraphElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void align_(string align_) {
    HTMLParagraphElement_align_Set(this._parent, align_);
  }
  auto align_() {
    return HTMLParagraphElement_align_Get(this._parent);
  }
}
struct HTMLParamElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void name(string name) {
    HTMLParamElement_name_Set(this._parent, name);
  }
  auto name() {
    return HTMLParamElement_name_Get(this._parent);
  }
  void value(string value) {
    HTMLParamElement_value_Set(this._parent, value);
  }
  auto value() {
    return HTMLParamElement_value_Get(this._parent);
  }
  void type(string type) {
    HTMLParamElement_type_Set(this._parent, type);
  }
  auto type() {
    return HTMLParamElement_type_Get(this._parent);
  }
  void valueType(string valueType) {
    HTMLParamElement_valueType_Set(this._parent, valueType);
  }
  auto valueType() {
    return HTMLParamElement_valueType_Get(this._parent);
  }
}
struct HTMLPictureElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
}
struct HTMLPreElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void width(int width) {
    HTMLPreElement_width_Set(this._parent, width);
  }
  auto width() {
    return HTMLPreElement_width_Get(this._parent);
  }
}
struct HTMLProgressElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void value(double value) {
    HTMLProgressElement_value_Set(this._parent, value);
  }
  auto value() {
    return HTMLProgressElement_value_Get(this._parent);
  }
  void max(double max) {
    HTMLProgressElement_max_Set(this._parent, max);
  }
  auto max() {
    return HTMLProgressElement_max_Get(this._parent);
  }
  auto position() {
    return HTMLProgressElement_position_Get(this._parent);
  }
  auto labels() {
    return NodeList(HTMLProgressElement_labels_Get(this._parent));
  }
}
struct HTMLQuoteElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void cite(string cite) {
    HTMLQuoteElement_cite_Set(this._parent, cite);
  }
  auto cite() {
    return HTMLQuoteElement_cite_Get(this._parent);
  }
}
struct HTMLScriptElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void src(string src) {
    HTMLScriptElement_src_Set(this._parent, src);
  }
  auto src() {
    return HTMLScriptElement_src_Get(this._parent);
  }
  void type(string type) {
    HTMLScriptElement_type_Set(this._parent, type);
  }
  auto type() {
    return HTMLScriptElement_type_Get(this._parent);
  }
  void noModule(bool noModule) {
    HTMLScriptElement_noModule_Set(this._parent, noModule);
  }
  auto noModule() {
    return HTMLScriptElement_noModule_Get(this._parent);
  }
  void async(bool async) {
    HTMLScriptElement_async_Set(this._parent, async);
  }
  auto async() {
    return HTMLScriptElement_async_Get(this._parent);
  }
  void defer(bool defer) {
    HTMLScriptElement_defer_Set(this._parent, defer);
  }
  auto defer() {
    return HTMLScriptElement_defer_Get(this._parent);
  }
  void crossOrigin(scope ref Optional!(string) crossOrigin) {
    HTMLScriptElement_crossOrigin_Set(this._parent, !crossOrigin.empty, crossOrigin.front);
  }
  auto crossOrigin() {
    return HTMLScriptElement_crossOrigin_Get(this._parent);
  }
  void text(string text) {
    HTMLScriptElement_text_Set(this._parent, text);
  }
  auto text() {
    return HTMLScriptElement_text_Get(this._parent);
  }
  void integrity(string integrity) {
    HTMLScriptElement_integrity_Set(this._parent, integrity);
  }
  auto integrity() {
    return HTMLScriptElement_integrity_Get(this._parent);
  }
  void referrerPolicy(string referrerPolicy) {
    HTMLScriptElement_referrerPolicy_Set(this._parent, referrerPolicy);
  }
  auto referrerPolicy() {
    return HTMLScriptElement_referrerPolicy_Get(this._parent);
  }
  void charset(string charset) {
    HTMLScriptElement_charset_Set(this._parent, charset);
  }
  auto charset() {
    return HTMLScriptElement_charset_Get(this._parent);
  }
  void event(string event) {
    HTMLScriptElement_event_Set(this._parent, event);
  }
  auto event() {
    return HTMLScriptElement_event_Get(this._parent);
  }
  void htmlFor(string htmlFor) {
    HTMLScriptElement_htmlFor_Set(this._parent, htmlFor);
  }
  auto htmlFor() {
    return HTMLScriptElement_htmlFor_Get(this._parent);
  }
}
struct HTMLSelectElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void autocomplete(string autocomplete) {
    HTMLSelectElement_autocomplete_Set(this._parent, autocomplete);
  }
  auto autocomplete() {
    return HTMLSelectElement_autocomplete_Get(this._parent);
  }
  void autofocus(bool autofocus) {
    HTMLSelectElement_autofocus_Set(this._parent, autofocus);
  }
  auto autofocus() {
    return HTMLSelectElement_autofocus_Get(this._parent);
  }
  void disabled(bool disabled) {
    HTMLSelectElement_disabled_Set(this._parent, disabled);
  }
  auto disabled() {
    return HTMLSelectElement_disabled_Get(this._parent);
  }
  auto form() {
    return HTMLSelectElement_form_Get(this._parent);
  }
  void multiple(bool multiple) {
    HTMLSelectElement_multiple_Set(this._parent, multiple);
  }
  auto multiple() {
    return HTMLSelectElement_multiple_Get(this._parent);
  }
  void name(string name) {
    HTMLSelectElement_name_Set(this._parent, name);
  }
  auto name() {
    return HTMLSelectElement_name_Get(this._parent);
  }
  void required(bool required) {
    HTMLSelectElement_required_Set(this._parent, required);
  }
  auto required() {
    return HTMLSelectElement_required_Get(this._parent);
  }
  void size(uint size) {
    HTMLSelectElement_size_Set(this._parent, size);
  }
  auto size() {
    return HTMLSelectElement_size_Get(this._parent);
  }
  auto type() {
    return HTMLSelectElement_type_Get(this._parent);
  }
  auto options() {
    return HTMLOptionsCollection(HTMLSelectElement_options_Get(this._parent));
  }
  void length(uint length) {
    HTMLSelectElement_length_Set(this._parent, length);
  }
  auto length() {
    return HTMLSelectElement_length_Get(this._parent);
  }
  auto item(uint index) {
    return HTMLSelectElement_item_getter(this._parent, index);
  }
  auto namedItem(string name) {
    return HTMLSelectElement_namedItem(this._parent, name);
  }
  void add(scope ref SumType!(HTMLOptionElement, HTMLOptGroupElement) element, scope ref Optional!(SumType!(HTMLElement, int)) before /* = no!(SumType!(HTMLElement, int)) */) {
    HTMLSelectElement_add(this._parent, element, !before.empty, before.front);
  }
  void add(scope ref SumType!(HTMLOptionElement, HTMLOptGroupElement) element) {
    HTMLSelectElement_add_0(this._parent, element);
  }
  void remove() {
    HTMLSelectElement_remove__(this._parent);
  }
  void remove(int index) {
    HTMLSelectElement_remove__int(this._parent, index);
  }
  void opIndexAssign(scope ref Optional!(HTMLOptionElement) option, uint index) {
    HTMLSelectElement_setter__uint_optional_Handle(this._parent, index, !option.empty, option.front._parent);
  }
  void opDispatch(uint index)(scope ref Optional!(HTMLOptionElement) option) {
    HTMLSelectElement_setter__uint_optional_Handle(this._parent, index, !option.empty, option.front._parent);
  }
  auto selectedOptions() {
    return HTMLCollection(HTMLSelectElement_selectedOptions_Get(this._parent));
  }
  void selectedIndex(int selectedIndex) {
    HTMLSelectElement_selectedIndex_Set(this._parent, selectedIndex);
  }
  auto selectedIndex() {
    return HTMLSelectElement_selectedIndex_Get(this._parent);
  }
  void value(string value) {
    HTMLSelectElement_value_Set(this._parent, value);
  }
  auto value() {
    return HTMLSelectElement_value_Get(this._parent);
  }
  auto willValidate() {
    return HTMLSelectElement_willValidate_Get(this._parent);
  }
  auto validity() {
    return ValidityState(HTMLSelectElement_validity_Get(this._parent));
  }
  auto validationMessage() {
    return HTMLSelectElement_validationMessage_Get(this._parent);
  }
  auto checkValidity() {
    return HTMLSelectElement_checkValidity(this._parent);
  }
  auto reportValidity() {
    return HTMLSelectElement_reportValidity(this._parent);
  }
  void setCustomValidity(string error) {
    HTMLSelectElement_setCustomValidity(this._parent, error);
  }
  auto labels() {
    return NodeList(HTMLSelectElement_labels_Get(this._parent));
  }
}
struct HTMLSlotElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void name(string name) {
    HTMLSlotElement_name_Set(this._parent, name);
  }
  auto name() {
    return HTMLSlotElement_name_Get(this._parent);
  }
  auto assignedNodes(scope ref AssignedNodesOptions options) {
    return Sequence!(Node)(HTMLSlotElement_assignedNodes(this._parent, options.handle));
  }
  auto assignedNodes() {
    return Sequence!(Node)(HTMLSlotElement_assignedNodes_0(this._parent));
  }
  auto assignedElements(scope ref AssignedNodesOptions options) {
    return Sequence!(Element)(HTMLSlotElement_assignedElements(this._parent, options.handle));
  }
  auto assignedElements() {
    return Sequence!(Element)(HTMLSlotElement_assignedElements_0(this._parent));
  }
}
struct HTMLSourceElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void src(string src) {
    HTMLSourceElement_src_Set(this._parent, src);
  }
  auto src() {
    return HTMLSourceElement_src_Get(this._parent);
  }
  void type(string type) {
    HTMLSourceElement_type_Set(this._parent, type);
  }
  auto type() {
    return HTMLSourceElement_type_Get(this._parent);
  }
  void srcset(string srcset) {
    HTMLSourceElement_srcset_Set(this._parent, srcset);
  }
  auto srcset() {
    return HTMLSourceElement_srcset_Get(this._parent);
  }
  void sizes(string sizes) {
    HTMLSourceElement_sizes_Set(this._parent, sizes);
  }
  auto sizes() {
    return HTMLSourceElement_sizes_Get(this._parent);
  }
  void media(string media) {
    HTMLSourceElement_media_Set(this._parent, media);
  }
  auto media() {
    return HTMLSourceElement_media_Get(this._parent);
  }
}
struct HTMLSpanElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
}
struct HTMLStyleElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void media(string media) {
    HTMLStyleElement_media_Set(this._parent, media);
  }
  auto media() {
    return HTMLStyleElement_media_Get(this._parent);
  }
  void type(string type) {
    HTMLStyleElement_type_Set(this._parent, type);
  }
  auto type() {
    return HTMLStyleElement_type_Get(this._parent);
  }
}
struct HTMLTableCaptionElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void align_(string align_) {
    HTMLTableCaptionElement_align_Set(this._parent, align_);
  }
  auto align_() {
    return HTMLTableCaptionElement_align_Get(this._parent);
  }
}
struct HTMLTableCellElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void colSpan(uint colSpan) {
    HTMLTableCellElement_colSpan_Set(this._parent, colSpan);
  }
  auto colSpan() {
    return HTMLTableCellElement_colSpan_Get(this._parent);
  }
  void rowSpan(uint rowSpan) {
    HTMLTableCellElement_rowSpan_Set(this._parent, rowSpan);
  }
  auto rowSpan() {
    return HTMLTableCellElement_rowSpan_Get(this._parent);
  }
  void headers(string headers) {
    HTMLTableCellElement_headers_Set(this._parent, headers);
  }
  auto headers() {
    return HTMLTableCellElement_headers_Get(this._parent);
  }
  auto cellIndex() {
    return HTMLTableCellElement_cellIndex_Get(this._parent);
  }
  void scope_(string scope_) {
    HTMLTableCellElement_scope_Set(this._parent, scope_);
  }
  auto scope_() {
    return HTMLTableCellElement_scope_Get(this._parent);
  }
  void abbr(string abbr) {
    HTMLTableCellElement_abbr_Set(this._parent, abbr);
  }
  auto abbr() {
    return HTMLTableCellElement_abbr_Get(this._parent);
  }
  void align_(string align_) {
    HTMLTableCellElement_align_Set(this._parent, align_);
  }
  auto align_() {
    return HTMLTableCellElement_align_Get(this._parent);
  }
  void axis(string axis) {
    HTMLTableCellElement_axis_Set(this._parent, axis);
  }
  auto axis() {
    return HTMLTableCellElement_axis_Get(this._parent);
  }
  void height(string height) {
    HTMLTableCellElement_height_Set(this._parent, height);
  }
  auto height() {
    return HTMLTableCellElement_height_Get(this._parent);
  }
  void width(string width) {
    HTMLTableCellElement_width_Set(this._parent, width);
  }
  auto width() {
    return HTMLTableCellElement_width_Get(this._parent);
  }
  void ch(string ch) {
    HTMLTableCellElement_ch_Set(this._parent, ch);
  }
  auto ch() {
    return HTMLTableCellElement_ch_Get(this._parent);
  }
  void chOff(string chOff) {
    HTMLTableCellElement_chOff_Set(this._parent, chOff);
  }
  auto chOff() {
    return HTMLTableCellElement_chOff_Get(this._parent);
  }
  void noWrap(bool noWrap) {
    HTMLTableCellElement_noWrap_Set(this._parent, noWrap);
  }
  auto noWrap() {
    return HTMLTableCellElement_noWrap_Get(this._parent);
  }
  void vAlign(string vAlign) {
    HTMLTableCellElement_vAlign_Set(this._parent, vAlign);
  }
  auto vAlign() {
    return HTMLTableCellElement_vAlign_Get(this._parent);
  }
  void bgColor(string bgColor) {
    HTMLTableCellElement_bgColor_Set(this._parent, bgColor);
  }
  auto bgColor() {
    return HTMLTableCellElement_bgColor_Get(this._parent);
  }
}
struct HTMLTableColElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void span(uint span) {
    HTMLTableColElement_span_Set(this._parent, span);
  }
  auto span() {
    return HTMLTableColElement_span_Get(this._parent);
  }
  void align_(string align_) {
    HTMLTableColElement_align_Set(this._parent, align_);
  }
  auto align_() {
    return HTMLTableColElement_align_Get(this._parent);
  }
  void ch(string ch) {
    HTMLTableColElement_ch_Set(this._parent, ch);
  }
  auto ch() {
    return HTMLTableColElement_ch_Get(this._parent);
  }
  void chOff(string chOff) {
    HTMLTableColElement_chOff_Set(this._parent, chOff);
  }
  auto chOff() {
    return HTMLTableColElement_chOff_Get(this._parent);
  }
  void vAlign(string vAlign) {
    HTMLTableColElement_vAlign_Set(this._parent, vAlign);
  }
  auto vAlign() {
    return HTMLTableColElement_vAlign_Get(this._parent);
  }
  void width(string width) {
    HTMLTableColElement_width_Set(this._parent, width);
  }
  auto width() {
    return HTMLTableColElement_width_Get(this._parent);
  }
}
struct HTMLTableElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void caption(scope ref Optional!(HTMLTableCaptionElement) caption) {
    HTMLTableElement_caption_Set(this._parent, !caption.empty, caption.front.handle);
  }
  auto caption() {
    return HTMLTableElement_caption_Get(this._parent);
  }
  auto createCaption() {
    return HTMLTableCaptionElement(HTMLTableElement_createCaption(this._parent));
  }
  void deleteCaption() {
    HTMLTableElement_deleteCaption(this._parent);
  }
  void tHead(scope ref Optional!(HTMLTableSectionElement) tHead) {
    HTMLTableElement_tHead_Set(this._parent, !tHead.empty, tHead.front.handle);
  }
  auto tHead() {
    return HTMLTableElement_tHead_Get(this._parent);
  }
  auto createTHead() {
    return HTMLTableSectionElement(HTMLTableElement_createTHead(this._parent));
  }
  void deleteTHead() {
    HTMLTableElement_deleteTHead(this._parent);
  }
  void tFoot(scope ref Optional!(HTMLTableSectionElement) tFoot) {
    HTMLTableElement_tFoot_Set(this._parent, !tFoot.empty, tFoot.front.handle);
  }
  auto tFoot() {
    return HTMLTableElement_tFoot_Get(this._parent);
  }
  auto createTFoot() {
    return HTMLTableSectionElement(HTMLTableElement_createTFoot(this._parent));
  }
  void deleteTFoot() {
    HTMLTableElement_deleteTFoot(this._parent);
  }
  auto tBodies() {
    return HTMLCollection(HTMLTableElement_tBodies_Get(this._parent));
  }
  auto createTBody() {
    return HTMLTableSectionElement(HTMLTableElement_createTBody(this._parent));
  }
  auto rows() {
    return HTMLCollection(HTMLTableElement_rows_Get(this._parent));
  }
  auto insertRow(int index /* = -1 */) {
    return HTMLTableRowElement(HTMLTableElement_insertRow(this._parent, index));
  }
  auto insertRow() {
    return HTMLTableRowElement(HTMLTableElement_insertRow_0(this._parent));
  }
  void deleteRow(int index) {
    HTMLTableElement_deleteRow(this._parent, index);
  }
  void align_(string align_) {
    HTMLTableElement_align_Set(this._parent, align_);
  }
  auto align_() {
    return HTMLTableElement_align_Get(this._parent);
  }
  void border(string border) {
    HTMLTableElement_border_Set(this._parent, border);
  }
  auto border() {
    return HTMLTableElement_border_Get(this._parent);
  }
  void frame(string frame) {
    HTMLTableElement_frame_Set(this._parent, frame);
  }
  auto frame() {
    return HTMLTableElement_frame_Get(this._parent);
  }
  void rules(string rules) {
    HTMLTableElement_rules_Set(this._parent, rules);
  }
  auto rules() {
    return HTMLTableElement_rules_Get(this._parent);
  }
  void summary(string summary) {
    HTMLTableElement_summary_Set(this._parent, summary);
  }
  auto summary() {
    return HTMLTableElement_summary_Get(this._parent);
  }
  void width(string width) {
    HTMLTableElement_width_Set(this._parent, width);
  }
  auto width() {
    return HTMLTableElement_width_Get(this._parent);
  }
  void bgColor(string bgColor) {
    HTMLTableElement_bgColor_Set(this._parent, bgColor);
  }
  auto bgColor() {
    return HTMLTableElement_bgColor_Get(this._parent);
  }
  void cellPadding(string cellPadding) {
    HTMLTableElement_cellPadding_Set(this._parent, cellPadding);
  }
  auto cellPadding() {
    return HTMLTableElement_cellPadding_Get(this._parent);
  }
  void cellSpacing(string cellSpacing) {
    HTMLTableElement_cellSpacing_Set(this._parent, cellSpacing);
  }
  auto cellSpacing() {
    return HTMLTableElement_cellSpacing_Get(this._parent);
  }
}
struct HTMLTableRowElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  auto rowIndex() {
    return HTMLTableRowElement_rowIndex_Get(this._parent);
  }
  auto sectionRowIndex() {
    return HTMLTableRowElement_sectionRowIndex_Get(this._parent);
  }
  auto cells() {
    return HTMLCollection(HTMLTableRowElement_cells_Get(this._parent));
  }
  auto insertCell(int index /* = -1 */) {
    return HTMLTableCellElement(HTMLTableRowElement_insertCell(this._parent, index));
  }
  auto insertCell() {
    return HTMLTableCellElement(HTMLTableRowElement_insertCell_0(this._parent));
  }
  void deleteCell(int index) {
    HTMLTableRowElement_deleteCell(this._parent, index);
  }
  void align_(string align_) {
    HTMLTableRowElement_align_Set(this._parent, align_);
  }
  auto align_() {
    return HTMLTableRowElement_align_Get(this._parent);
  }
  void ch(string ch) {
    HTMLTableRowElement_ch_Set(this._parent, ch);
  }
  auto ch() {
    return HTMLTableRowElement_ch_Get(this._parent);
  }
  void chOff(string chOff) {
    HTMLTableRowElement_chOff_Set(this._parent, chOff);
  }
  auto chOff() {
    return HTMLTableRowElement_chOff_Get(this._parent);
  }
  void vAlign(string vAlign) {
    HTMLTableRowElement_vAlign_Set(this._parent, vAlign);
  }
  auto vAlign() {
    return HTMLTableRowElement_vAlign_Get(this._parent);
  }
  void bgColor(string bgColor) {
    HTMLTableRowElement_bgColor_Set(this._parent, bgColor);
  }
  auto bgColor() {
    return HTMLTableRowElement_bgColor_Get(this._parent);
  }
}
struct HTMLTableSectionElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  auto rows() {
    return HTMLCollection(HTMLTableSectionElement_rows_Get(this._parent));
  }
  auto insertRow(int index /* = -1 */) {
    return HTMLTableRowElement(HTMLTableSectionElement_insertRow(this._parent, index));
  }
  auto insertRow() {
    return HTMLTableRowElement(HTMLTableSectionElement_insertRow_0(this._parent));
  }
  void deleteRow(int index) {
    HTMLTableSectionElement_deleteRow(this._parent, index);
  }
  void align_(string align_) {
    HTMLTableSectionElement_align_Set(this._parent, align_);
  }
  auto align_() {
    return HTMLTableSectionElement_align_Get(this._parent);
  }
  void ch(string ch) {
    HTMLTableSectionElement_ch_Set(this._parent, ch);
  }
  auto ch() {
    return HTMLTableSectionElement_ch_Get(this._parent);
  }
  void chOff(string chOff) {
    HTMLTableSectionElement_chOff_Set(this._parent, chOff);
  }
  auto chOff() {
    return HTMLTableSectionElement_chOff_Get(this._parent);
  }
  void vAlign(string vAlign) {
    HTMLTableSectionElement_vAlign_Set(this._parent, vAlign);
  }
  auto vAlign() {
    return HTMLTableSectionElement_vAlign_Get(this._parent);
  }
}
struct HTMLTemplateElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  auto content() {
    return DocumentFragment(HTMLTemplateElement_content_Get(this._parent));
  }
}
struct HTMLTextAreaElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void autocomplete(string autocomplete) {
    HTMLTextAreaElement_autocomplete_Set(this._parent, autocomplete);
  }
  auto autocomplete() {
    return HTMLTextAreaElement_autocomplete_Get(this._parent);
  }
  void autofocus(bool autofocus) {
    HTMLTextAreaElement_autofocus_Set(this._parent, autofocus);
  }
  auto autofocus() {
    return HTMLTextAreaElement_autofocus_Get(this._parent);
  }
  void cols(uint cols) {
    HTMLTextAreaElement_cols_Set(this._parent, cols);
  }
  auto cols() {
    return HTMLTextAreaElement_cols_Get(this._parent);
  }
  void dirName(string dirName) {
    HTMLTextAreaElement_dirName_Set(this._parent, dirName);
  }
  auto dirName() {
    return HTMLTextAreaElement_dirName_Get(this._parent);
  }
  void disabled(bool disabled) {
    HTMLTextAreaElement_disabled_Set(this._parent, disabled);
  }
  auto disabled() {
    return HTMLTextAreaElement_disabled_Get(this._parent);
  }
  auto form() {
    return HTMLTextAreaElement_form_Get(this._parent);
  }
  void maxLength(int maxLength) {
    HTMLTextAreaElement_maxLength_Set(this._parent, maxLength);
  }
  auto maxLength() {
    return HTMLTextAreaElement_maxLength_Get(this._parent);
  }
  void minLength(int minLength) {
    HTMLTextAreaElement_minLength_Set(this._parent, minLength);
  }
  auto minLength() {
    return HTMLTextAreaElement_minLength_Get(this._parent);
  }
  void name(string name) {
    HTMLTextAreaElement_name_Set(this._parent, name);
  }
  auto name() {
    return HTMLTextAreaElement_name_Get(this._parent);
  }
  void placeholder(string placeholder) {
    HTMLTextAreaElement_placeholder_Set(this._parent, placeholder);
  }
  auto placeholder() {
    return HTMLTextAreaElement_placeholder_Get(this._parent);
  }
  void readOnly(bool readOnly) {
    HTMLTextAreaElement_readOnly_Set(this._parent, readOnly);
  }
  auto readOnly() {
    return HTMLTextAreaElement_readOnly_Get(this._parent);
  }
  void required(bool required) {
    HTMLTextAreaElement_required_Set(this._parent, required);
  }
  auto required() {
    return HTMLTextAreaElement_required_Get(this._parent);
  }
  void rows(uint rows) {
    HTMLTextAreaElement_rows_Set(this._parent, rows);
  }
  auto rows() {
    return HTMLTextAreaElement_rows_Get(this._parent);
  }
  void wrap(string wrap) {
    HTMLTextAreaElement_wrap_Set(this._parent, wrap);
  }
  auto wrap() {
    return HTMLTextAreaElement_wrap_Get(this._parent);
  }
  auto type() {
    return HTMLTextAreaElement_type_Get(this._parent);
  }
  void defaultValue(string defaultValue) {
    HTMLTextAreaElement_defaultValue_Set(this._parent, defaultValue);
  }
  auto defaultValue() {
    return HTMLTextAreaElement_defaultValue_Get(this._parent);
  }
  void value(string value) {
    HTMLTextAreaElement_value_Set(this._parent, value);
  }
  auto value() {
    return HTMLTextAreaElement_value_Get(this._parent);
  }
  auto textLength() {
    return HTMLTextAreaElement_textLength_Get(this._parent);
  }
  auto willValidate() {
    return HTMLTextAreaElement_willValidate_Get(this._parent);
  }
  auto validity() {
    return ValidityState(HTMLTextAreaElement_validity_Get(this._parent));
  }
  auto validationMessage() {
    return HTMLTextAreaElement_validationMessage_Get(this._parent);
  }
  auto checkValidity() {
    return HTMLTextAreaElement_checkValidity(this._parent);
  }
  auto reportValidity() {
    return HTMLTextAreaElement_reportValidity(this._parent);
  }
  void setCustomValidity(string error) {
    HTMLTextAreaElement_setCustomValidity(this._parent, error);
  }
  auto labels() {
    return NodeList(HTMLTextAreaElement_labels_Get(this._parent));
  }
  void select() {
    HTMLTextAreaElement_select(this._parent);
  }
  void selectionStart(uint selectionStart) {
    HTMLTextAreaElement_selectionStart_Set(this._parent, selectionStart);
  }
  auto selectionStart() {
    return HTMLTextAreaElement_selectionStart_Get(this._parent);
  }
  void selectionEnd(uint selectionEnd) {
    HTMLTextAreaElement_selectionEnd_Set(this._parent, selectionEnd);
  }
  auto selectionEnd() {
    return HTMLTextAreaElement_selectionEnd_Get(this._parent);
  }
  void selectionDirection(string selectionDirection) {
    HTMLTextAreaElement_selectionDirection_Set(this._parent, selectionDirection);
  }
  auto selectionDirection() {
    return HTMLTextAreaElement_selectionDirection_Get(this._parent);
  }
  void setRangeText(string replacement) {
    HTMLTextAreaElement_setRangeText__string(this._parent, replacement);
  }
  void setRangeText(string replacement, uint start, uint end, SelectionMode selectionMode /* = "preserve" */) {
    HTMLTextAreaElement_setRangeText__string_uint_uint_SelectionMode(this._parent, replacement, start, end, selectionMode);
  }
  void setRangeText(string replacement, uint start, uint end) {
    HTMLTextAreaElement_setRangeText_0(this._parent, replacement, start, end);
  }
  void setSelectionRange(uint start, uint end, string direction) {
    HTMLTextAreaElement_setSelectionRange(this._parent, start, end, direction);
  }
  void setSelectionRange(uint start, uint end) {
    HTMLTextAreaElement_setSelectionRange_0(this._parent, start, end);
  }
}
struct HTMLTimeElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void dateTime(string dateTime) {
    HTMLTimeElement_dateTime_Set(this._parent, dateTime);
  }
  auto dateTime() {
    return HTMLTimeElement_dateTime_Get(this._parent);
  }
}
struct HTMLTitleElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void text(string text) {
    HTMLTitleElement_text_Set(this._parent, text);
  }
  auto text() {
    return HTMLTitleElement_text_Get(this._parent);
  }
}
struct HTMLTrackElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void kind(string kind) {
    HTMLTrackElement_kind_Set(this._parent, kind);
  }
  auto kind() {
    return HTMLTrackElement_kind_Get(this._parent);
  }
  void src(string src) {
    HTMLTrackElement_src_Set(this._parent, src);
  }
  auto src() {
    return HTMLTrackElement_src_Get(this._parent);
  }
  void srclang(string srclang) {
    HTMLTrackElement_srclang_Set(this._parent, srclang);
  }
  auto srclang() {
    return HTMLTrackElement_srclang_Get(this._parent);
  }
  void label(string label) {
    HTMLTrackElement_label_Set(this._parent, label);
  }
  auto label() {
    return HTMLTrackElement_label_Get(this._parent);
  }
  void default_(bool default_) {
    HTMLTrackElement_default_Set(this._parent, default_);
  }
  auto default_() {
    return HTMLTrackElement_default_Get(this._parent);
  }
  enum ushort NONE = 0;
  enum ushort LOADING = 1;
  enum ushort LOADED = 2;
  enum ushort ERROR = 3;
  auto readyState() {
    return HTMLTrackElement_readyState_Get(this._parent);
  }
  auto track() {
    return TextTrack(HTMLTrackElement_track_Get(this._parent));
  }
}
struct HTMLUListElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void compact(bool compact) {
    HTMLUListElement_compact_Set(this._parent, compact);
  }
  auto compact() {
    return HTMLUListElement_compact_Get(this._parent);
  }
  void type(string type) {
    HTMLUListElement_type_Set(this._parent, type);
  }
  auto type() {
    return HTMLUListElement_type_Get(this._parent);
  }
}
struct HTMLUnknownElement {
  nothrow:
  spasm.bindings.html.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
}
struct HTMLVideoElement {
  nothrow:
  spasm.bindings.html.HTMLMediaElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLMediaElement(h);
  }
  void width(uint width) {
    HTMLVideoElement_width_Set(this._parent, width);
  }
  auto width() {
    return HTMLVideoElement_width_Get(this._parent);
  }
  void height(uint height) {
    HTMLVideoElement_height_Set(this._parent, height);
  }
  auto height() {
    return HTMLVideoElement_height_Get(this._parent);
  }
  auto videoWidth() {
    return HTMLVideoElement_videoWidth_Get(this._parent);
  }
  auto videoHeight() {
    return HTMLVideoElement_videoHeight_Get(this._parent);
  }
  void poster(string poster) {
    HTMLVideoElement_poster_Set(this._parent, poster);
  }
  auto poster() {
    return HTMLVideoElement_poster_Get(this._parent);
  }
  void playsInline(bool playsInline) {
    HTMLVideoElement_playsInline_Set(this._parent, playsInline);
  }
  auto playsInline() {
    return HTMLVideoElement_playsInline_Get(this._parent);
  }
}
struct HashChangeEvent {
  nothrow:
  spasm.bindings.dom.Event _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Event(h);
  }
  auto oldURL() {
    return HashChangeEvent_oldURL_Get(this._parent);
  }
  auto newURL() {
    return HashChangeEvent_newURL_Get(this._parent);
  }
}
struct HashChangeEventInit {
  nothrow:
  spasm.bindings.dom.EventInit _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventInit(h);
  }
  static auto create() {
    return HashChangeEventInit(spasm_add__object());
  }
  void oldURL(string oldURL) {
    HashChangeEventInit_oldURL_Set(this._parent, oldURL);
  }
  auto oldURL() {
    return HashChangeEventInit_oldURL_Get(this._parent);
  }
  void newURL(string newURL) {
    HashChangeEventInit_newURL_Set(this._parent, newURL);
  }
  auto newURL() {
    return HashChangeEventInit_newURL_Get(this._parent);
  }
}
struct History {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto length() {
    return History_length_Get(this.handle);
  }
  void scrollRestoration(ScrollRestoration scrollRestoration) {
    History_scrollRestoration_Set(this.handle, scrollRestoration);
  }
  auto scrollRestoration() {
    return History_scrollRestoration_Get(this.handle);
  }
  auto state() {
    return Any(History_state_Get(this.handle));
  }
  void go(int delta /* = 0 */) {
    History_go(this.handle, delta);
  }
  void go() {
    History_go_0(this.handle);
  }
  void back() {
    History_back(this.handle);
  }
  void forward() {
    History_forward(this.handle);
  }
  void pushState(T0)(scope auto ref T0 data, string title, scope ref Optional!(string) url /* = no!(string) */) {
    Handle _handle_data = getOrCreateHandle(data);
    History_pushState(this.handle, _handle_data, title, !url.empty, url.front);
    dropHandle!(T0)(_handle_data);
  }
  void pushState(T0)(scope auto ref T0 data, string title) {
    Handle _handle_data = getOrCreateHandle(data);
    History_pushState_0(this.handle, _handle_data, title);
    dropHandle!(T0)(_handle_data);
  }
  void replaceState(T0)(scope auto ref T0 data, string title, scope ref Optional!(string) url /* = no!(string) */) {
    Handle _handle_data = getOrCreateHandle(data);
    History_replaceState(this.handle, _handle_data, title, !url.empty, url.front);
    dropHandle!(T0)(_handle_data);
  }
  void replaceState(T0)(scope auto ref T0 data, string title) {
    Handle _handle_data = getOrCreateHandle(data);
    History_replaceState_0(this.handle, _handle_data, title);
    dropHandle!(T0)(_handle_data);
  }
}
struct ImageBitmap {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto width() {
    return ImageBitmap_width_Get(this.handle);
  }
  auto height() {
    return ImageBitmap_height_Get(this.handle);
  }
  void close() {
    ImageBitmap_close(this.handle);
  }
}
struct ImageBitmapOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return ImageBitmapOptions(spasm_add__object());
  }
  void imageOrientation(ImageOrientation imageOrientation) {
    ImageBitmapOptions_imageOrientation_Set(this.handle, imageOrientation);
  }
  auto imageOrientation() {
    return ImageBitmapOptions_imageOrientation_Get(this.handle);
  }
  void premultiplyAlpha(PremultiplyAlpha premultiplyAlpha) {
    ImageBitmapOptions_premultiplyAlpha_Set(this.handle, premultiplyAlpha);
  }
  auto premultiplyAlpha() {
    return ImageBitmapOptions_premultiplyAlpha_Get(this.handle);
  }
  void colorSpaceConversion(ColorSpaceConversion colorSpaceConversion) {
    ImageBitmapOptions_colorSpaceConversion_Set(this.handle, colorSpaceConversion);
  }
  auto colorSpaceConversion() {
    return ImageBitmapOptions_colorSpaceConversion_Get(this.handle);
  }
  void resizeWidth(uint resizeWidth) {
    ImageBitmapOptions_resizeWidth_Set(this.handle, resizeWidth);
  }
  auto resizeWidth() {
    return ImageBitmapOptions_resizeWidth_Get(this.handle);
  }
  void resizeHeight(uint resizeHeight) {
    ImageBitmapOptions_resizeHeight_Set(this.handle, resizeHeight);
  }
  auto resizeHeight() {
    return ImageBitmapOptions_resizeHeight_Get(this.handle);
  }
  void resizeQuality(ResizeQuality resizeQuality) {
    ImageBitmapOptions_resizeQuality_Set(this.handle, resizeQuality);
  }
  auto resizeQuality() {
    return ImageBitmapOptions_resizeQuality_Get(this.handle);
  }
}
struct ImageBitmapRenderingContext {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto canvas() {
    return HTMLCanvasElement(ImageBitmapRenderingContext_canvas_Get(this.handle));
  }
  void transferFromImageBitmap(scope ref Optional!(ImageBitmap) bitmap) {
    ImageBitmapRenderingContext_transferFromImageBitmap(this.handle, !bitmap.empty, bitmap.front.handle);
  }
}
struct ImageBitmapRenderingContextSettings {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return ImageBitmapRenderingContextSettings(spasm_add__object());
  }
  void alpha(bool alpha) {
    ImageBitmapRenderingContextSettings_alpha_Set(this.handle, alpha);
  }
  auto alpha() {
    return ImageBitmapRenderingContextSettings_alpha_Get(this.handle);
  }
}
alias ImageBitmapSource = SumType!(CanvasImageSource, Blob, ImageData);
struct ImageData {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto width() {
    return ImageData_width_Get(this.handle);
  }
  auto height() {
    return ImageData_height_Get(this.handle);
  }
  auto data() {
    return Uint8ClampedArray(ImageData_data_Get(this.handle));
  }
}
struct ImageEncodeOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return ImageEncodeOptions(spasm_add__object());
  }
  void type(string type) {
    ImageEncodeOptions_type_Set(this.handle, type);
  }
  auto type() {
    return ImageEncodeOptions_type_Get(this.handle);
  }
  void quality(double quality) {
    ImageEncodeOptions_quality_Set(this.handle, quality);
  }
  auto quality() {
    return ImageEncodeOptions_quality_Get(this.handle);
  }
}
enum ImageOrientation {
  none,
  flipY
}
enum ImageSmoothingQuality {
  low,
  medium,
  high
}
struct Location {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  void href(string href) {
    Location_href_Set(this.handle, href);
  }
  auto href() {
    return Location_href_Get(this.handle);
  }
  auto origin() {
    return Location_origin_Get(this.handle);
  }
  void protocol(string protocol) {
    Location_protocol_Set(this.handle, protocol);
  }
  auto protocol() {
    return Location_protocol_Get(this.handle);
  }
  void host(string host) {
    Location_host_Set(this.handle, host);
  }
  auto host() {
    return Location_host_Get(this.handle);
  }
  void hostname(string hostname) {
    Location_hostname_Set(this.handle, hostname);
  }
  auto hostname() {
    return Location_hostname_Get(this.handle);
  }
  void port(string port) {
    Location_port_Set(this.handle, port);
  }
  auto port() {
    return Location_port_Get(this.handle);
  }
  void pathname(string pathname) {
    Location_pathname_Set(this.handle, pathname);
  }
  auto pathname() {
    return Location_pathname_Get(this.handle);
  }
  void search(string search) {
    Location_search_Set(this.handle, search);
  }
  auto search() {
    return Location_search_Get(this.handle);
  }
  void hash(string hash) {
    Location_hash_Set(this.handle, hash);
  }
  auto hash() {
    return Location_hash_Get(this.handle);
  }
  void assign(string url) {
    Location_assign(this.handle, url);
  }
  void replace(string url) {
    Location_replace(this.handle, url);
  }
  void reload() {
    Location_reload(this.handle);
  }
  auto ancestorOrigins() {
    return DOMStringList(Location_ancestorOrigins_Get(this.handle));
  }
}
struct MediaError {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  enum ushort MEDIA_ERR_ABORTED = 1;
  enum ushort MEDIA_ERR_NETWORK = 2;
  enum ushort MEDIA_ERR_DECODE = 3;
  enum ushort MEDIA_ERR_SRC_NOT_SUPPORTED = 4;
  auto code() {
    return MediaError_code_Get(this.handle);
  }
  auto message() {
    return MediaError_message_Get(this.handle);
  }
}
alias MediaProvider = SumType!(MediaStream, MediaSource, Blob);
struct MessageChannel {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto port1() {
    return MessagePort(MessageChannel_port1_Get(this.handle));
  }
  auto port2() {
    return MessagePort(MessageChannel_port2_Get(this.handle));
  }
}
struct MessageEvent {
  nothrow:
  spasm.bindings.dom.Event _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Event(h);
  }
  auto data() {
    return Any(MessageEvent_data_Get(this._parent));
  }
  auto origin() {
    return MessageEvent_origin_Get(this._parent);
  }
  auto lastEventId() {
    return MessageEvent_lastEventId_Get(this._parent);
  }
  auto source() {
    return MessageEvent_source_Get(this._parent);
  }
  auto ports() {
    return FrozenArray!(MessagePort)(MessageEvent_ports_Get(this._parent));
  }
  void initMessageEvent(T3)(string type, bool bubbles /* = false */, bool cancelable /* = false */, scope auto ref T3 data /* = null */, string origin /* = "" */, string lastEventId /* = "" */, scope ref Optional!(MessageEventSource) source /* = no!(MessageEventSource) */, scope ref Sequence!(MessagePort) ports /* = [] */) {
    Handle _handle_data = getOrCreateHandle(data);
    MessageEvent_initMessageEvent(this._parent, type, bubbles, cancelable, _handle_data, origin, lastEventId, !source.empty, source.front, ports.handle);
    dropHandle!(T3)(_handle_data);
  }
  void initMessageEvent(T3)(string type, bool bubbles /* = false */, bool cancelable /* = false */, scope auto ref T3 data /* = null */, string origin /* = "" */, string lastEventId /* = "" */, scope ref Optional!(MessageEventSource) source /* = no!(MessageEventSource) */) {
    Handle _handle_data = getOrCreateHandle(data);
    MessageEvent_initMessageEvent_0(this._parent, type, bubbles, cancelable, _handle_data, origin, lastEventId, !source.empty, source.front);
    dropHandle!(T3)(_handle_data);
  }
  void initMessageEvent(T3)(string type, bool bubbles /* = false */, bool cancelable /* = false */, scope auto ref T3 data /* = null */, string origin /* = "" */, string lastEventId /* = "" */) {
    Handle _handle_data = getOrCreateHandle(data);
    MessageEvent_initMessageEvent_1(this._parent, type, bubbles, cancelable, _handle_data, origin, lastEventId);
    dropHandle!(T3)(_handle_data);
  }
  void initMessageEvent(T3)(string type, bool bubbles /* = false */, bool cancelable /* = false */, scope auto ref T3 data /* = null */, string origin /* = "" */) {
    Handle _handle_data = getOrCreateHandle(data);
    MessageEvent_initMessageEvent_2(this._parent, type, bubbles, cancelable, _handle_data, origin);
    dropHandle!(T3)(_handle_data);
  }
  void initMessageEvent(T3)(string type, bool bubbles /* = false */, bool cancelable /* = false */, scope auto ref T3 data /* = null */) {
    Handle _handle_data = getOrCreateHandle(data);
    MessageEvent_initMessageEvent_3(this._parent, type, bubbles, cancelable, _handle_data);
    dropHandle!(T3)(_handle_data);
  }
  void initMessageEvent(string type, bool bubbles /* = false */, bool cancelable /* = false */) {
    MessageEvent_initMessageEvent_4(this._parent, type, bubbles, cancelable);
  }
  void initMessageEvent(string type, bool bubbles /* = false */) {
    MessageEvent_initMessageEvent_5(this._parent, type, bubbles);
  }
  void initMessageEvent(string type) {
    MessageEvent_initMessageEvent_6(this._parent, type);
  }
}
struct MessageEventInit {
  nothrow:
  spasm.bindings.dom.EventInit _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventInit(h);
  }
  static auto create() {
    return MessageEventInit(spasm_add__object());
  }
  void data(T0)(scope auto ref T0 data) {
    Handle _handle_data = getOrCreateHandle(data);
    MessageEventInit_data_Set(this._parent, _handle_data);
    dropHandle!(T0)(_handle_data);
  }
  auto data() {
    return Any(MessageEventInit_data_Get(this._parent));
  }
  void origin(string origin) {
    MessageEventInit_origin_Set(this._parent, origin);
  }
  auto origin() {
    return MessageEventInit_origin_Get(this._parent);
  }
  void lastEventId(string lastEventId) {
    MessageEventInit_lastEventId_Set(this._parent, lastEventId);
  }
  auto lastEventId() {
    return MessageEventInit_lastEventId_Get(this._parent);
  }
  void source(scope ref Optional!(MessageEventSource) source) {
    MessageEventInit_source_Set(this._parent, !source.empty, source.front);
  }
  auto source() {
    return MessageEventInit_source_Get(this._parent);
  }
  void ports(scope ref Sequence!(MessagePort) ports) {
    MessageEventInit_ports_Set(this._parent, ports.handle);
  }
  auto ports() {
    return Sequence!(MessagePort)(MessageEventInit_ports_Get(this._parent));
  }
}
alias MessageEventSource = SumType!(Window, MessagePort, ServiceWorker);
struct MessagePort {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
  }
  void postMessage(T0)(scope auto ref T0 message, scope ref Sequence!(JsObject) transfer) {
    Handle _handle_message = getOrCreateHandle(message);
    MessagePort_postMessage__Handle_sequence(this._parent, _handle_message, transfer.handle);
    dropHandle!(T0)(_handle_message);
  }
  void postMessage(T0)(scope auto ref T0 message, scope ref PostMessageOptions options) {
    Handle _handle_message = getOrCreateHandle(message);
    MessagePort_postMessage__Handle_Handle(this._parent, _handle_message, options.handle);
    dropHandle!(T0)(_handle_message);
  }
  void postMessage(T0)(scope auto ref T0 message) {
    Handle _handle_message = getOrCreateHandle(message);
    MessagePort_postMessage_0(this._parent, _handle_message);
    dropHandle!(T0)(_handle_message);
  }
  void start() {
    MessagePort_start(this._parent);
  }
  void close() {
    MessagePort_close(this._parent);
  }
  void onmessage(EventHandler onmessage) {
    MessagePort_onmessage_Set(this._parent, onmessage);
  }
  auto onmessage() {
    return MessagePort_onmessage_Get(this._parent);
  }
  void onmessageerror(EventHandler onmessageerror) {
    MessagePort_onmessageerror_Set(this._parent, onmessageerror);
  }
  auto onmessageerror() {
    return MessagePort_onmessageerror_Get(this._parent);
  }
}
struct MimeType {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto type() {
    return MimeType_type_Get(this.handle);
  }
  auto description() {
    return MimeType_description_Get(this.handle);
  }
  auto suffixes() {
    return MimeType_suffixes_Get(this.handle);
  }
  auto enabledPlugin() {
    return Plugin(MimeType_enabledPlugin_Get(this.handle));
  }
}
struct MimeTypeArray {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto length() {
    return MimeTypeArray_length_Get(this.handle);
  }
  auto item(uint index) {
    return MimeTypeArray_item_getter(this.handle, index);
  }
  auto namedItem(string name) {
    return MimeTypeArray_namedItem_getter(this.handle, name);
  }
}
struct Navigator {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto clipboard() {
    return Clipboard(Navigator_clipboard_Get(this.handle));
  }
  auto permissions() {
    return Permissions(Navigator_permissions_Get(this.handle));
  }
  auto vibrate(scope ref VibratePattern pattern) {
    return Navigator_vibrate(this.handle, pattern);
  }
  auto mediaDevices() {
    return MediaDevices(Navigator_mediaDevices_Get(this.handle));
  }
  void getUserMedia(scope ref MediaStreamConstraints constraints, NavigatorUserMediaSuccessCallback successCallback, NavigatorUserMediaErrorCallback errorCallback) {
    Navigator_getUserMedia(this.handle, constraints.handle, successCallback, errorCallback);
  }
  auto maxTouchPoints() {
    return Navigator_maxTouchPoints_Get(this.handle);
  }
  auto serviceWorker() {
    return ServiceWorkerContainer(Navigator_serviceWorker_Get(this.handle));
  }
  auto hardwareConcurrency() {
    return NavigatorConcurrentHardware_hardwareConcurrency_Get(this.handle);
  }
  auto plugins() {
    return PluginArray(NavigatorPlugins_plugins_Get(this.handle));
  }
  auto mimeTypes() {
    return MimeTypeArray(NavigatorPlugins_mimeTypes_Get(this.handle));
  }
  auto javaEnabled() {
    return NavigatorPlugins_javaEnabled(this.handle);
  }
  auto cookieEnabled() {
    return NavigatorCookies_cookieEnabled_Get(this.handle);
  }
  void registerProtocolHandler(string scheme, string url, string title) {
    NavigatorContentUtils_registerProtocolHandler(this.handle, scheme, url, title);
  }
  void unregisterProtocolHandler(string scheme, string url) {
    NavigatorContentUtils_unregisterProtocolHandler(this.handle, scheme, url);
  }
  auto onLine() {
    return NavigatorOnLine_onLine_Get(this.handle);
  }
  auto language() {
    return NavigatorLanguage_language_Get(this.handle);
  }
  auto languages() {
    return FrozenArray!(string)(NavigatorLanguage_languages_Get(this.handle));
  }
  auto appCodeName() {
    return NavigatorID_appCodeName_Get(this.handle);
  }
  auto appName() {
    return NavigatorID_appName_Get(this.handle);
  }
  auto appVersion() {
    return NavigatorID_appVersion_Get(this.handle);
  }
  auto platform() {
    return NavigatorID_platform_Get(this.handle);
  }
  auto product() {
    return NavigatorID_product_Get(this.handle);
  }
  auto productSub() {
    return NavigatorID_productSub_Get(this.handle);
  }
  auto userAgent() {
    return NavigatorID_userAgent_Get(this.handle);
  }
  auto vendor() {
    return NavigatorID_vendor_Get(this.handle);
  }
  auto vendorSub() {
    return NavigatorID_vendorSub_Get(this.handle);
  }
  auto taintEnabled() {
    return NavigatorID_taintEnabled(this.handle);
  }
  auto oscpu() {
    return NavigatorID_oscpu_Get(this.handle);
  }
}
struct OffscreenCanvas {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
  }
  void width(ulong width) {
    OffscreenCanvas_width_Set(this._parent, width);
  }
  auto width() {
    return OffscreenCanvas_width_Get(this._parent);
  }
  void height(ulong height) {
    OffscreenCanvas_height_Set(this._parent, height);
  }
  auto height() {
    return OffscreenCanvas_height_Get(this._parent);
  }
  auto getContext(T1)(OffscreenRenderingContextId contextId, scope auto ref T1 options /* = null */) {
    Handle _handle_options = getOrCreateHandle(options);
    auto result = OffscreenCanvas_getContext(this._parent, contextId, _handle_options);
    dropHandle!(T1)(_handle_options);
    return result;
  }
  auto getContext(OffscreenRenderingContextId contextId) {
    return OffscreenCanvas_getContext_0(this._parent, contextId);
  }
  auto transferToImageBitmap() {
    return ImageBitmap(OffscreenCanvas_transferToImageBitmap(this._parent));
  }
  auto convertToBlob(scope ref ImageEncodeOptions options) {
    return Promise!(Blob)(OffscreenCanvas_convertToBlob(this._parent, options.handle));
  }
  auto convertToBlob() {
    return Promise!(Blob)(OffscreenCanvas_convertToBlob_0(this._parent));
  }
}
struct OffscreenCanvasRenderingContext2D {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  void commit() {
    OffscreenCanvasRenderingContext2D_commit(this.handle);
  }
  auto canvas() {
    return OffscreenCanvas(OffscreenCanvasRenderingContext2D_canvas_Get(this.handle));
  }
  void closePath() {
    CanvasPath_closePath(this.handle);
  }
  void moveTo(double x, double y) {
    CanvasPath_moveTo(this.handle, x, y);
  }
  void lineTo(double x, double y) {
    CanvasPath_lineTo(this.handle, x, y);
  }
  void quadraticCurveTo(double cpx, double cpy, double x, double y) {
    CanvasPath_quadraticCurveTo(this.handle, cpx, cpy, x, y);
  }
  void bezierCurveTo(double cp1x, double cp1y, double cp2x, double cp2y, double x, double y) {
    CanvasPath_bezierCurveTo(this.handle, cp1x, cp1y, cp2x, cp2y, x, y);
  }
  void arcTo(double x1, double y1, double x2, double y2, double radius) {
    CanvasPath_arcTo(this.handle, x1, y1, x2, y2, radius);
  }
  void rect(double x, double y, double w, double h) {
    CanvasPath_rect(this.handle, x, y, w, h);
  }
  void arc(double x, double y, double radius, double startAngle, double endAngle, bool anticlockwise /* = false */) {
    CanvasPath_arc(this.handle, x, y, radius, startAngle, endAngle, anticlockwise);
  }
  void arc(double x, double y, double radius, double startAngle, double endAngle) {
    CanvasPath_arc_0(this.handle, x, y, radius, startAngle, endAngle);
  }
  void ellipse(double x, double y, double radiusX, double radiusY, double rotation, double startAngle, double endAngle, bool anticlockwise /* = false */) {
    CanvasPath_ellipse(this.handle, x, y, radiusX, radiusY, rotation, startAngle, endAngle, anticlockwise);
  }
  void ellipse(double x, double y, double radiusX, double radiusY, double rotation, double startAngle, double endAngle) {
    CanvasPath_ellipse_0(this.handle, x, y, radiusX, radiusY, rotation, startAngle, endAngle);
  }
  void font(string font) {
    CanvasTextDrawingStyles_font_Set(this.handle, font);
  }
  auto font() {
    return CanvasTextDrawingStyles_font_Get(this.handle);
  }
  void textAlign(CanvasTextAlign textAlign) {
    CanvasTextDrawingStyles_textAlign_Set(this.handle, textAlign);
  }
  auto textAlign() {
    return CanvasTextDrawingStyles_textAlign_Get(this.handle);
  }
  void textBaseline(CanvasTextBaseline textBaseline) {
    CanvasTextDrawingStyles_textBaseline_Set(this.handle, textBaseline);
  }
  auto textBaseline() {
    return CanvasTextDrawingStyles_textBaseline_Get(this.handle);
  }
  void direction(CanvasDirection direction) {
    CanvasTextDrawingStyles_direction_Set(this.handle, direction);
  }
  auto direction() {
    return CanvasTextDrawingStyles_direction_Get(this.handle);
  }
  void lineWidth(double lineWidth) {
    CanvasPathDrawingStyles_lineWidth_Set(this.handle, lineWidth);
  }
  auto lineWidth() {
    return CanvasPathDrawingStyles_lineWidth_Get(this.handle);
  }
  void lineCap(CanvasLineCap lineCap) {
    CanvasPathDrawingStyles_lineCap_Set(this.handle, lineCap);
  }
  auto lineCap() {
    return CanvasPathDrawingStyles_lineCap_Get(this.handle);
  }
  void lineJoin(CanvasLineJoin lineJoin) {
    CanvasPathDrawingStyles_lineJoin_Set(this.handle, lineJoin);
  }
  auto lineJoin() {
    return CanvasPathDrawingStyles_lineJoin_Get(this.handle);
  }
  void miterLimit(double miterLimit) {
    CanvasPathDrawingStyles_miterLimit_Set(this.handle, miterLimit);
  }
  auto miterLimit() {
    return CanvasPathDrawingStyles_miterLimit_Get(this.handle);
  }
  void setLineDash(scope ref Sequence!(double) segments) {
    CanvasPathDrawingStyles_setLineDash(this.handle, segments.handle);
  }
  auto getLineDash() {
    return Sequence!(double)(CanvasPathDrawingStyles_getLineDash(this.handle));
  }
  void lineDashOffset(double lineDashOffset) {
    CanvasPathDrawingStyles_lineDashOffset_Set(this.handle, lineDashOffset);
  }
  auto lineDashOffset() {
    return CanvasPathDrawingStyles_lineDashOffset_Get(this.handle);
  }
  auto createImageData(int sw, int sh) {
    return ImageData(CanvasImageData_createImageData__int_int(this.handle, sw, sh));
  }
  auto createImageData(scope ref ImageData imagedata) {
    return ImageData(CanvasImageData_createImageData__Handle(this.handle, imagedata.handle));
  }
  auto getImageData(int sx, int sy, int sw, int sh) {
    return ImageData(CanvasImageData_getImageData(this.handle, sx, sy, sw, sh));
  }
  void putImageData(scope ref ImageData imagedata, int dx, int dy) {
    CanvasImageData_putImageData__Handle_int_int(this.handle, imagedata.handle, dx, dy);
  }
  void putImageData(scope ref ImageData imagedata, int dx, int dy, int dirtyX, int dirtyY, int dirtyWidth, int dirtyHeight) {
    CanvasImageData_putImageData__Handle_int_int_int_int_int_int(this.handle, imagedata.handle, dx, dy, dirtyX, dirtyY, dirtyWidth, dirtyHeight);
  }
  void drawImage(scope ref CanvasImageSource image, double dx, double dy) {
    CanvasDrawImage_drawImage__CanvasImageSource_double_double(this.handle, image, dx, dy);
  }
  void drawImage(scope ref CanvasImageSource image, double dx, double dy, double dw, double dh) {
    CanvasDrawImage_drawImage__CanvasImageSource_double_double_double_double(this.handle, image, dx, dy, dw, dh);
  }
  void drawImage(scope ref CanvasImageSource image, double sx, double sy, double sw, double sh, double dx, double dy, double dw, double dh) {
    CanvasDrawImage_drawImage__CanvasImageSource_double_double_double_double_double_double_double_double(this.handle, image, sx, sy, sw, sh, dx, dy, dw, dh);
  }
  void fillText(string text, double x, double y, double maxWidth) {
    CanvasText_fillText(this.handle, text, x, y, maxWidth);
  }
  void fillText(string text, double x, double y) {
    CanvasText_fillText_0(this.handle, text, x, y);
  }
  void strokeText(string text, double x, double y, double maxWidth) {
    CanvasText_strokeText(this.handle, text, x, y, maxWidth);
  }
  void strokeText(string text, double x, double y) {
    CanvasText_strokeText_0(this.handle, text, x, y);
  }
  auto measureText(string text) {
    return TextMetrics(CanvasText_measureText(this.handle, text));
  }
  void beginPath() {
    CanvasDrawPath_beginPath(this.handle);
  }
  void fill(CanvasFillRule fillRule /* = "nonzero" */) {
    CanvasDrawPath_fill__CanvasFillRule(this.handle, fillRule);
  }
  void fill() {
    CanvasDrawPath_fill_0_(this.handle);
  }
  void fill(scope ref Path2D path, CanvasFillRule fillRule /* = "nonzero" */) {
    CanvasDrawPath_fill__Handle_CanvasFillRule(this.handle, path.handle, fillRule);
  }
  void fill(scope ref Path2D path) {
    CanvasDrawPath_fill_0_Handle(this.handle, path.handle);
  }
  void stroke() {
    CanvasDrawPath_stroke__(this.handle);
  }
  void stroke(scope ref Path2D path) {
    CanvasDrawPath_stroke__Handle(this.handle, path.handle);
  }
  void clip(CanvasFillRule fillRule /* = "nonzero" */) {
    CanvasDrawPath_clip__CanvasFillRule(this.handle, fillRule);
  }
  void clip() {
    CanvasDrawPath_clip_0_(this.handle);
  }
  void clip(scope ref Path2D path, CanvasFillRule fillRule /* = "nonzero" */) {
    CanvasDrawPath_clip__Handle_CanvasFillRule(this.handle, path.handle, fillRule);
  }
  void clip(scope ref Path2D path) {
    CanvasDrawPath_clip_0_Handle(this.handle, path.handle);
  }
  auto isPointInPath(double x, double y, CanvasFillRule fillRule /* = "nonzero" */) {
    return CanvasDrawPath_isPointInPath__double_double_CanvasFillRule(this.handle, x, y, fillRule);
  }
  auto isPointInPath(double x, double y) {
    return CanvasDrawPath_isPointInPath_0_double_double(this.handle, x, y);
  }
  auto isPointInPath(scope ref Path2D path, double x, double y, CanvasFillRule fillRule /* = "nonzero" */) {
    return CanvasDrawPath_isPointInPath__Handle_double_double_CanvasFillRule(this.handle, path.handle, x, y, fillRule);
  }
  auto isPointInPath(scope ref Path2D path, double x, double y) {
    return CanvasDrawPath_isPointInPath_0_Handle_double_double(this.handle, path.handle, x, y);
  }
  auto isPointInStroke(double x, double y) {
    return CanvasDrawPath_isPointInStroke__double_double(this.handle, x, y);
  }
  auto isPointInStroke(scope ref Path2D path, double x, double y) {
    return CanvasDrawPath_isPointInStroke__Handle_double_double(this.handle, path.handle, x, y);
  }
  void clearRect(double x, double y, double w, double h) {
    CanvasRect_clearRect(this.handle, x, y, w, h);
  }
  void fillRect(double x, double y, double w, double h) {
    CanvasRect_fillRect(this.handle, x, y, w, h);
  }
  void strokeRect(double x, double y, double w, double h) {
    CanvasRect_strokeRect(this.handle, x, y, w, h);
  }
  void filter(string filter) {
    CanvasFilters_filter_Set(this.handle, filter);
  }
  auto filter() {
    return CanvasFilters_filter_Get(this.handle);
  }
  void shadowOffsetX(double shadowOffsetX) {
    CanvasShadowStyles_shadowOffsetX_Set(this.handle, shadowOffsetX);
  }
  auto shadowOffsetX() {
    return CanvasShadowStyles_shadowOffsetX_Get(this.handle);
  }
  void shadowOffsetY(double shadowOffsetY) {
    CanvasShadowStyles_shadowOffsetY_Set(this.handle, shadowOffsetY);
  }
  auto shadowOffsetY() {
    return CanvasShadowStyles_shadowOffsetY_Get(this.handle);
  }
  void shadowBlur(double shadowBlur) {
    CanvasShadowStyles_shadowBlur_Set(this.handle, shadowBlur);
  }
  auto shadowBlur() {
    return CanvasShadowStyles_shadowBlur_Get(this.handle);
  }
  void shadowColor(string shadowColor) {
    CanvasShadowStyles_shadowColor_Set(this.handle, shadowColor);
  }
  auto shadowColor() {
    return CanvasShadowStyles_shadowColor_Get(this.handle);
  }
  void strokeStyle(scope ref SumType!(string, CanvasGradient, CanvasPattern) strokeStyle) {
    CanvasFillStrokeStyles_strokeStyle_Set(this.handle, strokeStyle);
  }
  auto strokeStyle() {
    return CanvasFillStrokeStyles_strokeStyle_Get(this.handle);
  }
  void fillStyle(scope ref SumType!(string, CanvasGradient, CanvasPattern) fillStyle) {
    CanvasFillStrokeStyles_fillStyle_Set(this.handle, fillStyle);
  }
  auto fillStyle() {
    return CanvasFillStrokeStyles_fillStyle_Get(this.handle);
  }
  auto createLinearGradient(double x0, double y0, double x1, double y1) {
    return CanvasGradient(CanvasFillStrokeStyles_createLinearGradient(this.handle, x0, y0, x1, y1));
  }
  auto createRadialGradient(double x0, double y0, double r0, double x1, double y1, double r1) {
    return CanvasGradient(CanvasFillStrokeStyles_createRadialGradient(this.handle, x0, y0, r0, x1, y1, r1));
  }
  auto createPattern(scope ref CanvasImageSource image, string repetition) {
    return CanvasFillStrokeStyles_createPattern(this.handle, image, repetition);
  }
  void globalAlpha(double globalAlpha) {
    CanvasCompositing_globalAlpha_Set(this.handle, globalAlpha);
  }
  auto globalAlpha() {
    return CanvasCompositing_globalAlpha_Get(this.handle);
  }
  void globalCompositeOperation(string globalCompositeOperation) {
    CanvasCompositing_globalCompositeOperation_Set(this.handle, globalCompositeOperation);
  }
  auto globalCompositeOperation() {
    return CanvasCompositing_globalCompositeOperation_Get(this.handle);
  }
  void scale(double x, double y) {
    CanvasTransform_scale(this.handle, x, y);
  }
  void rotate(double angle) {
    CanvasTransform_rotate(this.handle, angle);
  }
  void translate(double x, double y) {
    CanvasTransform_translate(this.handle, x, y);
  }
  void transform(double a, double b, double c, double d, double e, double f) {
    CanvasTransform_transform(this.handle, a, b, c, d, e, f);
  }
  auto getTransform() {
    return DOMMatrix(CanvasTransform_getTransform(this.handle));
  }
  void setTransform(double a, double b, double c, double d, double e, double f) {
    CanvasTransform_setTransform__double_double_double_double_double_double(this.handle, a, b, c, d, e, f);
  }
  void setTransform(scope ref DOMMatrix2DInit transform) {
    CanvasTransform_setTransform__Handle(this.handle, transform.handle);
  }
  void setTransform() {
    CanvasTransform_setTransform_0(this.handle);
  }
  void resetTransform() {
    CanvasTransform_resetTransform(this.handle);
  }
  void save() {
    CanvasState_save(this.handle);
  }
  void restore() {
    CanvasState_restore(this.handle);
  }
  void imageSmoothingEnabled(bool imageSmoothingEnabled) {
    CanvasImageSmoothing_imageSmoothingEnabled_Set(this.handle, imageSmoothingEnabled);
  }
  auto imageSmoothingEnabled() {
    return CanvasImageSmoothing_imageSmoothingEnabled_Get(this.handle);
  }
  void imageSmoothingQuality(ImageSmoothingQuality imageSmoothingQuality) {
    CanvasImageSmoothing_imageSmoothingQuality_Set(this.handle, imageSmoothingQuality);
  }
  auto imageSmoothingQuality() {
    return CanvasImageSmoothing_imageSmoothingQuality_Get(this.handle);
  }
}
alias OffscreenRenderingContext = SumType!(OffscreenCanvasRenderingContext2D, WebGLRenderingContext, WebGL2RenderingContext);
enum OffscreenRenderingContextId {
  _2d,
  webgl,
  webgl2
}
alias OnBeforeUnloadEventHandler = Optional!(OnBeforeUnloadEventHandlerNonNull);
alias OnBeforeUnloadEventHandlerNonNull = Optional!(string) delegate(Event);
alias OnErrorEventHandler = Optional!(OnErrorEventHandlerNonNull);
alias OnErrorEventHandlerNonNull = Any delegate(SumType!(Event, string), string, uint, uint, Any);
struct PageTransitionEvent {
  nothrow:
  spasm.bindings.dom.Event _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Event(h);
  }
  auto persisted() {
    return PageTransitionEvent_persisted_Get(this._parent);
  }
}
struct PageTransitionEventInit {
  nothrow:
  spasm.bindings.dom.EventInit _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventInit(h);
  }
  static auto create() {
    return PageTransitionEventInit(spasm_add__object());
  }
  void persisted(bool persisted) {
    PageTransitionEventInit_persisted_Set(this._parent, persisted);
  }
  auto persisted() {
    return PageTransitionEventInit_persisted_Get(this._parent);
  }
}
struct Path2D {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  void addPath(scope ref Path2D path, scope ref DOMMatrix2DInit transform) {
    Path2D_addPath(this.handle, path.handle, transform.handle);
  }
  void addPath(scope ref Path2D path) {
    Path2D_addPath_0(this.handle, path.handle);
  }
  void closePath() {
    CanvasPath_closePath(this.handle);
  }
  void moveTo(double x, double y) {
    CanvasPath_moveTo(this.handle, x, y);
  }
  void lineTo(double x, double y) {
    CanvasPath_lineTo(this.handle, x, y);
  }
  void quadraticCurveTo(double cpx, double cpy, double x, double y) {
    CanvasPath_quadraticCurveTo(this.handle, cpx, cpy, x, y);
  }
  void bezierCurveTo(double cp1x, double cp1y, double cp2x, double cp2y, double x, double y) {
    CanvasPath_bezierCurveTo(this.handle, cp1x, cp1y, cp2x, cp2y, x, y);
  }
  void arcTo(double x1, double y1, double x2, double y2, double radius) {
    CanvasPath_arcTo(this.handle, x1, y1, x2, y2, radius);
  }
  void rect(double x, double y, double w, double h) {
    CanvasPath_rect(this.handle, x, y, w, h);
  }
  void arc(double x, double y, double radius, double startAngle, double endAngle, bool anticlockwise /* = false */) {
    CanvasPath_arc(this.handle, x, y, radius, startAngle, endAngle, anticlockwise);
  }
  void arc(double x, double y, double radius, double startAngle, double endAngle) {
    CanvasPath_arc_0(this.handle, x, y, radius, startAngle, endAngle);
  }
  void ellipse(double x, double y, double radiusX, double radiusY, double rotation, double startAngle, double endAngle, bool anticlockwise /* = false */) {
    CanvasPath_ellipse(this.handle, x, y, radiusX, radiusY, rotation, startAngle, endAngle, anticlockwise);
  }
  void ellipse(double x, double y, double radiusX, double radiusY, double rotation, double startAngle, double endAngle) {
    CanvasPath_ellipse_0(this.handle, x, y, radiusX, radiusY, rotation, startAngle, endAngle);
  }
}
struct Plugin {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto name() {
    return Plugin_name_Get(this.handle);
  }
  auto description() {
    return Plugin_description_Get(this.handle);
  }
  auto filename() {
    return Plugin_filename_Get(this.handle);
  }
  auto length() {
    return Plugin_length_Get(this.handle);
  }
  auto item(uint index) {
    return Plugin_item_getter(this.handle, index);
  }
  auto namedItem(string name) {
    return Plugin_namedItem_getter(this.handle, name);
  }
}
struct PluginArray {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  void refresh(bool reload /* = false */) {
    PluginArray_refresh(this.handle, reload);
  }
  void refresh() {
    PluginArray_refresh_0(this.handle);
  }
  auto length() {
    return PluginArray_length_Get(this.handle);
  }
  auto item(uint index) {
    return PluginArray_item_getter(this.handle, index);
  }
  auto namedItem(string name) {
    return PluginArray_namedItem_getter(this.handle, name);
  }
}
struct PopStateEvent {
  nothrow:
  spasm.bindings.dom.Event _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Event(h);
  }
  auto state() {
    return Any(PopStateEvent_state_Get(this._parent));
  }
}
struct PopStateEventInit {
  nothrow:
  spasm.bindings.dom.EventInit _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventInit(h);
  }
  static auto create() {
    return PopStateEventInit(spasm_add__object());
  }
  void state(T0)(scope auto ref T0 state) {
    Handle _handle_state = getOrCreateHandle(state);
    PopStateEventInit_state_Set(this._parent, _handle_state);
    dropHandle!(T0)(_handle_state);
  }
  auto state() {
    return Any(PopStateEventInit_state_Get(this._parent));
  }
}
struct PostMessageOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return PostMessageOptions(spasm_add__object());
  }
  void transfer(scope ref Sequence!(JsObject) transfer) {
    PostMessageOptions_transfer_Set(this.handle, transfer.handle);
  }
  auto transfer() {
    return Sequence!(JsObject)(PostMessageOptions_transfer_Get(this.handle));
  }
}
enum PremultiplyAlpha {
  none,
  premultiply,
  default_
}
struct PromiseRejectionEvent {
  nothrow:
  spasm.bindings.dom.Event _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Event(h);
  }
  auto promise() {
    return Promise!(Any)(PromiseRejectionEvent_promise_Get(this._parent));
  }
  auto reason() {
    return Any(PromiseRejectionEvent_reason_Get(this._parent));
  }
}
struct PromiseRejectionEventInit {
  nothrow:
  spasm.bindings.dom.EventInit _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventInit(h);
  }
  static auto create() {
    return PromiseRejectionEventInit(spasm_add__object());
  }
  void promise(scope ref Promise!(Any) promise) {
    PromiseRejectionEventInit_promise_Set(this._parent, promise.handle);
  }
  auto promise() {
    return Promise!(Any)(PromiseRejectionEventInit_promise_Get(this._parent));
  }
  void reason(T0)(scope auto ref T0 reason) {
    Handle _handle_reason = getOrCreateHandle(reason);
    PromiseRejectionEventInit_reason_Set(this._parent, _handle_reason);
    dropHandle!(T0)(_handle_reason);
  }
  auto reason() {
    return Any(PromiseRejectionEventInit_reason_Get(this._parent));
  }
}
struct RadioNodeList {
  nothrow:
  spasm.bindings.dom.NodeList _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .NodeList(h);
  }
  void value(string value) {
    RadioNodeList_value_Set(this._parent, value);
  }
  auto value() {
    return RadioNodeList_value_Get(this._parent);
  }
}
alias RenderingContext = SumType!(CanvasRenderingContext2D, ImageBitmapRenderingContext, WebGLRenderingContext, WebGL2RenderingContext);
enum ResizeQuality {
  pixelated,
  low,
  medium,
  high
}
enum ScrollRestoration {
  auto_,
  manual
}
enum SelectionMode {
  select,
  start,
  end,
  preserve
}
struct SharedWorker {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
  }
  auto port() {
    return MessagePort(SharedWorker_port_Get(this._parent));
  }
  void onerror(EventHandler onerror) {
    AbstractWorker_onerror_Set(this._parent, onerror);
  }
  auto onerror() {
    return AbstractWorker_onerror_Get(this._parent);
  }
  auto FileReaderSync() {
    return .FileReaderSync(SharedWorker_FileReaderSync(this._parent));
  }
  auto ProgressEvent(string type, scope ref ProgressEventInit eventInitDict) {
    return .ProgressEvent(SharedWorker_ProgressEvent(this._parent, type, eventInitDict._parent));
  }
  auto XMLHttpRequest() {
    return .XMLHttpRequest(SharedWorker_XMLHttpRequest(this._parent));
  }
}
struct SharedWorkerGlobalScope {
  nothrow:
  spasm.bindings.html.WorkerGlobalScope _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .WorkerGlobalScope(h);
  }
  auto name() {
    return SharedWorkerGlobalScope_name_Get(this._parent);
  }
  void close() {
    SharedWorkerGlobalScope_close(this._parent);
  }
  void onconnect(EventHandler onconnect) {
    SharedWorkerGlobalScope_onconnect_Set(this._parent, onconnect);
  }
  auto onconnect() {
    return SharedWorkerGlobalScope_onconnect_Get(this._parent);
  }
}
struct Storage {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto length() {
    return Storage_length_Get(this.handle);
  }
  auto key(uint index) {
    return Storage_key(this.handle, index);
  }
  auto getItem(string key) {
    return Storage_getItem_getter(this.handle, key);
  }
  void setItem(string key, string value) {
    Storage_setItem_setter(this.handle, key, value);
  }
  void removeItem(string key) {
    Storage_removeItem(this.handle, key);
  }
  void clear() {
    Storage_clear(this.handle);
  }
}
struct StorageEvent {
  nothrow:
  spasm.bindings.dom.Event _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Event(h);
  }
  auto key() {
    return StorageEvent_key_Get(this._parent);
  }
  auto oldValue() {
    return StorageEvent_oldValue_Get(this._parent);
  }
  auto newValue() {
    return StorageEvent_newValue_Get(this._parent);
  }
  auto url() {
    return StorageEvent_url_Get(this._parent);
  }
  auto storageArea() {
    return StorageEvent_storageArea_Get(this._parent);
  }
  void initStorageEvent(string type, bool bubbles /* = false */, bool cancelable /* = false */, scope ref Optional!(string) key /* = no!(string) */, scope ref Optional!(string) oldValue /* = no!(string) */, scope ref Optional!(string) newValue /* = no!(string) */, string url /* = "" */, scope ref Optional!(Storage) storageArea /* = no!(Storage) */) {
    StorageEvent_initStorageEvent(this._parent, type, bubbles, cancelable, !key.empty, key.front, !oldValue.empty, oldValue.front, !newValue.empty, newValue.front, url, !storageArea.empty, storageArea.front.handle);
  }
  void initStorageEvent(string type, bool bubbles /* = false */, bool cancelable /* = false */, scope ref Optional!(string) key /* = no!(string) */, scope ref Optional!(string) oldValue /* = no!(string) */, scope ref Optional!(string) newValue /* = no!(string) */, string url /* = "" */) {
    StorageEvent_initStorageEvent_0(this._parent, type, bubbles, cancelable, !key.empty, key.front, !oldValue.empty, oldValue.front, !newValue.empty, newValue.front, url);
  }
  void initStorageEvent(string type, bool bubbles /* = false */, bool cancelable /* = false */, scope ref Optional!(string) key /* = no!(string) */, scope ref Optional!(string) oldValue /* = no!(string) */, scope ref Optional!(string) newValue /* = no!(string) */) {
    StorageEvent_initStorageEvent_1(this._parent, type, bubbles, cancelable, !key.empty, key.front, !oldValue.empty, oldValue.front, !newValue.empty, newValue.front);
  }
  void initStorageEvent(string type, bool bubbles /* = false */, bool cancelable /* = false */, scope ref Optional!(string) key /* = no!(string) */, scope ref Optional!(string) oldValue /* = no!(string) */) {
    StorageEvent_initStorageEvent_2(this._parent, type, bubbles, cancelable, !key.empty, key.front, !oldValue.empty, oldValue.front);
  }
  void initStorageEvent(string type, bool bubbles /* = false */, bool cancelable /* = false */, scope ref Optional!(string) key /* = no!(string) */) {
    StorageEvent_initStorageEvent_3(this._parent, type, bubbles, cancelable, !key.empty, key.front);
  }
  void initStorageEvent(string type, bool bubbles /* = false */, bool cancelable /* = false */) {
    StorageEvent_initStorageEvent_4(this._parent, type, bubbles, cancelable);
  }
  void initStorageEvent(string type, bool bubbles /* = false */) {
    StorageEvent_initStorageEvent_5(this._parent, type, bubbles);
  }
  void initStorageEvent(string type) {
    StorageEvent_initStorageEvent_6(this._parent, type);
  }
}
struct StorageEventInit {
  nothrow:
  spasm.bindings.dom.EventInit _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventInit(h);
  }
  static auto create() {
    return StorageEventInit(spasm_add__object());
  }
  void key(scope ref Optional!(string) key) {
    StorageEventInit_key_Set(this._parent, !key.empty, key.front);
  }
  auto key() {
    return StorageEventInit_key_Get(this._parent);
  }
  void oldValue(scope ref Optional!(string) oldValue) {
    StorageEventInit_oldValue_Set(this._parent, !oldValue.empty, oldValue.front);
  }
  auto oldValue() {
    return StorageEventInit_oldValue_Get(this._parent);
  }
  void newValue(scope ref Optional!(string) newValue) {
    StorageEventInit_newValue_Set(this._parent, !newValue.empty, newValue.front);
  }
  auto newValue() {
    return StorageEventInit_newValue_Get(this._parent);
  }
  void url(string url) {
    StorageEventInit_url_Set(this._parent, url);
  }
  auto url() {
    return StorageEventInit_url_Get(this._parent);
  }
  void storageArea(scope ref Optional!(Storage) storageArea) {
    StorageEventInit_storageArea_Set(this._parent, !storageArea.empty, storageArea.front.handle);
  }
  auto storageArea() {
    return StorageEventInit_storageArea_Get(this._parent);
  }
}
struct TextMetrics {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto width() {
    return TextMetrics_width_Get(this.handle);
  }
  auto actualBoundingBoxLeft() {
    return TextMetrics_actualBoundingBoxLeft_Get(this.handle);
  }
  auto actualBoundingBoxRight() {
    return TextMetrics_actualBoundingBoxRight_Get(this.handle);
  }
  auto fontBoundingBoxAscent() {
    return TextMetrics_fontBoundingBoxAscent_Get(this.handle);
  }
  auto fontBoundingBoxDescent() {
    return TextMetrics_fontBoundingBoxDescent_Get(this.handle);
  }
  auto actualBoundingBoxAscent() {
    return TextMetrics_actualBoundingBoxAscent_Get(this.handle);
  }
  auto actualBoundingBoxDescent() {
    return TextMetrics_actualBoundingBoxDescent_Get(this.handle);
  }
  auto emHeightAscent() {
    return TextMetrics_emHeightAscent_Get(this.handle);
  }
  auto emHeightDescent() {
    return TextMetrics_emHeightDescent_Get(this.handle);
  }
  auto hangingBaseline() {
    return TextMetrics_hangingBaseline_Get(this.handle);
  }
  auto alphabeticBaseline() {
    return TextMetrics_alphabeticBaseline_Get(this.handle);
  }
  auto ideographicBaseline() {
    return TextMetrics_ideographicBaseline_Get(this.handle);
  }
}
struct TextTrack {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
  }
  auto kind() {
    return TextTrack_kind_Get(this._parent);
  }
  auto label() {
    return TextTrack_label_Get(this._parent);
  }
  auto language() {
    return TextTrack_language_Get(this._parent);
  }
  auto id() {
    return TextTrack_id_Get(this._parent);
  }
  auto inBandMetadataTrackDispatchType() {
    return TextTrack_inBandMetadataTrackDispatchType_Get(this._parent);
  }
  void mode(TextTrackMode mode) {
    TextTrack_mode_Set(this._parent, mode);
  }
  auto mode() {
    return TextTrack_mode_Get(this._parent);
  }
  auto cues() {
    return TextTrack_cues_Get(this._parent);
  }
  auto activeCues() {
    return TextTrack_activeCues_Get(this._parent);
  }
  void addCue(scope ref TextTrackCue cue) {
    TextTrack_addCue(this._parent, cue._parent);
  }
  void removeCue(scope ref TextTrackCue cue) {
    TextTrack_removeCue(this._parent, cue._parent);
  }
  void oncuechange(EventHandler oncuechange) {
    TextTrack_oncuechange_Set(this._parent, oncuechange);
  }
  auto oncuechange() {
    return TextTrack_oncuechange_Get(this._parent);
  }
  auto sourceBuffer() {
    return TextTrack_sourceBuffer_Get(this._parent);
  }
}
struct TextTrackCue {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
  }
  auto track() {
    return TextTrackCue_track_Get(this._parent);
  }
  void id(string id) {
    TextTrackCue_id_Set(this._parent, id);
  }
  auto id() {
    return TextTrackCue_id_Get(this._parent);
  }
  void startTime(double startTime) {
    TextTrackCue_startTime_Set(this._parent, startTime);
  }
  auto startTime() {
    return TextTrackCue_startTime_Get(this._parent);
  }
  void endTime(double endTime) {
    TextTrackCue_endTime_Set(this._parent, endTime);
  }
  auto endTime() {
    return TextTrackCue_endTime_Get(this._parent);
  }
  void pauseOnExit(bool pauseOnExit) {
    TextTrackCue_pauseOnExit_Set(this._parent, pauseOnExit);
  }
  auto pauseOnExit() {
    return TextTrackCue_pauseOnExit_Get(this._parent);
  }
  void onenter(EventHandler onenter) {
    TextTrackCue_onenter_Set(this._parent, onenter);
  }
  auto onenter() {
    return TextTrackCue_onenter_Get(this._parent);
  }
  void onexit(EventHandler onexit) {
    TextTrackCue_onexit_Set(this._parent, onexit);
  }
  auto onexit() {
    return TextTrackCue_onexit_Get(this._parent);
  }
}
struct TextTrackCueList {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto length() {
    return TextTrackCueList_length_Get(this.handle);
  }
  auto opIndex(uint index) {
    return TextTrackCue(TextTrackCueList_getter__uint(this.handle, index));
  }
  auto opDispatch(uint index)() {
    return TextTrackCue(TextTrackCueList_getter__uint(this.handle, index));
  }
  auto getCueById(string id) {
    return TextTrackCueList_getCueById(this.handle, id);
  }
}
enum TextTrackKind {
  subtitles,
  captions,
  descriptions,
  chapters,
  metadata
}
struct TextTrackList {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
  }
  auto length() {
    return TextTrackList_length_Get(this._parent);
  }
  auto opIndex(uint index) {
    return TextTrack(TextTrackList_getter__uint(this._parent, index));
  }
  auto opDispatch(uint index)() {
    return TextTrack(TextTrackList_getter__uint(this._parent, index));
  }
  auto getTrackById(string id) {
    return TextTrackList_getTrackById(this._parent, id);
  }
  void onchange(EventHandler onchange) {
    TextTrackList_onchange_Set(this._parent, onchange);
  }
  auto onchange() {
    return TextTrackList_onchange_Get(this._parent);
  }
  void onaddtrack(EventHandler onaddtrack) {
    TextTrackList_onaddtrack_Set(this._parent, onaddtrack);
  }
  auto onaddtrack() {
    return TextTrackList_onaddtrack_Get(this._parent);
  }
  void onremovetrack(EventHandler onremovetrack) {
    TextTrackList_onremovetrack_Set(this._parent, onremovetrack);
  }
  auto onremovetrack() {
    return TextTrackList_onremovetrack_Get(this._parent);
  }
}
enum TextTrackMode {
  disabled,
  hidden,
  showing
}
struct TimeRanges {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto length() {
    return TimeRanges_length_Get(this.handle);
  }
  auto start(uint index) {
    return TimeRanges_start(this.handle, index);
  }
  auto end(uint index) {
    return TimeRanges_end(this.handle, index);
  }
}
alias TimerHandler = SumType!(string, Function);
struct TrackEvent {
  nothrow:
  spasm.bindings.dom.Event _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Event(h);
  }
  auto track() {
    return TrackEvent_track_Get(this._parent);
  }
}
struct TrackEventInit {
  nothrow:
  spasm.bindings.dom.EventInit _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventInit(h);
  }
  static auto create() {
    return TrackEventInit(spasm_add__object());
  }
  void track(scope ref Optional!(SumType!(VideoTrack, AudioTrack, TextTrack)) track) {
    TrackEventInit_track_Set(this._parent, !track.empty, track.front);
  }
  auto track() {
    return TrackEventInit_track_Get(this._parent);
  }
}
struct ValidityState {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto valueMissing() {
    return ValidityState_valueMissing_Get(this.handle);
  }
  auto typeMismatch() {
    return ValidityState_typeMismatch_Get(this.handle);
  }
  auto patternMismatch() {
    return ValidityState_patternMismatch_Get(this.handle);
  }
  auto tooLong() {
    return ValidityState_tooLong_Get(this.handle);
  }
  auto tooShort() {
    return ValidityState_tooShort_Get(this.handle);
  }
  auto rangeUnderflow() {
    return ValidityState_rangeUnderflow_Get(this.handle);
  }
  auto rangeOverflow() {
    return ValidityState_rangeOverflow_Get(this.handle);
  }
  auto stepMismatch() {
    return ValidityState_stepMismatch_Get(this.handle);
  }
  auto badInput() {
    return ValidityState_badInput_Get(this.handle);
  }
  auto customError() {
    return ValidityState_customError_Get(this.handle);
  }
  auto valid() {
    return ValidityState_valid_Get(this.handle);
  }
}
struct VideoTrack {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto id() {
    return VideoTrack_id_Get(this.handle);
  }
  auto kind() {
    return VideoTrack_kind_Get(this.handle);
  }
  auto label() {
    return VideoTrack_label_Get(this.handle);
  }
  auto language() {
    return VideoTrack_language_Get(this.handle);
  }
  void selected(bool selected) {
    VideoTrack_selected_Set(this.handle, selected);
  }
  auto selected() {
    return VideoTrack_selected_Get(this.handle);
  }
  auto sourceBuffer() {
    return VideoTrack_sourceBuffer_Get(this.handle);
  }
}
struct VideoTrackList {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
  }
  auto length() {
    return VideoTrackList_length_Get(this._parent);
  }
  auto opIndex(uint index) {
    return VideoTrack(VideoTrackList_getter__uint(this._parent, index));
  }
  auto opDispatch(uint index)() {
    return VideoTrack(VideoTrackList_getter__uint(this._parent, index));
  }
  auto getTrackById(string id) {
    return VideoTrackList_getTrackById(this._parent, id);
  }
  auto selectedIndex() {
    return VideoTrackList_selectedIndex_Get(this._parent);
  }
  void onchange(EventHandler onchange) {
    VideoTrackList_onchange_Set(this._parent, onchange);
  }
  auto onchange() {
    return VideoTrackList_onchange_Get(this._parent);
  }
  void onaddtrack(EventHandler onaddtrack) {
    VideoTrackList_onaddtrack_Set(this._parent, onaddtrack);
  }
  auto onaddtrack() {
    return VideoTrackList_onaddtrack_Get(this._parent);
  }
  void onremovetrack(EventHandler onremovetrack) {
    VideoTrackList_onremovetrack_Set(this._parent, onremovetrack);
  }
  auto onremovetrack() {
    return VideoTrackList_onremovetrack_Get(this._parent);
  }
}
struct WebSocket {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
  }
  auto url() {
    return WebSocket_url_Get(this._parent);
  }
  enum ushort CONNECTING = 0;
  enum ushort OPEN = 1;
  enum ushort CLOSING = 2;
  enum ushort CLOSED = 3;
  auto readyState() {
    return WebSocket_readyState_Get(this._parent);
  }
  auto bufferedAmount() {
    return WebSocket_bufferedAmount_Get(this._parent);
  }
  void onopen(EventHandler onopen) {
    WebSocket_onopen_Set(this._parent, onopen);
  }
  auto onopen() {
    return WebSocket_onopen_Get(this._parent);
  }
  void onerror(EventHandler onerror) {
    WebSocket_onerror_Set(this._parent, onerror);
  }
  auto onerror() {
    return WebSocket_onerror_Get(this._parent);
  }
  void onclose(EventHandler onclose) {
    WebSocket_onclose_Set(this._parent, onclose);
  }
  auto onclose() {
    return WebSocket_onclose_Get(this._parent);
  }
  auto extensions() {
    return WebSocket_extensions_Get(this._parent);
  }
  auto protocol() {
    return WebSocket_protocol_Get(this._parent);
  }
  void close(ushort code, string reason) {
    WebSocket_close(this._parent, code, reason);
  }
  void close(ushort code) {
    WebSocket_close_0(this._parent, code);
  }
  void close() {
    WebSocket_close_1(this._parent);
  }
  void onmessage(EventHandler onmessage) {
    WebSocket_onmessage_Set(this._parent, onmessage);
  }
  auto onmessage() {
    return WebSocket_onmessage_Get(this._parent);
  }
  void binaryType(BinaryType binaryType) {
    WebSocket_binaryType_Set(this._parent, binaryType);
  }
  auto binaryType() {
    return WebSocket_binaryType_Get(this._parent);
  }
  void send(string data) {
    WebSocket_send__string(this._parent, data);
  }
  void send(scope ref Blob data) {
    WebSocket_send__Handle(this._parent, data.handle);
  }
  void send(scope ref ArrayBuffer data) {
    WebSocket_send__Handle(this._parent, data.handle);
  }
  void send(scope ref ArrayBufferView data) {
    WebSocket_send__ArrayBufferView(this._parent, data);
  }
}
struct Window {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
  }
  auto window() {
    return Window(Window_window_Get(this._parent));
  }
  auto self() {
    return Window(Window_self_Get(this._parent));
  }
  auto document() {
    return Document(Window_document_Get(this._parent));
  }
  void name(string name) {
    Window_name_Set(this._parent, name);
  }
  auto name() {
    return Window_name_Get(this._parent);
  }
  auto location() {
    return Location(Window_location_Get(this._parent));
  }
  auto history() {
    return History(Window_history_Get(this._parent));
  }
  auto customElements() {
    return CustomElementRegistry(Window_customElements_Get(this._parent));
  }
  auto locationbar() {
    return BarProp(Window_locationbar_Get(this._parent));
  }
  auto menubar() {
    return BarProp(Window_menubar_Get(this._parent));
  }
  auto personalbar() {
    return BarProp(Window_personalbar_Get(this._parent));
  }
  auto scrollbars() {
    return BarProp(Window_scrollbars_Get(this._parent));
  }
  auto statusbar() {
    return BarProp(Window_statusbar_Get(this._parent));
  }
  auto toolbar() {
    return BarProp(Window_toolbar_Get(this._parent));
  }
  void status(string status) {
    Window_status_Set(this._parent, status);
  }
  auto status() {
    return Window_status_Get(this._parent);
  }
  void close() {
    Window_close(this._parent);
  }
  auto closed() {
    return Window_closed_Get(this._parent);
  }
  void stop() {
    Window_stop(this._parent);
  }
  void focus() {
    Window_focus(this._parent);
  }
  void blur() {
    Window_blur(this._parent);
  }
  auto frames() {
    return Window(Window_frames_Get(this._parent));
  }
  auto length() {
    return Window_length_Get(this._parent);
  }
  auto top() {
    return Window_top_Get(this._parent);
  }
  void opener(scope ref Any opener) {
    Window_opener_Set(this._parent, opener.handle);
  }
  auto opener() {
    return Any(Window_opener_Get(this._parent));
  }
  auto parent() {
    return Window_parent_Get(this._parent);
  }
  auto frameElement() {
    return Window_frameElement_Get(this._parent);
  }
  auto open(string url /* = "about:blank" */, string target /* = "_blank" */, string features /* = "" */) {
    return Window_open(this._parent, url, target, features);
  }
  auto open(string url /* = "about:blank" */, string target /* = "_blank" */) {
    return Window_open_0(this._parent, url, target);
  }
  auto open(string url /* = "about:blank" */) {
    return Window_open_1(this._parent, url);
  }
  auto open() {
    return Window_open_2(this._parent);
  }
  auto opIndex(string name) {
    return JsObject(Window_getter__string(this._parent, name));
  }
  auto opDispatch(string name)() {
    return JsObject(Window_getter__string(this._parent, name));
  }
  auto navigator() {
    return Navigator(Window_navigator_Get(this._parent));
  }
  auto applicationCache() {
    return ApplicationCache(Window_applicationCache_Get(this._parent));
  }
  void alert() {
    Window_alert__(this._parent);
  }
  void alert(string message) {
    Window_alert__string(this._parent, message);
  }
  auto confirm(string message /* = "" */) {
    return Window_confirm(this._parent, message);
  }
  auto confirm() {
    return Window_confirm_0(this._parent);
  }
  auto prompt(string message /* = "" */, string default_ /* = "" */) {
    return Window_prompt(this._parent, message, default_);
  }
  auto prompt(string message /* = "" */) {
    return Window_prompt_0(this._parent, message);
  }
  auto prompt() {
    return Window_prompt_1(this._parent);
  }
  void print() {
    Window_print(this._parent);
  }
  void postMessage(T0)(scope auto ref T0 message, string targetOrigin, scope ref Sequence!(JsObject) transfer /* = [] */) {
    Handle _handle_message = getOrCreateHandle(message);
    Window_postMessage__Handle_string_sequence(this._parent, _handle_message, targetOrigin, transfer.handle);
    dropHandle!(T0)(_handle_message);
  }
  void postMessage(T0)(scope auto ref T0 message, string targetOrigin) {
    Handle _handle_message = getOrCreateHandle(message);
    Window_postMessage_0_Handle_string(this._parent, _handle_message, targetOrigin);
    dropHandle!(T0)(_handle_message);
  }
  void postMessage(T0)(scope auto ref T0 message, scope ref WindowPostMessageOptions options) {
    Handle _handle_message = getOrCreateHandle(message);
    Window_postMessage__Handle_Handle(this._parent, _handle_message, options._parent);
    dropHandle!(T0)(_handle_message);
  }
  void postMessage(T0)(scope auto ref T0 message) {
    Handle _handle_message = getOrCreateHandle(message);
    Window_postMessage_0_Handle(this._parent, _handle_message);
    dropHandle!(T0)(_handle_message);
  }
  auto event() {
    return Any(Window_event_Get(this._parent));
  }
  void captureEvents() {
    Window_captureEvents(this._parent);
  }
  void releaseEvents() {
    Window_releaseEvents(this._parent);
  }
  auto external() {
    return External(Window_external_Get(this._parent));
  }
  auto getComputedStyle(scope ref Element elt, scope ref Optional!(string) pseudoElt) {
    return CSSStyleDeclaration(Window_getComputedStyle(this._parent, elt._parent, !pseudoElt.empty, pseudoElt.front));
  }
  auto getComputedStyle(scope ref Element elt) {
    return CSSStyleDeclaration(Window_getComputedStyle_0(this._parent, elt._parent));
  }
  auto orientation() {
    return Window_orientation_Get(this._parent);
  }
  void onorientationchange(EventHandler onorientationchange) {
    Window_onorientationchange_Set(this._parent, onorientationchange);
  }
  auto onorientationchange() {
    return Window_onorientationchange_Get(this._parent);
  }
  auto localStorage() {
    return Storage(WindowLocalStorage_localStorage_Get(this._parent));
  }
  auto sessionStorage() {
    return Storage(WindowSessionStorage_sessionStorage_Get(this._parent));
  }
  auto requestAnimationFrame(FrameRequestCallback callback) {
    return AnimationFrameProvider_requestAnimationFrame(this._parent, callback);
  }
  void cancelAnimationFrame(uint handle) {
    AnimationFrameProvider_cancelAnimationFrame(this._parent, handle);
  }
  auto origin() {
    return WindowOrWorkerGlobalScope_origin_Get(this._parent);
  }
  auto btoa(string data) {
    return WindowOrWorkerGlobalScope_btoa(this._parent, data);
  }
  auto atob(string data) {
    return WindowOrWorkerGlobalScope_atob(this._parent, data);
  }
  auto setTimeout(T2)(scope ref TimerHandler handler, int timeout /* = 0 */, scope auto ref T2 arguments) {
    Handle _handle_arguments = getOrCreateHandle(arguments);
    auto result = WindowOrWorkerGlobalScope_setTimeout(this._parent, handler, timeout, _handle_arguments);
    dropHandle!(T2)(_handle_arguments);
    return result;
  }
  void clearTimeout(int handle /* = 0 */) {
    WindowOrWorkerGlobalScope_clearTimeout(this._parent, handle);
  }
  void clearTimeout() {
    WindowOrWorkerGlobalScope_clearTimeout_0(this._parent);
  }
  auto setInterval(T2)(scope ref TimerHandler handler, int timeout /* = 0 */, scope auto ref T2 arguments) {
    Handle _handle_arguments = getOrCreateHandle(arguments);
    auto result = WindowOrWorkerGlobalScope_setInterval(this._parent, handler, timeout, _handle_arguments);
    dropHandle!(T2)(_handle_arguments);
    return result;
  }
  void clearInterval(int handle /* = 0 */) {
    WindowOrWorkerGlobalScope_clearInterval(this._parent, handle);
  }
  void clearInterval() {
    WindowOrWorkerGlobalScope_clearInterval_0(this._parent);
  }
  void queueMicrotask(VoidFunction callback) {
    WindowOrWorkerGlobalScope_queueMicrotask(this._parent, callback);
  }
  auto createImageBitmap(scope ref ImageBitmapSource image, scope ref ImageBitmapOptions options) {
    return Promise!(ImageBitmap)(WindowOrWorkerGlobalScope_createImageBitmap__ImageBitmapSource_Handle(this._parent, image, options.handle));
  }
  auto createImageBitmap(scope ref ImageBitmapSource image) {
    return Promise!(ImageBitmap)(WindowOrWorkerGlobalScope_createImageBitmap_0_ImageBitmapSource(this._parent, image));
  }
  auto createImageBitmap(scope ref ImageBitmapSource image, int sx, int sy, int sw, int sh, scope ref ImageBitmapOptions options) {
    return Promise!(ImageBitmap)(WindowOrWorkerGlobalScope_createImageBitmap__ImageBitmapSource_int_int_int_int_Handle(this._parent, image, sx, sy, sw, sh, options.handle));
  }
  auto createImageBitmap(scope ref ImageBitmapSource image, int sx, int sy, int sw, int sh) {
    return Promise!(ImageBitmap)(WindowOrWorkerGlobalScope_createImageBitmap_0_ImageBitmapSource_int_int_int_int(this._parent, image, sx, sy, sw, sh));
  }
  auto fetch(scope ref RequestInfo input, scope ref RequestInit init) {
    return Promise!(.Response)(WindowOrWorkerGlobalScope_fetch(this._parent, input, init.handle));
  }
  auto fetch(scope ref RequestInfo input) {
    return Promise!(.Response)(WindowOrWorkerGlobalScope_fetch_0(this._parent, input));
  }
  auto indexedDB() {
    return IDBFactory(WindowOrWorkerGlobalScope_indexedDB_Get(this._parent));
  }
  auto caches() {
    return CacheStorage(WindowOrWorkerGlobalScope_caches_Get(this._parent));
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
  auto Blob(scope ref Sequence!(BlobPart) blobParts, scope ref BlobPropertyBag options) {
    return .Blob(Window_Blob(this._parent, blobParts.handle, options.handle));
  }
  auto File(scope ref Sequence!(BlobPart) fileBits, string fileName, scope ref FilePropertyBag options) {
    return .File(Window_File(this._parent, fileBits.handle, fileName, options._parent));
  }
  auto FileReader() {
    return .FileReader(Window_FileReader(this._parent));
  }
  auto Headers(scope ref HeadersInit init) {
    return .Headers(Window_Headers(this._parent, init));
  }
  auto Request(scope ref RequestInfo input, scope ref RequestInit init) {
    return .Request(Window_Request(this._parent, input, init.handle));
  }
  auto Response(scope ref Optional!(BodyInit) body_ /* = no!(BodyInit) */, scope ref ResponseInit init) {
    return .Response(Window_Response(this._parent, !body_.empty, body_.front, init.handle));
  }
  auto Notification(string title, scope ref NotificationOptions options) {
    return .Notification(Window_Notification(this._parent, title, options.handle));
  }
  auto AbortController() {
    return .AbortController(Window_AbortController(this._parent));
  }
  auto CustomEvent(string type, scope ref CustomEventInit eventInitDict) {
    return .CustomEvent(Window_CustomEvent(this._parent, type, eventInitDict._parent));
  }
  auto Event(string type, scope ref EventInit eventInitDict) {
    return .Event(Window_Event(this._parent, type, eventInitDict.handle));
  }
  auto EventTarget() {
    return .EventTarget(Window_EventTarget(this._parent));
  }
  auto BroadcastChannel(string name) {
    return .BroadcastChannel(Window_BroadcastChannel(this._parent, name));
  }
  auto CloseEvent(string type, scope ref CloseEventInit eventInitDict) {
    return .CloseEvent(Window_CloseEvent(this._parent, type, eventInitDict._parent));
  }
  auto ErrorEvent(string type, scope ref ErrorEventInit eventInitDict) {
    return .ErrorEvent(Window_ErrorEvent(this._parent, type, eventInitDict._parent));
  }
  auto EventSource(string url, scope ref EventSourceInit eventSourceInitDict) {
    return .EventSource(Window_EventSource(this._parent, url, eventSourceInitDict.handle));
  }
  auto ImageData(uint sw, uint sh) {
    return .ImageData(Window_ImageData__uint_uint(this._parent, sw, sh));
  }
  auto ImageData(scope ref Uint8ClampedArray data, uint sw, uint sh) {
    return .ImageData(Window_ImageData__Handle_uint_uint(this._parent, data.handle, sw, sh));
  }
  auto MessageChannel() {
    return .MessageChannel(Window_MessageChannel(this._parent));
  }
  auto MessageEvent(string type, scope ref MessageEventInit eventInitDict) {
    return .MessageEvent(Window_MessageEvent(this._parent, type, eventInitDict._parent));
  }
  auto OffscreenCanvas(ulong width, ulong height) {
    return .OffscreenCanvas(Window_OffscreenCanvas(this._parent, width, height));
  }
  auto Path2D(scope ref SumType!(.Path2D, string) path) {
    return .Path2D(Window_Path2D(this._parent, path));
  }
  auto PromiseRejectionEvent(string type, scope ref PromiseRejectionEventInit eventInitDict) {
    return .PromiseRejectionEvent(Window_PromiseRejectionEvent(this._parent, type, eventInitDict._parent));
  }
  auto SharedWorker(string scriptURL, scope ref SumType!(string, WorkerOptions) options) {
    return .SharedWorker(Window_SharedWorker(this._parent, scriptURL, options));
  }
  auto WebSocket(string url, scope ref SumType!(string, Sequence!(string)) protocols /* = [] */) {
    return .WebSocket(Window_WebSocket(this._parent, url, protocols));
  }
  auto Worker(string scriptURL, scope ref WorkerOptions options) {
    return .Worker(Window_Worker(this._parent, scriptURL, options.handle));
  }
  auto DOMException(string message /* = "" */, string name /* = "Error" */) {
    return .DOMException(Window_DOMException(this._parent, message, name));
  }
  auto URL(string url, string base) {
    return .URL(Window_URL(this._parent, url, base));
  }
  auto URLSearchParams(scope ref SumType!(Sequence!(Sequence!(string)), Record!(string, string), string) init /* = "" */) {
    return .URLSearchParams(Window_URLSearchParams(this._parent, init));
  }
  auto DOMMatrix(scope ref SumType!(string, Sequence!(double)) init) {
    return .DOMMatrix(Window_DOMMatrix(this._parent, init));
  }
  auto DOMMatrixReadOnly(scope ref SumType!(string, Sequence!(double)) init) {
    return .DOMMatrixReadOnly(Window_DOMMatrixReadOnly(this._parent, init));
  }
  auto DOMPoint(double x /* = 0 */, double y /* = 0 */, double z /* = 0 */, double w /* = 1 */) {
    return .DOMPoint(Window_DOMPoint(this._parent, x, y, z, w));
  }
  auto DOMPointReadOnly(double x /* = 0 */, double y /* = 0 */, double z /* = 0 */, double w /* = 1 */) {
    return .DOMPointReadOnly(Window_DOMPointReadOnly(this._parent, x, y, z, w));
  }
  auto DOMQuad(scope ref DOMPointInit p1, scope ref DOMPointInit p2, scope ref DOMPointInit p3, scope ref DOMPointInit p4) {
    return .DOMQuad(Window_DOMQuad(this._parent, p1.handle, p2.handle, p3.handle, p4.handle));
  }
  auto DOMRect(double x /* = 0 */, double y /* = 0 */, double width /* = 0 */, double height /* = 0 */) {
    return .DOMRect(Window_DOMRect(this._parent, x, y, width, height));
  }
  auto DOMRectReadOnly(double x /* = 0 */, double y /* = 0 */, double width /* = 0 */, double height /* = 0 */) {
    return .DOMRectReadOnly(Window_DOMRectReadOnly(this._parent, x, y, width, height));
  }
  auto IDBVersionChangeEvent(string type, scope ref IDBVersionChangeEventInit eventInitDict) {
    return .IDBVersionChangeEvent(Window_IDBVersionChangeEvent(this._parent, type, eventInitDict._parent));
  }
  auto ByteLengthQueuingStrategy(T0)(scope auto ref T0 options) {
    Handle _handle_options = getOrCreateHandle(options);
    auto result = .ByteLengthQueuingStrategy(Window_ByteLengthQueuingStrategy(this._parent, _handle_options));
    dropHandle!(T0)(_handle_options);
    return result;
  }
  auto CountQueuingStrategy(T0)(scope auto ref T0 options) {
    Handle _handle_options = getOrCreateHandle(options);
    auto result = .CountQueuingStrategy(Window_CountQueuingStrategy(this._parent, _handle_options));
    dropHandle!(T0)(_handle_options);
    return result;
  }
  auto ReadableStream(scope ref UnderlyingSource underlyingSource, scope ref QueuingStrategy strategy) {
    return .ReadableStream(Window_ReadableStream__Handle_Handle(this._parent, underlyingSource.handle, strategy.handle));
  }
  auto ReadableStream(scope ref UnderlyingByteSource underlyingSource, scope ref QueuingStrategy strategy) {
    return .ReadableStream(Window_ReadableStream__Handle_Handle(this._parent, underlyingSource.handle, strategy.handle));
  }
  auto ReadableStreamBYOBReader(scope ref .ReadableStream stream) {
    return .ReadableStreamBYOBReader(Window_ReadableStreamBYOBReader(this._parent, stream.handle));
  }
  auto ReadableStreamDefaultReader(scope ref .ReadableStream stream) {
    return .ReadableStreamDefaultReader(Window_ReadableStreamDefaultReader(this._parent, stream.handle));
  }
  auto TransformStream(scope ref Transformer transformer, scope ref QueuingStrategy writableStrategy, scope ref QueuingStrategy readableStrategy) {
    return .TransformStream(Window_TransformStream(this._parent, transformer.handle, writableStrategy.handle, readableStrategy.handle));
  }
  auto WritableStream(scope ref UnderlyingSink underlyingSink, scope ref QueuingStrategy strategy) {
    return .WritableStream(Window_WritableStream(this._parent, underlyingSink.handle, strategy.handle));
  }
  auto WritableStreamDefaultWriter(scope ref .ReadableStream stream) {
    return .WritableStreamDefaultWriter(Window_WritableStreamDefaultWriter(this._parent, stream.handle));
  }
  auto FormData(scope ref HTMLFormElement form) {
    return .FormData(Window_FormData(this._parent, form._parent));
  }
  auto ProgressEvent(string type, scope ref ProgressEventInit eventInitDict) {
    return .ProgressEvent(Window_ProgressEvent(this._parent, type, eventInitDict._parent));
  }
  auto XMLHttpRequest() {
    return .XMLHttpRequest(Window_XMLHttpRequest(this._parent));
  }
  auto TextDecoder(string label /* = "utf-8" */, scope ref TextDecoderOptions options) {
    return .TextDecoder(Window_TextDecoder(this._parent, label, options.handle));
  }
  auto TextDecoderStream(string label /* = "utf-8" */, scope ref TextDecoderOptions options) {
    return .TextDecoderStream(Window_TextDecoderStream(this._parent, label, options.handle));
  }
  auto TextEncoder() {
    return .TextEncoder(Window_TextEncoder(this._parent));
  }
  auto TextEncoderStream() {
    return .TextEncoderStream(Window_TextEncoderStream(this._parent));
  }
}
struct WindowPostMessageOptions {
  nothrow:
  spasm.bindings.html.PostMessageOptions _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .PostMessageOptions(h);
  }
  static auto create() {
    return WindowPostMessageOptions(spasm_add__object());
  }
  void targetOrigin(string targetOrigin) {
    WindowPostMessageOptions_targetOrigin_Set(this._parent, targetOrigin);
  }
  auto targetOrigin() {
    return WindowPostMessageOptions_targetOrigin_Get(this._parent);
  }
}
alias WindowProxy = Window;
struct Worker {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
  }
  void terminate() {
    Worker_terminate(this._parent);
  }
  void postMessage(T0)(scope auto ref T0 message, scope ref Sequence!(JsObject) transfer) {
    Handle _handle_message = getOrCreateHandle(message);
    Worker_postMessage__Handle_sequence(this._parent, _handle_message, transfer.handle);
    dropHandle!(T0)(_handle_message);
  }
  void postMessage(T0)(scope auto ref T0 message, scope ref PostMessageOptions options) {
    Handle _handle_message = getOrCreateHandle(message);
    Worker_postMessage__Handle_Handle(this._parent, _handle_message, options.handle);
    dropHandle!(T0)(_handle_message);
  }
  void postMessage(T0)(scope auto ref T0 message) {
    Handle _handle_message = getOrCreateHandle(message);
    Worker_postMessage_0(this._parent, _handle_message);
    dropHandle!(T0)(_handle_message);
  }
  void onmessage(EventHandler onmessage) {
    Worker_onmessage_Set(this._parent, onmessage);
  }
  auto onmessage() {
    return Worker_onmessage_Get(this._parent);
  }
  void onmessageerror(EventHandler onmessageerror) {
    Worker_onmessageerror_Set(this._parent, onmessageerror);
  }
  auto onmessageerror() {
    return Worker_onmessageerror_Get(this._parent);
  }
  void onerror(EventHandler onerror) {
    AbstractWorker_onerror_Set(this._parent, onerror);
  }
  auto onerror() {
    return AbstractWorker_onerror_Get(this._parent);
  }
  auto Blob(scope ref Sequence!(BlobPart) blobParts, scope ref BlobPropertyBag options) {
    return .Blob(Worker_Blob(this._parent, blobParts.handle, options.handle));
  }
  auto File(scope ref Sequence!(BlobPart) fileBits, string fileName, scope ref FilePropertyBag options) {
    return .File(Worker_File(this._parent, fileBits.handle, fileName, options._parent));
  }
  auto FileReader() {
    return .FileReader(Worker_FileReader(this._parent));
  }
  auto Headers(scope ref HeadersInit init) {
    return .Headers(Worker_Headers(this._parent, init));
  }
  auto Request(scope ref RequestInfo input, scope ref RequestInit init) {
    return .Request(Worker_Request(this._parent, input, init.handle));
  }
  auto Response(scope ref Optional!(BodyInit) body_ /* = no!(BodyInit) */, scope ref ResponseInit init) {
    return .Response(Worker_Response(this._parent, !body_.empty, body_.front, init.handle));
  }
  auto Notification(string title, scope ref NotificationOptions options) {
    return .Notification(Worker_Notification(this._parent, title, options.handle));
  }
  auto AbortController() {
    return .AbortController(Worker_AbortController(this._parent));
  }
  auto CustomEvent(string type, scope ref CustomEventInit eventInitDict) {
    return .CustomEvent(Worker_CustomEvent(this._parent, type, eventInitDict._parent));
  }
  auto Event(string type, scope ref EventInit eventInitDict) {
    return .Event(Worker_Event(this._parent, type, eventInitDict.handle));
  }
  auto EventTarget() {
    return .EventTarget(Worker_EventTarget(this._parent));
  }
  auto BroadcastChannel(string name) {
    return .BroadcastChannel(Worker_BroadcastChannel(this._parent, name));
  }
  auto CloseEvent(string type, scope ref CloseEventInit eventInitDict) {
    return .CloseEvent(Worker_CloseEvent(this._parent, type, eventInitDict._parent));
  }
  auto ErrorEvent(string type, scope ref ErrorEventInit eventInitDict) {
    return .ErrorEvent(Worker_ErrorEvent(this._parent, type, eventInitDict._parent));
  }
  auto EventSource(string url, scope ref EventSourceInit eventSourceInitDict) {
    return .EventSource(Worker_EventSource(this._parent, url, eventSourceInitDict.handle));
  }
  auto ImageData(uint sw, uint sh) {
    return .ImageData(Worker_ImageData__uint_uint(this._parent, sw, sh));
  }
  auto ImageData(scope ref Uint8ClampedArray data, uint sw, uint sh) {
    return .ImageData(Worker_ImageData__Handle_uint_uint(this._parent, data.handle, sw, sh));
  }
  auto MessageChannel() {
    return .MessageChannel(Worker_MessageChannel(this._parent));
  }
  auto MessageEvent(string type, scope ref MessageEventInit eventInitDict) {
    return .MessageEvent(Worker_MessageEvent(this._parent, type, eventInitDict._parent));
  }
  auto OffscreenCanvas(ulong width, ulong height) {
    return .OffscreenCanvas(Worker_OffscreenCanvas(this._parent, width, height));
  }
  auto Path2D(scope ref SumType!(.Path2D, string) path) {
    return .Path2D(Worker_Path2D(this._parent, path));
  }
  auto PromiseRejectionEvent(string type, scope ref PromiseRejectionEventInit eventInitDict) {
    return .PromiseRejectionEvent(Worker_PromiseRejectionEvent(this._parent, type, eventInitDict._parent));
  }
  auto SharedWorker(string scriptURL, scope ref SumType!(string, WorkerOptions) options) {
    return .SharedWorker(Worker_SharedWorker(this._parent, scriptURL, options));
  }
  auto WebSocket(string url, scope ref SumType!(string, Sequence!(string)) protocols /* = [] */) {
    return .WebSocket(Worker_WebSocket(this._parent, url, protocols));
  }
  auto Worker(string scriptURL, scope ref WorkerOptions options) {
    return .Worker(Worker_Worker(this._parent, scriptURL, options.handle));
  }
  auto DOMException(string message /* = "" */, string name /* = "Error" */) {
    return .DOMException(Worker_DOMException(this._parent, message, name));
  }
  auto URL(string url, string base) {
    return .URL(Worker_URL(this._parent, url, base));
  }
  auto URLSearchParams(scope ref SumType!(Sequence!(Sequence!(string)), Record!(string, string), string) init /* = "" */) {
    return .URLSearchParams(Worker_URLSearchParams(this._parent, init));
  }
  auto DOMMatrix(scope ref SumType!(string, Sequence!(double)) init) {
    return .DOMMatrix(Worker_DOMMatrix(this._parent, init));
  }
  auto DOMMatrixReadOnly(scope ref SumType!(string, Sequence!(double)) init) {
    return .DOMMatrixReadOnly(Worker_DOMMatrixReadOnly(this._parent, init));
  }
  auto DOMPoint(double x /* = 0 */, double y /* = 0 */, double z /* = 0 */, double w /* = 1 */) {
    return .DOMPoint(Worker_DOMPoint(this._parent, x, y, z, w));
  }
  auto DOMPointReadOnly(double x /* = 0 */, double y /* = 0 */, double z /* = 0 */, double w /* = 1 */) {
    return .DOMPointReadOnly(Worker_DOMPointReadOnly(this._parent, x, y, z, w));
  }
  auto DOMQuad(scope ref DOMPointInit p1, scope ref DOMPointInit p2, scope ref DOMPointInit p3, scope ref DOMPointInit p4) {
    return .DOMQuad(Worker_DOMQuad(this._parent, p1.handle, p2.handle, p3.handle, p4.handle));
  }
  auto DOMRect(double x /* = 0 */, double y /* = 0 */, double width /* = 0 */, double height /* = 0 */) {
    return .DOMRect(Worker_DOMRect(this._parent, x, y, width, height));
  }
  auto DOMRectReadOnly(double x /* = 0 */, double y /* = 0 */, double width /* = 0 */, double height /* = 0 */) {
    return .DOMRectReadOnly(Worker_DOMRectReadOnly(this._parent, x, y, width, height));
  }
  auto IDBVersionChangeEvent(string type, scope ref IDBVersionChangeEventInit eventInitDict) {
    return .IDBVersionChangeEvent(Worker_IDBVersionChangeEvent(this._parent, type, eventInitDict._parent));
  }
  auto ByteLengthQueuingStrategy(T0)(scope auto ref T0 options) {
    Handle _handle_options = getOrCreateHandle(options);
    auto result = .ByteLengthQueuingStrategy(Worker_ByteLengthQueuingStrategy(this._parent, _handle_options));
    dropHandle!(T0)(_handle_options);
    return result;
  }
  auto CountQueuingStrategy(T0)(scope auto ref T0 options) {
    Handle _handle_options = getOrCreateHandle(options);
    auto result = .CountQueuingStrategy(Worker_CountQueuingStrategy(this._parent, _handle_options));
    dropHandle!(T0)(_handle_options);
    return result;
  }
  auto ReadableStream(scope ref UnderlyingSource underlyingSource, scope ref QueuingStrategy strategy) {
    return .ReadableStream(Worker_ReadableStream__Handle_Handle(this._parent, underlyingSource.handle, strategy.handle));
  }
  auto ReadableStream(scope ref UnderlyingByteSource underlyingSource, scope ref QueuingStrategy strategy) {
    return .ReadableStream(Worker_ReadableStream__Handle_Handle(this._parent, underlyingSource.handle, strategy.handle));
  }
  auto ReadableStreamBYOBReader(scope ref .ReadableStream stream) {
    return .ReadableStreamBYOBReader(Worker_ReadableStreamBYOBReader(this._parent, stream.handle));
  }
  auto ReadableStreamDefaultReader(scope ref .ReadableStream stream) {
    return .ReadableStreamDefaultReader(Worker_ReadableStreamDefaultReader(this._parent, stream.handle));
  }
  auto TransformStream(scope ref Transformer transformer, scope ref QueuingStrategy writableStrategy, scope ref QueuingStrategy readableStrategy) {
    return .TransformStream(Worker_TransformStream(this._parent, transformer.handle, writableStrategy.handle, readableStrategy.handle));
  }
  auto WritableStream(scope ref UnderlyingSink underlyingSink, scope ref QueuingStrategy strategy) {
    return .WritableStream(Worker_WritableStream(this._parent, underlyingSink.handle, strategy.handle));
  }
  auto WritableStreamDefaultWriter(scope ref .ReadableStream stream) {
    return .WritableStreamDefaultWriter(Worker_WritableStreamDefaultWriter(this._parent, stream.handle));
  }
  auto FormData(scope ref HTMLFormElement form) {
    return .FormData(Worker_FormData(this._parent, form._parent));
  }
  auto TextDecoder(string label /* = "utf-8" */, scope ref TextDecoderOptions options) {
    return .TextDecoder(Worker_TextDecoder(this._parent, label, options.handle));
  }
  auto TextDecoderStream(string label /* = "utf-8" */, scope ref TextDecoderOptions options) {
    return .TextDecoderStream(Worker_TextDecoderStream(this._parent, label, options.handle));
  }
  auto TextEncoder() {
    return .TextEncoder(Worker_TextEncoder(this._parent));
  }
  auto TextEncoderStream() {
    return .TextEncoderStream(Worker_TextEncoderStream(this._parent));
  }
}
struct WorkerGlobalScope {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
  }
  auto self() {
    return WorkerGlobalScope(WorkerGlobalScope_self_Get(this._parent));
  }
  auto location() {
    return WorkerLocation(WorkerGlobalScope_location_Get(this._parent));
  }
  auto navigator() {
    return WorkerNavigator(WorkerGlobalScope_navigator_Get(this._parent));
  }
  void importScripts(string urls) {
    WorkerGlobalScope_importScripts(this._parent, urls);
  }
  void onerror(scope ref OnErrorEventHandler onerror) {
    WorkerGlobalScope_onerror_Set(this._parent, !onerror.empty, onerror.front);
  }
  auto onerror() {
    return WorkerGlobalScope_onerror_Get(this._parent);
  }
  void onlanguagechange(EventHandler onlanguagechange) {
    WorkerGlobalScope_onlanguagechange_Set(this._parent, onlanguagechange);
  }
  auto onlanguagechange() {
    return WorkerGlobalScope_onlanguagechange_Get(this._parent);
  }
  void onoffline(EventHandler onoffline) {
    WorkerGlobalScope_onoffline_Set(this._parent, onoffline);
  }
  auto onoffline() {
    return WorkerGlobalScope_onoffline_Get(this._parent);
  }
  void ononline(EventHandler ononline) {
    WorkerGlobalScope_ononline_Set(this._parent, ononline);
  }
  auto ononline() {
    return WorkerGlobalScope_ononline_Get(this._parent);
  }
  void onrejectionhandled(EventHandler onrejectionhandled) {
    WorkerGlobalScope_onrejectionhandled_Set(this._parent, onrejectionhandled);
  }
  auto onrejectionhandled() {
    return WorkerGlobalScope_onrejectionhandled_Get(this._parent);
  }
  void onunhandledrejection(EventHandler onunhandledrejection) {
    WorkerGlobalScope_onunhandledrejection_Set(this._parent, onunhandledrejection);
  }
  auto onunhandledrejection() {
    return WorkerGlobalScope_onunhandledrejection_Get(this._parent);
  }
  auto origin() {
    return WindowOrWorkerGlobalScope_origin_Get(this._parent);
  }
  auto btoa(string data) {
    return WindowOrWorkerGlobalScope_btoa(this._parent, data);
  }
  auto atob(string data) {
    return WindowOrWorkerGlobalScope_atob(this._parent, data);
  }
  auto setTimeout(T2)(scope ref TimerHandler handler, int timeout /* = 0 */, scope auto ref T2 arguments) {
    Handle _handle_arguments = getOrCreateHandle(arguments);
    auto result = WindowOrWorkerGlobalScope_setTimeout(this._parent, handler, timeout, _handle_arguments);
    dropHandle!(T2)(_handle_arguments);
    return result;
  }
  void clearTimeout(int handle /* = 0 */) {
    WindowOrWorkerGlobalScope_clearTimeout(this._parent, handle);
  }
  void clearTimeout() {
    WindowOrWorkerGlobalScope_clearTimeout_0(this._parent);
  }
  auto setInterval(T2)(scope ref TimerHandler handler, int timeout /* = 0 */, scope auto ref T2 arguments) {
    Handle _handle_arguments = getOrCreateHandle(arguments);
    auto result = WindowOrWorkerGlobalScope_setInterval(this._parent, handler, timeout, _handle_arguments);
    dropHandle!(T2)(_handle_arguments);
    return result;
  }
  void clearInterval(int handle /* = 0 */) {
    WindowOrWorkerGlobalScope_clearInterval(this._parent, handle);
  }
  void clearInterval() {
    WindowOrWorkerGlobalScope_clearInterval_0(this._parent);
  }
  void queueMicrotask(VoidFunction callback) {
    WindowOrWorkerGlobalScope_queueMicrotask(this._parent, callback);
  }
  auto createImageBitmap(scope ref ImageBitmapSource image, scope ref ImageBitmapOptions options) {
    return Promise!(ImageBitmap)(WindowOrWorkerGlobalScope_createImageBitmap__ImageBitmapSource_Handle(this._parent, image, options.handle));
  }
  auto createImageBitmap(scope ref ImageBitmapSource image) {
    return Promise!(ImageBitmap)(WindowOrWorkerGlobalScope_createImageBitmap_0_ImageBitmapSource(this._parent, image));
  }
  auto createImageBitmap(scope ref ImageBitmapSource image, int sx, int sy, int sw, int sh, scope ref ImageBitmapOptions options) {
    return Promise!(ImageBitmap)(WindowOrWorkerGlobalScope_createImageBitmap__ImageBitmapSource_int_int_int_int_Handle(this._parent, image, sx, sy, sw, sh, options.handle));
  }
  auto createImageBitmap(scope ref ImageBitmapSource image, int sx, int sy, int sw, int sh) {
    return Promise!(ImageBitmap)(WindowOrWorkerGlobalScope_createImageBitmap_0_ImageBitmapSource_int_int_int_int(this._parent, image, sx, sy, sw, sh));
  }
  auto fetch(scope ref RequestInfo input, scope ref RequestInit init) {
    return Promise!(Response)(WindowOrWorkerGlobalScope_fetch(this._parent, input, init.handle));
  }
  auto fetch(scope ref RequestInfo input) {
    return Promise!(Response)(WindowOrWorkerGlobalScope_fetch_0(this._parent, input));
  }
  auto indexedDB() {
    return IDBFactory(WindowOrWorkerGlobalScope_indexedDB_Get(this._parent));
  }
  auto caches() {
    return CacheStorage(WindowOrWorkerGlobalScope_caches_Get(this._parent));
  }
}
struct WorkerLocation {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  void href(string href) {
    WorkerLocation_href_Set(this.handle, href);
  }
  auto href() {
    return WorkerLocation_href_Get(this.handle);
  }
  auto origin() {
    return WorkerLocation_origin_Get(this.handle);
  }
  auto protocol() {
    return WorkerLocation_protocol_Get(this.handle);
  }
  auto host() {
    return WorkerLocation_host_Get(this.handle);
  }
  auto hostname() {
    return WorkerLocation_hostname_Get(this.handle);
  }
  auto port() {
    return WorkerLocation_port_Get(this.handle);
  }
  auto pathname() {
    return WorkerLocation_pathname_Get(this.handle);
  }
  auto search() {
    return WorkerLocation_search_Get(this.handle);
  }
  auto hash() {
    return WorkerLocation_hash_Get(this.handle);
  }
}
struct WorkerNavigator {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto permissions() {
    return Permissions(WorkerNavigator_permissions_Get(this.handle));
  }
  auto serviceWorker() {
    return ServiceWorkerContainer(WorkerNavigator_serviceWorker_Get(this.handle));
  }
  auto hardwareConcurrency() {
    return NavigatorConcurrentHardware_hardwareConcurrency_Get(this.handle);
  }
  auto onLine() {
    return NavigatorOnLine_onLine_Get(this.handle);
  }
  auto language() {
    return NavigatorLanguage_language_Get(this.handle);
  }
  auto languages() {
    return FrozenArray!(string)(NavigatorLanguage_languages_Get(this.handle));
  }
  auto appCodeName() {
    return NavigatorID_appCodeName_Get(this.handle);
  }
  auto appName() {
    return NavigatorID_appName_Get(this.handle);
  }
  auto appVersion() {
    return NavigatorID_appVersion_Get(this.handle);
  }
  auto platform() {
    return NavigatorID_platform_Get(this.handle);
  }
  auto product() {
    return NavigatorID_product_Get(this.handle);
  }
  auto productSub() {
    return NavigatorID_productSub_Get(this.handle);
  }
  auto userAgent() {
    return NavigatorID_userAgent_Get(this.handle);
  }
  auto vendor() {
    return NavigatorID_vendor_Get(this.handle);
  }
  auto vendorSub() {
    return NavigatorID_vendorSub_Get(this.handle);
  }
  auto taintEnabled() {
    return NavigatorID_taintEnabled(this.handle);
  }
  auto oscpu() {
    return NavigatorID_oscpu_Get(this.handle);
  }
}
struct WorkerOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return WorkerOptions(spasm_add__object());
  }
  void type(WorkerType type) {
    WorkerOptions_type_Set(this.handle, type);
  }
  auto type() {
    return WorkerOptions_type_Get(this.handle);
  }
  void credentials(RequestCredentials credentials) {
    WorkerOptions_credentials_Set(this.handle, credentials);
  }
  auto credentials() {
    return WorkerOptions_credentials_Get(this.handle);
  }
  void name(string name) {
    WorkerOptions_name_Set(this.handle, name);
  }
  auto name() {
    return WorkerOptions_name_Get(this.handle);
  }
}
enum WorkerType {
  classic,
  module_
}


extern (C) void AbstractWorker_onerror_Set(Handle, EventHandler);
extern (C) EventHandler AbstractWorker_onerror_Get(Handle);
extern (C) uint AnimationFrameProvider_requestAnimationFrame(Handle, FrameRequestCallback);
extern (C) void AnimationFrameProvider_cancelAnimationFrame(Handle, uint);
extern (C) ushort ApplicationCache_status_Get(Handle);
extern (C) void ApplicationCache_update(Handle);
extern (C) void ApplicationCache_abort(Handle);
extern (C) void ApplicationCache_swapCache(Handle);
extern (C) void ApplicationCache_onchecking_Set(Handle, EventHandler);
extern (C) EventHandler ApplicationCache_onchecking_Get(Handle);
extern (C) void ApplicationCache_onerror_Set(Handle, EventHandler);
extern (C) EventHandler ApplicationCache_onerror_Get(Handle);
extern (C) void ApplicationCache_onnoupdate_Set(Handle, EventHandler);
extern (C) EventHandler ApplicationCache_onnoupdate_Get(Handle);
extern (C) void ApplicationCache_ondownloading_Set(Handle, EventHandler);
extern (C) EventHandler ApplicationCache_ondownloading_Get(Handle);
extern (C) void ApplicationCache_onprogress_Set(Handle, EventHandler);
extern (C) EventHandler ApplicationCache_onprogress_Get(Handle);
extern (C) void ApplicationCache_onupdateready_Set(Handle, EventHandler);
extern (C) EventHandler ApplicationCache_onupdateready_Get(Handle);
extern (C) void ApplicationCache_oncached_Set(Handle, EventHandler);
extern (C) EventHandler ApplicationCache_oncached_Get(Handle);
extern (C) void ApplicationCache_onobsolete_Set(Handle, EventHandler);
extern (C) EventHandler ApplicationCache_onobsolete_Get(Handle);
extern (C) void AssignedNodesOptions_flatten_Set(Handle, bool);
extern (C) bool AssignedNodesOptions_flatten_Get(Handle);
extern (C) string AudioTrack_id_Get(Handle);
extern (C) string AudioTrack_kind_Get(Handle);
extern (C) string AudioTrack_label_Get(Handle);
extern (C) string AudioTrack_language_Get(Handle);
extern (C) void AudioTrack_enabled_Set(Handle, bool);
extern (C) bool AudioTrack_enabled_Get(Handle);
extern (C) Optional!(SourceBuffer) AudioTrack_sourceBuffer_Get(Handle);
extern (C) uint AudioTrackList_length_Get(Handle);
extern (C) Handle AudioTrackList_getter__uint(Handle, uint);
extern (C) Optional!(AudioTrack) AudioTrackList_getTrackById(Handle, string);
extern (C) void AudioTrackList_onchange_Set(Handle, EventHandler);
extern (C) EventHandler AudioTrackList_onchange_Get(Handle);
extern (C) void AudioTrackList_onaddtrack_Set(Handle, EventHandler);
extern (C) EventHandler AudioTrackList_onaddtrack_Get(Handle);
extern (C) void AudioTrackList_onremovetrack_Set(Handle, EventHandler);
extern (C) EventHandler AudioTrackList_onremovetrack_Get(Handle);
extern (C) bool BarProp_visible_Get(Handle);
extern (C) void BeforeUnloadEvent_returnValue_Set(Handle, string);
extern (C) string BeforeUnloadEvent_returnValue_Get(Handle);
extern (C) string BroadcastChannel_name_Get(Handle);
extern (C) void BroadcastChannel_postMessage(Handle, Handle);
extern (C) void BroadcastChannel_close(Handle);
extern (C) void BroadcastChannel_onmessage_Set(Handle, EventHandler);
extern (C) EventHandler BroadcastChannel_onmessage_Get(Handle);
extern (C) void BroadcastChannel_onmessageerror_Set(Handle, EventHandler);
extern (C) EventHandler BroadcastChannel_onmessageerror_Get(Handle);
extern (C) void CanvasCompositing_globalAlpha_Set(Handle, double);
extern (C) double CanvasCompositing_globalAlpha_Get(Handle);
extern (C) void CanvasCompositing_globalCompositeOperation_Set(Handle, string);
extern (C) string CanvasCompositing_globalCompositeOperation_Get(Handle);
extern (C) void CanvasDrawImage_drawImage__CanvasImageSource_double_double(Handle, scope ref CanvasImageSource, double, double);
extern (C) void CanvasDrawImage_drawImage__CanvasImageSource_double_double_double_double(Handle, scope ref CanvasImageSource, double, double, double, double);
extern (C) void CanvasDrawImage_drawImage__CanvasImageSource_double_double_double_double_double_double_double_double(Handle, scope ref CanvasImageSource, double, double, double, double, double, double, double, double);
extern (C) void CanvasDrawPath_beginPath(Handle);
extern (C) void CanvasDrawPath_fill__CanvasFillRule(Handle, CanvasFillRule);
extern (C) void CanvasDrawPath_fill_0_(Handle);
extern (C) void CanvasDrawPath_fill__Handle_CanvasFillRule(Handle, Handle, CanvasFillRule);
extern (C) void CanvasDrawPath_fill_0_Handle(Handle, Handle);
extern (C) void CanvasDrawPath_stroke__(Handle);
extern (C) void CanvasDrawPath_stroke__Handle(Handle, Handle);
extern (C) void CanvasDrawPath_clip__CanvasFillRule(Handle, CanvasFillRule);
extern (C) void CanvasDrawPath_clip_0_(Handle);
extern (C) void CanvasDrawPath_clip__Handle_CanvasFillRule(Handle, Handle, CanvasFillRule);
extern (C) void CanvasDrawPath_clip_0_Handle(Handle, Handle);
extern (C) bool CanvasDrawPath_isPointInPath__double_double_CanvasFillRule(Handle, double, double, CanvasFillRule);
extern (C) bool CanvasDrawPath_isPointInPath_0_double_double(Handle, double, double);
extern (C) bool CanvasDrawPath_isPointInPath__Handle_double_double_CanvasFillRule(Handle, Handle, double, double, CanvasFillRule);
extern (C) bool CanvasDrawPath_isPointInPath_0_Handle_double_double(Handle, Handle, double, double);
extern (C) bool CanvasDrawPath_isPointInStroke__double_double(Handle, double, double);
extern (C) bool CanvasDrawPath_isPointInStroke__Handle_double_double(Handle, Handle, double, double);
extern (C) void CanvasFillStrokeStyles_strokeStyle_Set(Handle, scope ref SumType!(string, CanvasGradient, CanvasPattern));
extern (C) SumType!(string, CanvasGradient, CanvasPattern) CanvasFillStrokeStyles_strokeStyle_Get(Handle);
extern (C) void CanvasFillStrokeStyles_fillStyle_Set(Handle, scope ref SumType!(string, CanvasGradient, CanvasPattern));
extern (C) SumType!(string, CanvasGradient, CanvasPattern) CanvasFillStrokeStyles_fillStyle_Get(Handle);
extern (C) Handle CanvasFillStrokeStyles_createLinearGradient(Handle, double, double, double, double);
extern (C) Handle CanvasFillStrokeStyles_createRadialGradient(Handle, double, double, double, double, double, double);
extern (C) Optional!(CanvasPattern) CanvasFillStrokeStyles_createPattern(Handle, scope ref CanvasImageSource, string);
extern (C) void CanvasFilters_filter_Set(Handle, string);
extern (C) string CanvasFilters_filter_Get(Handle);
extern (C) void CanvasGradient_addColorStop(Handle, double, string);
extern (C) Handle CanvasImageData_createImageData__int_int(Handle, int, int);
extern (C) Handle CanvasImageData_createImageData__Handle(Handle, Handle);
extern (C) Handle CanvasImageData_getImageData(Handle, int, int, int, int);
extern (C) void CanvasImageData_putImageData__Handle_int_int(Handle, Handle, int, int);
extern (C) void CanvasImageData_putImageData__Handle_int_int_int_int_int_int(Handle, Handle, int, int, int, int, int, int);
extern (C) void CanvasImageSmoothing_imageSmoothingEnabled_Set(Handle, bool);
extern (C) bool CanvasImageSmoothing_imageSmoothingEnabled_Get(Handle);
extern (C) void CanvasImageSmoothing_imageSmoothingQuality_Set(Handle, ImageSmoothingQuality);
extern (C) ImageSmoothingQuality CanvasImageSmoothing_imageSmoothingQuality_Get(Handle);
extern (C) void CanvasPath_closePath(Handle);
extern (C) void CanvasPath_moveTo(Handle, double, double);
extern (C) void CanvasPath_lineTo(Handle, double, double);
extern (C) void CanvasPath_quadraticCurveTo(Handle, double, double, double, double);
extern (C) void CanvasPath_bezierCurveTo(Handle, double, double, double, double, double, double);
extern (C) void CanvasPath_arcTo(Handle, double, double, double, double, double);
extern (C) void CanvasPath_rect(Handle, double, double, double, double);
extern (C) void CanvasPath_arc(Handle, double, double, double, double, double, bool);
extern (C) void CanvasPath_arc_0(Handle, double, double, double, double, double);
extern (C) void CanvasPath_ellipse(Handle, double, double, double, double, double, double, double, bool);
extern (C) void CanvasPath_ellipse_0(Handle, double, double, double, double, double, double, double);
extern (C) void CanvasPathDrawingStyles_lineWidth_Set(Handle, double);
extern (C) double CanvasPathDrawingStyles_lineWidth_Get(Handle);
extern (C) void CanvasPathDrawingStyles_lineCap_Set(Handle, CanvasLineCap);
extern (C) CanvasLineCap CanvasPathDrawingStyles_lineCap_Get(Handle);
extern (C) void CanvasPathDrawingStyles_lineJoin_Set(Handle, CanvasLineJoin);
extern (C) CanvasLineJoin CanvasPathDrawingStyles_lineJoin_Get(Handle);
extern (C) void CanvasPathDrawingStyles_miterLimit_Set(Handle, double);
extern (C) double CanvasPathDrawingStyles_miterLimit_Get(Handle);
extern (C) void CanvasPathDrawingStyles_setLineDash(Handle, Handle);
extern (C) Handle CanvasPathDrawingStyles_getLineDash(Handle);
extern (C) void CanvasPathDrawingStyles_lineDashOffset_Set(Handle, double);
extern (C) double CanvasPathDrawingStyles_lineDashOffset_Get(Handle);
extern (C) void CanvasPattern_setTransform(Handle, Handle);
extern (C) void CanvasPattern_setTransform_0(Handle);
extern (C) void CanvasRect_clearRect(Handle, double, double, double, double);
extern (C) void CanvasRect_fillRect(Handle, double, double, double, double);
extern (C) void CanvasRect_strokeRect(Handle, double, double, double, double);
extern (C) Handle CanvasRenderingContext2D_canvas_Get(Handle);
extern (C) void CanvasRenderingContext2DSettings_alpha_Set(Handle, bool);
extern (C) bool CanvasRenderingContext2DSettings_alpha_Get(Handle);
extern (C) void CanvasShadowStyles_shadowOffsetX_Set(Handle, double);
extern (C) double CanvasShadowStyles_shadowOffsetX_Get(Handle);
extern (C) void CanvasShadowStyles_shadowOffsetY_Set(Handle, double);
extern (C) double CanvasShadowStyles_shadowOffsetY_Get(Handle);
extern (C) void CanvasShadowStyles_shadowBlur_Set(Handle, double);
extern (C) double CanvasShadowStyles_shadowBlur_Get(Handle);
extern (C) void CanvasShadowStyles_shadowColor_Set(Handle, string);
extern (C) string CanvasShadowStyles_shadowColor_Get(Handle);
extern (C) void CanvasState_save(Handle);
extern (C) void CanvasState_restore(Handle);
extern (C) void CanvasText_fillText(Handle, string, double, double, double);
extern (C) void CanvasText_fillText_0(Handle, string, double, double);
extern (C) void CanvasText_strokeText(Handle, string, double, double, double);
extern (C) void CanvasText_strokeText_0(Handle, string, double, double);
extern (C) Handle CanvasText_measureText(Handle, string);
extern (C) void CanvasTextDrawingStyles_font_Set(Handle, string);
extern (C) string CanvasTextDrawingStyles_font_Get(Handle);
extern (C) void CanvasTextDrawingStyles_textAlign_Set(Handle, CanvasTextAlign);
extern (C) CanvasTextAlign CanvasTextDrawingStyles_textAlign_Get(Handle);
extern (C) void CanvasTextDrawingStyles_textBaseline_Set(Handle, CanvasTextBaseline);
extern (C) CanvasTextBaseline CanvasTextDrawingStyles_textBaseline_Get(Handle);
extern (C) void CanvasTextDrawingStyles_direction_Set(Handle, CanvasDirection);
extern (C) CanvasDirection CanvasTextDrawingStyles_direction_Get(Handle);
extern (C) void CanvasTransform_scale(Handle, double, double);
extern (C) void CanvasTransform_rotate(Handle, double);
extern (C) void CanvasTransform_translate(Handle, double, double);
extern (C) void CanvasTransform_transform(Handle, double, double, double, double, double, double);
extern (C) Handle CanvasTransform_getTransform(Handle);
extern (C) void CanvasTransform_setTransform__double_double_double_double_double_double(Handle, double, double, double, double, double, double);
extern (C) void CanvasTransform_setTransform__Handle(Handle, Handle);
extern (C) void CanvasTransform_setTransform_0(Handle);
extern (C) void CanvasTransform_resetTransform(Handle);
extern (C) void CanvasUserInterface_drawFocusIfNeeded__Handle(Handle, Handle);
extern (C) void CanvasUserInterface_drawFocusIfNeeded__Handle_Handle(Handle, Handle, Handle);
extern (C) void CanvasUserInterface_scrollPathIntoView__(Handle);
extern (C) void CanvasUserInterface_scrollPathIntoView__Handle(Handle, Handle);
extern (C) bool CloseEvent_wasClean_Get(Handle);
extern (C) ushort CloseEvent_code_Get(Handle);
extern (C) string CloseEvent_reason_Get(Handle);
extern (C) void CloseEventInit_wasClean_Set(Handle, bool);
extern (C) bool CloseEventInit_wasClean_Get(Handle);
extern (C) void CloseEventInit_code_Set(Handle, ushort);
extern (C) ushort CloseEventInit_code_Get(Handle);
extern (C) void CloseEventInit_reason_Set(Handle, string);
extern (C) string CloseEventInit_reason_Get(Handle);
extern (C) void CustomElementRegistry_define(Handle, string, CustomElementConstructor, Handle);
extern (C) void CustomElementRegistry_define_0(Handle, string, CustomElementConstructor);
extern (C) Handle CustomElementRegistry_get(Handle, string);
extern (C) Handle CustomElementRegistry_whenDefined(Handle, string);
extern (C) void CustomElementRegistry_upgrade(Handle, Handle);
extern (C) uint DOMStringList_length_Get(Handle);
extern (C) Optional!(string) DOMStringList_item_getter(Handle, uint);
extern (C) bool DOMStringList_contains(Handle, string);
extern (C) string DOMStringMap_getter__string(Handle, string);
extern (C) void DOMStringMap_setter__string_string(Handle, string, string);
extern (C) void DOMStringMap_deleter(Handle, string);
extern (C) void DataTransfer_dropEffect_Set(Handle, string);
extern (C) string DataTransfer_dropEffect_Get(Handle);
extern (C) void DataTransfer_effectAllowed_Set(Handle, string);
extern (C) string DataTransfer_effectAllowed_Get(Handle);
extern (C) Handle DataTransfer_items_Get(Handle);
extern (C) void DataTransfer_setDragImage(Handle, Handle, int, int);
extern (C) Handle DataTransfer_types_Get(Handle);
extern (C) string DataTransfer_getData(Handle, string);
extern (C) void DataTransfer_setData(Handle, string, string);
extern (C) void DataTransfer_clearData(Handle, string);
extern (C) void DataTransfer_clearData_0(Handle);
extern (C) Handle DataTransfer_files_Get(Handle);
extern (C) string DataTransferItem_kind_Get(Handle);
extern (C) string DataTransferItem_type_Get(Handle);
extern (C) void DataTransferItem_getAsString(Handle, bool, FunctionStringCallback);
extern (C) Optional!(File) DataTransferItem_getAsFile(Handle);
extern (C) uint DataTransferItemList_length_Get(Handle);
extern (C) Handle DataTransferItemList_getter__uint(Handle, uint);
extern (C) Optional!(DataTransferItem) DataTransferItemList_add__string_string(Handle, string, string);
extern (C) Optional!(DataTransferItem) DataTransferItemList_add__Handle(Handle, Handle);
extern (C) void DataTransferItemList_remove(Handle, uint);
extern (C) void DataTransferItemList_clear(Handle);
extern (C) string DedicatedWorkerGlobalScope_name_Get(Handle);
extern (C) void DedicatedWorkerGlobalScope_postMessage__Handle_sequence(Handle, Handle, Handle);
extern (C) void DedicatedWorkerGlobalScope_postMessage__Handle_Handle(Handle, Handle, Handle);
extern (C) void DedicatedWorkerGlobalScope_postMessage_0(Handle, Handle);
extern (C) void DedicatedWorkerGlobalScope_close(Handle);
extern (C) void DedicatedWorkerGlobalScope_onmessage_Set(Handle, EventHandler);
extern (C) EventHandler DedicatedWorkerGlobalScope_onmessage_Get(Handle);
extern (C) void DedicatedWorkerGlobalScope_onmessageerror_Set(Handle, EventHandler);
extern (C) EventHandler DedicatedWorkerGlobalScope_onmessageerror_Get(Handle);
extern (C) void DocumentAndElementEventHandlers_oncopy_Set(Handle, EventHandler);
extern (C) EventHandler DocumentAndElementEventHandlers_oncopy_Get(Handle);
extern (C) void DocumentAndElementEventHandlers_oncut_Set(Handle, EventHandler);
extern (C) EventHandler DocumentAndElementEventHandlers_oncut_Get(Handle);
extern (C) void DocumentAndElementEventHandlers_onpaste_Set(Handle, EventHandler);
extern (C) EventHandler DocumentAndElementEventHandlers_onpaste_Get(Handle);
extern (C) Optional!(DataTransfer) DragEvent_dataTransfer_Get(Handle);
extern (C) void DragEventInit_dataTransfer_Set(Handle, bool, Handle);
extern (C) Optional!(DataTransfer) DragEventInit_dataTransfer_Get(Handle);
extern (C) void ElementContentEditable_contentEditable_Set(Handle, string);
extern (C) string ElementContentEditable_contentEditable_Get(Handle);
extern (C) void ElementContentEditable_enterKeyHint_Set(Handle, string);
extern (C) string ElementContentEditable_enterKeyHint_Get(Handle);
extern (C) bool ElementContentEditable_isContentEditable_Get(Handle);
extern (C) void ElementContentEditable_inputMode_Set(Handle, string);
extern (C) string ElementContentEditable_inputMode_Get(Handle);
extern (C) void ElementDefinitionOptions_extends_Set(Handle, string);
extern (C) string ElementDefinitionOptions_extends_Get(Handle);
extern (C) string ErrorEvent_message_Get(Handle);
extern (C) string ErrorEvent_filename_Get(Handle);
extern (C) uint ErrorEvent_lineno_Get(Handle);
extern (C) uint ErrorEvent_colno_Get(Handle);
extern (C) Handle ErrorEvent_error_Get(Handle);
extern (C) void ErrorEventInit_message_Set(Handle, string);
extern (C) string ErrorEventInit_message_Get(Handle);
extern (C) void ErrorEventInit_filename_Set(Handle, string);
extern (C) string ErrorEventInit_filename_Get(Handle);
extern (C) void ErrorEventInit_lineno_Set(Handle, uint);
extern (C) uint ErrorEventInit_lineno_Get(Handle);
extern (C) void ErrorEventInit_colno_Set(Handle, uint);
extern (C) uint ErrorEventInit_colno_Get(Handle);
extern (C) void ErrorEventInit_error_Set(Handle, Handle);
extern (C) Handle ErrorEventInit_error_Get(Handle);
extern (C) string EventSource_url_Get(Handle);
extern (C) bool EventSource_withCredentials_Get(Handle);
extern (C) ushort EventSource_readyState_Get(Handle);
extern (C) void EventSource_onopen_Set(Handle, EventHandler);
extern (C) EventHandler EventSource_onopen_Get(Handle);
extern (C) void EventSource_onmessage_Set(Handle, EventHandler);
extern (C) EventHandler EventSource_onmessage_Get(Handle);
extern (C) void EventSource_onerror_Set(Handle, EventHandler);
extern (C) EventHandler EventSource_onerror_Get(Handle);
extern (C) void EventSource_close(Handle);
extern (C) void EventSourceInit_withCredentials_Set(Handle, bool);
extern (C) bool EventSourceInit_withCredentials_Get(Handle);
extern (C) void External_AddSearchProvider(Handle);
extern (C) void External_IsSearchProviderInstalled(Handle);
extern (C) void FocusOptions_preventScroll_Set(Handle, bool);
extern (C) bool FocusOptions_preventScroll_Get(Handle);
extern (C) void GlobalEventHandlers_onabort_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onabort_Get(Handle);
extern (C) void GlobalEventHandlers_onauxclick_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onauxclick_Get(Handle);
extern (C) void GlobalEventHandlers_onblur_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onblur_Get(Handle);
extern (C) void GlobalEventHandlers_oncancel_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_oncancel_Get(Handle);
extern (C) void GlobalEventHandlers_oncanplay_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_oncanplay_Get(Handle);
extern (C) void GlobalEventHandlers_oncanplaythrough_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_oncanplaythrough_Get(Handle);
extern (C) void GlobalEventHandlers_onchange_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onchange_Get(Handle);
extern (C) void GlobalEventHandlers_onclick_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onclick_Get(Handle);
extern (C) void GlobalEventHandlers_onclose_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onclose_Get(Handle);
extern (C) void GlobalEventHandlers_oncontextmenu_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_oncontextmenu_Get(Handle);
extern (C) void GlobalEventHandlers_oncuechange_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_oncuechange_Get(Handle);
extern (C) void GlobalEventHandlers_ondblclick_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ondblclick_Get(Handle);
extern (C) void GlobalEventHandlers_ondrag_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ondrag_Get(Handle);
extern (C) void GlobalEventHandlers_ondragend_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ondragend_Get(Handle);
extern (C) void GlobalEventHandlers_ondragenter_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ondragenter_Get(Handle);
extern (C) void GlobalEventHandlers_ondragexit_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ondragexit_Get(Handle);
extern (C) void GlobalEventHandlers_ondragleave_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ondragleave_Get(Handle);
extern (C) void GlobalEventHandlers_ondragover_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ondragover_Get(Handle);
extern (C) void GlobalEventHandlers_ondragstart_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ondragstart_Get(Handle);
extern (C) void GlobalEventHandlers_ondrop_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ondrop_Get(Handle);
extern (C) void GlobalEventHandlers_ondurationchange_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ondurationchange_Get(Handle);
extern (C) void GlobalEventHandlers_onemptied_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onemptied_Get(Handle);
extern (C) void GlobalEventHandlers_onended_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onended_Get(Handle);
extern (C) void GlobalEventHandlers_onerror_Set(Handle, bool, OnErrorEventHandlerNonNull);
extern (C) OnErrorEventHandler GlobalEventHandlers_onerror_Get(Handle);
extern (C) void GlobalEventHandlers_onfocus_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onfocus_Get(Handle);
extern (C) void GlobalEventHandlers_oninput_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_oninput_Get(Handle);
extern (C) void GlobalEventHandlers_oninvalid_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_oninvalid_Get(Handle);
extern (C) void GlobalEventHandlers_onkeydown_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onkeydown_Get(Handle);
extern (C) void GlobalEventHandlers_onkeypress_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onkeypress_Get(Handle);
extern (C) void GlobalEventHandlers_onkeyup_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onkeyup_Get(Handle);
extern (C) void GlobalEventHandlers_onload_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onload_Get(Handle);
extern (C) void GlobalEventHandlers_onloadeddata_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onloadeddata_Get(Handle);
extern (C) void GlobalEventHandlers_onloadedmetadata_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onloadedmetadata_Get(Handle);
extern (C) void GlobalEventHandlers_onloadend_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onloadend_Get(Handle);
extern (C) void GlobalEventHandlers_onloadstart_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onloadstart_Get(Handle);
extern (C) void GlobalEventHandlers_onmousedown_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onmousedown_Get(Handle);
extern (C) void GlobalEventHandlers_onmouseenter_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onmouseenter_Get(Handle);
extern (C) void GlobalEventHandlers_onmouseleave_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onmouseleave_Get(Handle);
extern (C) void GlobalEventHandlers_onmousemove_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onmousemove_Get(Handle);
extern (C) void GlobalEventHandlers_onmouseout_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onmouseout_Get(Handle);
extern (C) void GlobalEventHandlers_onmouseover_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onmouseover_Get(Handle);
extern (C) void GlobalEventHandlers_onmouseup_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onmouseup_Get(Handle);
extern (C) void GlobalEventHandlers_onwheel_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onwheel_Get(Handle);
extern (C) void GlobalEventHandlers_onpause_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onpause_Get(Handle);
extern (C) void GlobalEventHandlers_onplay_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onplay_Get(Handle);
extern (C) void GlobalEventHandlers_onplaying_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onplaying_Get(Handle);
extern (C) void GlobalEventHandlers_onprogress_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onprogress_Get(Handle);
extern (C) void GlobalEventHandlers_onratechange_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onratechange_Get(Handle);
extern (C) void GlobalEventHandlers_onreset_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onreset_Get(Handle);
extern (C) void GlobalEventHandlers_onresize_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onresize_Get(Handle);
extern (C) void GlobalEventHandlers_onscroll_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onscroll_Get(Handle);
extern (C) void GlobalEventHandlers_onsecuritypolicyviolation_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onsecuritypolicyviolation_Get(Handle);
extern (C) void GlobalEventHandlers_onseeked_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onseeked_Get(Handle);
extern (C) void GlobalEventHandlers_onseeking_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onseeking_Get(Handle);
extern (C) void GlobalEventHandlers_onselect_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onselect_Get(Handle);
extern (C) void GlobalEventHandlers_onstalled_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onstalled_Get(Handle);
extern (C) void GlobalEventHandlers_onsubmit_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onsubmit_Get(Handle);
extern (C) void GlobalEventHandlers_onsuspend_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onsuspend_Get(Handle);
extern (C) void GlobalEventHandlers_ontimeupdate_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ontimeupdate_Get(Handle);
extern (C) void GlobalEventHandlers_ontoggle_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ontoggle_Get(Handle);
extern (C) void GlobalEventHandlers_onvolumechange_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onvolumechange_Get(Handle);
extern (C) void GlobalEventHandlers_onwaiting_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onwaiting_Get(Handle);
extern (C) void GlobalEventHandlers_ongotpointercapture_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ongotpointercapture_Get(Handle);
extern (C) void GlobalEventHandlers_onlostpointercapture_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onlostpointercapture_Get(Handle);
extern (C) void GlobalEventHandlers_onpointerdown_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onpointerdown_Get(Handle);
extern (C) void GlobalEventHandlers_onpointermove_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onpointermove_Get(Handle);
extern (C) void GlobalEventHandlers_onpointerup_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onpointerup_Get(Handle);
extern (C) void GlobalEventHandlers_onpointercancel_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onpointercancel_Get(Handle);
extern (C) void GlobalEventHandlers_onpointerover_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onpointerover_Get(Handle);
extern (C) void GlobalEventHandlers_onpointerout_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onpointerout_Get(Handle);
extern (C) void GlobalEventHandlers_onpointerenter_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onpointerenter_Get(Handle);
extern (C) void GlobalEventHandlers_onpointerleave_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onpointerleave_Get(Handle);
extern (C) void GlobalEventHandlers_ontouchstart_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ontouchstart_Get(Handle);
extern (C) void GlobalEventHandlers_ontouchend_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ontouchend_Get(Handle);
extern (C) void GlobalEventHandlers_ontouchmove_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ontouchmove_Get(Handle);
extern (C) void GlobalEventHandlers_ontouchcancel_Set(Handle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ontouchcancel_Get(Handle);
extern (C) uint HTMLAllCollection_length_Get(Handle);
extern (C) Handle HTMLAllCollection_getter__uint(Handle, uint);
extern (C) Optional!(SumType!(HTMLCollection, Element)) HTMLAllCollection_namedItem_getter(Handle, string);
extern (C) Optional!(SumType!(HTMLCollection, Element)) HTMLAllCollection_item(Handle, string);
extern (C) Optional!(SumType!(HTMLCollection, Element)) HTMLAllCollection_item_0(Handle);
extern (C) void HTMLAnchorElement_target_Set(Handle, string);
extern (C) string HTMLAnchorElement_target_Get(Handle);
extern (C) void HTMLAnchorElement_download_Set(Handle, string);
extern (C) string HTMLAnchorElement_download_Get(Handle);
extern (C) void HTMLAnchorElement_ping_Set(Handle, string);
extern (C) string HTMLAnchorElement_ping_Get(Handle);
extern (C) void HTMLAnchorElement_rel_Set(Handle, string);
extern (C) string HTMLAnchorElement_rel_Get(Handle);
extern (C) Handle HTMLAnchorElement_relList_Get(Handle);
extern (C) void HTMLAnchorElement_hreflang_Set(Handle, string);
extern (C) string HTMLAnchorElement_hreflang_Get(Handle);
extern (C) void HTMLAnchorElement_type_Set(Handle, string);
extern (C) string HTMLAnchorElement_type_Get(Handle);
extern (C) void HTMLAnchorElement_text_Set(Handle, string);
extern (C) string HTMLAnchorElement_text_Get(Handle);
extern (C) void HTMLAnchorElement_referrerPolicy_Set(Handle, string);
extern (C) string HTMLAnchorElement_referrerPolicy_Get(Handle);
extern (C) void HTMLAnchorElement_coords_Set(Handle, string);
extern (C) string HTMLAnchorElement_coords_Get(Handle);
extern (C) void HTMLAnchorElement_charset_Set(Handle, string);
extern (C) string HTMLAnchorElement_charset_Get(Handle);
extern (C) void HTMLAnchorElement_name_Set(Handle, string);
extern (C) string HTMLAnchorElement_name_Get(Handle);
extern (C) void HTMLAnchorElement_rev_Set(Handle, string);
extern (C) string HTMLAnchorElement_rev_Get(Handle);
extern (C) void HTMLAnchorElement_shape_Set(Handle, string);
extern (C) string HTMLAnchorElement_shape_Get(Handle);
extern (C) void HTMLAreaElement_alt_Set(Handle, string);
extern (C) string HTMLAreaElement_alt_Get(Handle);
extern (C) void HTMLAreaElement_coords_Set(Handle, string);
extern (C) string HTMLAreaElement_coords_Get(Handle);
extern (C) void HTMLAreaElement_shape_Set(Handle, string);
extern (C) string HTMLAreaElement_shape_Get(Handle);
extern (C) void HTMLAreaElement_target_Set(Handle, string);
extern (C) string HTMLAreaElement_target_Get(Handle);
extern (C) void HTMLAreaElement_download_Set(Handle, string);
extern (C) string HTMLAreaElement_download_Get(Handle);
extern (C) void HTMLAreaElement_ping_Set(Handle, string);
extern (C) string HTMLAreaElement_ping_Get(Handle);
extern (C) void HTMLAreaElement_rel_Set(Handle, string);
extern (C) string HTMLAreaElement_rel_Get(Handle);
extern (C) Handle HTMLAreaElement_relList_Get(Handle);
extern (C) void HTMLAreaElement_referrerPolicy_Set(Handle, string);
extern (C) string HTMLAreaElement_referrerPolicy_Get(Handle);
extern (C) void HTMLAreaElement_noHref_Set(Handle, bool);
extern (C) bool HTMLAreaElement_noHref_Get(Handle);
extern (C) void HTMLBRElement_clear_Set(Handle, string);
extern (C) string HTMLBRElement_clear_Get(Handle);
extern (C) void HTMLBaseElement_href_Set(Handle, string);
extern (C) string HTMLBaseElement_href_Get(Handle);
extern (C) void HTMLBaseElement_target_Set(Handle, string);
extern (C) string HTMLBaseElement_target_Get(Handle);
extern (C) void HTMLBodyElement_text_Set(Handle, string);
extern (C) string HTMLBodyElement_text_Get(Handle);
extern (C) void HTMLBodyElement_link_Set(Handle, string);
extern (C) string HTMLBodyElement_link_Get(Handle);
extern (C) void HTMLBodyElement_vLink_Set(Handle, string);
extern (C) string HTMLBodyElement_vLink_Get(Handle);
extern (C) void HTMLBodyElement_aLink_Set(Handle, string);
extern (C) string HTMLBodyElement_aLink_Get(Handle);
extern (C) void HTMLBodyElement_bgColor_Set(Handle, string);
extern (C) string HTMLBodyElement_bgColor_Get(Handle);
extern (C) void HTMLBodyElement_background_Set(Handle, string);
extern (C) string HTMLBodyElement_background_Get(Handle);
extern (C) void HTMLBodyElement_onorientationchange_Set(Handle, EventHandler);
extern (C) EventHandler HTMLBodyElement_onorientationchange_Get(Handle);
extern (C) void HTMLButtonElement_autofocus_Set(Handle, bool);
extern (C) bool HTMLButtonElement_autofocus_Get(Handle);
extern (C) void HTMLButtonElement_disabled_Set(Handle, bool);
extern (C) bool HTMLButtonElement_disabled_Get(Handle);
extern (C) Optional!(HTMLFormElement) HTMLButtonElement_form_Get(Handle);
extern (C) void HTMLButtonElement_formAction_Set(Handle, string);
extern (C) string HTMLButtonElement_formAction_Get(Handle);
extern (C) void HTMLButtonElement_formEnctype_Set(Handle, string);
extern (C) string HTMLButtonElement_formEnctype_Get(Handle);
extern (C) void HTMLButtonElement_formMethod_Set(Handle, string);
extern (C) string HTMLButtonElement_formMethod_Get(Handle);
extern (C) void HTMLButtonElement_formNoValidate_Set(Handle, bool);
extern (C) bool HTMLButtonElement_formNoValidate_Get(Handle);
extern (C) void HTMLButtonElement_formTarget_Set(Handle, string);
extern (C) string HTMLButtonElement_formTarget_Get(Handle);
extern (C) void HTMLButtonElement_name_Set(Handle, string);
extern (C) string HTMLButtonElement_name_Get(Handle);
extern (C) void HTMLButtonElement_type_Set(Handle, string);
extern (C) string HTMLButtonElement_type_Get(Handle);
extern (C) void HTMLButtonElement_value_Set(Handle, string);
extern (C) string HTMLButtonElement_value_Get(Handle);
extern (C) bool HTMLButtonElement_willValidate_Get(Handle);
extern (C) Handle HTMLButtonElement_validity_Get(Handle);
extern (C) string HTMLButtonElement_validationMessage_Get(Handle);
extern (C) bool HTMLButtonElement_checkValidity(Handle);
extern (C) bool HTMLButtonElement_reportValidity(Handle);
extern (C) void HTMLButtonElement_setCustomValidity(Handle, string);
extern (C) Handle HTMLButtonElement_labels_Get(Handle);
extern (C) void HTMLCanvasElement_width_Set(Handle, uint);
extern (C) uint HTMLCanvasElement_width_Get(Handle);
extern (C) void HTMLCanvasElement_height_Set(Handle, uint);
extern (C) uint HTMLCanvasElement_height_Get(Handle);
extern (C) Optional!(RenderingContext) HTMLCanvasElement_getContext(Handle, string, Handle);
extern (C) Optional!(RenderingContext) HTMLCanvasElement_getContext_0(Handle, string);
extern (C) string HTMLCanvasElement_toDataURL(Handle, string, Handle);
extern (C) string HTMLCanvasElement_toDataURL_0(Handle, string);
extern (C) string HTMLCanvasElement_toDataURL_1(Handle);
extern (C) void HTMLCanvasElement_toBlob(Handle, BlobCallback, string, Handle);
extern (C) void HTMLCanvasElement_toBlob_0(Handle, BlobCallback, string);
extern (C) void HTMLCanvasElement_toBlob_1(Handle, BlobCallback);
extern (C) Handle HTMLCanvasElement_transferControlToOffscreen(Handle);
extern (C) void HTMLDListElement_compact_Set(Handle, bool);
extern (C) bool HTMLDListElement_compact_Get(Handle);
extern (C) void HTMLDataElement_value_Set(Handle, string);
extern (C) string HTMLDataElement_value_Get(Handle);
extern (C) Handle HTMLDataListElement_options_Get(Handle);
extern (C) void HTMLDetailsElement_open_Set(Handle, bool);
extern (C) bool HTMLDetailsElement_open_Get(Handle);
extern (C) void HTMLDialogElement_open_Set(Handle, bool);
extern (C) bool HTMLDialogElement_open_Get(Handle);
extern (C) void HTMLDialogElement_returnValue_Set(Handle, string);
extern (C) string HTMLDialogElement_returnValue_Get(Handle);
extern (C) void HTMLDialogElement_show(Handle);
extern (C) void HTMLDialogElement_showModal(Handle);
extern (C) void HTMLDialogElement_close(Handle, string);
extern (C) void HTMLDialogElement_close_0(Handle);
extern (C) void HTMLDirectoryElement_compact_Set(Handle, bool);
extern (C) bool HTMLDirectoryElement_compact_Get(Handle);
extern (C) void HTMLDivElement_align_Set(Handle, string);
extern (C) string HTMLDivElement_align_Get(Handle);
extern (C) void HTMLElement_title_Set(Handle, string);
extern (C) string HTMLElement_title_Get(Handle);
extern (C) void HTMLElement_lang_Set(Handle, string);
extern (C) string HTMLElement_lang_Get(Handle);
extern (C) void HTMLElement_translate_Set(Handle, bool);
extern (C) bool HTMLElement_translate_Get(Handle);
extern (C) void HTMLElement_dir_Set(Handle, string);
extern (C) string HTMLElement_dir_Get(Handle);
extern (C) void HTMLElement_hidden_Set(Handle, bool);
extern (C) bool HTMLElement_hidden_Get(Handle);
extern (C) void HTMLElement_click(Handle);
extern (C) void HTMLElement_accessKey_Set(Handle, string);
extern (C) string HTMLElement_accessKey_Get(Handle);
extern (C) string HTMLElement_accessKeyLabel_Get(Handle);
extern (C) void HTMLElement_draggable_Set(Handle, bool);
extern (C) bool HTMLElement_draggable_Get(Handle);
extern (C) void HTMLElement_spellcheck_Set(Handle, bool);
extern (C) bool HTMLElement_spellcheck_Get(Handle);
extern (C) void HTMLElement_autocapitalize_Set(Handle, string);
extern (C) string HTMLElement_autocapitalize_Get(Handle);
extern (C) void HTMLElement_innerText_Set(Handle, string);
extern (C) string HTMLElement_innerText_Get(Handle);
extern (C) void HTMLEmbedElement_src_Set(Handle, string);
extern (C) string HTMLEmbedElement_src_Get(Handle);
extern (C) void HTMLEmbedElement_type_Set(Handle, string);
extern (C) string HTMLEmbedElement_type_Get(Handle);
extern (C) void HTMLEmbedElement_width_Set(Handle, string);
extern (C) string HTMLEmbedElement_width_Get(Handle);
extern (C) void HTMLEmbedElement_height_Set(Handle, string);
extern (C) string HTMLEmbedElement_height_Get(Handle);
extern (C) Optional!(Document) HTMLEmbedElement_getSVGDocument(Handle);
extern (C) void HTMLEmbedElement_align_Set(Handle, string);
extern (C) string HTMLEmbedElement_align_Get(Handle);
extern (C) void HTMLEmbedElement_name_Set(Handle, string);
extern (C) string HTMLEmbedElement_name_Get(Handle);
extern (C) void HTMLFieldSetElement_disabled_Set(Handle, bool);
extern (C) bool HTMLFieldSetElement_disabled_Get(Handle);
extern (C) Optional!(HTMLFormElement) HTMLFieldSetElement_form_Get(Handle);
extern (C) void HTMLFieldSetElement_name_Set(Handle, string);
extern (C) string HTMLFieldSetElement_name_Get(Handle);
extern (C) string HTMLFieldSetElement_type_Get(Handle);
extern (C) Handle HTMLFieldSetElement_elements_Get(Handle);
extern (C) bool HTMLFieldSetElement_willValidate_Get(Handle);
extern (C) Handle HTMLFieldSetElement_validity_Get(Handle);
extern (C) string HTMLFieldSetElement_validationMessage_Get(Handle);
extern (C) bool HTMLFieldSetElement_checkValidity(Handle);
extern (C) bool HTMLFieldSetElement_reportValidity(Handle);
extern (C) void HTMLFieldSetElement_setCustomValidity(Handle, string);
extern (C) void HTMLFontElement_color_Set(Handle, string);
extern (C) string HTMLFontElement_color_Get(Handle);
extern (C) void HTMLFontElement_face_Set(Handle, string);
extern (C) string HTMLFontElement_face_Get(Handle);
extern (C) void HTMLFontElement_size_Set(Handle, string);
extern (C) string HTMLFontElement_size_Get(Handle);
extern (C) Optional!(SumType!(RadioNodeList, Element)) HTMLFormControlsCollection_namedItem_getter(Handle, string);
extern (C) void HTMLFormElement_acceptCharset_Set(Handle, string);
extern (C) string HTMLFormElement_acceptCharset_Get(Handle);
extern (C) void HTMLFormElement_action_Set(Handle, string);
extern (C) string HTMLFormElement_action_Get(Handle);
extern (C) void HTMLFormElement_autocomplete_Set(Handle, string);
extern (C) string HTMLFormElement_autocomplete_Get(Handle);
extern (C) void HTMLFormElement_enctype_Set(Handle, string);
extern (C) string HTMLFormElement_enctype_Get(Handle);
extern (C) void HTMLFormElement_encoding_Set(Handle, string);
extern (C) string HTMLFormElement_encoding_Get(Handle);
extern (C) void HTMLFormElement_method_Set(Handle, string);
extern (C) string HTMLFormElement_method_Get(Handle);
extern (C) void HTMLFormElement_name_Set(Handle, string);
extern (C) string HTMLFormElement_name_Get(Handle);
extern (C) void HTMLFormElement_noValidate_Set(Handle, bool);
extern (C) bool HTMLFormElement_noValidate_Get(Handle);
extern (C) void HTMLFormElement_target_Set(Handle, string);
extern (C) string HTMLFormElement_target_Get(Handle);
extern (C) Handle HTMLFormElement_elements_Get(Handle);
extern (C) uint HTMLFormElement_length_Get(Handle);
extern (C) Handle HTMLFormElement_getter__uint(Handle, uint);
extern (C) SumType!(RadioNodeList, Element) HTMLFormElement_getter__string(Handle, string);
extern (C) void HTMLFormElement_submit(Handle);
extern (C) void HTMLFormElement_reset(Handle);
extern (C) bool HTMLFormElement_checkValidity(Handle);
extern (C) bool HTMLFormElement_reportValidity(Handle);
extern (C) void HTMLFrameElement_name_Set(Handle, string);
extern (C) string HTMLFrameElement_name_Get(Handle);
extern (C) void HTMLFrameElement_scrolling_Set(Handle, string);
extern (C) string HTMLFrameElement_scrolling_Get(Handle);
extern (C) void HTMLFrameElement_src_Set(Handle, string);
extern (C) string HTMLFrameElement_src_Get(Handle);
extern (C) void HTMLFrameElement_frameBorder_Set(Handle, string);
extern (C) string HTMLFrameElement_frameBorder_Get(Handle);
extern (C) void HTMLFrameElement_longDesc_Set(Handle, string);
extern (C) string HTMLFrameElement_longDesc_Get(Handle);
extern (C) void HTMLFrameElement_noResize_Set(Handle, bool);
extern (C) bool HTMLFrameElement_noResize_Get(Handle);
extern (C) Optional!(Document) HTMLFrameElement_contentDocument_Get(Handle);
extern (C) Optional!(Window) HTMLFrameElement_contentWindow_Get(Handle);
extern (C) void HTMLFrameElement_marginHeight_Set(Handle, string);
extern (C) string HTMLFrameElement_marginHeight_Get(Handle);
extern (C) void HTMLFrameElement_marginWidth_Set(Handle, string);
extern (C) string HTMLFrameElement_marginWidth_Get(Handle);
extern (C) void HTMLFrameSetElement_cols_Set(Handle, string);
extern (C) string HTMLFrameSetElement_cols_Get(Handle);
extern (C) void HTMLFrameSetElement_rows_Set(Handle, string);
extern (C) string HTMLFrameSetElement_rows_Get(Handle);
extern (C) void HTMLHRElement_align_Set(Handle, string);
extern (C) string HTMLHRElement_align_Get(Handle);
extern (C) void HTMLHRElement_color_Set(Handle, string);
extern (C) string HTMLHRElement_color_Get(Handle);
extern (C) void HTMLHRElement_noShade_Set(Handle, bool);
extern (C) bool HTMLHRElement_noShade_Get(Handle);
extern (C) void HTMLHRElement_size_Set(Handle, string);
extern (C) string HTMLHRElement_size_Get(Handle);
extern (C) void HTMLHRElement_width_Set(Handle, string);
extern (C) string HTMLHRElement_width_Get(Handle);
extern (C) void HTMLHeadingElement_align_Set(Handle, string);
extern (C) string HTMLHeadingElement_align_Get(Handle);
extern (C) void HTMLHtmlElement_version_Set(Handle, string);
extern (C) string HTMLHtmlElement_version_Get(Handle);
extern (C) void HTMLHyperlinkElementUtils_href_Set(Handle, string);
extern (C) string HTMLHyperlinkElementUtils_href_Get(Handle);
extern (C) string HTMLHyperlinkElementUtils_origin_Get(Handle);
extern (C) void HTMLHyperlinkElementUtils_protocol_Set(Handle, string);
extern (C) string HTMLHyperlinkElementUtils_protocol_Get(Handle);
extern (C) void HTMLHyperlinkElementUtils_username_Set(Handle, string);
extern (C) string HTMLHyperlinkElementUtils_username_Get(Handle);
extern (C) void HTMLHyperlinkElementUtils_password_Set(Handle, string);
extern (C) string HTMLHyperlinkElementUtils_password_Get(Handle);
extern (C) void HTMLHyperlinkElementUtils_host_Set(Handle, string);
extern (C) string HTMLHyperlinkElementUtils_host_Get(Handle);
extern (C) void HTMLHyperlinkElementUtils_hostname_Set(Handle, string);
extern (C) string HTMLHyperlinkElementUtils_hostname_Get(Handle);
extern (C) void HTMLHyperlinkElementUtils_port_Set(Handle, string);
extern (C) string HTMLHyperlinkElementUtils_port_Get(Handle);
extern (C) void HTMLHyperlinkElementUtils_pathname_Set(Handle, string);
extern (C) string HTMLHyperlinkElementUtils_pathname_Get(Handle);
extern (C) void HTMLHyperlinkElementUtils_search_Set(Handle, string);
extern (C) string HTMLHyperlinkElementUtils_search_Get(Handle);
extern (C) void HTMLHyperlinkElementUtils_hash_Set(Handle, string);
extern (C) string HTMLHyperlinkElementUtils_hash_Get(Handle);
extern (C) void HTMLIFrameElement_src_Set(Handle, string);
extern (C) string HTMLIFrameElement_src_Get(Handle);
extern (C) void HTMLIFrameElement_srcdoc_Set(Handle, string);
extern (C) string HTMLIFrameElement_srcdoc_Get(Handle);
extern (C) void HTMLIFrameElement_name_Set(Handle, string);
extern (C) string HTMLIFrameElement_name_Get(Handle);
extern (C) Handle HTMLIFrameElement_sandbox_Get(Handle);
extern (C) void HTMLIFrameElement_allow_Set(Handle, string);
extern (C) string HTMLIFrameElement_allow_Get(Handle);
extern (C) void HTMLIFrameElement_allowFullscreen_Set(Handle, bool);
extern (C) bool HTMLIFrameElement_allowFullscreen_Get(Handle);
extern (C) void HTMLIFrameElement_allowPaymentRequest_Set(Handle, bool);
extern (C) bool HTMLIFrameElement_allowPaymentRequest_Get(Handle);
extern (C) void HTMLIFrameElement_width_Set(Handle, string);
extern (C) string HTMLIFrameElement_width_Get(Handle);
extern (C) void HTMLIFrameElement_height_Set(Handle, string);
extern (C) string HTMLIFrameElement_height_Get(Handle);
extern (C) void HTMLIFrameElement_referrerPolicy_Set(Handle, string);
extern (C) string HTMLIFrameElement_referrerPolicy_Get(Handle);
extern (C) Optional!(Document) HTMLIFrameElement_contentDocument_Get(Handle);
extern (C) Optional!(Window) HTMLIFrameElement_contentWindow_Get(Handle);
extern (C) Optional!(Document) HTMLIFrameElement_getSVGDocument(Handle);
extern (C) void HTMLIFrameElement_align_Set(Handle, string);
extern (C) string HTMLIFrameElement_align_Get(Handle);
extern (C) void HTMLIFrameElement_scrolling_Set(Handle, string);
extern (C) string HTMLIFrameElement_scrolling_Get(Handle);
extern (C) void HTMLIFrameElement_frameBorder_Set(Handle, string);
extern (C) string HTMLIFrameElement_frameBorder_Get(Handle);
extern (C) void HTMLIFrameElement_longDesc_Set(Handle, string);
extern (C) string HTMLIFrameElement_longDesc_Get(Handle);
extern (C) void HTMLIFrameElement_marginHeight_Set(Handle, string);
extern (C) string HTMLIFrameElement_marginHeight_Get(Handle);
extern (C) void HTMLIFrameElement_marginWidth_Set(Handle, string);
extern (C) string HTMLIFrameElement_marginWidth_Get(Handle);
extern (C) void HTMLImageElement_alt_Set(Handle, string);
extern (C) string HTMLImageElement_alt_Get(Handle);
extern (C) void HTMLImageElement_src_Set(Handle, string);
extern (C) string HTMLImageElement_src_Get(Handle);
extern (C) void HTMLImageElement_srcset_Set(Handle, string);
extern (C) string HTMLImageElement_srcset_Get(Handle);
extern (C) void HTMLImageElement_sizes_Set(Handle, string);
extern (C) string HTMLImageElement_sizes_Get(Handle);
extern (C) void HTMLImageElement_crossOrigin_Set(Handle, bool, string);
extern (C) Optional!(string) HTMLImageElement_crossOrigin_Get(Handle);
extern (C) void HTMLImageElement_useMap_Set(Handle, string);
extern (C) string HTMLImageElement_useMap_Get(Handle);
extern (C) void HTMLImageElement_isMap_Set(Handle, bool);
extern (C) bool HTMLImageElement_isMap_Get(Handle);
extern (C) void HTMLImageElement_width_Set(Handle, uint);
extern (C) uint HTMLImageElement_width_Get(Handle);
extern (C) void HTMLImageElement_height_Set(Handle, uint);
extern (C) uint HTMLImageElement_height_Get(Handle);
extern (C) uint HTMLImageElement_naturalWidth_Get(Handle);
extern (C) uint HTMLImageElement_naturalHeight_Get(Handle);
extern (C) bool HTMLImageElement_complete_Get(Handle);
extern (C) string HTMLImageElement_currentSrc_Get(Handle);
extern (C) void HTMLImageElement_referrerPolicy_Set(Handle, string);
extern (C) string HTMLImageElement_referrerPolicy_Get(Handle);
extern (C) void HTMLImageElement_decoding_Set(Handle, string);
extern (C) string HTMLImageElement_decoding_Get(Handle);
extern (C) Handle HTMLImageElement_decode(Handle);
extern (C) void HTMLImageElement_name_Set(Handle, string);
extern (C) string HTMLImageElement_name_Get(Handle);
extern (C) void HTMLImageElement_lowsrc_Set(Handle, string);
extern (C) string HTMLImageElement_lowsrc_Get(Handle);
extern (C) void HTMLImageElement_align_Set(Handle, string);
extern (C) string HTMLImageElement_align_Get(Handle);
extern (C) void HTMLImageElement_hspace_Set(Handle, uint);
extern (C) uint HTMLImageElement_hspace_Get(Handle);
extern (C) void HTMLImageElement_vspace_Set(Handle, uint);
extern (C) uint HTMLImageElement_vspace_Get(Handle);
extern (C) void HTMLImageElement_longDesc_Set(Handle, string);
extern (C) string HTMLImageElement_longDesc_Get(Handle);
extern (C) void HTMLImageElement_border_Set(Handle, string);
extern (C) string HTMLImageElement_border_Get(Handle);
extern (C) void HTMLInputElement_accept_Set(Handle, string);
extern (C) string HTMLInputElement_accept_Get(Handle);
extern (C) void HTMLInputElement_alt_Set(Handle, string);
extern (C) string HTMLInputElement_alt_Get(Handle);
extern (C) void HTMLInputElement_autocomplete_Set(Handle, string);
extern (C) string HTMLInputElement_autocomplete_Get(Handle);
extern (C) void HTMLInputElement_autofocus_Set(Handle, bool);
extern (C) bool HTMLInputElement_autofocus_Get(Handle);
extern (C) void HTMLInputElement_defaultChecked_Set(Handle, bool);
extern (C) bool HTMLInputElement_defaultChecked_Get(Handle);
extern (C) void HTMLInputElement_checked_Set(Handle, bool);
extern (C) bool HTMLInputElement_checked_Get(Handle);
extern (C) void HTMLInputElement_dirName_Set(Handle, string);
extern (C) string HTMLInputElement_dirName_Get(Handle);
extern (C) void HTMLInputElement_disabled_Set(Handle, bool);
extern (C) bool HTMLInputElement_disabled_Get(Handle);
extern (C) Optional!(HTMLFormElement) HTMLInputElement_form_Get(Handle);
extern (C) void HTMLInputElement_files_Set(Handle, bool, Handle);
extern (C) Optional!(FileList) HTMLInputElement_files_Get(Handle);
extern (C) void HTMLInputElement_formAction_Set(Handle, string);
extern (C) string HTMLInputElement_formAction_Get(Handle);
extern (C) void HTMLInputElement_formEnctype_Set(Handle, string);
extern (C) string HTMLInputElement_formEnctype_Get(Handle);
extern (C) void HTMLInputElement_formMethod_Set(Handle, string);
extern (C) string HTMLInputElement_formMethod_Get(Handle);
extern (C) void HTMLInputElement_formNoValidate_Set(Handle, bool);
extern (C) bool HTMLInputElement_formNoValidate_Get(Handle);
extern (C) void HTMLInputElement_formTarget_Set(Handle, string);
extern (C) string HTMLInputElement_formTarget_Get(Handle);
extern (C) void HTMLInputElement_height_Set(Handle, uint);
extern (C) uint HTMLInputElement_height_Get(Handle);
extern (C) void HTMLInputElement_indeterminate_Set(Handle, bool);
extern (C) bool HTMLInputElement_indeterminate_Get(Handle);
extern (C) Optional!(HTMLElement) HTMLInputElement_list_Get(Handle);
extern (C) void HTMLInputElement_max_Set(Handle, string);
extern (C) string HTMLInputElement_max_Get(Handle);
extern (C) void HTMLInputElement_maxLength_Set(Handle, int);
extern (C) int HTMLInputElement_maxLength_Get(Handle);
extern (C) void HTMLInputElement_min_Set(Handle, string);
extern (C) string HTMLInputElement_min_Get(Handle);
extern (C) void HTMLInputElement_minLength_Set(Handle, int);
extern (C) int HTMLInputElement_minLength_Get(Handle);
extern (C) void HTMLInputElement_multiple_Set(Handle, bool);
extern (C) bool HTMLInputElement_multiple_Get(Handle);
extern (C) void HTMLInputElement_name_Set(Handle, string);
extern (C) string HTMLInputElement_name_Get(Handle);
extern (C) void HTMLInputElement_pattern_Set(Handle, string);
extern (C) string HTMLInputElement_pattern_Get(Handle);
extern (C) void HTMLInputElement_placeholder_Set(Handle, string);
extern (C) string HTMLInputElement_placeholder_Get(Handle);
extern (C) void HTMLInputElement_readOnly_Set(Handle, bool);
extern (C) bool HTMLInputElement_readOnly_Get(Handle);
extern (C) void HTMLInputElement_required_Set(Handle, bool);
extern (C) bool HTMLInputElement_required_Get(Handle);
extern (C) void HTMLInputElement_size_Set(Handle, uint);
extern (C) uint HTMLInputElement_size_Get(Handle);
extern (C) void HTMLInputElement_src_Set(Handle, string);
extern (C) string HTMLInputElement_src_Get(Handle);
extern (C) void HTMLInputElement_step_Set(Handle, string);
extern (C) string HTMLInputElement_step_Get(Handle);
extern (C) void HTMLInputElement_type_Set(Handle, string);
extern (C) string HTMLInputElement_type_Get(Handle);
extern (C) void HTMLInputElement_defaultValue_Set(Handle, string);
extern (C) string HTMLInputElement_defaultValue_Get(Handle);
extern (C) void HTMLInputElement_value_Set(Handle, string);
extern (C) string HTMLInputElement_value_Get(Handle);
extern (C) void HTMLInputElement_valueAsDate_Set(Handle, bool, Handle);
extern (C) Optional!(JsObject) HTMLInputElement_valueAsDate_Get(Handle);
extern (C) void HTMLInputElement_valueAsNumber_Set(Handle, double);
extern (C) double HTMLInputElement_valueAsNumber_Get(Handle);
extern (C) void HTMLInputElement_width_Set(Handle, uint);
extern (C) uint HTMLInputElement_width_Get(Handle);
extern (C) void HTMLInputElement_stepUp(Handle, int);
extern (C) void HTMLInputElement_stepUp_0(Handle);
extern (C) void HTMLInputElement_stepDown(Handle, int);
extern (C) void HTMLInputElement_stepDown_0(Handle);
extern (C) bool HTMLInputElement_willValidate_Get(Handle);
extern (C) Handle HTMLInputElement_validity_Get(Handle);
extern (C) string HTMLInputElement_validationMessage_Get(Handle);
extern (C) bool HTMLInputElement_checkValidity(Handle);
extern (C) bool HTMLInputElement_reportValidity(Handle);
extern (C) void HTMLInputElement_setCustomValidity(Handle, string);
extern (C) Optional!(NodeList) HTMLInputElement_labels_Get(Handle);
extern (C) void HTMLInputElement_select(Handle);
extern (C) void HTMLInputElement_selectionStart_Set(Handle, bool, uint);
extern (C) Optional!(uint) HTMLInputElement_selectionStart_Get(Handle);
extern (C) void HTMLInputElement_selectionEnd_Set(Handle, bool, uint);
extern (C) Optional!(uint) HTMLInputElement_selectionEnd_Get(Handle);
extern (C) void HTMLInputElement_selectionDirection_Set(Handle, bool, string);
extern (C) Optional!(string) HTMLInputElement_selectionDirection_Get(Handle);
extern (C) void HTMLInputElement_setRangeText__string(Handle, string);
extern (C) void HTMLInputElement_setRangeText__string_uint_uint_SelectionMode(Handle, string, uint, uint, SelectionMode);
extern (C) void HTMLInputElement_setRangeText_0(Handle, string, uint, uint);
extern (C) void HTMLInputElement_setSelectionRange(Handle, uint, uint, string);
extern (C) void HTMLInputElement_setSelectionRange_0(Handle, uint, uint);
extern (C) void HTMLInputElement_align_Set(Handle, string);
extern (C) string HTMLInputElement_align_Get(Handle);
extern (C) void HTMLInputElement_useMap_Set(Handle, string);
extern (C) string HTMLInputElement_useMap_Get(Handle);
extern (C) void HTMLLIElement_value_Set(Handle, int);
extern (C) int HTMLLIElement_value_Get(Handle);
extern (C) void HTMLLIElement_type_Set(Handle, string);
extern (C) string HTMLLIElement_type_Get(Handle);
extern (C) Optional!(HTMLFormElement) HTMLLabelElement_form_Get(Handle);
extern (C) void HTMLLabelElement_htmlFor_Set(Handle, string);
extern (C) string HTMLLabelElement_htmlFor_Get(Handle);
extern (C) Optional!(HTMLElement) HTMLLabelElement_control_Get(Handle);
extern (C) Optional!(HTMLFormElement) HTMLLegendElement_form_Get(Handle);
extern (C) void HTMLLegendElement_align_Set(Handle, string);
extern (C) string HTMLLegendElement_align_Get(Handle);
extern (C) void HTMLLinkElement_href_Set(Handle, string);
extern (C) string HTMLLinkElement_href_Get(Handle);
extern (C) void HTMLLinkElement_crossOrigin_Set(Handle, bool, string);
extern (C) Optional!(string) HTMLLinkElement_crossOrigin_Get(Handle);
extern (C) void HTMLLinkElement_rel_Set(Handle, string);
extern (C) string HTMLLinkElement_rel_Get(Handle);
extern (C) void HTMLLinkElement_as_Set(Handle, string);
extern (C) string HTMLLinkElement_as_Get(Handle);
extern (C) Handle HTMLLinkElement_relList_Get(Handle);
extern (C) void HTMLLinkElement_media_Set(Handle, string);
extern (C) string HTMLLinkElement_media_Get(Handle);
extern (C) void HTMLLinkElement_integrity_Set(Handle, string);
extern (C) string HTMLLinkElement_integrity_Get(Handle);
extern (C) void HTMLLinkElement_hreflang_Set(Handle, string);
extern (C) string HTMLLinkElement_hreflang_Get(Handle);
extern (C) void HTMLLinkElement_type_Set(Handle, string);
extern (C) string HTMLLinkElement_type_Get(Handle);
extern (C) Handle HTMLLinkElement_sizes_Get(Handle);
extern (C) void HTMLLinkElement_referrerPolicy_Set(Handle, string);
extern (C) string HTMLLinkElement_referrerPolicy_Get(Handle);
extern (C) void HTMLLinkElement_charset_Set(Handle, string);
extern (C) string HTMLLinkElement_charset_Get(Handle);
extern (C) void HTMLLinkElement_rev_Set(Handle, string);
extern (C) string HTMLLinkElement_rev_Get(Handle);
extern (C) void HTMLLinkElement_target_Set(Handle, string);
extern (C) string HTMLLinkElement_target_Get(Handle);
extern (C) void HTMLMapElement_name_Set(Handle, string);
extern (C) string HTMLMapElement_name_Get(Handle);
extern (C) Handle HTMLMapElement_areas_Get(Handle);
extern (C) void HTMLMarqueeElement_behavior_Set(Handle, string);
extern (C) string HTMLMarqueeElement_behavior_Get(Handle);
extern (C) void HTMLMarqueeElement_bgColor_Set(Handle, string);
extern (C) string HTMLMarqueeElement_bgColor_Get(Handle);
extern (C) void HTMLMarqueeElement_direction_Set(Handle, string);
extern (C) string HTMLMarqueeElement_direction_Get(Handle);
extern (C) void HTMLMarqueeElement_height_Set(Handle, string);
extern (C) string HTMLMarqueeElement_height_Get(Handle);
extern (C) void HTMLMarqueeElement_hspace_Set(Handle, uint);
extern (C) uint HTMLMarqueeElement_hspace_Get(Handle);
extern (C) void HTMLMarqueeElement_loop_Set(Handle, int);
extern (C) int HTMLMarqueeElement_loop_Get(Handle);
extern (C) void HTMLMarqueeElement_scrollAmount_Set(Handle, uint);
extern (C) uint HTMLMarqueeElement_scrollAmount_Get(Handle);
extern (C) void HTMLMarqueeElement_scrollDelay_Set(Handle, uint);
extern (C) uint HTMLMarqueeElement_scrollDelay_Get(Handle);
extern (C) void HTMLMarqueeElement_trueSpeed_Set(Handle, bool);
extern (C) bool HTMLMarqueeElement_trueSpeed_Get(Handle);
extern (C) void HTMLMarqueeElement_vspace_Set(Handle, uint);
extern (C) uint HTMLMarqueeElement_vspace_Get(Handle);
extern (C) void HTMLMarqueeElement_width_Set(Handle, string);
extern (C) string HTMLMarqueeElement_width_Get(Handle);
extern (C) void HTMLMarqueeElement_onbounce_Set(Handle, EventHandler);
extern (C) EventHandler HTMLMarqueeElement_onbounce_Get(Handle);
extern (C) void HTMLMarqueeElement_onfinish_Set(Handle, EventHandler);
extern (C) EventHandler HTMLMarqueeElement_onfinish_Get(Handle);
extern (C) void HTMLMarqueeElement_onstart_Set(Handle, EventHandler);
extern (C) EventHandler HTMLMarqueeElement_onstart_Get(Handle);
extern (C) void HTMLMarqueeElement_start(Handle);
extern (C) void HTMLMarqueeElement_stop(Handle);
extern (C) Optional!(MediaError) HTMLMediaElement_error_Get(Handle);
extern (C) void HTMLMediaElement_src_Set(Handle, string);
extern (C) string HTMLMediaElement_src_Get(Handle);
extern (C) void HTMLMediaElement_srcObject_Set(Handle, bool, scope ref MediaProvider);
extern (C) Optional!(MediaProvider) HTMLMediaElement_srcObject_Get(Handle);
extern (C) string HTMLMediaElement_currentSrc_Get(Handle);
extern (C) void HTMLMediaElement_crossOrigin_Set(Handle, bool, string);
extern (C) Optional!(string) HTMLMediaElement_crossOrigin_Get(Handle);
extern (C) ushort HTMLMediaElement_networkState_Get(Handle);
extern (C) void HTMLMediaElement_preload_Set(Handle, string);
extern (C) string HTMLMediaElement_preload_Get(Handle);
extern (C) Handle HTMLMediaElement_buffered_Get(Handle);
extern (C) void HTMLMediaElement_load(Handle);
extern (C) CanPlayTypeResult HTMLMediaElement_canPlayType(Handle, string);
extern (C) ushort HTMLMediaElement_readyState_Get(Handle);
extern (C) bool HTMLMediaElement_seeking_Get(Handle);
extern (C) void HTMLMediaElement_currentTime_Set(Handle, double);
extern (C) double HTMLMediaElement_currentTime_Get(Handle);
extern (C) void HTMLMediaElement_fastSeek(Handle, double);
extern (C) double HTMLMediaElement_duration_Get(Handle);
extern (C) Handle HTMLMediaElement_getStartDate(Handle);
extern (C) bool HTMLMediaElement_paused_Get(Handle);
extern (C) void HTMLMediaElement_defaultPlaybackRate_Set(Handle, double);
extern (C) double HTMLMediaElement_defaultPlaybackRate_Get(Handle);
extern (C) void HTMLMediaElement_playbackRate_Set(Handle, double);
extern (C) double HTMLMediaElement_playbackRate_Get(Handle);
extern (C) Handle HTMLMediaElement_played_Get(Handle);
extern (C) Handle HTMLMediaElement_seekable_Get(Handle);
extern (C) bool HTMLMediaElement_ended_Get(Handle);
extern (C) void HTMLMediaElement_autoplay_Set(Handle, bool);
extern (C) bool HTMLMediaElement_autoplay_Get(Handle);
extern (C) void HTMLMediaElement_loop_Set(Handle, bool);
extern (C) bool HTMLMediaElement_loop_Get(Handle);
extern (C) Handle HTMLMediaElement_play(Handle);
extern (C) void HTMLMediaElement_pause(Handle);
extern (C) void HTMLMediaElement_controls_Set(Handle, bool);
extern (C) bool HTMLMediaElement_controls_Get(Handle);
extern (C) void HTMLMediaElement_volume_Set(Handle, double);
extern (C) double HTMLMediaElement_volume_Get(Handle);
extern (C) void HTMLMediaElement_muted_Set(Handle, bool);
extern (C) bool HTMLMediaElement_muted_Get(Handle);
extern (C) void HTMLMediaElement_defaultMuted_Set(Handle, bool);
extern (C) bool HTMLMediaElement_defaultMuted_Get(Handle);
extern (C) Handle HTMLMediaElement_audioTracks_Get(Handle);
extern (C) Handle HTMLMediaElement_videoTracks_Get(Handle);
extern (C) Handle HTMLMediaElement_textTracks_Get(Handle);
extern (C) Handle HTMLMediaElement_addTextTrack(Handle, TextTrackKind, string, string);
extern (C) Handle HTMLMediaElement_addTextTrack_0(Handle, TextTrackKind, string);
extern (C) Handle HTMLMediaElement_addTextTrack_1(Handle, TextTrackKind);
extern (C) void HTMLMenuElement_compact_Set(Handle, bool);
extern (C) bool HTMLMenuElement_compact_Get(Handle);
extern (C) void HTMLMetaElement_name_Set(Handle, string);
extern (C) string HTMLMetaElement_name_Get(Handle);
extern (C) void HTMLMetaElement_httpEquiv_Set(Handle, string);
extern (C) string HTMLMetaElement_httpEquiv_Get(Handle);
extern (C) void HTMLMetaElement_content_Set(Handle, string);
extern (C) string HTMLMetaElement_content_Get(Handle);
extern (C) void HTMLMetaElement_scheme_Set(Handle, string);
extern (C) string HTMLMetaElement_scheme_Get(Handle);
extern (C) void HTMLMeterElement_value_Set(Handle, double);
extern (C) double HTMLMeterElement_value_Get(Handle);
extern (C) void HTMLMeterElement_min_Set(Handle, double);
extern (C) double HTMLMeterElement_min_Get(Handle);
extern (C) void HTMLMeterElement_max_Set(Handle, double);
extern (C) double HTMLMeterElement_max_Get(Handle);
extern (C) void HTMLMeterElement_low_Set(Handle, double);
extern (C) double HTMLMeterElement_low_Get(Handle);
extern (C) void HTMLMeterElement_high_Set(Handle, double);
extern (C) double HTMLMeterElement_high_Get(Handle);
extern (C) void HTMLMeterElement_optimum_Set(Handle, double);
extern (C) double HTMLMeterElement_optimum_Get(Handle);
extern (C) Handle HTMLMeterElement_labels_Get(Handle);
extern (C) void HTMLModElement_cite_Set(Handle, string);
extern (C) string HTMLModElement_cite_Get(Handle);
extern (C) void HTMLModElement_dateTime_Set(Handle, string);
extern (C) string HTMLModElement_dateTime_Get(Handle);
extern (C) void HTMLOListElement_reversed_Set(Handle, bool);
extern (C) bool HTMLOListElement_reversed_Get(Handle);
extern (C) void HTMLOListElement_start_Set(Handle, int);
extern (C) int HTMLOListElement_start_Get(Handle);
extern (C) void HTMLOListElement_type_Set(Handle, string);
extern (C) string HTMLOListElement_type_Get(Handle);
extern (C) void HTMLOListElement_compact_Set(Handle, bool);
extern (C) bool HTMLOListElement_compact_Get(Handle);
extern (C) void HTMLObjectElement_data_Set(Handle, string);
extern (C) string HTMLObjectElement_data_Get(Handle);
extern (C) void HTMLObjectElement_type_Set(Handle, string);
extern (C) string HTMLObjectElement_type_Get(Handle);
extern (C) void HTMLObjectElement_typeMustMatch_Set(Handle, bool);
extern (C) bool HTMLObjectElement_typeMustMatch_Get(Handle);
extern (C) void HTMLObjectElement_name_Set(Handle, string);
extern (C) string HTMLObjectElement_name_Get(Handle);
extern (C) void HTMLObjectElement_useMap_Set(Handle, string);
extern (C) string HTMLObjectElement_useMap_Get(Handle);
extern (C) Optional!(HTMLFormElement) HTMLObjectElement_form_Get(Handle);
extern (C) void HTMLObjectElement_width_Set(Handle, string);
extern (C) string HTMLObjectElement_width_Get(Handle);
extern (C) void HTMLObjectElement_height_Set(Handle, string);
extern (C) string HTMLObjectElement_height_Get(Handle);
extern (C) Optional!(Document) HTMLObjectElement_contentDocument_Get(Handle);
extern (C) Optional!(Window) HTMLObjectElement_contentWindow_Get(Handle);
extern (C) Optional!(Document) HTMLObjectElement_getSVGDocument(Handle);
extern (C) bool HTMLObjectElement_willValidate_Get(Handle);
extern (C) Handle HTMLObjectElement_validity_Get(Handle);
extern (C) string HTMLObjectElement_validationMessage_Get(Handle);
extern (C) bool HTMLObjectElement_checkValidity(Handle);
extern (C) bool HTMLObjectElement_reportValidity(Handle);
extern (C) void HTMLObjectElement_setCustomValidity(Handle, string);
extern (C) void HTMLObjectElement_align_Set(Handle, string);
extern (C) string HTMLObjectElement_align_Get(Handle);
extern (C) void HTMLObjectElement_archive_Set(Handle, string);
extern (C) string HTMLObjectElement_archive_Get(Handle);
extern (C) void HTMLObjectElement_code_Set(Handle, string);
extern (C) string HTMLObjectElement_code_Get(Handle);
extern (C) void HTMLObjectElement_declare_Set(Handle, bool);
extern (C) bool HTMLObjectElement_declare_Get(Handle);
extern (C) void HTMLObjectElement_hspace_Set(Handle, uint);
extern (C) uint HTMLObjectElement_hspace_Get(Handle);
extern (C) void HTMLObjectElement_standby_Set(Handle, string);
extern (C) string HTMLObjectElement_standby_Get(Handle);
extern (C) void HTMLObjectElement_vspace_Set(Handle, uint);
extern (C) uint HTMLObjectElement_vspace_Get(Handle);
extern (C) void HTMLObjectElement_codeBase_Set(Handle, string);
extern (C) string HTMLObjectElement_codeBase_Get(Handle);
extern (C) void HTMLObjectElement_codeType_Set(Handle, string);
extern (C) string HTMLObjectElement_codeType_Get(Handle);
extern (C) void HTMLObjectElement_border_Set(Handle, string);
extern (C) string HTMLObjectElement_border_Get(Handle);
extern (C) void HTMLOptGroupElement_disabled_Set(Handle, bool);
extern (C) bool HTMLOptGroupElement_disabled_Get(Handle);
extern (C) void HTMLOptGroupElement_label_Set(Handle, string);
extern (C) string HTMLOptGroupElement_label_Get(Handle);
extern (C) void HTMLOptionElement_disabled_Set(Handle, bool);
extern (C) bool HTMLOptionElement_disabled_Get(Handle);
extern (C) Optional!(HTMLFormElement) HTMLOptionElement_form_Get(Handle);
extern (C) void HTMLOptionElement_label_Set(Handle, string);
extern (C) string HTMLOptionElement_label_Get(Handle);
extern (C) void HTMLOptionElement_defaultSelected_Set(Handle, bool);
extern (C) bool HTMLOptionElement_defaultSelected_Get(Handle);
extern (C) void HTMLOptionElement_selected_Set(Handle, bool);
extern (C) bool HTMLOptionElement_selected_Get(Handle);
extern (C) void HTMLOptionElement_value_Set(Handle, string);
extern (C) string HTMLOptionElement_value_Get(Handle);
extern (C) void HTMLOptionElement_text_Set(Handle, string);
extern (C) string HTMLOptionElement_text_Get(Handle);
extern (C) int HTMLOptionElement_index_Get(Handle);
extern (C) void HTMLOptionsCollection_length_Set(Handle, uint);
extern (C) uint HTMLOptionsCollection_length_Get(Handle);
extern (C) void HTMLOptionsCollection_setter__uint_optional_Handle(Handle, uint, bool, Handle);
extern (C) void HTMLOptionsCollection_add(Handle, scope ref SumType!(HTMLOptionElement, HTMLOptGroupElement), bool, scope ref SumType!(HTMLElement, int));
extern (C) void HTMLOptionsCollection_add_0(Handle, scope ref SumType!(HTMLOptionElement, HTMLOptGroupElement));
extern (C) void HTMLOptionsCollection_remove(Handle, int);
extern (C) void HTMLOptionsCollection_selectedIndex_Set(Handle, int);
extern (C) int HTMLOptionsCollection_selectedIndex_Get(Handle);
extern (C) Handle HTMLOrSVGElement_dataset_Get(Handle);
extern (C) void HTMLOrSVGElement_nonce_Set(Handle, string);
extern (C) string HTMLOrSVGElement_nonce_Get(Handle);
extern (C) void HTMLOrSVGElement_tabIndex_Set(Handle, int);
extern (C) int HTMLOrSVGElement_tabIndex_Get(Handle);
extern (C) void HTMLOrSVGElement_focus(Handle, Handle);
extern (C) void HTMLOrSVGElement_focus_0(Handle);
extern (C) void HTMLOrSVGElement_blur(Handle);
extern (C) Handle HTMLOutputElement_htmlFor_Get(Handle);
extern (C) Optional!(HTMLFormElement) HTMLOutputElement_form_Get(Handle);
extern (C) void HTMLOutputElement_name_Set(Handle, string);
extern (C) string HTMLOutputElement_name_Get(Handle);
extern (C) string HTMLOutputElement_type_Get(Handle);
extern (C) void HTMLOutputElement_defaultValue_Set(Handle, string);
extern (C) string HTMLOutputElement_defaultValue_Get(Handle);
extern (C) void HTMLOutputElement_value_Set(Handle, string);
extern (C) string HTMLOutputElement_value_Get(Handle);
extern (C) bool HTMLOutputElement_willValidate_Get(Handle);
extern (C) Handle HTMLOutputElement_validity_Get(Handle);
extern (C) string HTMLOutputElement_validationMessage_Get(Handle);
extern (C) bool HTMLOutputElement_checkValidity(Handle);
extern (C) bool HTMLOutputElement_reportValidity(Handle);
extern (C) void HTMLOutputElement_setCustomValidity(Handle, string);
extern (C) Handle HTMLOutputElement_labels_Get(Handle);
extern (C) void HTMLParagraphElement_align_Set(Handle, string);
extern (C) string HTMLParagraphElement_align_Get(Handle);
extern (C) void HTMLParamElement_name_Set(Handle, string);
extern (C) string HTMLParamElement_name_Get(Handle);
extern (C) void HTMLParamElement_value_Set(Handle, string);
extern (C) string HTMLParamElement_value_Get(Handle);
extern (C) void HTMLParamElement_type_Set(Handle, string);
extern (C) string HTMLParamElement_type_Get(Handle);
extern (C) void HTMLParamElement_valueType_Set(Handle, string);
extern (C) string HTMLParamElement_valueType_Get(Handle);
extern (C) void HTMLPreElement_width_Set(Handle, int);
extern (C) int HTMLPreElement_width_Get(Handle);
extern (C) void HTMLProgressElement_value_Set(Handle, double);
extern (C) double HTMLProgressElement_value_Get(Handle);
extern (C) void HTMLProgressElement_max_Set(Handle, double);
extern (C) double HTMLProgressElement_max_Get(Handle);
extern (C) double HTMLProgressElement_position_Get(Handle);
extern (C) Handle HTMLProgressElement_labels_Get(Handle);
extern (C) void HTMLQuoteElement_cite_Set(Handle, string);
extern (C) string HTMLQuoteElement_cite_Get(Handle);
extern (C) void HTMLScriptElement_src_Set(Handle, string);
extern (C) string HTMLScriptElement_src_Get(Handle);
extern (C) void HTMLScriptElement_type_Set(Handle, string);
extern (C) string HTMLScriptElement_type_Get(Handle);
extern (C) void HTMLScriptElement_noModule_Set(Handle, bool);
extern (C) bool HTMLScriptElement_noModule_Get(Handle);
extern (C) void HTMLScriptElement_async_Set(Handle, bool);
extern (C) bool HTMLScriptElement_async_Get(Handle);
extern (C) void HTMLScriptElement_defer_Set(Handle, bool);
extern (C) bool HTMLScriptElement_defer_Get(Handle);
extern (C) void HTMLScriptElement_crossOrigin_Set(Handle, bool, string);
extern (C) Optional!(string) HTMLScriptElement_crossOrigin_Get(Handle);
extern (C) void HTMLScriptElement_text_Set(Handle, string);
extern (C) string HTMLScriptElement_text_Get(Handle);
extern (C) void HTMLScriptElement_integrity_Set(Handle, string);
extern (C) string HTMLScriptElement_integrity_Get(Handle);
extern (C) void HTMLScriptElement_referrerPolicy_Set(Handle, string);
extern (C) string HTMLScriptElement_referrerPolicy_Get(Handle);
extern (C) void HTMLScriptElement_charset_Set(Handle, string);
extern (C) string HTMLScriptElement_charset_Get(Handle);
extern (C) void HTMLScriptElement_event_Set(Handle, string);
extern (C) string HTMLScriptElement_event_Get(Handle);
extern (C) void HTMLScriptElement_htmlFor_Set(Handle, string);
extern (C) string HTMLScriptElement_htmlFor_Get(Handle);
extern (C) void HTMLSelectElement_autocomplete_Set(Handle, string);
extern (C) string HTMLSelectElement_autocomplete_Get(Handle);
extern (C) void HTMLSelectElement_autofocus_Set(Handle, bool);
extern (C) bool HTMLSelectElement_autofocus_Get(Handle);
extern (C) void HTMLSelectElement_disabled_Set(Handle, bool);
extern (C) bool HTMLSelectElement_disabled_Get(Handle);
extern (C) Optional!(HTMLFormElement) HTMLSelectElement_form_Get(Handle);
extern (C) void HTMLSelectElement_multiple_Set(Handle, bool);
extern (C) bool HTMLSelectElement_multiple_Get(Handle);
extern (C) void HTMLSelectElement_name_Set(Handle, string);
extern (C) string HTMLSelectElement_name_Get(Handle);
extern (C) void HTMLSelectElement_required_Set(Handle, bool);
extern (C) bool HTMLSelectElement_required_Get(Handle);
extern (C) void HTMLSelectElement_size_Set(Handle, uint);
extern (C) uint HTMLSelectElement_size_Get(Handle);
extern (C) string HTMLSelectElement_type_Get(Handle);
extern (C) Handle HTMLSelectElement_options_Get(Handle);
extern (C) void HTMLSelectElement_length_Set(Handle, uint);
extern (C) uint HTMLSelectElement_length_Get(Handle);
extern (C) Optional!(Element) HTMLSelectElement_item_getter(Handle, uint);
extern (C) Optional!(HTMLOptionElement) HTMLSelectElement_namedItem(Handle, string);
extern (C) void HTMLSelectElement_add(Handle, scope ref SumType!(HTMLOptionElement, HTMLOptGroupElement), bool, scope ref SumType!(HTMLElement, int));
extern (C) void HTMLSelectElement_add_0(Handle, scope ref SumType!(HTMLOptionElement, HTMLOptGroupElement));
extern (C) void HTMLSelectElement_remove__(Handle);
extern (C) void HTMLSelectElement_remove__int(Handle, int);
extern (C) void HTMLSelectElement_setter__uint_optional_Handle(Handle, uint, bool, Handle);
extern (C) Handle HTMLSelectElement_selectedOptions_Get(Handle);
extern (C) void HTMLSelectElement_selectedIndex_Set(Handle, int);
extern (C) int HTMLSelectElement_selectedIndex_Get(Handle);
extern (C) void HTMLSelectElement_value_Set(Handle, string);
extern (C) string HTMLSelectElement_value_Get(Handle);
extern (C) bool HTMLSelectElement_willValidate_Get(Handle);
extern (C) Handle HTMLSelectElement_validity_Get(Handle);
extern (C) string HTMLSelectElement_validationMessage_Get(Handle);
extern (C) bool HTMLSelectElement_checkValidity(Handle);
extern (C) bool HTMLSelectElement_reportValidity(Handle);
extern (C) void HTMLSelectElement_setCustomValidity(Handle, string);
extern (C) Handle HTMLSelectElement_labels_Get(Handle);
extern (C) void HTMLSlotElement_name_Set(Handle, string);
extern (C) string HTMLSlotElement_name_Get(Handle);
extern (C) Handle HTMLSlotElement_assignedNodes(Handle, Handle);
extern (C) Handle HTMLSlotElement_assignedNodes_0(Handle);
extern (C) Handle HTMLSlotElement_assignedElements(Handle, Handle);
extern (C) Handle HTMLSlotElement_assignedElements_0(Handle);
extern (C) void HTMLSourceElement_src_Set(Handle, string);
extern (C) string HTMLSourceElement_src_Get(Handle);
extern (C) void HTMLSourceElement_type_Set(Handle, string);
extern (C) string HTMLSourceElement_type_Get(Handle);
extern (C) void HTMLSourceElement_srcset_Set(Handle, string);
extern (C) string HTMLSourceElement_srcset_Get(Handle);
extern (C) void HTMLSourceElement_sizes_Set(Handle, string);
extern (C) string HTMLSourceElement_sizes_Get(Handle);
extern (C) void HTMLSourceElement_media_Set(Handle, string);
extern (C) string HTMLSourceElement_media_Get(Handle);
extern (C) void HTMLStyleElement_media_Set(Handle, string);
extern (C) string HTMLStyleElement_media_Get(Handle);
extern (C) void HTMLStyleElement_type_Set(Handle, string);
extern (C) string HTMLStyleElement_type_Get(Handle);
extern (C) void HTMLTableCaptionElement_align_Set(Handle, string);
extern (C) string HTMLTableCaptionElement_align_Get(Handle);
extern (C) void HTMLTableCellElement_colSpan_Set(Handle, uint);
extern (C) uint HTMLTableCellElement_colSpan_Get(Handle);
extern (C) void HTMLTableCellElement_rowSpan_Set(Handle, uint);
extern (C) uint HTMLTableCellElement_rowSpan_Get(Handle);
extern (C) void HTMLTableCellElement_headers_Set(Handle, string);
extern (C) string HTMLTableCellElement_headers_Get(Handle);
extern (C) int HTMLTableCellElement_cellIndex_Get(Handle);
extern (C) void HTMLTableCellElement_scope_Set(Handle, string);
extern (C) string HTMLTableCellElement_scope_Get(Handle);
extern (C) void HTMLTableCellElement_abbr_Set(Handle, string);
extern (C) string HTMLTableCellElement_abbr_Get(Handle);
extern (C) void HTMLTableCellElement_align_Set(Handle, string);
extern (C) string HTMLTableCellElement_align_Get(Handle);
extern (C) void HTMLTableCellElement_axis_Set(Handle, string);
extern (C) string HTMLTableCellElement_axis_Get(Handle);
extern (C) void HTMLTableCellElement_height_Set(Handle, string);
extern (C) string HTMLTableCellElement_height_Get(Handle);
extern (C) void HTMLTableCellElement_width_Set(Handle, string);
extern (C) string HTMLTableCellElement_width_Get(Handle);
extern (C) void HTMLTableCellElement_ch_Set(Handle, string);
extern (C) string HTMLTableCellElement_ch_Get(Handle);
extern (C) void HTMLTableCellElement_chOff_Set(Handle, string);
extern (C) string HTMLTableCellElement_chOff_Get(Handle);
extern (C) void HTMLTableCellElement_noWrap_Set(Handle, bool);
extern (C) bool HTMLTableCellElement_noWrap_Get(Handle);
extern (C) void HTMLTableCellElement_vAlign_Set(Handle, string);
extern (C) string HTMLTableCellElement_vAlign_Get(Handle);
extern (C) void HTMLTableCellElement_bgColor_Set(Handle, string);
extern (C) string HTMLTableCellElement_bgColor_Get(Handle);
extern (C) void HTMLTableColElement_span_Set(Handle, uint);
extern (C) uint HTMLTableColElement_span_Get(Handle);
extern (C) void HTMLTableColElement_align_Set(Handle, string);
extern (C) string HTMLTableColElement_align_Get(Handle);
extern (C) void HTMLTableColElement_ch_Set(Handle, string);
extern (C) string HTMLTableColElement_ch_Get(Handle);
extern (C) void HTMLTableColElement_chOff_Set(Handle, string);
extern (C) string HTMLTableColElement_chOff_Get(Handle);
extern (C) void HTMLTableColElement_vAlign_Set(Handle, string);
extern (C) string HTMLTableColElement_vAlign_Get(Handle);
extern (C) void HTMLTableColElement_width_Set(Handle, string);
extern (C) string HTMLTableColElement_width_Get(Handle);
extern (C) void HTMLTableElement_caption_Set(Handle, bool, Handle);
extern (C) Optional!(HTMLTableCaptionElement) HTMLTableElement_caption_Get(Handle);
extern (C) Handle HTMLTableElement_createCaption(Handle);
extern (C) void HTMLTableElement_deleteCaption(Handle);
extern (C) void HTMLTableElement_tHead_Set(Handle, bool, Handle);
extern (C) Optional!(HTMLTableSectionElement) HTMLTableElement_tHead_Get(Handle);
extern (C) Handle HTMLTableElement_createTHead(Handle);
extern (C) void HTMLTableElement_deleteTHead(Handle);
extern (C) void HTMLTableElement_tFoot_Set(Handle, bool, Handle);
extern (C) Optional!(HTMLTableSectionElement) HTMLTableElement_tFoot_Get(Handle);
extern (C) Handle HTMLTableElement_createTFoot(Handle);
extern (C) void HTMLTableElement_deleteTFoot(Handle);
extern (C) Handle HTMLTableElement_tBodies_Get(Handle);
extern (C) Handle HTMLTableElement_createTBody(Handle);
extern (C) Handle HTMLTableElement_rows_Get(Handle);
extern (C) Handle HTMLTableElement_insertRow(Handle, int);
extern (C) Handle HTMLTableElement_insertRow_0(Handle);
extern (C) void HTMLTableElement_deleteRow(Handle, int);
extern (C) void HTMLTableElement_align_Set(Handle, string);
extern (C) string HTMLTableElement_align_Get(Handle);
extern (C) void HTMLTableElement_border_Set(Handle, string);
extern (C) string HTMLTableElement_border_Get(Handle);
extern (C) void HTMLTableElement_frame_Set(Handle, string);
extern (C) string HTMLTableElement_frame_Get(Handle);
extern (C) void HTMLTableElement_rules_Set(Handle, string);
extern (C) string HTMLTableElement_rules_Get(Handle);
extern (C) void HTMLTableElement_summary_Set(Handle, string);
extern (C) string HTMLTableElement_summary_Get(Handle);
extern (C) void HTMLTableElement_width_Set(Handle, string);
extern (C) string HTMLTableElement_width_Get(Handle);
extern (C) void HTMLTableElement_bgColor_Set(Handle, string);
extern (C) string HTMLTableElement_bgColor_Get(Handle);
extern (C) void HTMLTableElement_cellPadding_Set(Handle, string);
extern (C) string HTMLTableElement_cellPadding_Get(Handle);
extern (C) void HTMLTableElement_cellSpacing_Set(Handle, string);
extern (C) string HTMLTableElement_cellSpacing_Get(Handle);
extern (C) int HTMLTableRowElement_rowIndex_Get(Handle);
extern (C) int HTMLTableRowElement_sectionRowIndex_Get(Handle);
extern (C) Handle HTMLTableRowElement_cells_Get(Handle);
extern (C) Handle HTMLTableRowElement_insertCell(Handle, int);
extern (C) Handle HTMLTableRowElement_insertCell_0(Handle);
extern (C) void HTMLTableRowElement_deleteCell(Handle, int);
extern (C) void HTMLTableRowElement_align_Set(Handle, string);
extern (C) string HTMLTableRowElement_align_Get(Handle);
extern (C) void HTMLTableRowElement_ch_Set(Handle, string);
extern (C) string HTMLTableRowElement_ch_Get(Handle);
extern (C) void HTMLTableRowElement_chOff_Set(Handle, string);
extern (C) string HTMLTableRowElement_chOff_Get(Handle);
extern (C) void HTMLTableRowElement_vAlign_Set(Handle, string);
extern (C) string HTMLTableRowElement_vAlign_Get(Handle);
extern (C) void HTMLTableRowElement_bgColor_Set(Handle, string);
extern (C) string HTMLTableRowElement_bgColor_Get(Handle);
extern (C) Handle HTMLTableSectionElement_rows_Get(Handle);
extern (C) Handle HTMLTableSectionElement_insertRow(Handle, int);
extern (C) Handle HTMLTableSectionElement_insertRow_0(Handle);
extern (C) void HTMLTableSectionElement_deleteRow(Handle, int);
extern (C) void HTMLTableSectionElement_align_Set(Handle, string);
extern (C) string HTMLTableSectionElement_align_Get(Handle);
extern (C) void HTMLTableSectionElement_ch_Set(Handle, string);
extern (C) string HTMLTableSectionElement_ch_Get(Handle);
extern (C) void HTMLTableSectionElement_chOff_Set(Handle, string);
extern (C) string HTMLTableSectionElement_chOff_Get(Handle);
extern (C) void HTMLTableSectionElement_vAlign_Set(Handle, string);
extern (C) string HTMLTableSectionElement_vAlign_Get(Handle);
extern (C) Handle HTMLTemplateElement_content_Get(Handle);
extern (C) void HTMLTextAreaElement_autocomplete_Set(Handle, string);
extern (C) string HTMLTextAreaElement_autocomplete_Get(Handle);
extern (C) void HTMLTextAreaElement_autofocus_Set(Handle, bool);
extern (C) bool HTMLTextAreaElement_autofocus_Get(Handle);
extern (C) void HTMLTextAreaElement_cols_Set(Handle, uint);
extern (C) uint HTMLTextAreaElement_cols_Get(Handle);
extern (C) void HTMLTextAreaElement_dirName_Set(Handle, string);
extern (C) string HTMLTextAreaElement_dirName_Get(Handle);
extern (C) void HTMLTextAreaElement_disabled_Set(Handle, bool);
extern (C) bool HTMLTextAreaElement_disabled_Get(Handle);
extern (C) Optional!(HTMLFormElement) HTMLTextAreaElement_form_Get(Handle);
extern (C) void HTMLTextAreaElement_maxLength_Set(Handle, int);
extern (C) int HTMLTextAreaElement_maxLength_Get(Handle);
extern (C) void HTMLTextAreaElement_minLength_Set(Handle, int);
extern (C) int HTMLTextAreaElement_minLength_Get(Handle);
extern (C) void HTMLTextAreaElement_name_Set(Handle, string);
extern (C) string HTMLTextAreaElement_name_Get(Handle);
extern (C) void HTMLTextAreaElement_placeholder_Set(Handle, string);
extern (C) string HTMLTextAreaElement_placeholder_Get(Handle);
extern (C) void HTMLTextAreaElement_readOnly_Set(Handle, bool);
extern (C) bool HTMLTextAreaElement_readOnly_Get(Handle);
extern (C) void HTMLTextAreaElement_required_Set(Handle, bool);
extern (C) bool HTMLTextAreaElement_required_Get(Handle);
extern (C) void HTMLTextAreaElement_rows_Set(Handle, uint);
extern (C) uint HTMLTextAreaElement_rows_Get(Handle);
extern (C) void HTMLTextAreaElement_wrap_Set(Handle, string);
extern (C) string HTMLTextAreaElement_wrap_Get(Handle);
extern (C) string HTMLTextAreaElement_type_Get(Handle);
extern (C) void HTMLTextAreaElement_defaultValue_Set(Handle, string);
extern (C) string HTMLTextAreaElement_defaultValue_Get(Handle);
extern (C) void HTMLTextAreaElement_value_Set(Handle, string);
extern (C) string HTMLTextAreaElement_value_Get(Handle);
extern (C) uint HTMLTextAreaElement_textLength_Get(Handle);
extern (C) bool HTMLTextAreaElement_willValidate_Get(Handle);
extern (C) Handle HTMLTextAreaElement_validity_Get(Handle);
extern (C) string HTMLTextAreaElement_validationMessage_Get(Handle);
extern (C) bool HTMLTextAreaElement_checkValidity(Handle);
extern (C) bool HTMLTextAreaElement_reportValidity(Handle);
extern (C) void HTMLTextAreaElement_setCustomValidity(Handle, string);
extern (C) Handle HTMLTextAreaElement_labels_Get(Handle);
extern (C) void HTMLTextAreaElement_select(Handle);
extern (C) void HTMLTextAreaElement_selectionStart_Set(Handle, uint);
extern (C) uint HTMLTextAreaElement_selectionStart_Get(Handle);
extern (C) void HTMLTextAreaElement_selectionEnd_Set(Handle, uint);
extern (C) uint HTMLTextAreaElement_selectionEnd_Get(Handle);
extern (C) void HTMLTextAreaElement_selectionDirection_Set(Handle, string);
extern (C) string HTMLTextAreaElement_selectionDirection_Get(Handle);
extern (C) void HTMLTextAreaElement_setRangeText__string(Handle, string);
extern (C) void HTMLTextAreaElement_setRangeText__string_uint_uint_SelectionMode(Handle, string, uint, uint, SelectionMode);
extern (C) void HTMLTextAreaElement_setRangeText_0(Handle, string, uint, uint);
extern (C) void HTMLTextAreaElement_setSelectionRange(Handle, uint, uint, string);
extern (C) void HTMLTextAreaElement_setSelectionRange_0(Handle, uint, uint);
extern (C) void HTMLTimeElement_dateTime_Set(Handle, string);
extern (C) string HTMLTimeElement_dateTime_Get(Handle);
extern (C) void HTMLTitleElement_text_Set(Handle, string);
extern (C) string HTMLTitleElement_text_Get(Handle);
extern (C) void HTMLTrackElement_kind_Set(Handle, string);
extern (C) string HTMLTrackElement_kind_Get(Handle);
extern (C) void HTMLTrackElement_src_Set(Handle, string);
extern (C) string HTMLTrackElement_src_Get(Handle);
extern (C) void HTMLTrackElement_srclang_Set(Handle, string);
extern (C) string HTMLTrackElement_srclang_Get(Handle);
extern (C) void HTMLTrackElement_label_Set(Handle, string);
extern (C) string HTMLTrackElement_label_Get(Handle);
extern (C) void HTMLTrackElement_default_Set(Handle, bool);
extern (C) bool HTMLTrackElement_default_Get(Handle);
extern (C) ushort HTMLTrackElement_readyState_Get(Handle);
extern (C) Handle HTMLTrackElement_track_Get(Handle);
extern (C) void HTMLUListElement_compact_Set(Handle, bool);
extern (C) bool HTMLUListElement_compact_Get(Handle);
extern (C) void HTMLUListElement_type_Set(Handle, string);
extern (C) string HTMLUListElement_type_Get(Handle);
extern (C) void HTMLVideoElement_width_Set(Handle, uint);
extern (C) uint HTMLVideoElement_width_Get(Handle);
extern (C) void HTMLVideoElement_height_Set(Handle, uint);
extern (C) uint HTMLVideoElement_height_Get(Handle);
extern (C) uint HTMLVideoElement_videoWidth_Get(Handle);
extern (C) uint HTMLVideoElement_videoHeight_Get(Handle);
extern (C) void HTMLVideoElement_poster_Set(Handle, string);
extern (C) string HTMLVideoElement_poster_Get(Handle);
extern (C) void HTMLVideoElement_playsInline_Set(Handle, bool);
extern (C) bool HTMLVideoElement_playsInline_Get(Handle);
extern (C) string HashChangeEvent_oldURL_Get(Handle);
extern (C) string HashChangeEvent_newURL_Get(Handle);
extern (C) void HashChangeEventInit_oldURL_Set(Handle, string);
extern (C) string HashChangeEventInit_oldURL_Get(Handle);
extern (C) void HashChangeEventInit_newURL_Set(Handle, string);
extern (C) string HashChangeEventInit_newURL_Get(Handle);
extern (C) uint History_length_Get(Handle);
extern (C) void History_scrollRestoration_Set(Handle, ScrollRestoration);
extern (C) ScrollRestoration History_scrollRestoration_Get(Handle);
extern (C) Handle History_state_Get(Handle);
extern (C) void History_go(Handle, int);
extern (C) void History_go_0(Handle);
extern (C) void History_back(Handle);
extern (C) void History_forward(Handle);
extern (C) void History_pushState(Handle, Handle, string, bool, string);
extern (C) void History_pushState_0(Handle, Handle, string);
extern (C) void History_replaceState(Handle, Handle, string, bool, string);
extern (C) void History_replaceState_0(Handle, Handle, string);
extern (C) uint ImageBitmap_width_Get(Handle);
extern (C) uint ImageBitmap_height_Get(Handle);
extern (C) void ImageBitmap_close(Handle);
extern (C) void ImageBitmapOptions_imageOrientation_Set(Handle, ImageOrientation);
extern (C) ImageOrientation ImageBitmapOptions_imageOrientation_Get(Handle);
extern (C) void ImageBitmapOptions_premultiplyAlpha_Set(Handle, PremultiplyAlpha);
extern (C) PremultiplyAlpha ImageBitmapOptions_premultiplyAlpha_Get(Handle);
extern (C) void ImageBitmapOptions_colorSpaceConversion_Set(Handle, ColorSpaceConversion);
extern (C) ColorSpaceConversion ImageBitmapOptions_colorSpaceConversion_Get(Handle);
extern (C) void ImageBitmapOptions_resizeWidth_Set(Handle, uint);
extern (C) uint ImageBitmapOptions_resizeWidth_Get(Handle);
extern (C) void ImageBitmapOptions_resizeHeight_Set(Handle, uint);
extern (C) uint ImageBitmapOptions_resizeHeight_Get(Handle);
extern (C) void ImageBitmapOptions_resizeQuality_Set(Handle, ResizeQuality);
extern (C) ResizeQuality ImageBitmapOptions_resizeQuality_Get(Handle);
extern (C) Handle ImageBitmapRenderingContext_canvas_Get(Handle);
extern (C) void ImageBitmapRenderingContext_transferFromImageBitmap(Handle, bool, Handle);
extern (C) void ImageBitmapRenderingContextSettings_alpha_Set(Handle, bool);
extern (C) bool ImageBitmapRenderingContextSettings_alpha_Get(Handle);
extern (C) uint ImageData_width_Get(Handle);
extern (C) uint ImageData_height_Get(Handle);
extern (C) Handle ImageData_data_Get(Handle);
extern (C) void ImageEncodeOptions_type_Set(Handle, string);
extern (C) string ImageEncodeOptions_type_Get(Handle);
extern (C) void ImageEncodeOptions_quality_Set(Handle, double);
extern (C) double ImageEncodeOptions_quality_Get(Handle);
extern (C) void Location_href_Set(Handle, string);
extern (C) string Location_href_Get(Handle);
extern (C) string Location_origin_Get(Handle);
extern (C) void Location_protocol_Set(Handle, string);
extern (C) string Location_protocol_Get(Handle);
extern (C) void Location_host_Set(Handle, string);
extern (C) string Location_host_Get(Handle);
extern (C) void Location_hostname_Set(Handle, string);
extern (C) string Location_hostname_Get(Handle);
extern (C) void Location_port_Set(Handle, string);
extern (C) string Location_port_Get(Handle);
extern (C) void Location_pathname_Set(Handle, string);
extern (C) string Location_pathname_Get(Handle);
extern (C) void Location_search_Set(Handle, string);
extern (C) string Location_search_Get(Handle);
extern (C) void Location_hash_Set(Handle, string);
extern (C) string Location_hash_Get(Handle);
extern (C) void Location_assign(Handle, string);
extern (C) void Location_replace(Handle, string);
extern (C) void Location_reload(Handle);
extern (C) Handle Location_ancestorOrigins_Get(Handle);
extern (C) ushort MediaError_code_Get(Handle);
extern (C) string MediaError_message_Get(Handle);
extern (C) Handle MessageChannel_port1_Get(Handle);
extern (C) Handle MessageChannel_port2_Get(Handle);
extern (C) Handle MessageEvent_data_Get(Handle);
extern (C) string MessageEvent_origin_Get(Handle);
extern (C) string MessageEvent_lastEventId_Get(Handle);
extern (C) Optional!(MessageEventSource) MessageEvent_source_Get(Handle);
extern (C) Handle MessageEvent_ports_Get(Handle);
extern (C) void MessageEvent_initMessageEvent(Handle, string, bool, bool, Handle, string, string, bool, scope ref MessageEventSource, Handle);
extern (C) void MessageEvent_initMessageEvent_0(Handle, string, bool, bool, Handle, string, string, bool, scope ref MessageEventSource);
extern (C) void MessageEvent_initMessageEvent_1(Handle, string, bool, bool, Handle, string, string);
extern (C) void MessageEvent_initMessageEvent_2(Handle, string, bool, bool, Handle, string);
extern (C) void MessageEvent_initMessageEvent_3(Handle, string, bool, bool, Handle);
extern (C) void MessageEvent_initMessageEvent_4(Handle, string, bool, bool);
extern (C) void MessageEvent_initMessageEvent_5(Handle, string, bool);
extern (C) void MessageEvent_initMessageEvent_6(Handle, string);
extern (C) void MessageEventInit_data_Set(Handle, Handle);
extern (C) Handle MessageEventInit_data_Get(Handle);
extern (C) void MessageEventInit_origin_Set(Handle, string);
extern (C) string MessageEventInit_origin_Get(Handle);
extern (C) void MessageEventInit_lastEventId_Set(Handle, string);
extern (C) string MessageEventInit_lastEventId_Get(Handle);
extern (C) void MessageEventInit_source_Set(Handle, bool, scope ref MessageEventSource);
extern (C) Optional!(MessageEventSource) MessageEventInit_source_Get(Handle);
extern (C) void MessageEventInit_ports_Set(Handle, Handle);
extern (C) Handle MessageEventInit_ports_Get(Handle);
extern (C) void MessagePort_postMessage__Handle_sequence(Handle, Handle, Handle);
extern (C) void MessagePort_postMessage__Handle_Handle(Handle, Handle, Handle);
extern (C) void MessagePort_postMessage_0(Handle, Handle);
extern (C) void MessagePort_start(Handle);
extern (C) void MessagePort_close(Handle);
extern (C) void MessagePort_onmessage_Set(Handle, EventHandler);
extern (C) EventHandler MessagePort_onmessage_Get(Handle);
extern (C) void MessagePort_onmessageerror_Set(Handle, EventHandler);
extern (C) EventHandler MessagePort_onmessageerror_Get(Handle);
extern (C) string MimeType_type_Get(Handle);
extern (C) string MimeType_description_Get(Handle);
extern (C) string MimeType_suffixes_Get(Handle);
extern (C) Handle MimeType_enabledPlugin_Get(Handle);
extern (C) uint MimeTypeArray_length_Get(Handle);
extern (C) Optional!(MimeType) MimeTypeArray_item_getter(Handle, uint);
extern (C) Optional!(MimeType) MimeTypeArray_namedItem_getter(Handle, string);
extern (C) Handle Navigator_clipboard_Get(Handle);
extern (C) Handle Navigator_permissions_Get(Handle);
extern (C) bool Navigator_vibrate(Handle, scope ref VibratePattern);
extern (C) Handle Navigator_mediaDevices_Get(Handle);
extern (C) void Navigator_getUserMedia(Handle, Handle, NavigatorUserMediaSuccessCallback, NavigatorUserMediaErrorCallback);
extern (C) int Navigator_maxTouchPoints_Get(Handle);
extern (C) Handle Navigator_serviceWorker_Get(Handle);
extern (C) ulong NavigatorConcurrentHardware_hardwareConcurrency_Get(Handle);
extern (C) void NavigatorContentUtils_registerProtocolHandler(Handle, string, string, string);
extern (C) void NavigatorContentUtils_unregisterProtocolHandler(Handle, string, string);
extern (C) bool NavigatorCookies_cookieEnabled_Get(Handle);
extern (C) string NavigatorID_appCodeName_Get(Handle);
extern (C) string NavigatorID_appName_Get(Handle);
extern (C) string NavigatorID_appVersion_Get(Handle);
extern (C) string NavigatorID_platform_Get(Handle);
extern (C) string NavigatorID_product_Get(Handle);
extern (C) string NavigatorID_productSub_Get(Handle);
extern (C) string NavigatorID_userAgent_Get(Handle);
extern (C) string NavigatorID_vendor_Get(Handle);
extern (C) string NavigatorID_vendorSub_Get(Handle);
extern (C) bool NavigatorID_taintEnabled(Handle);
extern (C) string NavigatorID_oscpu_Get(Handle);
extern (C) string NavigatorLanguage_language_Get(Handle);
extern (C) Handle NavigatorLanguage_languages_Get(Handle);
extern (C) bool NavigatorOnLine_onLine_Get(Handle);
extern (C) Handle NavigatorPlugins_plugins_Get(Handle);
extern (C) Handle NavigatorPlugins_mimeTypes_Get(Handle);
extern (C) bool NavigatorPlugins_javaEnabled(Handle);
extern (C) void OffscreenCanvas_width_Set(Handle, ulong);
extern (C) ulong OffscreenCanvas_width_Get(Handle);
extern (C) void OffscreenCanvas_height_Set(Handle, ulong);
extern (C) ulong OffscreenCanvas_height_Get(Handle);
extern (C) Optional!(OffscreenRenderingContext) OffscreenCanvas_getContext(Handle, OffscreenRenderingContextId, Handle);
extern (C) Optional!(OffscreenRenderingContext) OffscreenCanvas_getContext_0(Handle, OffscreenRenderingContextId);
extern (C) Handle OffscreenCanvas_transferToImageBitmap(Handle);
extern (C) Handle OffscreenCanvas_convertToBlob(Handle, Handle);
extern (C) Handle OffscreenCanvas_convertToBlob_0(Handle);
extern (C) void OffscreenCanvasRenderingContext2D_commit(Handle);
extern (C) Handle OffscreenCanvasRenderingContext2D_canvas_Get(Handle);
extern (C) bool PageTransitionEvent_persisted_Get(Handle);
extern (C) void PageTransitionEventInit_persisted_Set(Handle, bool);
extern (C) bool PageTransitionEventInit_persisted_Get(Handle);
extern (C) void Path2D_addPath(Handle, Handle, Handle);
extern (C) void Path2D_addPath_0(Handle, Handle);
extern (C) string Plugin_name_Get(Handle);
extern (C) string Plugin_description_Get(Handle);
extern (C) string Plugin_filename_Get(Handle);
extern (C) uint Plugin_length_Get(Handle);
extern (C) Optional!(MimeType) Plugin_item_getter(Handle, uint);
extern (C) Optional!(MimeType) Plugin_namedItem_getter(Handle, string);
extern (C) void PluginArray_refresh(Handle, bool);
extern (C) void PluginArray_refresh_0(Handle);
extern (C) uint PluginArray_length_Get(Handle);
extern (C) Optional!(Plugin) PluginArray_item_getter(Handle, uint);
extern (C) Optional!(Plugin) PluginArray_namedItem_getter(Handle, string);
extern (C) Handle PopStateEvent_state_Get(Handle);
extern (C) void PopStateEventInit_state_Set(Handle, Handle);
extern (C) Handle PopStateEventInit_state_Get(Handle);
extern (C) void PostMessageOptions_transfer_Set(Handle, Handle);
extern (C) Handle PostMessageOptions_transfer_Get(Handle);
extern (C) Handle PromiseRejectionEvent_promise_Get(Handle);
extern (C) Handle PromiseRejectionEvent_reason_Get(Handle);
extern (C) void PromiseRejectionEventInit_promise_Set(Handle, Handle);
extern (C) Handle PromiseRejectionEventInit_promise_Get(Handle);
extern (C) void PromiseRejectionEventInit_reason_Set(Handle, Handle);
extern (C) Handle PromiseRejectionEventInit_reason_Get(Handle);
extern (C) void RadioNodeList_value_Set(Handle, string);
extern (C) string RadioNodeList_value_Get(Handle);
extern (C) Handle SharedWorker_port_Get(Handle);
extern (C) Handle SharedWorker_FileReaderSync(Handle);
extern (C) Handle SharedWorker_ProgressEvent(Handle, string, Handle);
extern (C) Handle SharedWorker_XMLHttpRequest(Handle);
extern (C) string SharedWorkerGlobalScope_name_Get(Handle);
extern (C) void SharedWorkerGlobalScope_close(Handle);
extern (C) void SharedWorkerGlobalScope_onconnect_Set(Handle, EventHandler);
extern (C) EventHandler SharedWorkerGlobalScope_onconnect_Get(Handle);
extern (C) uint Storage_length_Get(Handle);
extern (C) Optional!(string) Storage_key(Handle, uint);
extern (C) Optional!(string) Storage_getItem_getter(Handle, string);
extern (C) void Storage_setItem_setter(Handle, string, string);
extern (C) void Storage_removeItem(Handle, string);
extern (C) void Storage_clear(Handle);
extern (C) Optional!(string) StorageEvent_key_Get(Handle);
extern (C) Optional!(string) StorageEvent_oldValue_Get(Handle);
extern (C) Optional!(string) StorageEvent_newValue_Get(Handle);
extern (C) string StorageEvent_url_Get(Handle);
extern (C) Optional!(Storage) StorageEvent_storageArea_Get(Handle);
extern (C) void StorageEvent_initStorageEvent(Handle, string, bool, bool, bool, string, bool, string, bool, string, string, bool, Handle);
extern (C) void StorageEvent_initStorageEvent_0(Handle, string, bool, bool, bool, string, bool, string, bool, string, string);
extern (C) void StorageEvent_initStorageEvent_1(Handle, string, bool, bool, bool, string, bool, string, bool, string);
extern (C) void StorageEvent_initStorageEvent_2(Handle, string, bool, bool, bool, string, bool, string);
extern (C) void StorageEvent_initStorageEvent_3(Handle, string, bool, bool, bool, string);
extern (C) void StorageEvent_initStorageEvent_4(Handle, string, bool, bool);
extern (C) void StorageEvent_initStorageEvent_5(Handle, string, bool);
extern (C) void StorageEvent_initStorageEvent_6(Handle, string);
extern (C) void StorageEventInit_key_Set(Handle, bool, string);
extern (C) Optional!(string) StorageEventInit_key_Get(Handle);
extern (C) void StorageEventInit_oldValue_Set(Handle, bool, string);
extern (C) Optional!(string) StorageEventInit_oldValue_Get(Handle);
extern (C) void StorageEventInit_newValue_Set(Handle, bool, string);
extern (C) Optional!(string) StorageEventInit_newValue_Get(Handle);
extern (C) void StorageEventInit_url_Set(Handle, string);
extern (C) string StorageEventInit_url_Get(Handle);
extern (C) void StorageEventInit_storageArea_Set(Handle, bool, Handle);
extern (C) Optional!(Storage) StorageEventInit_storageArea_Get(Handle);
extern (C) double TextMetrics_width_Get(Handle);
extern (C) double TextMetrics_actualBoundingBoxLeft_Get(Handle);
extern (C) double TextMetrics_actualBoundingBoxRight_Get(Handle);
extern (C) double TextMetrics_fontBoundingBoxAscent_Get(Handle);
extern (C) double TextMetrics_fontBoundingBoxDescent_Get(Handle);
extern (C) double TextMetrics_actualBoundingBoxAscent_Get(Handle);
extern (C) double TextMetrics_actualBoundingBoxDescent_Get(Handle);
extern (C) double TextMetrics_emHeightAscent_Get(Handle);
extern (C) double TextMetrics_emHeightDescent_Get(Handle);
extern (C) double TextMetrics_hangingBaseline_Get(Handle);
extern (C) double TextMetrics_alphabeticBaseline_Get(Handle);
extern (C) double TextMetrics_ideographicBaseline_Get(Handle);
extern (C) TextTrackKind TextTrack_kind_Get(Handle);
extern (C) string TextTrack_label_Get(Handle);
extern (C) string TextTrack_language_Get(Handle);
extern (C) string TextTrack_id_Get(Handle);
extern (C) string TextTrack_inBandMetadataTrackDispatchType_Get(Handle);
extern (C) void TextTrack_mode_Set(Handle, TextTrackMode);
extern (C) TextTrackMode TextTrack_mode_Get(Handle);
extern (C) Optional!(TextTrackCueList) TextTrack_cues_Get(Handle);
extern (C) Optional!(TextTrackCueList) TextTrack_activeCues_Get(Handle);
extern (C) void TextTrack_addCue(Handle, Handle);
extern (C) void TextTrack_removeCue(Handle, Handle);
extern (C) void TextTrack_oncuechange_Set(Handle, EventHandler);
extern (C) EventHandler TextTrack_oncuechange_Get(Handle);
extern (C) Optional!(SourceBuffer) TextTrack_sourceBuffer_Get(Handle);
extern (C) Optional!(TextTrack) TextTrackCue_track_Get(Handle);
extern (C) void TextTrackCue_id_Set(Handle, string);
extern (C) string TextTrackCue_id_Get(Handle);
extern (C) void TextTrackCue_startTime_Set(Handle, double);
extern (C) double TextTrackCue_startTime_Get(Handle);
extern (C) void TextTrackCue_endTime_Set(Handle, double);
extern (C) double TextTrackCue_endTime_Get(Handle);
extern (C) void TextTrackCue_pauseOnExit_Set(Handle, bool);
extern (C) bool TextTrackCue_pauseOnExit_Get(Handle);
extern (C) void TextTrackCue_onenter_Set(Handle, EventHandler);
extern (C) EventHandler TextTrackCue_onenter_Get(Handle);
extern (C) void TextTrackCue_onexit_Set(Handle, EventHandler);
extern (C) EventHandler TextTrackCue_onexit_Get(Handle);
extern (C) uint TextTrackCueList_length_Get(Handle);
extern (C) Handle TextTrackCueList_getter__uint(Handle, uint);
extern (C) Optional!(TextTrackCue) TextTrackCueList_getCueById(Handle, string);
extern (C) uint TextTrackList_length_Get(Handle);
extern (C) Handle TextTrackList_getter__uint(Handle, uint);
extern (C) Optional!(TextTrack) TextTrackList_getTrackById(Handle, string);
extern (C) void TextTrackList_onchange_Set(Handle, EventHandler);
extern (C) EventHandler TextTrackList_onchange_Get(Handle);
extern (C) void TextTrackList_onaddtrack_Set(Handle, EventHandler);
extern (C) EventHandler TextTrackList_onaddtrack_Get(Handle);
extern (C) void TextTrackList_onremovetrack_Set(Handle, EventHandler);
extern (C) EventHandler TextTrackList_onremovetrack_Get(Handle);
extern (C) uint TimeRanges_length_Get(Handle);
extern (C) double TimeRanges_start(Handle, uint);
extern (C) double TimeRanges_end(Handle, uint);
extern (C) Optional!(SumType!(VideoTrack, AudioTrack, TextTrack)) TrackEvent_track_Get(Handle);
extern (C) void TrackEventInit_track_Set(Handle, bool, scope ref SumType!(VideoTrack, AudioTrack, TextTrack));
extern (C) Optional!(SumType!(VideoTrack, AudioTrack, TextTrack)) TrackEventInit_track_Get(Handle);
extern (C) bool ValidityState_valueMissing_Get(Handle);
extern (C) bool ValidityState_typeMismatch_Get(Handle);
extern (C) bool ValidityState_patternMismatch_Get(Handle);
extern (C) bool ValidityState_tooLong_Get(Handle);
extern (C) bool ValidityState_tooShort_Get(Handle);
extern (C) bool ValidityState_rangeUnderflow_Get(Handle);
extern (C) bool ValidityState_rangeOverflow_Get(Handle);
extern (C) bool ValidityState_stepMismatch_Get(Handle);
extern (C) bool ValidityState_badInput_Get(Handle);
extern (C) bool ValidityState_customError_Get(Handle);
extern (C) bool ValidityState_valid_Get(Handle);
extern (C) string VideoTrack_id_Get(Handle);
extern (C) string VideoTrack_kind_Get(Handle);
extern (C) string VideoTrack_label_Get(Handle);
extern (C) string VideoTrack_language_Get(Handle);
extern (C) void VideoTrack_selected_Set(Handle, bool);
extern (C) bool VideoTrack_selected_Get(Handle);
extern (C) Optional!(SourceBuffer) VideoTrack_sourceBuffer_Get(Handle);
extern (C) uint VideoTrackList_length_Get(Handle);
extern (C) Handle VideoTrackList_getter__uint(Handle, uint);
extern (C) Optional!(VideoTrack) VideoTrackList_getTrackById(Handle, string);
extern (C) int VideoTrackList_selectedIndex_Get(Handle);
extern (C) void VideoTrackList_onchange_Set(Handle, EventHandler);
extern (C) EventHandler VideoTrackList_onchange_Get(Handle);
extern (C) void VideoTrackList_onaddtrack_Set(Handle, EventHandler);
extern (C) EventHandler VideoTrackList_onaddtrack_Get(Handle);
extern (C) void VideoTrackList_onremovetrack_Set(Handle, EventHandler);
extern (C) EventHandler VideoTrackList_onremovetrack_Get(Handle);
extern (C) string WebSocket_url_Get(Handle);
extern (C) ushort WebSocket_readyState_Get(Handle);
extern (C) ulong WebSocket_bufferedAmount_Get(Handle);
extern (C) void WebSocket_onopen_Set(Handle, EventHandler);
extern (C) EventHandler WebSocket_onopen_Get(Handle);
extern (C) void WebSocket_onerror_Set(Handle, EventHandler);
extern (C) EventHandler WebSocket_onerror_Get(Handle);
extern (C) void WebSocket_onclose_Set(Handle, EventHandler);
extern (C) EventHandler WebSocket_onclose_Get(Handle);
extern (C) string WebSocket_extensions_Get(Handle);
extern (C) string WebSocket_protocol_Get(Handle);
extern (C) void WebSocket_close(Handle, ushort, string);
extern (C) void WebSocket_close_0(Handle, ushort);
extern (C) void WebSocket_close_1(Handle);
extern (C) void WebSocket_onmessage_Set(Handle, EventHandler);
extern (C) EventHandler WebSocket_onmessage_Get(Handle);
extern (C) void WebSocket_binaryType_Set(Handle, BinaryType);
extern (C) BinaryType WebSocket_binaryType_Get(Handle);
extern (C) void WebSocket_send__string(Handle, string);
extern (C) void WebSocket_send__Handle(Handle, Handle);
extern (C) void WebSocket_send__ArrayBufferView(Handle, scope ref ArrayBufferView);
extern (C) Handle Window_window_Get(Handle);
extern (C) Handle Window_self_Get(Handle);
extern (C) Handle Window_document_Get(Handle);
extern (C) void Window_name_Set(Handle, string);
extern (C) string Window_name_Get(Handle);
extern (C) Handle Window_location_Get(Handle);
extern (C) Handle Window_history_Get(Handle);
extern (C) Handle Window_customElements_Get(Handle);
extern (C) Handle Window_locationbar_Get(Handle);
extern (C) Handle Window_menubar_Get(Handle);
extern (C) Handle Window_personalbar_Get(Handle);
extern (C) Handle Window_scrollbars_Get(Handle);
extern (C) Handle Window_statusbar_Get(Handle);
extern (C) Handle Window_toolbar_Get(Handle);
extern (C) void Window_status_Set(Handle, string);
extern (C) string Window_status_Get(Handle);
extern (C) void Window_close(Handle);
extern (C) bool Window_closed_Get(Handle);
extern (C) void Window_stop(Handle);
extern (C) void Window_focus(Handle);
extern (C) void Window_blur(Handle);
extern (C) Handle Window_frames_Get(Handle);
extern (C) uint Window_length_Get(Handle);
extern (C) Optional!(Window) Window_top_Get(Handle);
extern (C) void Window_opener_Set(Handle, Handle);
extern (C) Handle Window_opener_Get(Handle);
extern (C) Optional!(Window) Window_parent_Get(Handle);
extern (C) Optional!(Element) Window_frameElement_Get(Handle);
extern (C) Optional!(Window) Window_open(Handle, string, string, string);
extern (C) Optional!(Window) Window_open_0(Handle, string, string);
extern (C) Optional!(Window) Window_open_1(Handle, string);
extern (C) Optional!(Window) Window_open_2(Handle);
extern (C) Handle Window_getter__string(Handle, string);
extern (C) Handle Window_navigator_Get(Handle);
extern (C) Handle Window_applicationCache_Get(Handle);
extern (C) void Window_alert__(Handle);
extern (C) void Window_alert__string(Handle, string);
extern (C) bool Window_confirm(Handle, string);
extern (C) bool Window_confirm_0(Handle);
extern (C) Optional!(string) Window_prompt(Handle, string, string);
extern (C) Optional!(string) Window_prompt_0(Handle, string);
extern (C) Optional!(string) Window_prompt_1(Handle);
extern (C) void Window_print(Handle);
extern (C) void Window_postMessage__Handle_string_sequence(Handle, Handle, string, Handle);
extern (C) void Window_postMessage_0_Handle_string(Handle, Handle, string);
extern (C) void Window_postMessage__Handle_Handle(Handle, Handle, Handle);
extern (C) void Window_postMessage_0_Handle(Handle, Handle);
extern (C) Handle Window_event_Get(Handle);
extern (C) void Window_captureEvents(Handle);
extern (C) void Window_releaseEvents(Handle);
extern (C) Handle Window_external_Get(Handle);
extern (C) Handle Window_getComputedStyle(Handle, Handle, bool, string);
extern (C) Handle Window_getComputedStyle_0(Handle, Handle);
extern (C) short Window_orientation_Get(Handle);
extern (C) void Window_onorientationchange_Set(Handle, EventHandler);
extern (C) EventHandler Window_onorientationchange_Get(Handle);
extern (C) Handle Window_Blob(Handle, Handle, Handle);
extern (C) Handle Window_File(Handle, Handle, string, Handle);
extern (C) Handle Window_FileReader(Handle);
extern (C) Handle Window_Headers(Handle, scope ref HeadersInit);
extern (C) Handle Window_Request(Handle, scope ref RequestInfo, Handle);
extern (C) Handle Window_Response(Handle, bool, scope ref BodyInit, Handle);
extern (C) Handle Window_Notification(Handle, string, Handle);
extern (C) Handle Window_AbortController(Handle);
extern (C) Handle Window_CustomEvent(Handle, string, Handle);
extern (C) Handle Window_Event(Handle, string, Handle);
extern (C) Handle Window_EventTarget(Handle);
extern (C) Handle Window_BroadcastChannel(Handle, string);
extern (C) Handle Window_CloseEvent(Handle, string, Handle);
extern (C) Handle Window_ErrorEvent(Handle, string, Handle);
extern (C) Handle Window_EventSource(Handle, string, Handle);
extern (C) Handle Window_ImageData__uint_uint(Handle, uint, uint);
extern (C) Handle Window_ImageData__Handle_uint_uint(Handle, Handle, uint, uint);
extern (C) Handle Window_MessageChannel(Handle);
extern (C) Handle Window_MessageEvent(Handle, string, Handle);
extern (C) Handle Window_OffscreenCanvas(Handle, ulong, ulong);
extern (C) Handle Window_Path2D(Handle, scope ref SumType!(Path2D, string));
extern (C) Handle Window_PromiseRejectionEvent(Handle, string, Handle);
extern (C) Handle Window_SharedWorker(Handle, string, scope ref SumType!(string, WorkerOptions));
extern (C) Handle Window_WebSocket(Handle, string, scope ref SumType!(string, Sequence!(string)));
extern (C) Handle Window_Worker(Handle, string, Handle);
extern (C) Handle Window_DOMException(Handle, string, string);
extern (C) Handle Window_URL(Handle, string, string);
extern (C) Handle Window_URLSearchParams(Handle, scope ref SumType!(Sequence!(Sequence!(string)), Record!(string, string), string));
extern (C) Handle Window_DOMMatrix(Handle, scope ref SumType!(string, Sequence!(double)));
extern (C) Handle Window_DOMMatrixReadOnly(Handle, scope ref SumType!(string, Sequence!(double)));
extern (C) Handle Window_DOMPoint(Handle, double, double, double, double);
extern (C) Handle Window_DOMPointReadOnly(Handle, double, double, double, double);
extern (C) Handle Window_DOMQuad(Handle, Handle, Handle, Handle, Handle);
extern (C) Handle Window_DOMRect(Handle, double, double, double, double);
extern (C) Handle Window_DOMRectReadOnly(Handle, double, double, double, double);
extern (C) Handle Window_IDBVersionChangeEvent(Handle, string, Handle);
extern (C) Handle Window_ByteLengthQueuingStrategy(Handle, Handle);
extern (C) Handle Window_CountQueuingStrategy(Handle, Handle);
extern (C) Handle Window_ReadableStream__Handle_Handle(Handle, Handle, Handle);
extern (C) Handle Window_ReadableStreamBYOBReader(Handle, Handle);
extern (C) Handle Window_ReadableStreamDefaultReader(Handle, Handle);
extern (C) Handle Window_TransformStream(Handle, Handle, Handle, Handle);
extern (C) Handle Window_WritableStream(Handle, Handle, Handle);
extern (C) Handle Window_WritableStreamDefaultWriter(Handle, Handle);
extern (C) Handle Window_FormData(Handle, Handle);
extern (C) Handle Window_ProgressEvent(Handle, string, Handle);
extern (C) Handle Window_XMLHttpRequest(Handle);
extern (C) Handle Window_TextDecoder(Handle, string, Handle);
extern (C) Handle Window_TextDecoderStream(Handle, string, Handle);
extern (C) Handle Window_TextEncoder(Handle);
extern (C) Handle Window_TextEncoderStream(Handle);
extern (C) void WindowEventHandlers_onafterprint_Set(Handle, EventHandler);
extern (C) EventHandler WindowEventHandlers_onafterprint_Get(Handle);
extern (C) void WindowEventHandlers_onbeforeprint_Set(Handle, EventHandler);
extern (C) EventHandler WindowEventHandlers_onbeforeprint_Get(Handle);
extern (C) void WindowEventHandlers_onbeforeunload_Set(Handle, bool, OnBeforeUnloadEventHandlerNonNull);
extern (C) OnBeforeUnloadEventHandler WindowEventHandlers_onbeforeunload_Get(Handle);
extern (C) void WindowEventHandlers_onhashchange_Set(Handle, EventHandler);
extern (C) EventHandler WindowEventHandlers_onhashchange_Get(Handle);
extern (C) void WindowEventHandlers_onlanguagechange_Set(Handle, EventHandler);
extern (C) EventHandler WindowEventHandlers_onlanguagechange_Get(Handle);
extern (C) void WindowEventHandlers_onmessage_Set(Handle, EventHandler);
extern (C) EventHandler WindowEventHandlers_onmessage_Get(Handle);
extern (C) void WindowEventHandlers_onmessageerror_Set(Handle, EventHandler);
extern (C) EventHandler WindowEventHandlers_onmessageerror_Get(Handle);
extern (C) void WindowEventHandlers_onoffline_Set(Handle, EventHandler);
extern (C) EventHandler WindowEventHandlers_onoffline_Get(Handle);
extern (C) void WindowEventHandlers_ononline_Set(Handle, EventHandler);
extern (C) EventHandler WindowEventHandlers_ononline_Get(Handle);
extern (C) void WindowEventHandlers_onpagehide_Set(Handle, EventHandler);
extern (C) EventHandler WindowEventHandlers_onpagehide_Get(Handle);
extern (C) void WindowEventHandlers_onpageshow_Set(Handle, EventHandler);
extern (C) EventHandler WindowEventHandlers_onpageshow_Get(Handle);
extern (C) void WindowEventHandlers_onpopstate_Set(Handle, EventHandler);
extern (C) EventHandler WindowEventHandlers_onpopstate_Get(Handle);
extern (C) void WindowEventHandlers_onrejectionhandled_Set(Handle, EventHandler);
extern (C) EventHandler WindowEventHandlers_onrejectionhandled_Get(Handle);
extern (C) void WindowEventHandlers_onstorage_Set(Handle, EventHandler);
extern (C) EventHandler WindowEventHandlers_onstorage_Get(Handle);
extern (C) void WindowEventHandlers_onunhandledrejection_Set(Handle, EventHandler);
extern (C) EventHandler WindowEventHandlers_onunhandledrejection_Get(Handle);
extern (C) void WindowEventHandlers_onunload_Set(Handle, EventHandler);
extern (C) EventHandler WindowEventHandlers_onunload_Get(Handle);
extern (C) Handle WindowLocalStorage_localStorage_Get(Handle);
extern (C) string WindowOrWorkerGlobalScope_origin_Get(Handle);
extern (C) string WindowOrWorkerGlobalScope_btoa(Handle, string);
extern (C) string WindowOrWorkerGlobalScope_atob(Handle, string);
extern (C) int WindowOrWorkerGlobalScope_setTimeout(Handle, scope ref TimerHandler, int, Handle);
extern (C) void WindowOrWorkerGlobalScope_clearTimeout(Handle, int);
extern (C) void WindowOrWorkerGlobalScope_clearTimeout_0(Handle);
extern (C) int WindowOrWorkerGlobalScope_setInterval(Handle, scope ref TimerHandler, int, Handle);
extern (C) void WindowOrWorkerGlobalScope_clearInterval(Handle, int);
extern (C) void WindowOrWorkerGlobalScope_clearInterval_0(Handle);
extern (C) void WindowOrWorkerGlobalScope_queueMicrotask(Handle, VoidFunction);
extern (C) Handle WindowOrWorkerGlobalScope_createImageBitmap__ImageBitmapSource_Handle(Handle, scope ref ImageBitmapSource, Handle);
extern (C) Handle WindowOrWorkerGlobalScope_createImageBitmap_0_ImageBitmapSource(Handle, scope ref ImageBitmapSource);
extern (C) Handle WindowOrWorkerGlobalScope_createImageBitmap__ImageBitmapSource_int_int_int_int_Handle(Handle, scope ref ImageBitmapSource, int, int, int, int, Handle);
extern (C) Handle WindowOrWorkerGlobalScope_createImageBitmap_0_ImageBitmapSource_int_int_int_int(Handle, scope ref ImageBitmapSource, int, int, int, int);
extern (C) Handle WindowOrWorkerGlobalScope_fetch(Handle, scope ref RequestInfo, Handle);
extern (C) Handle WindowOrWorkerGlobalScope_fetch_0(Handle, scope ref RequestInfo);
extern (C) Handle WindowOrWorkerGlobalScope_indexedDB_Get(Handle);
extern (C) Handle WindowOrWorkerGlobalScope_caches_Get(Handle);
extern (C) void WindowPostMessageOptions_targetOrigin_Set(Handle, string);
extern (C) string WindowPostMessageOptions_targetOrigin_Get(Handle);
extern (C) Handle WindowSessionStorage_sessionStorage_Get(Handle);
extern (C) void Worker_terminate(Handle);
extern (C) void Worker_postMessage__Handle_sequence(Handle, Handle, Handle);
extern (C) void Worker_postMessage__Handle_Handle(Handle, Handle, Handle);
extern (C) void Worker_postMessage_0(Handle, Handle);
extern (C) void Worker_onmessage_Set(Handle, EventHandler);
extern (C) EventHandler Worker_onmessage_Get(Handle);
extern (C) void Worker_onmessageerror_Set(Handle, EventHandler);
extern (C) EventHandler Worker_onmessageerror_Get(Handle);
extern (C) Handle Worker_Blob(Handle, Handle, Handle);
extern (C) Handle Worker_File(Handle, Handle, string, Handle);
extern (C) Handle Worker_FileReader(Handle);
extern (C) Handle Worker_Headers(Handle, scope ref HeadersInit);
extern (C) Handle Worker_Request(Handle, scope ref RequestInfo, Handle);
extern (C) Handle Worker_Response(Handle, bool, scope ref BodyInit, Handle);
extern (C) Handle Worker_Notification(Handle, string, Handle);
extern (C) Handle Worker_AbortController(Handle);
extern (C) Handle Worker_CustomEvent(Handle, string, Handle);
extern (C) Handle Worker_Event(Handle, string, Handle);
extern (C) Handle Worker_EventTarget(Handle);
extern (C) Handle Worker_BroadcastChannel(Handle, string);
extern (C) Handle Worker_CloseEvent(Handle, string, Handle);
extern (C) Handle Worker_ErrorEvent(Handle, string, Handle);
extern (C) Handle Worker_EventSource(Handle, string, Handle);
extern (C) Handle Worker_ImageData__uint_uint(Handle, uint, uint);
extern (C) Handle Worker_ImageData__Handle_uint_uint(Handle, Handle, uint, uint);
extern (C) Handle Worker_MessageChannel(Handle);
extern (C) Handle Worker_MessageEvent(Handle, string, Handle);
extern (C) Handle Worker_OffscreenCanvas(Handle, ulong, ulong);
extern (C) Handle Worker_Path2D(Handle, scope ref SumType!(Path2D, string));
extern (C) Handle Worker_PromiseRejectionEvent(Handle, string, Handle);
extern (C) Handle Worker_SharedWorker(Handle, string, scope ref SumType!(string, WorkerOptions));
extern (C) Handle Worker_WebSocket(Handle, string, scope ref SumType!(string, Sequence!(string)));
extern (C) Handle Worker_Worker(Handle, string, Handle);
extern (C) Handle Worker_DOMException(Handle, string, string);
extern (C) Handle Worker_URL(Handle, string, string);
extern (C) Handle Worker_URLSearchParams(Handle, scope ref SumType!(Sequence!(Sequence!(string)), Record!(string, string), string));
extern (C) Handle Worker_DOMMatrix(Handle, scope ref SumType!(string, Sequence!(double)));
extern (C) Handle Worker_DOMMatrixReadOnly(Handle, scope ref SumType!(string, Sequence!(double)));
extern (C) Handle Worker_DOMPoint(Handle, double, double, double, double);
extern (C) Handle Worker_DOMPointReadOnly(Handle, double, double, double, double);
extern (C) Handle Worker_DOMQuad(Handle, Handle, Handle, Handle, Handle);
extern (C) Handle Worker_DOMRect(Handle, double, double, double, double);
extern (C) Handle Worker_DOMRectReadOnly(Handle, double, double, double, double);
extern (C) Handle Worker_IDBVersionChangeEvent(Handle, string, Handle);
extern (C) Handle Worker_ByteLengthQueuingStrategy(Handle, Handle);
extern (C) Handle Worker_CountQueuingStrategy(Handle, Handle);
extern (C) Handle Worker_ReadableStream__Handle_Handle(Handle, Handle, Handle);
extern (C) Handle Worker_ReadableStreamBYOBReader(Handle, Handle);
extern (C) Handle Worker_ReadableStreamDefaultReader(Handle, Handle);
extern (C) Handle Worker_TransformStream(Handle, Handle, Handle, Handle);
extern (C) Handle Worker_WritableStream(Handle, Handle, Handle);
extern (C) Handle Worker_WritableStreamDefaultWriter(Handle, Handle);
extern (C) Handle Worker_FormData(Handle, Handle);
extern (C) Handle Worker_TextDecoder(Handle, string, Handle);
extern (C) Handle Worker_TextDecoderStream(Handle, string, Handle);
extern (C) Handle Worker_TextEncoder(Handle);
extern (C) Handle Worker_TextEncoderStream(Handle);
extern (C) Handle WorkerGlobalScope_self_Get(Handle);
extern (C) Handle WorkerGlobalScope_location_Get(Handle);
extern (C) Handle WorkerGlobalScope_navigator_Get(Handle);
extern (C) void WorkerGlobalScope_importScripts(Handle, string);
extern (C) void WorkerGlobalScope_onerror_Set(Handle, bool, OnErrorEventHandlerNonNull);
extern (C) OnErrorEventHandler WorkerGlobalScope_onerror_Get(Handle);
extern (C) void WorkerGlobalScope_onlanguagechange_Set(Handle, EventHandler);
extern (C) EventHandler WorkerGlobalScope_onlanguagechange_Get(Handle);
extern (C) void WorkerGlobalScope_onoffline_Set(Handle, EventHandler);
extern (C) EventHandler WorkerGlobalScope_onoffline_Get(Handle);
extern (C) void WorkerGlobalScope_ononline_Set(Handle, EventHandler);
extern (C) EventHandler WorkerGlobalScope_ononline_Get(Handle);
extern (C) void WorkerGlobalScope_onrejectionhandled_Set(Handle, EventHandler);
extern (C) EventHandler WorkerGlobalScope_onrejectionhandled_Get(Handle);
extern (C) void WorkerGlobalScope_onunhandledrejection_Set(Handle, EventHandler);
extern (C) EventHandler WorkerGlobalScope_onunhandledrejection_Get(Handle);
extern (C) void WorkerLocation_href_Set(Handle, string);
extern (C) string WorkerLocation_href_Get(Handle);
extern (C) string WorkerLocation_origin_Get(Handle);
extern (C) string WorkerLocation_protocol_Get(Handle);
extern (C) string WorkerLocation_host_Get(Handle);
extern (C) string WorkerLocation_hostname_Get(Handle);
extern (C) string WorkerLocation_port_Get(Handle);
extern (C) string WorkerLocation_pathname_Get(Handle);
extern (C) string WorkerLocation_search_Get(Handle);
extern (C) string WorkerLocation_hash_Get(Handle);
extern (C) Handle WorkerNavigator_permissions_Get(Handle);
extern (C) Handle WorkerNavigator_serviceWorker_Get(Handle);
extern (C) void WorkerOptions_type_Set(Handle, WorkerType);
extern (C) WorkerType WorkerOptions_type_Get(Handle);
extern (C) void WorkerOptions_credentials_Set(Handle, RequestCredentials);
extern (C) RequestCredentials WorkerOptions_credentials_Get(Handle);
extern (C) void WorkerOptions_name_Set(Handle, string);
extern (C) string WorkerOptions_name_Get(Handle);