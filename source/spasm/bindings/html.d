module spasm.bindings.html;

import spasm.types;
import spasm.bindings.clipboard;
import spasm.bindings.common;
import spasm.bindings.cssom;
import spasm.bindings.dom;
import spasm.bindings.domhighrestimestamp;
import spasm.bindings.fetch;
import spasm.bindings.fileapi;
import spasm.bindings.geometry;
import spasm.bindings.indexeddb;
import spasm.bindings.linkstyle;
import spasm.bindings.mediasource;
import spasm.bindings.mediastream;
import spasm.bindings.permissions;
import spasm.bindings.serviceworker;
import spasm.bindings.svg;
import spasm.bindings.uievents;
import spasm.bindings.vibration;
import spasm.bindings.webgl2;
import spasm.bindings.webgl;

struct ApplicationCache {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  enum ushort UNCACHED = 0;
  enum ushort IDLE = 1;
  enum ushort CHECKING = 2;
  enum ushort DOWNLOADING = 3;
  enum ushort UPDATEREADY = 4;
  enum ushort OBSOLETE = 5;
  auto status() {
    auto result = ApplicationCache_status_Get(this._parent);
    return result;
  }
  auto update() {
    ApplicationCache_update(this._parent);
  }
  auto abort() {
    ApplicationCache_abort(this._parent);
  }
  auto swapCache() {
    ApplicationCache_swapCache(this._parent);
  }
  auto onchecking(EventHandler onchecking) {
    ApplicationCache_onchecking_Set(this._parent, onchecking);
  }
  auto onchecking() {
    auto result = ApplicationCache_onchecking_Get(this._parent);
    return result;
  }
  auto onerror(EventHandler onerror) {
    ApplicationCache_onerror_Set(this._parent, onerror);
  }
  auto onerror() {
    auto result = ApplicationCache_onerror_Get(this._parent);
    return result;
  }
  auto onnoupdate(EventHandler onnoupdate) {
    ApplicationCache_onnoupdate_Set(this._parent, onnoupdate);
  }
  auto onnoupdate() {
    auto result = ApplicationCache_onnoupdate_Get(this._parent);
    return result;
  }
  auto ondownloading(EventHandler ondownloading) {
    ApplicationCache_ondownloading_Set(this._parent, ondownloading);
  }
  auto ondownloading() {
    auto result = ApplicationCache_ondownloading_Get(this._parent);
    return result;
  }
  auto onprogress(EventHandler onprogress) {
    ApplicationCache_onprogress_Set(this._parent, onprogress);
  }
  auto onprogress() {
    auto result = ApplicationCache_onprogress_Get(this._parent);
    return result;
  }
  auto onupdateready(EventHandler onupdateready) {
    ApplicationCache_onupdateready_Set(this._parent, onupdateready);
  }
  auto onupdateready() {
    auto result = ApplicationCache_onupdateready_Get(this._parent);
    return result;
  }
  auto oncached(EventHandler oncached) {
    ApplicationCache_oncached_Set(this._parent, oncached);
  }
  auto oncached() {
    auto result = ApplicationCache_oncached_Get(this._parent);
    return result;
  }
  auto onobsolete(EventHandler onobsolete) {
    ApplicationCache_onobsolete_Set(this._parent, onobsolete);
  }
  auto onobsolete() {
    auto result = ApplicationCache_onobsolete_Get(this._parent);
    return result;
  }
}
struct AssignedNodesOptions {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return AssignedNodesOptions(JsHandle(spasm_add__object()));
  }
  auto flatten(bool flatten) {
    AssignedNodesOptions_flatten_Set(this.handle, flatten);
  }
  auto flatten() {
    auto result = AssignedNodesOptions_flatten_Get(this.handle);
    return result;
  }
}
struct AudioTrack {
  JsHandle handle;
  alias handle this;
  auto id() {
    auto result = AudioTrack_id_Get(this.handle);
    return result;
  }
  auto kind() {
    auto result = AudioTrack_kind_Get(this.handle);
    return result;
  }
  auto label() {
    auto result = AudioTrack_label_Get(this.handle);
    return result;
  }
  auto language() {
    auto result = AudioTrack_language_Get(this.handle);
    return result;
  }
  auto enabled(bool enabled) {
    AudioTrack_enabled_Set(this.handle, enabled);
  }
  auto enabled() {
    auto result = AudioTrack_enabled_Get(this.handle);
    return result;
  }
  auto sourceBuffer() {
    auto result = AudioTrack_sourceBuffer_Get(this.handle);
    return result;
  }
}
struct AudioTrackList {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto length() {
    auto result = AudioTrackList_length_Get(this._parent);
    return result;
  }
  auto opIndex(uint index) {
    auto result = AudioTrack(JsHandle(AudioTrackList_getter__uint(this._parent, index)));
    return result;
  }
  auto opDispatch(uint index)() {
    auto result = AudioTrack(JsHandle(AudioTrackList_getter__uint(this._parent, index)));
    return result;
  }
  auto getTrackById(string id) {
    auto result = AudioTrackList_getTrackById(this._parent, id);
    return result;
  }
  auto onchange(EventHandler onchange) {
    AudioTrackList_onchange_Set(this._parent, onchange);
  }
  auto onchange() {
    auto result = AudioTrackList_onchange_Get(this._parent);
    return result;
  }
  auto onaddtrack(EventHandler onaddtrack) {
    AudioTrackList_onaddtrack_Set(this._parent, onaddtrack);
  }
  auto onaddtrack() {
    auto result = AudioTrackList_onaddtrack_Get(this._parent);
    return result;
  }
  auto onremovetrack(EventHandler onremovetrack) {
    AudioTrackList_onremovetrack_Set(this._parent, onremovetrack);
  }
  auto onremovetrack() {
    auto result = AudioTrackList_onremovetrack_Get(this._parent);
    return result;
  }
}
struct BarProp {
  JsHandle handle;
  alias handle this;
  auto visible() {
    auto result = BarProp_visible_Get(this.handle);
    return result;
  }
}
struct BeforeUnloadEvent {
  Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Event(h);
  }
  auto returnValue(string returnValue) {
    BeforeUnloadEvent_returnValue_Set(this._parent, returnValue);
  }
  auto returnValue() {
    auto result = BeforeUnloadEvent_returnValue_Get(this._parent);
    return result;
  }
}
enum BinaryType {
  blob,
  arraybuffer
}
alias BlobCallback = void delegate(Optional!(Blob));
struct BroadcastChannel {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto name() {
    auto result = BroadcastChannel_name_Get(this._parent);
    return result;
  }
  auto postMessage(T0)(T0 message) {
    Handle _handle_message = getOrCreateHandle(message);
    BroadcastChannel_postMessage(this._parent, _handle_message);
    dropHandle!(T0)(_handle_message);
  }
  auto close() {
    BroadcastChannel_close(this._parent);
  }
  auto onmessage(EventHandler onmessage) {
    BroadcastChannel_onmessage_Set(this._parent, onmessage);
  }
  auto onmessage() {
    auto result = BroadcastChannel_onmessage_Get(this._parent);
    return result;
  }
  auto onmessageerror(EventHandler onmessageerror) {
    BroadcastChannel_onmessageerror_Set(this._parent, onmessageerror);
  }
  auto onmessageerror() {
    auto result = BroadcastChannel_onmessageerror_Get(this._parent);
    return result;
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
  JsHandle handle;
  alias handle this;
  auto addColorStop(double offset, string color) {
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
  JsHandle handle;
  alias handle this;
  auto setTransform(DOMMatrix2DInit transform) {
    CanvasPattern_setTransform(this.handle, transform.handle);
  }
}
struct CanvasRenderingContext2D {
  JsHandle handle;
  alias handle this;
  auto canvas() {
    auto result = HTMLCanvasElement(JsHandle(CanvasRenderingContext2D_canvas_Get(this.handle)));
    return result;
  }
  auto closePath() {
    CanvasPath_closePath(this.handle);
  }
  auto moveTo(double x, double y) {
    CanvasPath_moveTo(this.handle, x, y);
  }
  auto lineTo(double x, double y) {
    CanvasPath_lineTo(this.handle, x, y);
  }
  auto quadraticCurveTo(double cpx, double cpy, double x, double y) {
    CanvasPath_quadraticCurveTo(this.handle, cpx, cpy, x, y);
  }
  auto bezierCurveTo(double cp1x, double cp1y, double cp2x, double cp2y, double x, double y) {
    CanvasPath_bezierCurveTo(this.handle, cp1x, cp1y, cp2x, cp2y, x, y);
  }
  auto arcTo(double x1, double y1, double x2, double y2, double radius) {
    CanvasPath_arcTo(this.handle, x1, y1, x2, y2, radius);
  }
  auto rect(double x, double y, double w, double h) {
    CanvasPath_rect(this.handle, x, y, w, h);
  }
  auto arc(double x, double y, double radius, double startAngle, double endAngle, bool anticlockwise /* = false */) {
    CanvasPath_arc(this.handle, x, y, radius, startAngle, endAngle, anticlockwise);
  }
  auto ellipse(double x, double y, double radiusX, double radiusY, double rotation, double startAngle, double endAngle, bool anticlockwise /* = false */) {
    CanvasPath_ellipse(this.handle, x, y, radiusX, radiusY, rotation, startAngle, endAngle, anticlockwise);
  }
  auto setLineDash(Sequence!(double) segments) {
    CanvasPathDrawingStyles_setLineDash(this.handle, segments.handle);
  }
  auto getLineDash() {
    auto result = Sequence!(double)(JsHandle(CanvasPathDrawingStyles_getLineDash(this.handle)));
    return result;
  }
  auto createImageData(int sw, int sh) {
    auto result = ImageData(JsHandle(CanvasImageData_createImageData__int_int(this.handle, sw, sh)));
    return result;
  }
  auto createImageData(ImageData imagedata) {
    auto result = ImageData(JsHandle(CanvasImageData_createImageData__Handle(this.handle, imagedata.handle)));
    return result;
  }
  auto getImageData(int sx, int sy, int sw, int sh) {
    auto result = ImageData(JsHandle(CanvasImageData_getImageData(this.handle, sx, sy, sw, sh)));
    return result;
  }
  auto putImageData(ImageData imagedata, int dx, int dy) {
    CanvasImageData_putImageData__Handle_int_int(this.handle, imagedata.handle, dx, dy);
  }
  auto putImageData(ImageData imagedata, int dx, int dy, int dirtyX, int dirtyY, int dirtyWidth, int dirtyHeight) {
    CanvasImageData_putImageData__Handle_int_int_int_int_int_int(this.handle, imagedata.handle, dx, dy, dirtyX, dirtyY, dirtyWidth, dirtyHeight);
  }
  auto drawImage(CanvasImageSource image, double dx, double dy) {
    CanvasDrawImage_drawImage__CanvasImageSource_double_double(this.handle, image, dx, dy);
  }
  auto drawImage(CanvasImageSource image, double dx, double dy, double dw, double dh) {
    CanvasDrawImage_drawImage__CanvasImageSource_double_double_double_double(this.handle, image, dx, dy, dw, dh);
  }
  auto drawImage(CanvasImageSource image, double sx, double sy, double sw, double sh, double dx, double dy, double dw, double dh) {
    CanvasDrawImage_drawImage__CanvasImageSource_double_double_double_double_double_double_double_double(this.handle, image, sx, sy, sw, sh, dx, dy, dw, dh);
  }
  auto fillText(string text, double x, double y, double maxWidth) {
    CanvasText_fillText(this.handle, text, x, y, maxWidth);
  }
  auto strokeText(string text, double x, double y, double maxWidth) {
    CanvasText_strokeText(this.handle, text, x, y, maxWidth);
  }
  auto measureText(string text) {
    auto result = TextMetrics(JsHandle(CanvasText_measureText(this.handle, text)));
    return result;
  }
  auto drawFocusIfNeeded(Element element) {
    CanvasUserInterface_drawFocusIfNeeded__Handle(this.handle, element.handle);
  }
  auto drawFocusIfNeeded(Path2D path, Element element) {
    CanvasUserInterface_drawFocusIfNeeded__Handle_Handle(this.handle, path.handle, element.handle);
  }
  auto scrollPathIntoView() {
    CanvasUserInterface_scrollPathIntoView__(this.handle);
  }
  auto scrollPathIntoView(Path2D path) {
    CanvasUserInterface_scrollPathIntoView__Handle(this.handle, path.handle);
  }
  auto beginPath() {
    CanvasDrawPath_beginPath(this.handle);
  }
  auto fill(CanvasFillRule fillRule /* = "nonzero" */) {
    CanvasDrawPath_fill__CanvasFillRule(this.handle, fillRule);
  }
  auto fill(Path2D path, CanvasFillRule fillRule /* = "nonzero" */) {
    CanvasDrawPath_fill__Handle_CanvasFillRule(this.handle, path.handle, fillRule);
  }
  auto stroke() {
    CanvasDrawPath_stroke__(this.handle);
  }
  auto stroke(Path2D path) {
    CanvasDrawPath_stroke__Handle(this.handle, path.handle);
  }
  auto clip(CanvasFillRule fillRule /* = "nonzero" */) {
    CanvasDrawPath_clip__CanvasFillRule(this.handle, fillRule);
  }
  auto clip(Path2D path, CanvasFillRule fillRule /* = "nonzero" */) {
    CanvasDrawPath_clip__Handle_CanvasFillRule(this.handle, path.handle, fillRule);
  }
  auto isPointInPath(double x, double y, CanvasFillRule fillRule /* = "nonzero" */) {
    auto result = CanvasDrawPath_isPointInPath__double_double_CanvasFillRule(this.handle, x, y, fillRule);
    return result;
  }
  auto isPointInPath(Path2D path, double x, double y, CanvasFillRule fillRule /* = "nonzero" */) {
    auto result = CanvasDrawPath_isPointInPath__Handle_double_double_CanvasFillRule(this.handle, path.handle, x, y, fillRule);
    return result;
  }
  auto isPointInStroke(double x, double y) {
    auto result = CanvasDrawPath_isPointInStroke__double_double(this.handle, x, y);
    return result;
  }
  auto isPointInStroke(Path2D path, double x, double y) {
    auto result = CanvasDrawPath_isPointInStroke__Handle_double_double(this.handle, path.handle, x, y);
    return result;
  }
  auto clearRect(double x, double y, double w, double h) {
    CanvasRect_clearRect(this.handle, x, y, w, h);
  }
  auto fillRect(double x, double y, double w, double h) {
    CanvasRect_fillRect(this.handle, x, y, w, h);
  }
  auto strokeRect(double x, double y, double w, double h) {
    CanvasRect_strokeRect(this.handle, x, y, w, h);
  }
  auto createLinearGradient(double x0, double y0, double x1, double y1) {
    auto result = CanvasGradient(JsHandle(CanvasFillStrokeStyles_createLinearGradient(this.handle, x0, y0, x1, y1)));
    return result;
  }
  auto createRadialGradient(double x0, double y0, double r0, double x1, double y1, double r1) {
    auto result = CanvasGradient(JsHandle(CanvasFillStrokeStyles_createRadialGradient(this.handle, x0, y0, r0, x1, y1, r1)));
    return result;
  }
  auto createPattern(CanvasImageSource image, string repetition) {
    auto result = CanvasFillStrokeStyles_createPattern(this.handle, image, repetition);
    return result;
  }
  auto scale(double x, double y) {
    CanvasTransform_scale(this.handle, x, y);
  }
  auto rotate(double angle) {
    CanvasTransform_rotate(this.handle, angle);
  }
  auto translate(double x, double y) {
    CanvasTransform_translate(this.handle, x, y);
  }
  auto transform(double a, double b, double c, double d, double e, double f) {
    CanvasTransform_transform(this.handle, a, b, c, d, e, f);
  }
  auto getTransform() {
    auto result = DOMMatrix(JsHandle(CanvasTransform_getTransform(this.handle)));
    return result;
  }
  auto setTransform(double a, double b, double c, double d, double e, double f) {
    CanvasTransform_setTransform__double_double_double_double_double_double(this.handle, a, b, c, d, e, f);
  }
  auto setTransform(DOMMatrix2DInit transform) {
    CanvasTransform_setTransform__Handle(this.handle, transform.handle);
  }
  auto resetTransform() {
    CanvasTransform_resetTransform(this.handle);
  }
  auto save() {
    CanvasState_save(this.handle);
  }
  auto restore() {
    CanvasState_restore(this.handle);
  }
}
struct CanvasRenderingContext2DSettings {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return CanvasRenderingContext2DSettings(JsHandle(spasm_add__object()));
  }
  auto alpha(bool alpha) {
    CanvasRenderingContext2DSettings_alpha_Set(this.handle, alpha);
  }
  auto alpha() {
    auto result = CanvasRenderingContext2DSettings_alpha_Get(this.handle);
    return result;
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
  Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Event(h);
  }
  auto wasClean() {
    auto result = CloseEvent_wasClean_Get(this._parent);
    return result;
  }
  auto code() {
    auto result = CloseEvent_code_Get(this._parent);
    return result;
  }
  auto reason() {
    auto result = CloseEvent_reason_Get(this._parent);
    return result;
  }
}
struct CloseEventInit {
  EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventInit(h);
  }
  static auto create() {
    return CloseEventInit(JsHandle(spasm_add__object()));
  }
  auto wasClean(bool wasClean) {
    CloseEventInit_wasClean_Set(this._parent, wasClean);
  }
  auto wasClean() {
    auto result = CloseEventInit_wasClean_Get(this._parent);
    return result;
  }
  auto code(ushort code) {
    CloseEventInit_code_Set(this._parent, code);
  }
  auto code() {
    auto result = CloseEventInit_code_Get(this._parent);
    return result;
  }
  auto reason(string reason) {
    CloseEventInit_reason_Set(this._parent, reason);
  }
  auto reason() {
    auto result = CloseEventInit_reason_Get(this._parent);
    return result;
  }
}
enum ColorSpaceConversion {
  none,
  default_
}
alias CustomElementConstructor = Any delegate();
struct CustomElementRegistry {
  JsHandle handle;
  alias handle this;
  auto define(string name, CustomElementConstructor constructor, ElementDefinitionOptions options) {
    CustomElementRegistry_define(this.handle, name, constructor, options.handle);
  }
  auto get(string name) {
    auto result = Any(JsHandle(CustomElementRegistry_get(this.handle, name)));
    return result;
  }
  auto whenDefined(string name) {
    auto result = Promise!(void)(JsHandle(CustomElementRegistry_whenDefined(this.handle, name)));
    return result;
  }
  auto upgrade(Node root) {
    CustomElementRegistry_upgrade(this.handle, root.handle);
  }
}
struct DOMStringList {
  JsHandle handle;
  alias handle this;
  auto length() {
    auto result = DOMStringList_length_Get(this.handle);
    return result;
  }
  auto item(uint index) {
    auto result = DOMStringList_item_getter(this.handle, index);
    return result;
  }
  auto contains(string string) {
    auto result = DOMStringList_contains(this.handle, string);
    return result;
  }
}
struct DOMStringMap {
  JsHandle handle;
  alias handle this;
  auto opIndex(string name) {
    auto result = DOMStringMap_getter__string(this.handle, name);
    return result;
  }
  auto opDispatch(string name)() {
    auto result = DOMStringMap_getter__string(this.handle, name);
    return result;
  }
  auto opIndexAssign(string value, string name) {
    DOMStringMap_setter__string_string(this.handle, name, value);
  }
  auto opDispatch(string name)(string value) {
    DOMStringMap_setter__string_string(this.handle, name, value);
  }
  auto remove(string name) {
    DOMStringMap_deleter(this.handle, name);
  }
}
struct DataTransfer {
  JsHandle handle;
  alias handle this;
  auto dropEffect(string dropEffect) {
    DataTransfer_dropEffect_Set(this.handle, dropEffect);
  }
  auto dropEffect() {
    auto result = DataTransfer_dropEffect_Get(this.handle);
    return result;
  }
  auto effectAllowed(string effectAllowed) {
    DataTransfer_effectAllowed_Set(this.handle, effectAllowed);
  }
  auto effectAllowed() {
    auto result = DataTransfer_effectAllowed_Get(this.handle);
    return result;
  }
  auto items() {
    auto result = DataTransferItemList(JsHandle(DataTransfer_items_Get(this.handle)));
    return result;
  }
  auto setDragImage(Element image, int x, int y) {
    DataTransfer_setDragImage(this.handle, image.handle, x, y);
  }
  auto types() {
    auto result = FrozenArray!(string)(JsHandle(DataTransfer_types_Get(this.handle)));
    return result;
  }
  auto getData(string format) {
    auto result = DataTransfer_getData(this.handle, format);
    return result;
  }
  auto setData(string format, string data) {
    DataTransfer_setData(this.handle, format, data);
  }
  auto clearData(string format) {
    DataTransfer_clearData(this.handle, format);
  }
  auto files() {
    auto result = FileList(JsHandle(DataTransfer_files_Get(this.handle)));
    return result;
  }
}
struct DataTransferItem {
  JsHandle handle;
  alias handle this;
  auto kind() {
    auto result = DataTransferItem_kind_Get(this.handle);
    return result;
  }
  auto type() {
    auto result = DataTransferItem_type_Get(this.handle);
    return result;
  }
  auto getAsString(Optional!(FunctionStringCallback) _callback) {
    DataTransferItem_getAsString(this.handle, !_callback.empty, _callback.front);
  }
  auto getAsFile() {
    auto result = DataTransferItem_getAsFile(this.handle);
    return result;
  }
}
struct DataTransferItemList {
  JsHandle handle;
  alias handle this;
  auto length() {
    auto result = DataTransferItemList_length_Get(this.handle);
    return result;
  }
  auto opIndex(uint index) {
    auto result = DataTransferItem(JsHandle(DataTransferItemList_getter__uint(this.handle, index)));
    return result;
  }
  auto opDispatch(uint index)() {
    auto result = DataTransferItem(JsHandle(DataTransferItemList_getter__uint(this.handle, index)));
    return result;
  }
  auto add(string data, string type) {
    auto result = DataTransferItemList_add__string_string(this.handle, data, type);
    return result;
  }
  auto add(File data) {
    auto result = DataTransferItemList_add__Handle(this.handle, data.handle);
    return result;
  }
  auto remove(uint index) {
    DataTransferItemList_remove(this.handle, index);
  }
  auto clear() {
    DataTransferItemList_clear(this.handle);
  }
}
struct DedicatedWorkerGlobalScope {
  WorkerGlobalScope _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = WorkerGlobalScope(h);
  }
  auto name() {
    auto result = DedicatedWorkerGlobalScope_name_Get(this._parent);
    return result;
  }
  auto postMessage(T0)(T0 message, Sequence!(JsObject) transfer) {
    Handle _handle_message = getOrCreateHandle(message);
    DedicatedWorkerGlobalScope_postMessage__Any_sequence(this._parent, _handle_message, transfer.handle);
    dropHandle!(T0)(_handle_message);
  }
  auto postMessage(T0)(T0 message, PostMessageOptions options) {
    Handle _handle_message = getOrCreateHandle(message);
    DedicatedWorkerGlobalScope_postMessage__Any_Handle(this._parent, _handle_message, options.handle);
    dropHandle!(T0)(_handle_message);
  }
  auto close() {
    DedicatedWorkerGlobalScope_close(this._parent);
  }
  auto onmessage(EventHandler onmessage) {
    DedicatedWorkerGlobalScope_onmessage_Set(this._parent, onmessage);
  }
  auto onmessage() {
    auto result = DedicatedWorkerGlobalScope_onmessage_Get(this._parent);
    return result;
  }
  auto onmessageerror(EventHandler onmessageerror) {
    DedicatedWorkerGlobalScope_onmessageerror_Set(this._parent, onmessageerror);
  }
  auto onmessageerror() {
    auto result = DedicatedWorkerGlobalScope_onmessageerror_Get(this._parent);
    return result;
  }
  auto requestAnimationFrame(FrameRequestCallback callback) {
    auto result = AnimationFrameProvider_requestAnimationFrame(this._parent, callback);
    return result;
  }
  auto cancelAnimationFrame(uint handle) {
    AnimationFrameProvider_cancelAnimationFrame(this._parent, handle);
  }
}
enum DocumentReadyState {
  loading,
  interactive,
  complete
}
struct DragEvent {
  MouseEvent _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = MouseEvent(h);
  }
  auto dataTransfer() {
    auto result = DragEvent_dataTransfer_Get(this._parent);
    return result;
  }
}
struct DragEventInit {
  MouseEventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = MouseEventInit(h);
  }
  static auto create() {
    return DragEventInit(JsHandle(spasm_add__object()));
  }
  auto dataTransfer(Optional!(DataTransfer) dataTransfer) {
    DragEventInit_dataTransfer_Set(this._parent, !dataTransfer.empty, dataTransfer.front.handle);
  }
  auto dataTransfer() {
    auto result = DragEventInit_dataTransfer_Get(this._parent);
    return result;
  }
}
struct ElementDefinitionOptions {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return ElementDefinitionOptions(JsHandle(spasm_add__object()));
  }
  auto extends(string extends) {
    ElementDefinitionOptions_extends_Set(this.handle, extends);
  }
  auto extends() {
    auto result = ElementDefinitionOptions_extends_Get(this.handle);
    return result;
  }
}
struct ErrorEvent {
  Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Event(h);
  }
  auto message() {
    auto result = ErrorEvent_message_Get(this._parent);
    return result;
  }
  auto filename() {
    auto result = ErrorEvent_filename_Get(this._parent);
    return result;
  }
  auto lineno() {
    auto result = ErrorEvent_lineno_Get(this._parent);
    return result;
  }
  auto colno() {
    auto result = ErrorEvent_colno_Get(this._parent);
    return result;
  }
  auto error() {
    auto result = Any(JsHandle(ErrorEvent_error_Get(this._parent)));
    return result;
  }
}
struct ErrorEventInit {
  EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventInit(h);
  }
  static auto create() {
    return ErrorEventInit(JsHandle(spasm_add__object()));
  }
  auto message(string message) {
    ErrorEventInit_message_Set(this._parent, message);
  }
  auto message() {
    auto result = ErrorEventInit_message_Get(this._parent);
    return result;
  }
  auto filename(string filename) {
    ErrorEventInit_filename_Set(this._parent, filename);
  }
  auto filename() {
    auto result = ErrorEventInit_filename_Get(this._parent);
    return result;
  }
  auto lineno(uint lineno) {
    ErrorEventInit_lineno_Set(this._parent, lineno);
  }
  auto lineno() {
    auto result = ErrorEventInit_lineno_Get(this._parent);
    return result;
  }
  auto colno(uint colno) {
    ErrorEventInit_colno_Set(this._parent, colno);
  }
  auto colno() {
    auto result = ErrorEventInit_colno_Get(this._parent);
    return result;
  }
  auto error(T0)(T0 error) {
    Handle _handle_error = getOrCreateHandle(error);
    ErrorEventInit_error_Set(this._parent, _handle_error);
    dropHandle!(T0)(_handle_error);
  }
  auto error() {
    auto result = Any(JsHandle(ErrorEventInit_error_Get(this._parent)));
    return result;
  }
}
alias EventHandler = EventHandlerNonNull;
alias EventHandlerNonNull = Any delegate(Event);
struct EventSource {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto url() {
    auto result = EventSource_url_Get(this._parent);
    return result;
  }
  auto withCredentials() {
    auto result = EventSource_withCredentials_Get(this._parent);
    return result;
  }
  enum ushort CONNECTING = 0;
  enum ushort OPEN = 1;
  enum ushort CLOSED = 2;
  auto readyState() {
    auto result = EventSource_readyState_Get(this._parent);
    return result;
  }
  auto onopen(EventHandler onopen) {
    EventSource_onopen_Set(this._parent, onopen);
  }
  auto onopen() {
    auto result = EventSource_onopen_Get(this._parent);
    return result;
  }
  auto onmessage(EventHandler onmessage) {
    EventSource_onmessage_Set(this._parent, onmessage);
  }
  auto onmessage() {
    auto result = EventSource_onmessage_Get(this._parent);
    return result;
  }
  auto onerror(EventHandler onerror) {
    EventSource_onerror_Set(this._parent, onerror);
  }
  auto onerror() {
    auto result = EventSource_onerror_Get(this._parent);
    return result;
  }
  auto close() {
    EventSource_close(this._parent);
  }
}
struct EventSourceInit {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return EventSourceInit(JsHandle(spasm_add__object()));
  }
  auto withCredentials(bool withCredentials) {
    EventSourceInit_withCredentials_Set(this.handle, withCredentials);
  }
  auto withCredentials() {
    auto result = EventSourceInit_withCredentials_Get(this.handle);
    return result;
  }
}
struct External {
  JsHandle handle;
  alias handle this;
  auto AddSearchProvider() {
    External_AddSearchProvider(this.handle);
  }
  auto IsSearchProviderInstalled() {
    External_IsSearchProviderInstalled(this.handle);
  }
}
struct FocusOptions {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return FocusOptions(JsHandle(spasm_add__object()));
  }
  auto preventScroll(bool preventScroll) {
    FocusOptions_preventScroll_Set(this.handle, preventScroll);
  }
  auto preventScroll() {
    auto result = FocusOptions_preventScroll_Get(this.handle);
    return result;
  }
}
alias FrameRequestCallback = void delegate(double);
alias FunctionStringCallback = void delegate(string);
struct HTMLAllCollection {
  JsHandle handle;
  alias handle this;
  auto length() {
    auto result = HTMLAllCollection_length_Get(this.handle);
    return result;
  }
  auto opIndex(uint index) {
    auto result = Element(JsHandle(HTMLAllCollection_getter__uint(this.handle, index)));
    return result;
  }
  auto opDispatch(uint index)() {
    auto result = Element(JsHandle(HTMLAllCollection_getter__uint(this.handle, index)));
    return result;
  }
  auto namedItem(string name) {
    auto result = HTMLAllCollection_namedItem_getter(this.handle, name);
    return result;
  }
  auto item(string nameOrIndex) {
    auto result = HTMLAllCollection_item(this.handle, nameOrIndex);
    return result;
  }
}
struct HTMLAnchorElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto target(string target) {
    HTMLAnchorElement_target_Set(this._parent, target);
  }
  auto target() {
    auto result = HTMLAnchorElement_target_Get(this._parent);
    return result;
  }
  auto download(string download) {
    HTMLAnchorElement_download_Set(this._parent, download);
  }
  auto download() {
    auto result = HTMLAnchorElement_download_Get(this._parent);
    return result;
  }
  auto ping(string ping) {
    HTMLAnchorElement_ping_Set(this._parent, ping);
  }
  auto ping() {
    auto result = HTMLAnchorElement_ping_Get(this._parent);
    return result;
  }
  auto rel(string rel) {
    HTMLAnchorElement_rel_Set(this._parent, rel);
  }
  auto rel() {
    auto result = HTMLAnchorElement_rel_Get(this._parent);
    return result;
  }
  auto relList() {
    auto result = DOMTokenList(JsHandle(HTMLAnchorElement_relList_Get(this._parent)));
    return result;
  }
  auto hreflang(string hreflang) {
    HTMLAnchorElement_hreflang_Set(this._parent, hreflang);
  }
  auto hreflang() {
    auto result = HTMLAnchorElement_hreflang_Get(this._parent);
    return result;
  }
  auto type(string type) {
    HTMLAnchorElement_type_Set(this._parent, type);
  }
  auto type() {
    auto result = HTMLAnchorElement_type_Get(this._parent);
    return result;
  }
  auto text(string text) {
    HTMLAnchorElement_text_Set(this._parent, text);
  }
  auto text() {
    auto result = HTMLAnchorElement_text_Get(this._parent);
    return result;
  }
  auto referrerPolicy(string referrerPolicy) {
    HTMLAnchorElement_referrerPolicy_Set(this._parent, referrerPolicy);
  }
  auto referrerPolicy() {
    auto result = HTMLAnchorElement_referrerPolicy_Get(this._parent);
    return result;
  }
  auto coords(string coords) {
    HTMLAnchorElement_coords_Set(this._parent, coords);
  }
  auto coords() {
    auto result = HTMLAnchorElement_coords_Get(this._parent);
    return result;
  }
  auto charset(string charset) {
    HTMLAnchorElement_charset_Set(this._parent, charset);
  }
  auto charset() {
    auto result = HTMLAnchorElement_charset_Get(this._parent);
    return result;
  }
  auto name(string name) {
    HTMLAnchorElement_name_Set(this._parent, name);
  }
  auto name() {
    auto result = HTMLAnchorElement_name_Get(this._parent);
    return result;
  }
  auto rev(string rev) {
    HTMLAnchorElement_rev_Set(this._parent, rev);
  }
  auto rev() {
    auto result = HTMLAnchorElement_rev_Get(this._parent);
    return result;
  }
  auto shape(string shape) {
    HTMLAnchorElement_shape_Set(this._parent, shape);
  }
  auto shape() {
    auto result = HTMLAnchorElement_shape_Get(this._parent);
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
struct HTMLAreaElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto alt(string alt) {
    HTMLAreaElement_alt_Set(this._parent, alt);
  }
  auto alt() {
    auto result = HTMLAreaElement_alt_Get(this._parent);
    return result;
  }
  auto coords(string coords) {
    HTMLAreaElement_coords_Set(this._parent, coords);
  }
  auto coords() {
    auto result = HTMLAreaElement_coords_Get(this._parent);
    return result;
  }
  auto shape(string shape) {
    HTMLAreaElement_shape_Set(this._parent, shape);
  }
  auto shape() {
    auto result = HTMLAreaElement_shape_Get(this._parent);
    return result;
  }
  auto target(string target) {
    HTMLAreaElement_target_Set(this._parent, target);
  }
  auto target() {
    auto result = HTMLAreaElement_target_Get(this._parent);
    return result;
  }
  auto download(string download) {
    HTMLAreaElement_download_Set(this._parent, download);
  }
  auto download() {
    auto result = HTMLAreaElement_download_Get(this._parent);
    return result;
  }
  auto ping(string ping) {
    HTMLAreaElement_ping_Set(this._parent, ping);
  }
  auto ping() {
    auto result = HTMLAreaElement_ping_Get(this._parent);
    return result;
  }
  auto rel(string rel) {
    HTMLAreaElement_rel_Set(this._parent, rel);
  }
  auto rel() {
    auto result = HTMLAreaElement_rel_Get(this._parent);
    return result;
  }
  auto relList() {
    auto result = DOMTokenList(JsHandle(HTMLAreaElement_relList_Get(this._parent)));
    return result;
  }
  auto referrerPolicy(string referrerPolicy) {
    HTMLAreaElement_referrerPolicy_Set(this._parent, referrerPolicy);
  }
  auto referrerPolicy() {
    auto result = HTMLAreaElement_referrerPolicy_Get(this._parent);
    return result;
  }
  auto noHref(bool noHref) {
    HTMLAreaElement_noHref_Set(this._parent, noHref);
  }
  auto noHref() {
    auto result = HTMLAreaElement_noHref_Get(this._parent);
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
struct HTMLAudioElement {
  HTMLMediaElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLMediaElement(h);
  }
}
struct HTMLBRElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto clear(string clear) {
    HTMLBRElement_clear_Set(this._parent, clear);
  }
  auto clear() {
    auto result = HTMLBRElement_clear_Get(this._parent);
    return result;
  }
}
struct HTMLBaseElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto href(string href) {
    HTMLBaseElement_href_Set(this._parent, href);
  }
  auto href() {
    auto result = HTMLBaseElement_href_Get(this._parent);
    return result;
  }
  auto target(string target) {
    HTMLBaseElement_target_Set(this._parent, target);
  }
  auto target() {
    auto result = HTMLBaseElement_target_Get(this._parent);
    return result;
  }
}
struct HTMLBodyElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto text(string text) {
    HTMLBodyElement_text_Set(this._parent, text);
  }
  auto text() {
    auto result = HTMLBodyElement_text_Get(this._parent);
    return result;
  }
  auto link(string link) {
    HTMLBodyElement_link_Set(this._parent, link);
  }
  auto link() {
    auto result = HTMLBodyElement_link_Get(this._parent);
    return result;
  }
  auto vLink(string vLink) {
    HTMLBodyElement_vLink_Set(this._parent, vLink);
  }
  auto vLink() {
    auto result = HTMLBodyElement_vLink_Get(this._parent);
    return result;
  }
  auto aLink(string aLink) {
    HTMLBodyElement_aLink_Set(this._parent, aLink);
  }
  auto aLink() {
    auto result = HTMLBodyElement_aLink_Get(this._parent);
    return result;
  }
  auto bgColor(string bgColor) {
    HTMLBodyElement_bgColor_Set(this._parent, bgColor);
  }
  auto bgColor() {
    auto result = HTMLBodyElement_bgColor_Get(this._parent);
    return result;
  }
  auto background(string background) {
    HTMLBodyElement_background_Set(this._parent, background);
  }
  auto background() {
    auto result = HTMLBodyElement_background_Get(this._parent);
    return result;
  }
  auto onorientationchange(EventHandler onorientationchange) {
    HTMLBodyElement_onorientationchange_Set(this._parent, onorientationchange);
  }
  auto onorientationchange() {
    auto result = HTMLBodyElement_onorientationchange_Get(this._parent);
    return result;
  }
}
struct HTMLButtonElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto autofocus(bool autofocus) {
    HTMLButtonElement_autofocus_Set(this._parent, autofocus);
  }
  auto autofocus() {
    auto result = HTMLButtonElement_autofocus_Get(this._parent);
    return result;
  }
  auto disabled(bool disabled) {
    HTMLButtonElement_disabled_Set(this._parent, disabled);
  }
  auto disabled() {
    auto result = HTMLButtonElement_disabled_Get(this._parent);
    return result;
  }
  auto form() {
    auto result = HTMLButtonElement_form_Get(this._parent);
    return result;
  }
  auto formAction(string formAction) {
    HTMLButtonElement_formAction_Set(this._parent, formAction);
  }
  auto formAction() {
    auto result = HTMLButtonElement_formAction_Get(this._parent);
    return result;
  }
  auto formEnctype(string formEnctype) {
    HTMLButtonElement_formEnctype_Set(this._parent, formEnctype);
  }
  auto formEnctype() {
    auto result = HTMLButtonElement_formEnctype_Get(this._parent);
    return result;
  }
  auto formMethod(string formMethod) {
    HTMLButtonElement_formMethod_Set(this._parent, formMethod);
  }
  auto formMethod() {
    auto result = HTMLButtonElement_formMethod_Get(this._parent);
    return result;
  }
  auto formNoValidate(bool formNoValidate) {
    HTMLButtonElement_formNoValidate_Set(this._parent, formNoValidate);
  }
  auto formNoValidate() {
    auto result = HTMLButtonElement_formNoValidate_Get(this._parent);
    return result;
  }
  auto formTarget(string formTarget) {
    HTMLButtonElement_formTarget_Set(this._parent, formTarget);
  }
  auto formTarget() {
    auto result = HTMLButtonElement_formTarget_Get(this._parent);
    return result;
  }
  auto name(string name) {
    HTMLButtonElement_name_Set(this._parent, name);
  }
  auto name() {
    auto result = HTMLButtonElement_name_Get(this._parent);
    return result;
  }
  auto type(string type) {
    HTMLButtonElement_type_Set(this._parent, type);
  }
  auto type() {
    auto result = HTMLButtonElement_type_Get(this._parent);
    return result;
  }
  auto value(string value) {
    HTMLButtonElement_value_Set(this._parent, value);
  }
  auto value() {
    auto result = HTMLButtonElement_value_Get(this._parent);
    return result;
  }
  auto willValidate() {
    auto result = HTMLButtonElement_willValidate_Get(this._parent);
    return result;
  }
  auto validity() {
    auto result = ValidityState(JsHandle(HTMLButtonElement_validity_Get(this._parent)));
    return result;
  }
  auto validationMessage() {
    auto result = HTMLButtonElement_validationMessage_Get(this._parent);
    return result;
  }
  auto checkValidity() {
    auto result = HTMLButtonElement_checkValidity(this._parent);
    return result;
  }
  auto reportValidity() {
    auto result = HTMLButtonElement_reportValidity(this._parent);
    return result;
  }
  auto setCustomValidity(string error) {
    HTMLButtonElement_setCustomValidity(this._parent, error);
  }
  auto labels() {
    auto result = NodeList(JsHandle(HTMLButtonElement_labels_Get(this._parent)));
    return result;
  }
}
struct HTMLCanvasElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto width(uint width) {
    HTMLCanvasElement_width_Set(this._parent, width);
  }
  auto width() {
    auto result = HTMLCanvasElement_width_Get(this._parent);
    return result;
  }
  auto height(uint height) {
    HTMLCanvasElement_height_Set(this._parent, height);
  }
  auto height() {
    auto result = HTMLCanvasElement_height_Get(this._parent);
    return result;
  }
  auto getContext(T1)(string contextId, T1 options /* = null */) {
    Handle _handle_options = getOrCreateHandle(options);
    auto result = HTMLCanvasElement_getContext(this._parent, contextId, _handle_options);
    dropHandle!(T1)(_handle_options);
    return result;
  }
  auto toDataURL(T1)(string type, T1 quality) {
    Handle _handle_quality = getOrCreateHandle(quality);
    auto result = HTMLCanvasElement_toDataURL(this._parent, type, _handle_quality);
    dropHandle!(T1)(_handle_quality);
    return result;
  }
  auto toBlob(T2)(BlobCallback _callback, string type, T2 quality) {
    Handle _handle_quality = getOrCreateHandle(quality);
    HTMLCanvasElement_toBlob(this._parent, _callback, type, _handle_quality);
    dropHandle!(T2)(_handle_quality);
  }
  auto transferControlToOffscreen() {
    auto result = OffscreenCanvas(JsHandle(HTMLCanvasElement_transferControlToOffscreen(this._parent)));
    return result;
  }
}
struct HTMLDListElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto compact(bool compact) {
    HTMLDListElement_compact_Set(this._parent, compact);
  }
  auto compact() {
    auto result = HTMLDListElement_compact_Get(this._parent);
    return result;
  }
}
struct HTMLDataElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto value(string value) {
    HTMLDataElement_value_Set(this._parent, value);
  }
  auto value() {
    auto result = HTMLDataElement_value_Get(this._parent);
    return result;
  }
}
struct HTMLDataListElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto options() {
    auto result = HTMLCollection(JsHandle(HTMLDataListElement_options_Get(this._parent)));
    return result;
  }
}
struct HTMLDetailsElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto open(bool open) {
    HTMLDetailsElement_open_Set(this._parent, open);
  }
  auto open() {
    auto result = HTMLDetailsElement_open_Get(this._parent);
    return result;
  }
}
struct HTMLDialogElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto open(bool open) {
    HTMLDialogElement_open_Set(this._parent, open);
  }
  auto open() {
    auto result = HTMLDialogElement_open_Get(this._parent);
    return result;
  }
  auto returnValue(string returnValue) {
    HTMLDialogElement_returnValue_Set(this._parent, returnValue);
  }
  auto returnValue() {
    auto result = HTMLDialogElement_returnValue_Get(this._parent);
    return result;
  }
  auto show() {
    HTMLDialogElement_show(this._parent);
  }
  auto showModal() {
    HTMLDialogElement_showModal(this._parent);
  }
  auto close(string returnValue) {
    HTMLDialogElement_close(this._parent, returnValue);
  }
}
struct HTMLDirectoryElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto compact(bool compact) {
    HTMLDirectoryElement_compact_Set(this._parent, compact);
  }
  auto compact() {
    auto result = HTMLDirectoryElement_compact_Get(this._parent);
    return result;
  }
}
struct HTMLDivElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto align_(string align_) {
    HTMLDivElement_align_Set(this._parent, align_);
  }
  auto align_() {
    auto result = HTMLDivElement_align_Get(this._parent);
    return result;
  }
}
struct HTMLElement {
  Element _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Element(h);
  }
  auto title(string title) {
    HTMLElement_title_Set(this._parent, title);
  }
  auto title() {
    auto result = HTMLElement_title_Get(this._parent);
    return result;
  }
  auto lang(string lang) {
    HTMLElement_lang_Set(this._parent, lang);
  }
  auto lang() {
    auto result = HTMLElement_lang_Get(this._parent);
    return result;
  }
  auto translate(bool translate) {
    HTMLElement_translate_Set(this._parent, translate);
  }
  auto translate() {
    auto result = HTMLElement_translate_Get(this._parent);
    return result;
  }
  auto dir(string dir) {
    HTMLElement_dir_Set(this._parent, dir);
  }
  auto dir() {
    auto result = HTMLElement_dir_Get(this._parent);
    return result;
  }
  auto hidden(bool hidden) {
    HTMLElement_hidden_Set(this._parent, hidden);
  }
  auto hidden() {
    auto result = HTMLElement_hidden_Get(this._parent);
    return result;
  }
  auto click() {
    HTMLElement_click(this._parent);
  }
  auto accessKey(string accessKey) {
    HTMLElement_accessKey_Set(this._parent, accessKey);
  }
  auto accessKey() {
    auto result = HTMLElement_accessKey_Get(this._parent);
    return result;
  }
  auto accessKeyLabel() {
    auto result = HTMLElement_accessKeyLabel_Get(this._parent);
    return result;
  }
  auto draggable(bool draggable) {
    HTMLElement_draggable_Set(this._parent, draggable);
  }
  auto draggable() {
    auto result = HTMLElement_draggable_Get(this._parent);
    return result;
  }
  auto spellcheck(bool spellcheck) {
    HTMLElement_spellcheck_Set(this._parent, spellcheck);
  }
  auto spellcheck() {
    auto result = HTMLElement_spellcheck_Get(this._parent);
    return result;
  }
  auto autocapitalize(string autocapitalize) {
    HTMLElement_autocapitalize_Set(this._parent, autocapitalize);
  }
  auto autocapitalize() {
    auto result = HTMLElement_autocapitalize_Get(this._parent);
    return result;
  }
  auto innerText(string innerText) {
    HTMLElement_innerText_Set(this._parent, innerText);
  }
  auto innerText() {
    auto result = HTMLElement_innerText_Get(this._parent);
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
  auto isContentEditable() {
    auto result = ElementContentEditable_isContentEditable_Get(this._parent);
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
}
struct HTMLEmbedElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto src(string src) {
    HTMLEmbedElement_src_Set(this._parent, src);
  }
  auto src() {
    auto result = HTMLEmbedElement_src_Get(this._parent);
    return result;
  }
  auto type(string type) {
    HTMLEmbedElement_type_Set(this._parent, type);
  }
  auto type() {
    auto result = HTMLEmbedElement_type_Get(this._parent);
    return result;
  }
  auto width(string width) {
    HTMLEmbedElement_width_Set(this._parent, width);
  }
  auto width() {
    auto result = HTMLEmbedElement_width_Get(this._parent);
    return result;
  }
  auto height(string height) {
    HTMLEmbedElement_height_Set(this._parent, height);
  }
  auto height() {
    auto result = HTMLEmbedElement_height_Get(this._parent);
    return result;
  }
  auto getSVGDocument() {
    auto result = HTMLEmbedElement_getSVGDocument(this._parent);
    return result;
  }
  auto align_(string align_) {
    HTMLEmbedElement_align_Set(this._parent, align_);
  }
  auto align_() {
    auto result = HTMLEmbedElement_align_Get(this._parent);
    return result;
  }
  auto name(string name) {
    HTMLEmbedElement_name_Set(this._parent, name);
  }
  auto name() {
    auto result = HTMLEmbedElement_name_Get(this._parent);
    return result;
  }
}
struct HTMLFieldSetElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto disabled(bool disabled) {
    HTMLFieldSetElement_disabled_Set(this._parent, disabled);
  }
  auto disabled() {
    auto result = HTMLFieldSetElement_disabled_Get(this._parent);
    return result;
  }
  auto form() {
    auto result = HTMLFieldSetElement_form_Get(this._parent);
    return result;
  }
  auto name(string name) {
    HTMLFieldSetElement_name_Set(this._parent, name);
  }
  auto name() {
    auto result = HTMLFieldSetElement_name_Get(this._parent);
    return result;
  }
  auto type() {
    auto result = HTMLFieldSetElement_type_Get(this._parent);
    return result;
  }
  auto elements() {
    auto result = HTMLCollection(JsHandle(HTMLFieldSetElement_elements_Get(this._parent)));
    return result;
  }
  auto willValidate() {
    auto result = HTMLFieldSetElement_willValidate_Get(this._parent);
    return result;
  }
  auto validity() {
    auto result = ValidityState(JsHandle(HTMLFieldSetElement_validity_Get(this._parent)));
    return result;
  }
  auto validationMessage() {
    auto result = HTMLFieldSetElement_validationMessage_Get(this._parent);
    return result;
  }
  auto checkValidity() {
    auto result = HTMLFieldSetElement_checkValidity(this._parent);
    return result;
  }
  auto reportValidity() {
    auto result = HTMLFieldSetElement_reportValidity(this._parent);
    return result;
  }
  auto setCustomValidity(string error) {
    HTMLFieldSetElement_setCustomValidity(this._parent, error);
  }
}
struct HTMLFontElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto color(string color) {
    HTMLFontElement_color_Set(this._parent, color);
  }
  auto color() {
    auto result = HTMLFontElement_color_Get(this._parent);
    return result;
  }
  auto face(string face) {
    HTMLFontElement_face_Set(this._parent, face);
  }
  auto face() {
    auto result = HTMLFontElement_face_Get(this._parent);
    return result;
  }
  auto size(string size) {
    HTMLFontElement_size_Set(this._parent, size);
  }
  auto size() {
    auto result = HTMLFontElement_size_Get(this._parent);
    return result;
  }
}
struct HTMLFormControlsCollection {
  HTMLCollection _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLCollection(h);
  }
  auto namedItem(string name) {
    auto result = HTMLFormControlsCollection_namedItem_getter(this._parent, name);
    return result;
  }
}
struct HTMLFormElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto acceptCharset(string acceptCharset) {
    HTMLFormElement_acceptCharset_Set(this._parent, acceptCharset);
  }
  auto acceptCharset() {
    auto result = HTMLFormElement_acceptCharset_Get(this._parent);
    return result;
  }
  auto action(string action) {
    HTMLFormElement_action_Set(this._parent, action);
  }
  auto action() {
    auto result = HTMLFormElement_action_Get(this._parent);
    return result;
  }
  auto autocomplete(string autocomplete) {
    HTMLFormElement_autocomplete_Set(this._parent, autocomplete);
  }
  auto autocomplete() {
    auto result = HTMLFormElement_autocomplete_Get(this._parent);
    return result;
  }
  auto enctype(string enctype) {
    HTMLFormElement_enctype_Set(this._parent, enctype);
  }
  auto enctype() {
    auto result = HTMLFormElement_enctype_Get(this._parent);
    return result;
  }
  auto encoding(string encoding) {
    HTMLFormElement_encoding_Set(this._parent, encoding);
  }
  auto encoding() {
    auto result = HTMLFormElement_encoding_Get(this._parent);
    return result;
  }
  auto method(string method) {
    HTMLFormElement_method_Set(this._parent, method);
  }
  auto method() {
    auto result = HTMLFormElement_method_Get(this._parent);
    return result;
  }
  auto name(string name) {
    HTMLFormElement_name_Set(this._parent, name);
  }
  auto name() {
    auto result = HTMLFormElement_name_Get(this._parent);
    return result;
  }
  auto noValidate(bool noValidate) {
    HTMLFormElement_noValidate_Set(this._parent, noValidate);
  }
  auto noValidate() {
    auto result = HTMLFormElement_noValidate_Get(this._parent);
    return result;
  }
  auto target(string target) {
    HTMLFormElement_target_Set(this._parent, target);
  }
  auto target() {
    auto result = HTMLFormElement_target_Get(this._parent);
    return result;
  }
  auto elements() {
    auto result = HTMLFormControlsCollection(JsHandle(HTMLFormElement_elements_Get(this._parent)));
    return result;
  }
  auto length() {
    auto result = HTMLFormElement_length_Get(this._parent);
    return result;
  }
  auto opIndex(uint index) {
    auto result = Element(JsHandle(HTMLFormElement_getter__uint(this._parent, index)));
    return result;
  }
  auto opDispatch(uint index)() {
    auto result = Element(JsHandle(HTMLFormElement_getter__uint(this._parent, index)));
    return result;
  }
  auto opIndex(string name) {
    auto result = HTMLFormElement_getter__string(this._parent, name);
    return result;
  }
  auto opDispatch(string name)() {
    auto result = HTMLFormElement_getter__string(this._parent, name);
    return result;
  }
  auto submit() {
    HTMLFormElement_submit(this._parent);
  }
  auto reset() {
    HTMLFormElement_reset(this._parent);
  }
  auto checkValidity() {
    auto result = HTMLFormElement_checkValidity(this._parent);
    return result;
  }
  auto reportValidity() {
    auto result = HTMLFormElement_reportValidity(this._parent);
    return result;
  }
}
struct HTMLFrameElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto name(string name) {
    HTMLFrameElement_name_Set(this._parent, name);
  }
  auto name() {
    auto result = HTMLFrameElement_name_Get(this._parent);
    return result;
  }
  auto scrolling(string scrolling) {
    HTMLFrameElement_scrolling_Set(this._parent, scrolling);
  }
  auto scrolling() {
    auto result = HTMLFrameElement_scrolling_Get(this._parent);
    return result;
  }
  auto src(string src) {
    HTMLFrameElement_src_Set(this._parent, src);
  }
  auto src() {
    auto result = HTMLFrameElement_src_Get(this._parent);
    return result;
  }
  auto frameBorder(string frameBorder) {
    HTMLFrameElement_frameBorder_Set(this._parent, frameBorder);
  }
  auto frameBorder() {
    auto result = HTMLFrameElement_frameBorder_Get(this._parent);
    return result;
  }
  auto longDesc(string longDesc) {
    HTMLFrameElement_longDesc_Set(this._parent, longDesc);
  }
  auto longDesc() {
    auto result = HTMLFrameElement_longDesc_Get(this._parent);
    return result;
  }
  auto noResize(bool noResize) {
    HTMLFrameElement_noResize_Set(this._parent, noResize);
  }
  auto noResize() {
    auto result = HTMLFrameElement_noResize_Get(this._parent);
    return result;
  }
  auto contentDocument() {
    auto result = HTMLFrameElement_contentDocument_Get(this._parent);
    return result;
  }
  auto contentWindow() {
    auto result = HTMLFrameElement_contentWindow_Get(this._parent);
    return result;
  }
  auto marginHeight(string marginHeight) {
    HTMLFrameElement_marginHeight_Set(this._parent, marginHeight);
  }
  auto marginHeight() {
    auto result = HTMLFrameElement_marginHeight_Get(this._parent);
    return result;
  }
  auto marginWidth(string marginWidth) {
    HTMLFrameElement_marginWidth_Set(this._parent, marginWidth);
  }
  auto marginWidth() {
    auto result = HTMLFrameElement_marginWidth_Get(this._parent);
    return result;
  }
}
struct HTMLFrameSetElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto cols(string cols) {
    HTMLFrameSetElement_cols_Set(this._parent, cols);
  }
  auto cols() {
    auto result = HTMLFrameSetElement_cols_Get(this._parent);
    return result;
  }
  auto rows(string rows) {
    HTMLFrameSetElement_rows_Set(this._parent, rows);
  }
  auto rows() {
    auto result = HTMLFrameSetElement_rows_Get(this._parent);
    return result;
  }
}
struct HTMLHRElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto align_(string align_) {
    HTMLHRElement_align_Set(this._parent, align_);
  }
  auto align_() {
    auto result = HTMLHRElement_align_Get(this._parent);
    return result;
  }
  auto color(string color) {
    HTMLHRElement_color_Set(this._parent, color);
  }
  auto color() {
    auto result = HTMLHRElement_color_Get(this._parent);
    return result;
  }
  auto noShade(bool noShade) {
    HTMLHRElement_noShade_Set(this._parent, noShade);
  }
  auto noShade() {
    auto result = HTMLHRElement_noShade_Get(this._parent);
    return result;
  }
  auto size(string size) {
    HTMLHRElement_size_Set(this._parent, size);
  }
  auto size() {
    auto result = HTMLHRElement_size_Get(this._parent);
    return result;
  }
  auto width(string width) {
    HTMLHRElement_width_Set(this._parent, width);
  }
  auto width() {
    auto result = HTMLHRElement_width_Get(this._parent);
    return result;
  }
}
struct HTMLHeadElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
}
struct HTMLHeadingElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto align_(string align_) {
    HTMLHeadingElement_align_Set(this._parent, align_);
  }
  auto align_() {
    auto result = HTMLHeadingElement_align_Get(this._parent);
    return result;
  }
}
struct HTMLHtmlElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto version_(string version_) {
    HTMLHtmlElement_version_Set(this._parent, version_);
  }
  auto version_() {
    auto result = HTMLHtmlElement_version_Get(this._parent);
    return result;
  }
}
struct HTMLIFrameElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto src(string src) {
    HTMLIFrameElement_src_Set(this._parent, src);
  }
  auto src() {
    auto result = HTMLIFrameElement_src_Get(this._parent);
    return result;
  }
  auto srcdoc(string srcdoc) {
    HTMLIFrameElement_srcdoc_Set(this._parent, srcdoc);
  }
  auto srcdoc() {
    auto result = HTMLIFrameElement_srcdoc_Get(this._parent);
    return result;
  }
  auto name(string name) {
    HTMLIFrameElement_name_Set(this._parent, name);
  }
  auto name() {
    auto result = HTMLIFrameElement_name_Get(this._parent);
    return result;
  }
  auto sandbox() {
    auto result = DOMTokenList(JsHandle(HTMLIFrameElement_sandbox_Get(this._parent)));
    return result;
  }
  auto allow(string allow) {
    HTMLIFrameElement_allow_Set(this._parent, allow);
  }
  auto allow() {
    auto result = HTMLIFrameElement_allow_Get(this._parent);
    return result;
  }
  auto allowFullscreen(bool allowFullscreen) {
    HTMLIFrameElement_allowFullscreen_Set(this._parent, allowFullscreen);
  }
  auto allowFullscreen() {
    auto result = HTMLIFrameElement_allowFullscreen_Get(this._parent);
    return result;
  }
  auto allowPaymentRequest(bool allowPaymentRequest) {
    HTMLIFrameElement_allowPaymentRequest_Set(this._parent, allowPaymentRequest);
  }
  auto allowPaymentRequest() {
    auto result = HTMLIFrameElement_allowPaymentRequest_Get(this._parent);
    return result;
  }
  auto width(string width) {
    HTMLIFrameElement_width_Set(this._parent, width);
  }
  auto width() {
    auto result = HTMLIFrameElement_width_Get(this._parent);
    return result;
  }
  auto height(string height) {
    HTMLIFrameElement_height_Set(this._parent, height);
  }
  auto height() {
    auto result = HTMLIFrameElement_height_Get(this._parent);
    return result;
  }
  auto referrerPolicy(string referrerPolicy) {
    HTMLIFrameElement_referrerPolicy_Set(this._parent, referrerPolicy);
  }
  auto referrerPolicy() {
    auto result = HTMLIFrameElement_referrerPolicy_Get(this._parent);
    return result;
  }
  auto contentDocument() {
    auto result = HTMLIFrameElement_contentDocument_Get(this._parent);
    return result;
  }
  auto contentWindow() {
    auto result = HTMLIFrameElement_contentWindow_Get(this._parent);
    return result;
  }
  auto getSVGDocument() {
    auto result = HTMLIFrameElement_getSVGDocument(this._parent);
    return result;
  }
  auto align_(string align_) {
    HTMLIFrameElement_align_Set(this._parent, align_);
  }
  auto align_() {
    auto result = HTMLIFrameElement_align_Get(this._parent);
    return result;
  }
  auto scrolling(string scrolling) {
    HTMLIFrameElement_scrolling_Set(this._parent, scrolling);
  }
  auto scrolling() {
    auto result = HTMLIFrameElement_scrolling_Get(this._parent);
    return result;
  }
  auto frameBorder(string frameBorder) {
    HTMLIFrameElement_frameBorder_Set(this._parent, frameBorder);
  }
  auto frameBorder() {
    auto result = HTMLIFrameElement_frameBorder_Get(this._parent);
    return result;
  }
  auto longDesc(string longDesc) {
    HTMLIFrameElement_longDesc_Set(this._parent, longDesc);
  }
  auto longDesc() {
    auto result = HTMLIFrameElement_longDesc_Get(this._parent);
    return result;
  }
  auto marginHeight(string marginHeight) {
    HTMLIFrameElement_marginHeight_Set(this._parent, marginHeight);
  }
  auto marginHeight() {
    auto result = HTMLIFrameElement_marginHeight_Get(this._parent);
    return result;
  }
  auto marginWidth(string marginWidth) {
    HTMLIFrameElement_marginWidth_Set(this._parent, marginWidth);
  }
  auto marginWidth() {
    auto result = HTMLIFrameElement_marginWidth_Get(this._parent);
    return result;
  }
}
struct HTMLImageElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto alt(string alt) {
    HTMLImageElement_alt_Set(this._parent, alt);
  }
  auto alt() {
    auto result = HTMLImageElement_alt_Get(this._parent);
    return result;
  }
  auto src(string src) {
    HTMLImageElement_src_Set(this._parent, src);
  }
  auto src() {
    auto result = HTMLImageElement_src_Get(this._parent);
    return result;
  }
  auto srcset(string srcset) {
    HTMLImageElement_srcset_Set(this._parent, srcset);
  }
  auto srcset() {
    auto result = HTMLImageElement_srcset_Get(this._parent);
    return result;
  }
  auto sizes(string sizes) {
    HTMLImageElement_sizes_Set(this._parent, sizes);
  }
  auto sizes() {
    auto result = HTMLImageElement_sizes_Get(this._parent);
    return result;
  }
  auto crossOrigin(Optional!(string) crossOrigin) {
    HTMLImageElement_crossOrigin_Set(this._parent, !crossOrigin.empty, crossOrigin.front);
  }
  auto crossOrigin() {
    auto result = HTMLImageElement_crossOrigin_Get(this._parent);
    return result;
  }
  auto useMap(string useMap) {
    HTMLImageElement_useMap_Set(this._parent, useMap);
  }
  auto useMap() {
    auto result = HTMLImageElement_useMap_Get(this._parent);
    return result;
  }
  auto isMap(bool isMap) {
    HTMLImageElement_isMap_Set(this._parent, isMap);
  }
  auto isMap() {
    auto result = HTMLImageElement_isMap_Get(this._parent);
    return result;
  }
  auto width(uint width) {
    HTMLImageElement_width_Set(this._parent, width);
  }
  auto width() {
    auto result = HTMLImageElement_width_Get(this._parent);
    return result;
  }
  auto height(uint height) {
    HTMLImageElement_height_Set(this._parent, height);
  }
  auto height() {
    auto result = HTMLImageElement_height_Get(this._parent);
    return result;
  }
  auto naturalWidth() {
    auto result = HTMLImageElement_naturalWidth_Get(this._parent);
    return result;
  }
  auto naturalHeight() {
    auto result = HTMLImageElement_naturalHeight_Get(this._parent);
    return result;
  }
  auto complete() {
    auto result = HTMLImageElement_complete_Get(this._parent);
    return result;
  }
  auto currentSrc() {
    auto result = HTMLImageElement_currentSrc_Get(this._parent);
    return result;
  }
  auto referrerPolicy(string referrerPolicy) {
    HTMLImageElement_referrerPolicy_Set(this._parent, referrerPolicy);
  }
  auto referrerPolicy() {
    auto result = HTMLImageElement_referrerPolicy_Get(this._parent);
    return result;
  }
  auto decoding(string decoding) {
    HTMLImageElement_decoding_Set(this._parent, decoding);
  }
  auto decoding() {
    auto result = HTMLImageElement_decoding_Get(this._parent);
    return result;
  }
  auto decode() {
    auto result = Promise!(void)(JsHandle(HTMLImageElement_decode(this._parent)));
    return result;
  }
  auto name(string name) {
    HTMLImageElement_name_Set(this._parent, name);
  }
  auto name() {
    auto result = HTMLImageElement_name_Get(this._parent);
    return result;
  }
  auto lowsrc(string lowsrc) {
    HTMLImageElement_lowsrc_Set(this._parent, lowsrc);
  }
  auto lowsrc() {
    auto result = HTMLImageElement_lowsrc_Get(this._parent);
    return result;
  }
  auto align_(string align_) {
    HTMLImageElement_align_Set(this._parent, align_);
  }
  auto align_() {
    auto result = HTMLImageElement_align_Get(this._parent);
    return result;
  }
  auto hspace(uint hspace) {
    HTMLImageElement_hspace_Set(this._parent, hspace);
  }
  auto hspace() {
    auto result = HTMLImageElement_hspace_Get(this._parent);
    return result;
  }
  auto vspace(uint vspace) {
    HTMLImageElement_vspace_Set(this._parent, vspace);
  }
  auto vspace() {
    auto result = HTMLImageElement_vspace_Get(this._parent);
    return result;
  }
  auto longDesc(string longDesc) {
    HTMLImageElement_longDesc_Set(this._parent, longDesc);
  }
  auto longDesc() {
    auto result = HTMLImageElement_longDesc_Get(this._parent);
    return result;
  }
  auto border(string border) {
    HTMLImageElement_border_Set(this._parent, border);
  }
  auto border() {
    auto result = HTMLImageElement_border_Get(this._parent);
    return result;
  }
}
struct HTMLInputElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto accept(string accept) {
    HTMLInputElement_accept_Set(this._parent, accept);
  }
  auto accept() {
    auto result = HTMLInputElement_accept_Get(this._parent);
    return result;
  }
  auto alt(string alt) {
    HTMLInputElement_alt_Set(this._parent, alt);
  }
  auto alt() {
    auto result = HTMLInputElement_alt_Get(this._parent);
    return result;
  }
  auto autocomplete(string autocomplete) {
    HTMLInputElement_autocomplete_Set(this._parent, autocomplete);
  }
  auto autocomplete() {
    auto result = HTMLInputElement_autocomplete_Get(this._parent);
    return result;
  }
  auto autofocus(bool autofocus) {
    HTMLInputElement_autofocus_Set(this._parent, autofocus);
  }
  auto autofocus() {
    auto result = HTMLInputElement_autofocus_Get(this._parent);
    return result;
  }
  auto defaultChecked(bool defaultChecked) {
    HTMLInputElement_defaultChecked_Set(this._parent, defaultChecked);
  }
  auto defaultChecked() {
    auto result = HTMLInputElement_defaultChecked_Get(this._parent);
    return result;
  }
  auto checked(bool checked) {
    HTMLInputElement_checked_Set(this._parent, checked);
  }
  auto checked() {
    auto result = HTMLInputElement_checked_Get(this._parent);
    return result;
  }
  auto dirName(string dirName) {
    HTMLInputElement_dirName_Set(this._parent, dirName);
  }
  auto dirName() {
    auto result = HTMLInputElement_dirName_Get(this._parent);
    return result;
  }
  auto disabled(bool disabled) {
    HTMLInputElement_disabled_Set(this._parent, disabled);
  }
  auto disabled() {
    auto result = HTMLInputElement_disabled_Get(this._parent);
    return result;
  }
  auto form() {
    auto result = HTMLInputElement_form_Get(this._parent);
    return result;
  }
  auto files(Optional!(FileList) files) {
    HTMLInputElement_files_Set(this._parent, !files.empty, files.front.handle);
  }
  auto files() {
    auto result = HTMLInputElement_files_Get(this._parent);
    return result;
  }
  auto formAction(string formAction) {
    HTMLInputElement_formAction_Set(this._parent, formAction);
  }
  auto formAction() {
    auto result = HTMLInputElement_formAction_Get(this._parent);
    return result;
  }
  auto formEnctype(string formEnctype) {
    HTMLInputElement_formEnctype_Set(this._parent, formEnctype);
  }
  auto formEnctype() {
    auto result = HTMLInputElement_formEnctype_Get(this._parent);
    return result;
  }
  auto formMethod(string formMethod) {
    HTMLInputElement_formMethod_Set(this._parent, formMethod);
  }
  auto formMethod() {
    auto result = HTMLInputElement_formMethod_Get(this._parent);
    return result;
  }
  auto formNoValidate(bool formNoValidate) {
    HTMLInputElement_formNoValidate_Set(this._parent, formNoValidate);
  }
  auto formNoValidate() {
    auto result = HTMLInputElement_formNoValidate_Get(this._parent);
    return result;
  }
  auto formTarget(string formTarget) {
    HTMLInputElement_formTarget_Set(this._parent, formTarget);
  }
  auto formTarget() {
    auto result = HTMLInputElement_formTarget_Get(this._parent);
    return result;
  }
  auto height(uint height) {
    HTMLInputElement_height_Set(this._parent, height);
  }
  auto height() {
    auto result = HTMLInputElement_height_Get(this._parent);
    return result;
  }
  auto indeterminate(bool indeterminate) {
    HTMLInputElement_indeterminate_Set(this._parent, indeterminate);
  }
  auto indeterminate() {
    auto result = HTMLInputElement_indeterminate_Get(this._parent);
    return result;
  }
  auto list() {
    auto result = HTMLInputElement_list_Get(this._parent);
    return result;
  }
  auto max(string max) {
    HTMLInputElement_max_Set(this._parent, max);
  }
  auto max() {
    auto result = HTMLInputElement_max_Get(this._parent);
    return result;
  }
  auto maxLength(int maxLength) {
    HTMLInputElement_maxLength_Set(this._parent, maxLength);
  }
  auto maxLength() {
    auto result = HTMLInputElement_maxLength_Get(this._parent);
    return result;
  }
  auto min(string min) {
    HTMLInputElement_min_Set(this._parent, min);
  }
  auto min() {
    auto result = HTMLInputElement_min_Get(this._parent);
    return result;
  }
  auto minLength(int minLength) {
    HTMLInputElement_minLength_Set(this._parent, minLength);
  }
  auto minLength() {
    auto result = HTMLInputElement_minLength_Get(this._parent);
    return result;
  }
  auto multiple(bool multiple) {
    HTMLInputElement_multiple_Set(this._parent, multiple);
  }
  auto multiple() {
    auto result = HTMLInputElement_multiple_Get(this._parent);
    return result;
  }
  auto name(string name) {
    HTMLInputElement_name_Set(this._parent, name);
  }
  auto name() {
    auto result = HTMLInputElement_name_Get(this._parent);
    return result;
  }
  auto pattern(string pattern) {
    HTMLInputElement_pattern_Set(this._parent, pattern);
  }
  auto pattern() {
    auto result = HTMLInputElement_pattern_Get(this._parent);
    return result;
  }
  auto placeholder(string placeholder) {
    HTMLInputElement_placeholder_Set(this._parent, placeholder);
  }
  auto placeholder() {
    auto result = HTMLInputElement_placeholder_Get(this._parent);
    return result;
  }
  auto readOnly(bool readOnly) {
    HTMLInputElement_readOnly_Set(this._parent, readOnly);
  }
  auto readOnly() {
    auto result = HTMLInputElement_readOnly_Get(this._parent);
    return result;
  }
  auto required(bool required) {
    HTMLInputElement_required_Set(this._parent, required);
  }
  auto required() {
    auto result = HTMLInputElement_required_Get(this._parent);
    return result;
  }
  auto size(uint size) {
    HTMLInputElement_size_Set(this._parent, size);
  }
  auto size() {
    auto result = HTMLInputElement_size_Get(this._parent);
    return result;
  }
  auto src(string src) {
    HTMLInputElement_src_Set(this._parent, src);
  }
  auto src() {
    auto result = HTMLInputElement_src_Get(this._parent);
    return result;
  }
  auto step(string step) {
    HTMLInputElement_step_Set(this._parent, step);
  }
  auto step() {
    auto result = HTMLInputElement_step_Get(this._parent);
    return result;
  }
  auto type(string type) {
    HTMLInputElement_type_Set(this._parent, type);
  }
  auto type() {
    auto result = HTMLInputElement_type_Get(this._parent);
    return result;
  }
  auto defaultValue(string defaultValue) {
    HTMLInputElement_defaultValue_Set(this._parent, defaultValue);
  }
  auto defaultValue() {
    auto result = HTMLInputElement_defaultValue_Get(this._parent);
    return result;
  }
  auto value(string value) {
    HTMLInputElement_value_Set(this._parent, value);
  }
  auto value() {
    auto result = HTMLInputElement_value_Get(this._parent);
    return result;
  }
  auto valueAsDate(Optional!(JsObject) valueAsDate) {
    HTMLInputElement_valueAsDate_Set(this._parent, !valueAsDate.empty, valueAsDate.front.handle);
  }
  auto valueAsDate() {
    auto result = HTMLInputElement_valueAsDate_Get(this._parent);
    return result;
  }
  auto valueAsNumber(double valueAsNumber) {
    HTMLInputElement_valueAsNumber_Set(this._parent, valueAsNumber);
  }
  auto valueAsNumber() {
    auto result = HTMLInputElement_valueAsNumber_Get(this._parent);
    return result;
  }
  auto width(uint width) {
    HTMLInputElement_width_Set(this._parent, width);
  }
  auto width() {
    auto result = HTMLInputElement_width_Get(this._parent);
    return result;
  }
  auto stepUp(int n /* = 1 */) {
    HTMLInputElement_stepUp(this._parent, n);
  }
  auto stepDown(int n /* = 1 */) {
    HTMLInputElement_stepDown(this._parent, n);
  }
  auto willValidate() {
    auto result = HTMLInputElement_willValidate_Get(this._parent);
    return result;
  }
  auto validity() {
    auto result = ValidityState(JsHandle(HTMLInputElement_validity_Get(this._parent)));
    return result;
  }
  auto validationMessage() {
    auto result = HTMLInputElement_validationMessage_Get(this._parent);
    return result;
  }
  auto checkValidity() {
    auto result = HTMLInputElement_checkValidity(this._parent);
    return result;
  }
  auto reportValidity() {
    auto result = HTMLInputElement_reportValidity(this._parent);
    return result;
  }
  auto setCustomValidity(string error) {
    HTMLInputElement_setCustomValidity(this._parent, error);
  }
  auto labels() {
    auto result = HTMLInputElement_labels_Get(this._parent);
    return result;
  }
  auto select() {
    HTMLInputElement_select(this._parent);
  }
  auto selectionStart(Optional!(uint) selectionStart) {
    HTMLInputElement_selectionStart_Set(this._parent, !selectionStart.empty, selectionStart.front);
  }
  auto selectionStart() {
    auto result = HTMLInputElement_selectionStart_Get(this._parent);
    return result;
  }
  auto selectionEnd(Optional!(uint) selectionEnd) {
    HTMLInputElement_selectionEnd_Set(this._parent, !selectionEnd.empty, selectionEnd.front);
  }
  auto selectionEnd() {
    auto result = HTMLInputElement_selectionEnd_Get(this._parent);
    return result;
  }
  auto selectionDirection(Optional!(string) selectionDirection) {
    HTMLInputElement_selectionDirection_Set(this._parent, !selectionDirection.empty, selectionDirection.front);
  }
  auto selectionDirection() {
    auto result = HTMLInputElement_selectionDirection_Get(this._parent);
    return result;
  }
  auto setRangeText(string replacement) {
    HTMLInputElement_setRangeText__string(this._parent, replacement);
  }
  auto setRangeText(string replacement, uint start, uint end, SelectionMode selectionMode /* = "preserve" */) {
    HTMLInputElement_setRangeText__string_uint_uint_SelectionMode(this._parent, replacement, start, end, selectionMode);
  }
  auto setSelectionRange(uint start, uint end, string direction) {
    HTMLInputElement_setSelectionRange(this._parent, start, end, direction);
  }
  auto align_(string align_) {
    HTMLInputElement_align_Set(this._parent, align_);
  }
  auto align_() {
    auto result = HTMLInputElement_align_Get(this._parent);
    return result;
  }
  auto useMap(string useMap) {
    HTMLInputElement_useMap_Set(this._parent, useMap);
  }
  auto useMap() {
    auto result = HTMLInputElement_useMap_Get(this._parent);
    return result;
  }
}
struct HTMLLIElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto value(int value) {
    HTMLLIElement_value_Set(this._parent, value);
  }
  auto value() {
    auto result = HTMLLIElement_value_Get(this._parent);
    return result;
  }
  auto type(string type) {
    HTMLLIElement_type_Set(this._parent, type);
  }
  auto type() {
    auto result = HTMLLIElement_type_Get(this._parent);
    return result;
  }
}
struct HTMLLabelElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto form() {
    auto result = HTMLLabelElement_form_Get(this._parent);
    return result;
  }
  auto htmlFor(string htmlFor) {
    HTMLLabelElement_htmlFor_Set(this._parent, htmlFor);
  }
  auto htmlFor() {
    auto result = HTMLLabelElement_htmlFor_Get(this._parent);
    return result;
  }
  auto control() {
    auto result = HTMLLabelElement_control_Get(this._parent);
    return result;
  }
}
struct HTMLLegendElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto form() {
    auto result = HTMLLegendElement_form_Get(this._parent);
    return result;
  }
  auto align_(string align_) {
    HTMLLegendElement_align_Set(this._parent, align_);
  }
  auto align_() {
    auto result = HTMLLegendElement_align_Get(this._parent);
    return result;
  }
}
struct HTMLLinkElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto href(string href) {
    HTMLLinkElement_href_Set(this._parent, href);
  }
  auto href() {
    auto result = HTMLLinkElement_href_Get(this._parent);
    return result;
  }
  auto crossOrigin(Optional!(string) crossOrigin) {
    HTMLLinkElement_crossOrigin_Set(this._parent, !crossOrigin.empty, crossOrigin.front);
  }
  auto crossOrigin() {
    auto result = HTMLLinkElement_crossOrigin_Get(this._parent);
    return result;
  }
  auto rel(string rel) {
    HTMLLinkElement_rel_Set(this._parent, rel);
  }
  auto rel() {
    auto result = HTMLLinkElement_rel_Get(this._parent);
    return result;
  }
  auto as(string as) {
    HTMLLinkElement_as_Set(this._parent, as);
  }
  auto as() {
    auto result = HTMLLinkElement_as_Get(this._parent);
    return result;
  }
  auto relList() {
    auto result = DOMTokenList(JsHandle(HTMLLinkElement_relList_Get(this._parent)));
    return result;
  }
  auto media(string media) {
    HTMLLinkElement_media_Set(this._parent, media);
  }
  auto media() {
    auto result = HTMLLinkElement_media_Get(this._parent);
    return result;
  }
  auto integrity(string integrity) {
    HTMLLinkElement_integrity_Set(this._parent, integrity);
  }
  auto integrity() {
    auto result = HTMLLinkElement_integrity_Get(this._parent);
    return result;
  }
  auto hreflang(string hreflang) {
    HTMLLinkElement_hreflang_Set(this._parent, hreflang);
  }
  auto hreflang() {
    auto result = HTMLLinkElement_hreflang_Get(this._parent);
    return result;
  }
  auto type(string type) {
    HTMLLinkElement_type_Set(this._parent, type);
  }
  auto type() {
    auto result = HTMLLinkElement_type_Get(this._parent);
    return result;
  }
  auto sizes() {
    auto result = DOMTokenList(JsHandle(HTMLLinkElement_sizes_Get(this._parent)));
    return result;
  }
  auto referrerPolicy(string referrerPolicy) {
    HTMLLinkElement_referrerPolicy_Set(this._parent, referrerPolicy);
  }
  auto referrerPolicy() {
    auto result = HTMLLinkElement_referrerPolicy_Get(this._parent);
    return result;
  }
  auto charset(string charset) {
    HTMLLinkElement_charset_Set(this._parent, charset);
  }
  auto charset() {
    auto result = HTMLLinkElement_charset_Get(this._parent);
    return result;
  }
  auto rev(string rev) {
    HTMLLinkElement_rev_Set(this._parent, rev);
  }
  auto rev() {
    auto result = HTMLLinkElement_rev_Get(this._parent);
    return result;
  }
  auto target(string target) {
    HTMLLinkElement_target_Set(this._parent, target);
  }
  auto target() {
    auto result = HTMLLinkElement_target_Get(this._parent);
    return result;
  }
  auto sheet() {
    auto result = LinkStyle_sheet_Get(this._parent);
    return result;
  }
}
struct HTMLMapElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto name(string name) {
    HTMLMapElement_name_Set(this._parent, name);
  }
  auto name() {
    auto result = HTMLMapElement_name_Get(this._parent);
    return result;
  }
  auto areas() {
    auto result = HTMLCollection(JsHandle(HTMLMapElement_areas_Get(this._parent)));
    return result;
  }
}
struct HTMLMarqueeElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto behavior(string behavior) {
    HTMLMarqueeElement_behavior_Set(this._parent, behavior);
  }
  auto behavior() {
    auto result = HTMLMarqueeElement_behavior_Get(this._parent);
    return result;
  }
  auto bgColor(string bgColor) {
    HTMLMarqueeElement_bgColor_Set(this._parent, bgColor);
  }
  auto bgColor() {
    auto result = HTMLMarqueeElement_bgColor_Get(this._parent);
    return result;
  }
  auto direction(string direction) {
    HTMLMarqueeElement_direction_Set(this._parent, direction);
  }
  auto direction() {
    auto result = HTMLMarqueeElement_direction_Get(this._parent);
    return result;
  }
  auto height(string height) {
    HTMLMarqueeElement_height_Set(this._parent, height);
  }
  auto height() {
    auto result = HTMLMarqueeElement_height_Get(this._parent);
    return result;
  }
  auto hspace(uint hspace) {
    HTMLMarqueeElement_hspace_Set(this._parent, hspace);
  }
  auto hspace() {
    auto result = HTMLMarqueeElement_hspace_Get(this._parent);
    return result;
  }
  auto loop(int loop) {
    HTMLMarqueeElement_loop_Set(this._parent, loop);
  }
  auto loop() {
    auto result = HTMLMarqueeElement_loop_Get(this._parent);
    return result;
  }
  auto scrollAmount(uint scrollAmount) {
    HTMLMarqueeElement_scrollAmount_Set(this._parent, scrollAmount);
  }
  auto scrollAmount() {
    auto result = HTMLMarqueeElement_scrollAmount_Get(this._parent);
    return result;
  }
  auto scrollDelay(uint scrollDelay) {
    HTMLMarqueeElement_scrollDelay_Set(this._parent, scrollDelay);
  }
  auto scrollDelay() {
    auto result = HTMLMarqueeElement_scrollDelay_Get(this._parent);
    return result;
  }
  auto trueSpeed(bool trueSpeed) {
    HTMLMarqueeElement_trueSpeed_Set(this._parent, trueSpeed);
  }
  auto trueSpeed() {
    auto result = HTMLMarqueeElement_trueSpeed_Get(this._parent);
    return result;
  }
  auto vspace(uint vspace) {
    HTMLMarqueeElement_vspace_Set(this._parent, vspace);
  }
  auto vspace() {
    auto result = HTMLMarqueeElement_vspace_Get(this._parent);
    return result;
  }
  auto width(string width) {
    HTMLMarqueeElement_width_Set(this._parent, width);
  }
  auto width() {
    auto result = HTMLMarqueeElement_width_Get(this._parent);
    return result;
  }
  auto onbounce(EventHandler onbounce) {
    HTMLMarqueeElement_onbounce_Set(this._parent, onbounce);
  }
  auto onbounce() {
    auto result = HTMLMarqueeElement_onbounce_Get(this._parent);
    return result;
  }
  auto onfinish(EventHandler onfinish) {
    HTMLMarqueeElement_onfinish_Set(this._parent, onfinish);
  }
  auto onfinish() {
    auto result = HTMLMarqueeElement_onfinish_Get(this._parent);
    return result;
  }
  auto onstart(EventHandler onstart) {
    HTMLMarqueeElement_onstart_Set(this._parent, onstart);
  }
  auto onstart() {
    auto result = HTMLMarqueeElement_onstart_Get(this._parent);
    return result;
  }
  auto start() {
    HTMLMarqueeElement_start(this._parent);
  }
  auto stop() {
    HTMLMarqueeElement_stop(this._parent);
  }
}
struct HTMLMediaElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto error() {
    auto result = HTMLMediaElement_error_Get(this._parent);
    return result;
  }
  auto src(string src) {
    HTMLMediaElement_src_Set(this._parent, src);
  }
  auto src() {
    auto result = HTMLMediaElement_src_Get(this._parent);
    return result;
  }
  auto srcObject(Optional!(MediaProvider) srcObject) {
    HTMLMediaElement_srcObject_Set(this._parent, !srcObject.empty, srcObject.front);
  }
  auto srcObject() {
    auto result = HTMLMediaElement_srcObject_Get(this._parent);
    return result;
  }
  auto currentSrc() {
    auto result = HTMLMediaElement_currentSrc_Get(this._parent);
    return result;
  }
  auto crossOrigin(Optional!(string) crossOrigin) {
    HTMLMediaElement_crossOrigin_Set(this._parent, !crossOrigin.empty, crossOrigin.front);
  }
  auto crossOrigin() {
    auto result = HTMLMediaElement_crossOrigin_Get(this._parent);
    return result;
  }
  enum ushort NETWORK_EMPTY = 0;
  enum ushort NETWORK_IDLE = 1;
  enum ushort NETWORK_LOADING = 2;
  enum ushort NETWORK_NO_SOURCE = 3;
  auto networkState() {
    auto result = HTMLMediaElement_networkState_Get(this._parent);
    return result;
  }
  auto preload(string preload) {
    HTMLMediaElement_preload_Set(this._parent, preload);
  }
  auto preload() {
    auto result = HTMLMediaElement_preload_Get(this._parent);
    return result;
  }
  auto buffered() {
    auto result = TimeRanges(JsHandle(HTMLMediaElement_buffered_Get(this._parent)));
    return result;
  }
  auto load() {
    HTMLMediaElement_load(this._parent);
  }
  auto canPlayType(string type) {
    auto result = HTMLMediaElement_canPlayType(this._parent, type);
    return result;
  }
  enum ushort HAVE_NOTHING = 0;
  enum ushort HAVE_METADATA = 1;
  enum ushort HAVE_CURRENT_DATA = 2;
  enum ushort HAVE_FUTURE_DATA = 3;
  enum ushort HAVE_ENOUGH_DATA = 4;
  auto readyState() {
    auto result = HTMLMediaElement_readyState_Get(this._parent);
    return result;
  }
  auto seeking() {
    auto result = HTMLMediaElement_seeking_Get(this._parent);
    return result;
  }
  auto currentTime(double currentTime) {
    HTMLMediaElement_currentTime_Set(this._parent, currentTime);
  }
  auto currentTime() {
    auto result = HTMLMediaElement_currentTime_Get(this._parent);
    return result;
  }
  auto fastSeek(double time) {
    HTMLMediaElement_fastSeek(this._parent, time);
  }
  auto duration() {
    auto result = HTMLMediaElement_duration_Get(this._parent);
    return result;
  }
  auto getStartDate() {
    auto result = JsObject(JsHandle(HTMLMediaElement_getStartDate(this._parent)));
    return result;
  }
  auto paused() {
    auto result = HTMLMediaElement_paused_Get(this._parent);
    return result;
  }
  auto defaultPlaybackRate(double defaultPlaybackRate) {
    HTMLMediaElement_defaultPlaybackRate_Set(this._parent, defaultPlaybackRate);
  }
  auto defaultPlaybackRate() {
    auto result = HTMLMediaElement_defaultPlaybackRate_Get(this._parent);
    return result;
  }
  auto playbackRate(double playbackRate) {
    HTMLMediaElement_playbackRate_Set(this._parent, playbackRate);
  }
  auto playbackRate() {
    auto result = HTMLMediaElement_playbackRate_Get(this._parent);
    return result;
  }
  auto played() {
    auto result = TimeRanges(JsHandle(HTMLMediaElement_played_Get(this._parent)));
    return result;
  }
  auto seekable() {
    auto result = TimeRanges(JsHandle(HTMLMediaElement_seekable_Get(this._parent)));
    return result;
  }
  auto ended() {
    auto result = HTMLMediaElement_ended_Get(this._parent);
    return result;
  }
  auto autoplay(bool autoplay) {
    HTMLMediaElement_autoplay_Set(this._parent, autoplay);
  }
  auto autoplay() {
    auto result = HTMLMediaElement_autoplay_Get(this._parent);
    return result;
  }
  auto loop(bool loop) {
    HTMLMediaElement_loop_Set(this._parent, loop);
  }
  auto loop() {
    auto result = HTMLMediaElement_loop_Get(this._parent);
    return result;
  }
  auto play() {
    auto result = Promise!(void)(JsHandle(HTMLMediaElement_play(this._parent)));
    return result;
  }
  auto pause() {
    HTMLMediaElement_pause(this._parent);
  }
  auto controls(bool controls) {
    HTMLMediaElement_controls_Set(this._parent, controls);
  }
  auto controls() {
    auto result = HTMLMediaElement_controls_Get(this._parent);
    return result;
  }
  auto volume(double volume) {
    HTMLMediaElement_volume_Set(this._parent, volume);
  }
  auto volume() {
    auto result = HTMLMediaElement_volume_Get(this._parent);
    return result;
  }
  auto muted(bool muted) {
    HTMLMediaElement_muted_Set(this._parent, muted);
  }
  auto muted() {
    auto result = HTMLMediaElement_muted_Get(this._parent);
    return result;
  }
  auto defaultMuted(bool defaultMuted) {
    HTMLMediaElement_defaultMuted_Set(this._parent, defaultMuted);
  }
  auto defaultMuted() {
    auto result = HTMLMediaElement_defaultMuted_Get(this._parent);
    return result;
  }
  auto audioTracks() {
    auto result = AudioTrackList(JsHandle(HTMLMediaElement_audioTracks_Get(this._parent)));
    return result;
  }
  auto videoTracks() {
    auto result = VideoTrackList(JsHandle(HTMLMediaElement_videoTracks_Get(this._parent)));
    return result;
  }
  auto textTracks() {
    auto result = TextTrackList(JsHandle(HTMLMediaElement_textTracks_Get(this._parent)));
    return result;
  }
  auto addTextTrack(TextTrackKind kind, string label /* = "" */, string language /* = "" */) {
    auto result = TextTrack(JsHandle(HTMLMediaElement_addTextTrack(this._parent, kind, label, language)));
    return result;
  }
}
struct HTMLMenuElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto compact(bool compact) {
    HTMLMenuElement_compact_Set(this._parent, compact);
  }
  auto compact() {
    auto result = HTMLMenuElement_compact_Get(this._parent);
    return result;
  }
}
struct HTMLMetaElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto name(string name) {
    HTMLMetaElement_name_Set(this._parent, name);
  }
  auto name() {
    auto result = HTMLMetaElement_name_Get(this._parent);
    return result;
  }
  auto httpEquiv(string httpEquiv) {
    HTMLMetaElement_httpEquiv_Set(this._parent, httpEquiv);
  }
  auto httpEquiv() {
    auto result = HTMLMetaElement_httpEquiv_Get(this._parent);
    return result;
  }
  auto content(string content) {
    HTMLMetaElement_content_Set(this._parent, content);
  }
  auto content() {
    auto result = HTMLMetaElement_content_Get(this._parent);
    return result;
  }
  auto scheme(string scheme) {
    HTMLMetaElement_scheme_Set(this._parent, scheme);
  }
  auto scheme() {
    auto result = HTMLMetaElement_scheme_Get(this._parent);
    return result;
  }
}
struct HTMLMeterElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto value(double value) {
    HTMLMeterElement_value_Set(this._parent, value);
  }
  auto value() {
    auto result = HTMLMeterElement_value_Get(this._parent);
    return result;
  }
  auto min(double min) {
    HTMLMeterElement_min_Set(this._parent, min);
  }
  auto min() {
    auto result = HTMLMeterElement_min_Get(this._parent);
    return result;
  }
  auto max(double max) {
    HTMLMeterElement_max_Set(this._parent, max);
  }
  auto max() {
    auto result = HTMLMeterElement_max_Get(this._parent);
    return result;
  }
  auto low(double low) {
    HTMLMeterElement_low_Set(this._parent, low);
  }
  auto low() {
    auto result = HTMLMeterElement_low_Get(this._parent);
    return result;
  }
  auto high(double high) {
    HTMLMeterElement_high_Set(this._parent, high);
  }
  auto high() {
    auto result = HTMLMeterElement_high_Get(this._parent);
    return result;
  }
  auto optimum(double optimum) {
    HTMLMeterElement_optimum_Set(this._parent, optimum);
  }
  auto optimum() {
    auto result = HTMLMeterElement_optimum_Get(this._parent);
    return result;
  }
  auto labels() {
    auto result = NodeList(JsHandle(HTMLMeterElement_labels_Get(this._parent)));
    return result;
  }
}
struct HTMLModElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto cite(string cite) {
    HTMLModElement_cite_Set(this._parent, cite);
  }
  auto cite() {
    auto result = HTMLModElement_cite_Get(this._parent);
    return result;
  }
  auto dateTime(string dateTime) {
    HTMLModElement_dateTime_Set(this._parent, dateTime);
  }
  auto dateTime() {
    auto result = HTMLModElement_dateTime_Get(this._parent);
    return result;
  }
}
struct HTMLOListElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto reversed(bool reversed) {
    HTMLOListElement_reversed_Set(this._parent, reversed);
  }
  auto reversed() {
    auto result = HTMLOListElement_reversed_Get(this._parent);
    return result;
  }
  auto start(int start) {
    HTMLOListElement_start_Set(this._parent, start);
  }
  auto start() {
    auto result = HTMLOListElement_start_Get(this._parent);
    return result;
  }
  auto type(string type) {
    HTMLOListElement_type_Set(this._parent, type);
  }
  auto type() {
    auto result = HTMLOListElement_type_Get(this._parent);
    return result;
  }
  auto compact(bool compact) {
    HTMLOListElement_compact_Set(this._parent, compact);
  }
  auto compact() {
    auto result = HTMLOListElement_compact_Get(this._parent);
    return result;
  }
}
struct HTMLObjectElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto data(string data) {
    HTMLObjectElement_data_Set(this._parent, data);
  }
  auto data() {
    auto result = HTMLObjectElement_data_Get(this._parent);
    return result;
  }
  auto type(string type) {
    HTMLObjectElement_type_Set(this._parent, type);
  }
  auto type() {
    auto result = HTMLObjectElement_type_Get(this._parent);
    return result;
  }
  auto typeMustMatch(bool typeMustMatch) {
    HTMLObjectElement_typeMustMatch_Set(this._parent, typeMustMatch);
  }
  auto typeMustMatch() {
    auto result = HTMLObjectElement_typeMustMatch_Get(this._parent);
    return result;
  }
  auto name(string name) {
    HTMLObjectElement_name_Set(this._parent, name);
  }
  auto name() {
    auto result = HTMLObjectElement_name_Get(this._parent);
    return result;
  }
  auto useMap(string useMap) {
    HTMLObjectElement_useMap_Set(this._parent, useMap);
  }
  auto useMap() {
    auto result = HTMLObjectElement_useMap_Get(this._parent);
    return result;
  }
  auto form() {
    auto result = HTMLObjectElement_form_Get(this._parent);
    return result;
  }
  auto width(string width) {
    HTMLObjectElement_width_Set(this._parent, width);
  }
  auto width() {
    auto result = HTMLObjectElement_width_Get(this._parent);
    return result;
  }
  auto height(string height) {
    HTMLObjectElement_height_Set(this._parent, height);
  }
  auto height() {
    auto result = HTMLObjectElement_height_Get(this._parent);
    return result;
  }
  auto contentDocument() {
    auto result = HTMLObjectElement_contentDocument_Get(this._parent);
    return result;
  }
  auto contentWindow() {
    auto result = HTMLObjectElement_contentWindow_Get(this._parent);
    return result;
  }
  auto getSVGDocument() {
    auto result = HTMLObjectElement_getSVGDocument(this._parent);
    return result;
  }
  auto willValidate() {
    auto result = HTMLObjectElement_willValidate_Get(this._parent);
    return result;
  }
  auto validity() {
    auto result = ValidityState(JsHandle(HTMLObjectElement_validity_Get(this._parent)));
    return result;
  }
  auto validationMessage() {
    auto result = HTMLObjectElement_validationMessage_Get(this._parent);
    return result;
  }
  auto checkValidity() {
    auto result = HTMLObjectElement_checkValidity(this._parent);
    return result;
  }
  auto reportValidity() {
    auto result = HTMLObjectElement_reportValidity(this._parent);
    return result;
  }
  auto setCustomValidity(string error) {
    HTMLObjectElement_setCustomValidity(this._parent, error);
  }
  auto align_(string align_) {
    HTMLObjectElement_align_Set(this._parent, align_);
  }
  auto align_() {
    auto result = HTMLObjectElement_align_Get(this._parent);
    return result;
  }
  auto archive(string archive) {
    HTMLObjectElement_archive_Set(this._parent, archive);
  }
  auto archive() {
    auto result = HTMLObjectElement_archive_Get(this._parent);
    return result;
  }
  auto code(string code) {
    HTMLObjectElement_code_Set(this._parent, code);
  }
  auto code() {
    auto result = HTMLObjectElement_code_Get(this._parent);
    return result;
  }
  auto declare(bool declare) {
    HTMLObjectElement_declare_Set(this._parent, declare);
  }
  auto declare() {
    auto result = HTMLObjectElement_declare_Get(this._parent);
    return result;
  }
  auto hspace(uint hspace) {
    HTMLObjectElement_hspace_Set(this._parent, hspace);
  }
  auto hspace() {
    auto result = HTMLObjectElement_hspace_Get(this._parent);
    return result;
  }
  auto standby(string standby) {
    HTMLObjectElement_standby_Set(this._parent, standby);
  }
  auto standby() {
    auto result = HTMLObjectElement_standby_Get(this._parent);
    return result;
  }
  auto vspace(uint vspace) {
    HTMLObjectElement_vspace_Set(this._parent, vspace);
  }
  auto vspace() {
    auto result = HTMLObjectElement_vspace_Get(this._parent);
    return result;
  }
  auto codeBase(string codeBase) {
    HTMLObjectElement_codeBase_Set(this._parent, codeBase);
  }
  auto codeBase() {
    auto result = HTMLObjectElement_codeBase_Get(this._parent);
    return result;
  }
  auto codeType(string codeType) {
    HTMLObjectElement_codeType_Set(this._parent, codeType);
  }
  auto codeType() {
    auto result = HTMLObjectElement_codeType_Get(this._parent);
    return result;
  }
  auto border(string border) {
    HTMLObjectElement_border_Set(this._parent, border);
  }
  auto border() {
    auto result = HTMLObjectElement_border_Get(this._parent);
    return result;
  }
}
struct HTMLOptGroupElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto disabled(bool disabled) {
    HTMLOptGroupElement_disabled_Set(this._parent, disabled);
  }
  auto disabled() {
    auto result = HTMLOptGroupElement_disabled_Get(this._parent);
    return result;
  }
  auto label(string label) {
    HTMLOptGroupElement_label_Set(this._parent, label);
  }
  auto label() {
    auto result = HTMLOptGroupElement_label_Get(this._parent);
    return result;
  }
}
struct HTMLOptionElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto disabled(bool disabled) {
    HTMLOptionElement_disabled_Set(this._parent, disabled);
  }
  auto disabled() {
    auto result = HTMLOptionElement_disabled_Get(this._parent);
    return result;
  }
  auto form() {
    auto result = HTMLOptionElement_form_Get(this._parent);
    return result;
  }
  auto label(string label) {
    HTMLOptionElement_label_Set(this._parent, label);
  }
  auto label() {
    auto result = HTMLOptionElement_label_Get(this._parent);
    return result;
  }
  auto defaultSelected(bool defaultSelected) {
    HTMLOptionElement_defaultSelected_Set(this._parent, defaultSelected);
  }
  auto defaultSelected() {
    auto result = HTMLOptionElement_defaultSelected_Get(this._parent);
    return result;
  }
  auto selected(bool selected) {
    HTMLOptionElement_selected_Set(this._parent, selected);
  }
  auto selected() {
    auto result = HTMLOptionElement_selected_Get(this._parent);
    return result;
  }
  auto value(string value) {
    HTMLOptionElement_value_Set(this._parent, value);
  }
  auto value() {
    auto result = HTMLOptionElement_value_Get(this._parent);
    return result;
  }
  auto text(string text) {
    HTMLOptionElement_text_Set(this._parent, text);
  }
  auto text() {
    auto result = HTMLOptionElement_text_Get(this._parent);
    return result;
  }
  auto index() {
    auto result = HTMLOptionElement_index_Get(this._parent);
    return result;
  }
}
struct HTMLOptionsCollection {
  HTMLCollection _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLCollection(h);
  }
  auto length(uint length) {
    HTMLOptionsCollection_length_Set(this._parent, length);
  }
  auto length() {
    auto result = HTMLOptionsCollection_length_Get(this._parent);
    return result;
  }
  auto opIndexAssign(Optional!(HTMLOptionElement) option, uint index) {
    HTMLOptionsCollection_setter__uint_optional_Handle(this._parent, index, !option.empty, option.front.handle);
  }
  auto opDispatch(uint index)(Optional!(HTMLOptionElement) option) {
    HTMLOptionsCollection_setter__uint_optional_Handle(this._parent, index, !option.empty, option.front.handle);
  }
  auto add(SumType!(HTMLOptionElement, HTMLOptGroupElement) element, Optional!(SumType!(HTMLElement, int)) before /* = no!(SumType!(HTMLElement, int)) */) {
    HTMLOptionsCollection_add(this._parent, element, !before.empty, before.front);
  }
  auto remove(int index) {
    HTMLOptionsCollection_remove(this._parent, index);
  }
  auto selectedIndex(int selectedIndex) {
    HTMLOptionsCollection_selectedIndex_Set(this._parent, selectedIndex);
  }
  auto selectedIndex() {
    auto result = HTMLOptionsCollection_selectedIndex_Get(this._parent);
    return result;
  }
}
alias HTMLOrSVGImageElement = SumType!(HTMLImageElement, SVGImageElement);
alias HTMLOrSVGScriptElement = SumType!(HTMLScriptElement, SVGScriptElement);
struct HTMLOutputElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto htmlFor() {
    auto result = DOMTokenList(JsHandle(HTMLOutputElement_htmlFor_Get(this._parent)));
    return result;
  }
  auto form() {
    auto result = HTMLOutputElement_form_Get(this._parent);
    return result;
  }
  auto name(string name) {
    HTMLOutputElement_name_Set(this._parent, name);
  }
  auto name() {
    auto result = HTMLOutputElement_name_Get(this._parent);
    return result;
  }
  auto type() {
    auto result = HTMLOutputElement_type_Get(this._parent);
    return result;
  }
  auto defaultValue(string defaultValue) {
    HTMLOutputElement_defaultValue_Set(this._parent, defaultValue);
  }
  auto defaultValue() {
    auto result = HTMLOutputElement_defaultValue_Get(this._parent);
    return result;
  }
  auto value(string value) {
    HTMLOutputElement_value_Set(this._parent, value);
  }
  auto value() {
    auto result = HTMLOutputElement_value_Get(this._parent);
    return result;
  }
  auto willValidate() {
    auto result = HTMLOutputElement_willValidate_Get(this._parent);
    return result;
  }
  auto validity() {
    auto result = ValidityState(JsHandle(HTMLOutputElement_validity_Get(this._parent)));
    return result;
  }
  auto validationMessage() {
    auto result = HTMLOutputElement_validationMessage_Get(this._parent);
    return result;
  }
  auto checkValidity() {
    auto result = HTMLOutputElement_checkValidity(this._parent);
    return result;
  }
  auto reportValidity() {
    auto result = HTMLOutputElement_reportValidity(this._parent);
    return result;
  }
  auto setCustomValidity(string error) {
    HTMLOutputElement_setCustomValidity(this._parent, error);
  }
  auto labels() {
    auto result = NodeList(JsHandle(HTMLOutputElement_labels_Get(this._parent)));
    return result;
  }
}
struct HTMLParagraphElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto align_(string align_) {
    HTMLParagraphElement_align_Set(this._parent, align_);
  }
  auto align_() {
    auto result = HTMLParagraphElement_align_Get(this._parent);
    return result;
  }
}
struct HTMLParamElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto name(string name) {
    HTMLParamElement_name_Set(this._parent, name);
  }
  auto name() {
    auto result = HTMLParamElement_name_Get(this._parent);
    return result;
  }
  auto value(string value) {
    HTMLParamElement_value_Set(this._parent, value);
  }
  auto value() {
    auto result = HTMLParamElement_value_Get(this._parent);
    return result;
  }
  auto type(string type) {
    HTMLParamElement_type_Set(this._parent, type);
  }
  auto type() {
    auto result = HTMLParamElement_type_Get(this._parent);
    return result;
  }
  auto valueType(string valueType) {
    HTMLParamElement_valueType_Set(this._parent, valueType);
  }
  auto valueType() {
    auto result = HTMLParamElement_valueType_Get(this._parent);
    return result;
  }
}
struct HTMLPictureElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
}
struct HTMLPreElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto width(int width) {
    HTMLPreElement_width_Set(this._parent, width);
  }
  auto width() {
    auto result = HTMLPreElement_width_Get(this._parent);
    return result;
  }
}
struct HTMLProgressElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto value(double value) {
    HTMLProgressElement_value_Set(this._parent, value);
  }
  auto value() {
    auto result = HTMLProgressElement_value_Get(this._parent);
    return result;
  }
  auto max(double max) {
    HTMLProgressElement_max_Set(this._parent, max);
  }
  auto max() {
    auto result = HTMLProgressElement_max_Get(this._parent);
    return result;
  }
  auto position() {
    auto result = HTMLProgressElement_position_Get(this._parent);
    return result;
  }
  auto labels() {
    auto result = NodeList(JsHandle(HTMLProgressElement_labels_Get(this._parent)));
    return result;
  }
}
struct HTMLQuoteElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto cite(string cite) {
    HTMLQuoteElement_cite_Set(this._parent, cite);
  }
  auto cite() {
    auto result = HTMLQuoteElement_cite_Get(this._parent);
    return result;
  }
}
struct HTMLScriptElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto src(string src) {
    HTMLScriptElement_src_Set(this._parent, src);
  }
  auto src() {
    auto result = HTMLScriptElement_src_Get(this._parent);
    return result;
  }
  auto type(string type) {
    HTMLScriptElement_type_Set(this._parent, type);
  }
  auto type() {
    auto result = HTMLScriptElement_type_Get(this._parent);
    return result;
  }
  auto noModule(bool noModule) {
    HTMLScriptElement_noModule_Set(this._parent, noModule);
  }
  auto noModule() {
    auto result = HTMLScriptElement_noModule_Get(this._parent);
    return result;
  }
  auto async(bool async) {
    HTMLScriptElement_async_Set(this._parent, async);
  }
  auto async() {
    auto result = HTMLScriptElement_async_Get(this._parent);
    return result;
  }
  auto defer(bool defer) {
    HTMLScriptElement_defer_Set(this._parent, defer);
  }
  auto defer() {
    auto result = HTMLScriptElement_defer_Get(this._parent);
    return result;
  }
  auto crossOrigin(Optional!(string) crossOrigin) {
    HTMLScriptElement_crossOrigin_Set(this._parent, !crossOrigin.empty, crossOrigin.front);
  }
  auto crossOrigin() {
    auto result = HTMLScriptElement_crossOrigin_Get(this._parent);
    return result;
  }
  auto text(string text) {
    HTMLScriptElement_text_Set(this._parent, text);
  }
  auto text() {
    auto result = HTMLScriptElement_text_Get(this._parent);
    return result;
  }
  auto integrity(string integrity) {
    HTMLScriptElement_integrity_Set(this._parent, integrity);
  }
  auto integrity() {
    auto result = HTMLScriptElement_integrity_Get(this._parent);
    return result;
  }
  auto referrerPolicy(string referrerPolicy) {
    HTMLScriptElement_referrerPolicy_Set(this._parent, referrerPolicy);
  }
  auto referrerPolicy() {
    auto result = HTMLScriptElement_referrerPolicy_Get(this._parent);
    return result;
  }
  auto charset(string charset) {
    HTMLScriptElement_charset_Set(this._parent, charset);
  }
  auto charset() {
    auto result = HTMLScriptElement_charset_Get(this._parent);
    return result;
  }
  auto event(string event) {
    HTMLScriptElement_event_Set(this._parent, event);
  }
  auto event() {
    auto result = HTMLScriptElement_event_Get(this._parent);
    return result;
  }
  auto htmlFor(string htmlFor) {
    HTMLScriptElement_htmlFor_Set(this._parent, htmlFor);
  }
  auto htmlFor() {
    auto result = HTMLScriptElement_htmlFor_Get(this._parent);
    return result;
  }
}
struct HTMLSelectElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto autocomplete(string autocomplete) {
    HTMLSelectElement_autocomplete_Set(this._parent, autocomplete);
  }
  auto autocomplete() {
    auto result = HTMLSelectElement_autocomplete_Get(this._parent);
    return result;
  }
  auto autofocus(bool autofocus) {
    HTMLSelectElement_autofocus_Set(this._parent, autofocus);
  }
  auto autofocus() {
    auto result = HTMLSelectElement_autofocus_Get(this._parent);
    return result;
  }
  auto disabled(bool disabled) {
    HTMLSelectElement_disabled_Set(this._parent, disabled);
  }
  auto disabled() {
    auto result = HTMLSelectElement_disabled_Get(this._parent);
    return result;
  }
  auto form() {
    auto result = HTMLSelectElement_form_Get(this._parent);
    return result;
  }
  auto multiple(bool multiple) {
    HTMLSelectElement_multiple_Set(this._parent, multiple);
  }
  auto multiple() {
    auto result = HTMLSelectElement_multiple_Get(this._parent);
    return result;
  }
  auto name(string name) {
    HTMLSelectElement_name_Set(this._parent, name);
  }
  auto name() {
    auto result = HTMLSelectElement_name_Get(this._parent);
    return result;
  }
  auto required(bool required) {
    HTMLSelectElement_required_Set(this._parent, required);
  }
  auto required() {
    auto result = HTMLSelectElement_required_Get(this._parent);
    return result;
  }
  auto size(uint size) {
    HTMLSelectElement_size_Set(this._parent, size);
  }
  auto size() {
    auto result = HTMLSelectElement_size_Get(this._parent);
    return result;
  }
  auto type() {
    auto result = HTMLSelectElement_type_Get(this._parent);
    return result;
  }
  auto options() {
    auto result = HTMLOptionsCollection(JsHandle(HTMLSelectElement_options_Get(this._parent)));
    return result;
  }
  auto length(uint length) {
    HTMLSelectElement_length_Set(this._parent, length);
  }
  auto length() {
    auto result = HTMLSelectElement_length_Get(this._parent);
    return result;
  }
  auto item(uint index) {
    auto result = HTMLSelectElement_item_getter(this._parent, index);
    return result;
  }
  auto namedItem(string name) {
    auto result = HTMLSelectElement_namedItem(this._parent, name);
    return result;
  }
  auto add(SumType!(HTMLOptionElement, HTMLOptGroupElement) element, Optional!(SumType!(HTMLElement, int)) before /* = no!(SumType!(HTMLElement, int)) */) {
    HTMLSelectElement_add(this._parent, element, !before.empty, before.front);
  }
  auto remove() {
    HTMLSelectElement_remove__(this._parent);
  }
  auto remove(int index) {
    HTMLSelectElement_remove__int(this._parent, index);
  }
  auto opIndexAssign(Optional!(HTMLOptionElement) option, uint index) {
    HTMLSelectElement_setter__uint_optional_Handle(this._parent, index, !option.empty, option.front.handle);
  }
  auto opDispatch(uint index)(Optional!(HTMLOptionElement) option) {
    HTMLSelectElement_setter__uint_optional_Handle(this._parent, index, !option.empty, option.front.handle);
  }
  auto selectedOptions() {
    auto result = HTMLCollection(JsHandle(HTMLSelectElement_selectedOptions_Get(this._parent)));
    return result;
  }
  auto selectedIndex(int selectedIndex) {
    HTMLSelectElement_selectedIndex_Set(this._parent, selectedIndex);
  }
  auto selectedIndex() {
    auto result = HTMLSelectElement_selectedIndex_Get(this._parent);
    return result;
  }
  auto value(string value) {
    HTMLSelectElement_value_Set(this._parent, value);
  }
  auto value() {
    auto result = HTMLSelectElement_value_Get(this._parent);
    return result;
  }
  auto willValidate() {
    auto result = HTMLSelectElement_willValidate_Get(this._parent);
    return result;
  }
  auto validity() {
    auto result = ValidityState(JsHandle(HTMLSelectElement_validity_Get(this._parent)));
    return result;
  }
  auto validationMessage() {
    auto result = HTMLSelectElement_validationMessage_Get(this._parent);
    return result;
  }
  auto checkValidity() {
    auto result = HTMLSelectElement_checkValidity(this._parent);
    return result;
  }
  auto reportValidity() {
    auto result = HTMLSelectElement_reportValidity(this._parent);
    return result;
  }
  auto setCustomValidity(string error) {
    HTMLSelectElement_setCustomValidity(this._parent, error);
  }
  auto labels() {
    auto result = NodeList(JsHandle(HTMLSelectElement_labels_Get(this._parent)));
    return result;
  }
}
struct HTMLSlotElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto name(string name) {
    HTMLSlotElement_name_Set(this._parent, name);
  }
  auto name() {
    auto result = HTMLSlotElement_name_Get(this._parent);
    return result;
  }
  auto assignedNodes(AssignedNodesOptions options) {
    auto result = Sequence!(Node)(JsHandle(HTMLSlotElement_assignedNodes(this._parent, options.handle)));
    return result;
  }
  auto assignedElements(AssignedNodesOptions options) {
    auto result = Sequence!(Element)(JsHandle(HTMLSlotElement_assignedElements(this._parent, options.handle)));
    return result;
  }
}
struct HTMLSourceElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto src(string src) {
    HTMLSourceElement_src_Set(this._parent, src);
  }
  auto src() {
    auto result = HTMLSourceElement_src_Get(this._parent);
    return result;
  }
  auto type(string type) {
    HTMLSourceElement_type_Set(this._parent, type);
  }
  auto type() {
    auto result = HTMLSourceElement_type_Get(this._parent);
    return result;
  }
  auto srcset(string srcset) {
    HTMLSourceElement_srcset_Set(this._parent, srcset);
  }
  auto srcset() {
    auto result = HTMLSourceElement_srcset_Get(this._parent);
    return result;
  }
  auto sizes(string sizes) {
    HTMLSourceElement_sizes_Set(this._parent, sizes);
  }
  auto sizes() {
    auto result = HTMLSourceElement_sizes_Get(this._parent);
    return result;
  }
  auto media(string media) {
    HTMLSourceElement_media_Set(this._parent, media);
  }
  auto media() {
    auto result = HTMLSourceElement_media_Get(this._parent);
    return result;
  }
}
struct HTMLSpanElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
}
struct HTMLStyleElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto media(string media) {
    HTMLStyleElement_media_Set(this._parent, media);
  }
  auto media() {
    auto result = HTMLStyleElement_media_Get(this._parent);
    return result;
  }
  auto type(string type) {
    HTMLStyleElement_type_Set(this._parent, type);
  }
  auto type() {
    auto result = HTMLStyleElement_type_Get(this._parent);
    return result;
  }
  auto sheet() {
    auto result = LinkStyle_sheet_Get(this._parent);
    return result;
  }
}
struct HTMLTableCaptionElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto align_(string align_) {
    HTMLTableCaptionElement_align_Set(this._parent, align_);
  }
  auto align_() {
    auto result = HTMLTableCaptionElement_align_Get(this._parent);
    return result;
  }
}
struct HTMLTableCellElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto colSpan(uint colSpan) {
    HTMLTableCellElement_colSpan_Set(this._parent, colSpan);
  }
  auto colSpan() {
    auto result = HTMLTableCellElement_colSpan_Get(this._parent);
    return result;
  }
  auto rowSpan(uint rowSpan) {
    HTMLTableCellElement_rowSpan_Set(this._parent, rowSpan);
  }
  auto rowSpan() {
    auto result = HTMLTableCellElement_rowSpan_Get(this._parent);
    return result;
  }
  auto headers(string headers) {
    HTMLTableCellElement_headers_Set(this._parent, headers);
  }
  auto headers() {
    auto result = HTMLTableCellElement_headers_Get(this._parent);
    return result;
  }
  auto cellIndex() {
    auto result = HTMLTableCellElement_cellIndex_Get(this._parent);
    return result;
  }
  auto scope_(string scope_) {
    HTMLTableCellElement_scope_Set(this._parent, scope_);
  }
  auto scope_() {
    auto result = HTMLTableCellElement_scope_Get(this._parent);
    return result;
  }
  auto abbr(string abbr) {
    HTMLTableCellElement_abbr_Set(this._parent, abbr);
  }
  auto abbr() {
    auto result = HTMLTableCellElement_abbr_Get(this._parent);
    return result;
  }
  auto align_(string align_) {
    HTMLTableCellElement_align_Set(this._parent, align_);
  }
  auto align_() {
    auto result = HTMLTableCellElement_align_Get(this._parent);
    return result;
  }
  auto axis(string axis) {
    HTMLTableCellElement_axis_Set(this._parent, axis);
  }
  auto axis() {
    auto result = HTMLTableCellElement_axis_Get(this._parent);
    return result;
  }
  auto height(string height) {
    HTMLTableCellElement_height_Set(this._parent, height);
  }
  auto height() {
    auto result = HTMLTableCellElement_height_Get(this._parent);
    return result;
  }
  auto width(string width) {
    HTMLTableCellElement_width_Set(this._parent, width);
  }
  auto width() {
    auto result = HTMLTableCellElement_width_Get(this._parent);
    return result;
  }
  auto ch(string ch) {
    HTMLTableCellElement_ch_Set(this._parent, ch);
  }
  auto ch() {
    auto result = HTMLTableCellElement_ch_Get(this._parent);
    return result;
  }
  auto chOff(string chOff) {
    HTMLTableCellElement_chOff_Set(this._parent, chOff);
  }
  auto chOff() {
    auto result = HTMLTableCellElement_chOff_Get(this._parent);
    return result;
  }
  auto noWrap(bool noWrap) {
    HTMLTableCellElement_noWrap_Set(this._parent, noWrap);
  }
  auto noWrap() {
    auto result = HTMLTableCellElement_noWrap_Get(this._parent);
    return result;
  }
  auto vAlign(string vAlign) {
    HTMLTableCellElement_vAlign_Set(this._parent, vAlign);
  }
  auto vAlign() {
    auto result = HTMLTableCellElement_vAlign_Get(this._parent);
    return result;
  }
  auto bgColor(string bgColor) {
    HTMLTableCellElement_bgColor_Set(this._parent, bgColor);
  }
  auto bgColor() {
    auto result = HTMLTableCellElement_bgColor_Get(this._parent);
    return result;
  }
}
struct HTMLTableColElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto span(uint span) {
    HTMLTableColElement_span_Set(this._parent, span);
  }
  auto span() {
    auto result = HTMLTableColElement_span_Get(this._parent);
    return result;
  }
  auto align_(string align_) {
    HTMLTableColElement_align_Set(this._parent, align_);
  }
  auto align_() {
    auto result = HTMLTableColElement_align_Get(this._parent);
    return result;
  }
  auto ch(string ch) {
    HTMLTableColElement_ch_Set(this._parent, ch);
  }
  auto ch() {
    auto result = HTMLTableColElement_ch_Get(this._parent);
    return result;
  }
  auto chOff(string chOff) {
    HTMLTableColElement_chOff_Set(this._parent, chOff);
  }
  auto chOff() {
    auto result = HTMLTableColElement_chOff_Get(this._parent);
    return result;
  }
  auto vAlign(string vAlign) {
    HTMLTableColElement_vAlign_Set(this._parent, vAlign);
  }
  auto vAlign() {
    auto result = HTMLTableColElement_vAlign_Get(this._parent);
    return result;
  }
  auto width(string width) {
    HTMLTableColElement_width_Set(this._parent, width);
  }
  auto width() {
    auto result = HTMLTableColElement_width_Get(this._parent);
    return result;
  }
}
struct HTMLTableElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto caption(Optional!(HTMLTableCaptionElement) caption) {
    HTMLTableElement_caption_Set(this._parent, !caption.empty, caption.front.handle);
  }
  auto caption() {
    auto result = HTMLTableElement_caption_Get(this._parent);
    return result;
  }
  auto createCaption() {
    auto result = HTMLTableCaptionElement(JsHandle(HTMLTableElement_createCaption(this._parent)));
    return result;
  }
  auto deleteCaption() {
    HTMLTableElement_deleteCaption(this._parent);
  }
  auto tHead(Optional!(HTMLTableSectionElement) tHead) {
    HTMLTableElement_tHead_Set(this._parent, !tHead.empty, tHead.front.handle);
  }
  auto tHead() {
    auto result = HTMLTableElement_tHead_Get(this._parent);
    return result;
  }
  auto createTHead() {
    auto result = HTMLTableSectionElement(JsHandle(HTMLTableElement_createTHead(this._parent)));
    return result;
  }
  auto deleteTHead() {
    HTMLTableElement_deleteTHead(this._parent);
  }
  auto tFoot(Optional!(HTMLTableSectionElement) tFoot) {
    HTMLTableElement_tFoot_Set(this._parent, !tFoot.empty, tFoot.front.handle);
  }
  auto tFoot() {
    auto result = HTMLTableElement_tFoot_Get(this._parent);
    return result;
  }
  auto createTFoot() {
    auto result = HTMLTableSectionElement(JsHandle(HTMLTableElement_createTFoot(this._parent)));
    return result;
  }
  auto deleteTFoot() {
    HTMLTableElement_deleteTFoot(this._parent);
  }
  auto tBodies() {
    auto result = HTMLCollection(JsHandle(HTMLTableElement_tBodies_Get(this._parent)));
    return result;
  }
  auto createTBody() {
    auto result = HTMLTableSectionElement(JsHandle(HTMLTableElement_createTBody(this._parent)));
    return result;
  }
  auto rows() {
    auto result = HTMLCollection(JsHandle(HTMLTableElement_rows_Get(this._parent)));
    return result;
  }
  auto insertRow(int index /* = -1 */) {
    auto result = HTMLTableRowElement(JsHandle(HTMLTableElement_insertRow(this._parent, index)));
    return result;
  }
  auto deleteRow(int index) {
    HTMLTableElement_deleteRow(this._parent, index);
  }
  auto align_(string align_) {
    HTMLTableElement_align_Set(this._parent, align_);
  }
  auto align_() {
    auto result = HTMLTableElement_align_Get(this._parent);
    return result;
  }
  auto border(string border) {
    HTMLTableElement_border_Set(this._parent, border);
  }
  auto border() {
    auto result = HTMLTableElement_border_Get(this._parent);
    return result;
  }
  auto frame(string frame) {
    HTMLTableElement_frame_Set(this._parent, frame);
  }
  auto frame() {
    auto result = HTMLTableElement_frame_Get(this._parent);
    return result;
  }
  auto rules(string rules) {
    HTMLTableElement_rules_Set(this._parent, rules);
  }
  auto rules() {
    auto result = HTMLTableElement_rules_Get(this._parent);
    return result;
  }
  auto summary(string summary) {
    HTMLTableElement_summary_Set(this._parent, summary);
  }
  auto summary() {
    auto result = HTMLTableElement_summary_Get(this._parent);
    return result;
  }
  auto width(string width) {
    HTMLTableElement_width_Set(this._parent, width);
  }
  auto width() {
    auto result = HTMLTableElement_width_Get(this._parent);
    return result;
  }
  auto bgColor(string bgColor) {
    HTMLTableElement_bgColor_Set(this._parent, bgColor);
  }
  auto bgColor() {
    auto result = HTMLTableElement_bgColor_Get(this._parent);
    return result;
  }
  auto cellPadding(string cellPadding) {
    HTMLTableElement_cellPadding_Set(this._parent, cellPadding);
  }
  auto cellPadding() {
    auto result = HTMLTableElement_cellPadding_Get(this._parent);
    return result;
  }
  auto cellSpacing(string cellSpacing) {
    HTMLTableElement_cellSpacing_Set(this._parent, cellSpacing);
  }
  auto cellSpacing() {
    auto result = HTMLTableElement_cellSpacing_Get(this._parent);
    return result;
  }
}
struct HTMLTableRowElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto rowIndex() {
    auto result = HTMLTableRowElement_rowIndex_Get(this._parent);
    return result;
  }
  auto sectionRowIndex() {
    auto result = HTMLTableRowElement_sectionRowIndex_Get(this._parent);
    return result;
  }
  auto cells() {
    auto result = HTMLCollection(JsHandle(HTMLTableRowElement_cells_Get(this._parent)));
    return result;
  }
  auto insertCell(int index /* = -1 */) {
    auto result = HTMLTableCellElement(JsHandle(HTMLTableRowElement_insertCell(this._parent, index)));
    return result;
  }
  auto deleteCell(int index) {
    HTMLTableRowElement_deleteCell(this._parent, index);
  }
  auto align_(string align_) {
    HTMLTableRowElement_align_Set(this._parent, align_);
  }
  auto align_() {
    auto result = HTMLTableRowElement_align_Get(this._parent);
    return result;
  }
  auto ch(string ch) {
    HTMLTableRowElement_ch_Set(this._parent, ch);
  }
  auto ch() {
    auto result = HTMLTableRowElement_ch_Get(this._parent);
    return result;
  }
  auto chOff(string chOff) {
    HTMLTableRowElement_chOff_Set(this._parent, chOff);
  }
  auto chOff() {
    auto result = HTMLTableRowElement_chOff_Get(this._parent);
    return result;
  }
  auto vAlign(string vAlign) {
    HTMLTableRowElement_vAlign_Set(this._parent, vAlign);
  }
  auto vAlign() {
    auto result = HTMLTableRowElement_vAlign_Get(this._parent);
    return result;
  }
  auto bgColor(string bgColor) {
    HTMLTableRowElement_bgColor_Set(this._parent, bgColor);
  }
  auto bgColor() {
    auto result = HTMLTableRowElement_bgColor_Get(this._parent);
    return result;
  }
}
struct HTMLTableSectionElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto rows() {
    auto result = HTMLCollection(JsHandle(HTMLTableSectionElement_rows_Get(this._parent)));
    return result;
  }
  auto insertRow(int index /* = -1 */) {
    auto result = HTMLTableRowElement(JsHandle(HTMLTableSectionElement_insertRow(this._parent, index)));
    return result;
  }
  auto deleteRow(int index) {
    HTMLTableSectionElement_deleteRow(this._parent, index);
  }
  auto align_(string align_) {
    HTMLTableSectionElement_align_Set(this._parent, align_);
  }
  auto align_() {
    auto result = HTMLTableSectionElement_align_Get(this._parent);
    return result;
  }
  auto ch(string ch) {
    HTMLTableSectionElement_ch_Set(this._parent, ch);
  }
  auto ch() {
    auto result = HTMLTableSectionElement_ch_Get(this._parent);
    return result;
  }
  auto chOff(string chOff) {
    HTMLTableSectionElement_chOff_Set(this._parent, chOff);
  }
  auto chOff() {
    auto result = HTMLTableSectionElement_chOff_Get(this._parent);
    return result;
  }
  auto vAlign(string vAlign) {
    HTMLTableSectionElement_vAlign_Set(this._parent, vAlign);
  }
  auto vAlign() {
    auto result = HTMLTableSectionElement_vAlign_Get(this._parent);
    return result;
  }
}
struct HTMLTemplateElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto content() {
    auto result = DocumentFragment(JsHandle(HTMLTemplateElement_content_Get(this._parent)));
    return result;
  }
}
struct HTMLTextAreaElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto autocomplete(string autocomplete) {
    HTMLTextAreaElement_autocomplete_Set(this._parent, autocomplete);
  }
  auto autocomplete() {
    auto result = HTMLTextAreaElement_autocomplete_Get(this._parent);
    return result;
  }
  auto autofocus(bool autofocus) {
    HTMLTextAreaElement_autofocus_Set(this._parent, autofocus);
  }
  auto autofocus() {
    auto result = HTMLTextAreaElement_autofocus_Get(this._parent);
    return result;
  }
  auto cols(uint cols) {
    HTMLTextAreaElement_cols_Set(this._parent, cols);
  }
  auto cols() {
    auto result = HTMLTextAreaElement_cols_Get(this._parent);
    return result;
  }
  auto dirName(string dirName) {
    HTMLTextAreaElement_dirName_Set(this._parent, dirName);
  }
  auto dirName() {
    auto result = HTMLTextAreaElement_dirName_Get(this._parent);
    return result;
  }
  auto disabled(bool disabled) {
    HTMLTextAreaElement_disabled_Set(this._parent, disabled);
  }
  auto disabled() {
    auto result = HTMLTextAreaElement_disabled_Get(this._parent);
    return result;
  }
  auto form() {
    auto result = HTMLTextAreaElement_form_Get(this._parent);
    return result;
  }
  auto maxLength(int maxLength) {
    HTMLTextAreaElement_maxLength_Set(this._parent, maxLength);
  }
  auto maxLength() {
    auto result = HTMLTextAreaElement_maxLength_Get(this._parent);
    return result;
  }
  auto minLength(int minLength) {
    HTMLTextAreaElement_minLength_Set(this._parent, minLength);
  }
  auto minLength() {
    auto result = HTMLTextAreaElement_minLength_Get(this._parent);
    return result;
  }
  auto name(string name) {
    HTMLTextAreaElement_name_Set(this._parent, name);
  }
  auto name() {
    auto result = HTMLTextAreaElement_name_Get(this._parent);
    return result;
  }
  auto placeholder(string placeholder) {
    HTMLTextAreaElement_placeholder_Set(this._parent, placeholder);
  }
  auto placeholder() {
    auto result = HTMLTextAreaElement_placeholder_Get(this._parent);
    return result;
  }
  auto readOnly(bool readOnly) {
    HTMLTextAreaElement_readOnly_Set(this._parent, readOnly);
  }
  auto readOnly() {
    auto result = HTMLTextAreaElement_readOnly_Get(this._parent);
    return result;
  }
  auto required(bool required) {
    HTMLTextAreaElement_required_Set(this._parent, required);
  }
  auto required() {
    auto result = HTMLTextAreaElement_required_Get(this._parent);
    return result;
  }
  auto rows(uint rows) {
    HTMLTextAreaElement_rows_Set(this._parent, rows);
  }
  auto rows() {
    auto result = HTMLTextAreaElement_rows_Get(this._parent);
    return result;
  }
  auto wrap(string wrap) {
    HTMLTextAreaElement_wrap_Set(this._parent, wrap);
  }
  auto wrap() {
    auto result = HTMLTextAreaElement_wrap_Get(this._parent);
    return result;
  }
  auto type() {
    auto result = HTMLTextAreaElement_type_Get(this._parent);
    return result;
  }
  auto defaultValue(string defaultValue) {
    HTMLTextAreaElement_defaultValue_Set(this._parent, defaultValue);
  }
  auto defaultValue() {
    auto result = HTMLTextAreaElement_defaultValue_Get(this._parent);
    return result;
  }
  auto value(string value) {
    HTMLTextAreaElement_value_Set(this._parent, value);
  }
  auto value() {
    auto result = HTMLTextAreaElement_value_Get(this._parent);
    return result;
  }
  auto textLength() {
    auto result = HTMLTextAreaElement_textLength_Get(this._parent);
    return result;
  }
  auto willValidate() {
    auto result = HTMLTextAreaElement_willValidate_Get(this._parent);
    return result;
  }
  auto validity() {
    auto result = ValidityState(JsHandle(HTMLTextAreaElement_validity_Get(this._parent)));
    return result;
  }
  auto validationMessage() {
    auto result = HTMLTextAreaElement_validationMessage_Get(this._parent);
    return result;
  }
  auto checkValidity() {
    auto result = HTMLTextAreaElement_checkValidity(this._parent);
    return result;
  }
  auto reportValidity() {
    auto result = HTMLTextAreaElement_reportValidity(this._parent);
    return result;
  }
  auto setCustomValidity(string error) {
    HTMLTextAreaElement_setCustomValidity(this._parent, error);
  }
  auto labels() {
    auto result = NodeList(JsHandle(HTMLTextAreaElement_labels_Get(this._parent)));
    return result;
  }
  auto select() {
    HTMLTextAreaElement_select(this._parent);
  }
  auto selectionStart(uint selectionStart) {
    HTMLTextAreaElement_selectionStart_Set(this._parent, selectionStart);
  }
  auto selectionStart() {
    auto result = HTMLTextAreaElement_selectionStart_Get(this._parent);
    return result;
  }
  auto selectionEnd(uint selectionEnd) {
    HTMLTextAreaElement_selectionEnd_Set(this._parent, selectionEnd);
  }
  auto selectionEnd() {
    auto result = HTMLTextAreaElement_selectionEnd_Get(this._parent);
    return result;
  }
  auto selectionDirection(string selectionDirection) {
    HTMLTextAreaElement_selectionDirection_Set(this._parent, selectionDirection);
  }
  auto selectionDirection() {
    auto result = HTMLTextAreaElement_selectionDirection_Get(this._parent);
    return result;
  }
  auto setRangeText(string replacement) {
    HTMLTextAreaElement_setRangeText__string(this._parent, replacement);
  }
  auto setRangeText(string replacement, uint start, uint end, SelectionMode selectionMode /* = "preserve" */) {
    HTMLTextAreaElement_setRangeText__string_uint_uint_SelectionMode(this._parent, replacement, start, end, selectionMode);
  }
  auto setSelectionRange(uint start, uint end, string direction) {
    HTMLTextAreaElement_setSelectionRange(this._parent, start, end, direction);
  }
}
struct HTMLTimeElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto dateTime(string dateTime) {
    HTMLTimeElement_dateTime_Set(this._parent, dateTime);
  }
  auto dateTime() {
    auto result = HTMLTimeElement_dateTime_Get(this._parent);
    return result;
  }
}
struct HTMLTitleElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto text(string text) {
    HTMLTitleElement_text_Set(this._parent, text);
  }
  auto text() {
    auto result = HTMLTitleElement_text_Get(this._parent);
    return result;
  }
}
struct HTMLTrackElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto kind(string kind) {
    HTMLTrackElement_kind_Set(this._parent, kind);
  }
  auto kind() {
    auto result = HTMLTrackElement_kind_Get(this._parent);
    return result;
  }
  auto src(string src) {
    HTMLTrackElement_src_Set(this._parent, src);
  }
  auto src() {
    auto result = HTMLTrackElement_src_Get(this._parent);
    return result;
  }
  auto srclang(string srclang) {
    HTMLTrackElement_srclang_Set(this._parent, srclang);
  }
  auto srclang() {
    auto result = HTMLTrackElement_srclang_Get(this._parent);
    return result;
  }
  auto label(string label) {
    HTMLTrackElement_label_Set(this._parent, label);
  }
  auto label() {
    auto result = HTMLTrackElement_label_Get(this._parent);
    return result;
  }
  auto default_(bool default_) {
    HTMLTrackElement_default_Set(this._parent, default_);
  }
  auto default_() {
    auto result = HTMLTrackElement_default_Get(this._parent);
    return result;
  }
  enum ushort NONE = 0;
  enum ushort LOADING = 1;
  enum ushort LOADED = 2;
  enum ushort ERROR = 3;
  auto readyState() {
    auto result = HTMLTrackElement_readyState_Get(this._parent);
    return result;
  }
  auto track() {
    auto result = TextTrack(JsHandle(HTMLTrackElement_track_Get(this._parent)));
    return result;
  }
}
struct HTMLUListElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
  auto compact(bool compact) {
    HTMLUListElement_compact_Set(this._parent, compact);
  }
  auto compact() {
    auto result = HTMLUListElement_compact_Get(this._parent);
    return result;
  }
  auto type(string type) {
    HTMLUListElement_type_Set(this._parent, type);
  }
  auto type() {
    auto result = HTMLUListElement_type_Get(this._parent);
    return result;
  }
}
struct HTMLUnknownElement {
  HTMLElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLElement(h);
  }
}
struct HTMLVideoElement {
  HTMLMediaElement _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = HTMLMediaElement(h);
  }
  auto width(uint width) {
    HTMLVideoElement_width_Set(this._parent, width);
  }
  auto width() {
    auto result = HTMLVideoElement_width_Get(this._parent);
    return result;
  }
  auto height(uint height) {
    HTMLVideoElement_height_Set(this._parent, height);
  }
  auto height() {
    auto result = HTMLVideoElement_height_Get(this._parent);
    return result;
  }
  auto videoWidth() {
    auto result = HTMLVideoElement_videoWidth_Get(this._parent);
    return result;
  }
  auto videoHeight() {
    auto result = HTMLVideoElement_videoHeight_Get(this._parent);
    return result;
  }
  auto poster(string poster) {
    HTMLVideoElement_poster_Set(this._parent, poster);
  }
  auto poster() {
    auto result = HTMLVideoElement_poster_Get(this._parent);
    return result;
  }
  auto playsInline(bool playsInline) {
    HTMLVideoElement_playsInline_Set(this._parent, playsInline);
  }
  auto playsInline() {
    auto result = HTMLVideoElement_playsInline_Get(this._parent);
    return result;
  }
}
struct HashChangeEvent {
  Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Event(h);
  }
  auto oldURL() {
    auto result = HashChangeEvent_oldURL_Get(this._parent);
    return result;
  }
  auto newURL() {
    auto result = HashChangeEvent_newURL_Get(this._parent);
    return result;
  }
}
struct HashChangeEventInit {
  EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventInit(h);
  }
  static auto create() {
    return HashChangeEventInit(JsHandle(spasm_add__object()));
  }
  auto oldURL(string oldURL) {
    HashChangeEventInit_oldURL_Set(this._parent, oldURL);
  }
  auto oldURL() {
    auto result = HashChangeEventInit_oldURL_Get(this._parent);
    return result;
  }
  auto newURL(string newURL) {
    HashChangeEventInit_newURL_Set(this._parent, newURL);
  }
  auto newURL() {
    auto result = HashChangeEventInit_newURL_Get(this._parent);
    return result;
  }
}
struct History {
  JsHandle handle;
  alias handle this;
  auto length() {
    auto result = History_length_Get(this.handle);
    return result;
  }
  auto scrollRestoration(ScrollRestoration scrollRestoration) {
    History_scrollRestoration_Set(this.handle, scrollRestoration);
  }
  auto scrollRestoration() {
    auto result = History_scrollRestoration_Get(this.handle);
    return result;
  }
  auto state() {
    auto result = Any(JsHandle(History_state_Get(this.handle)));
    return result;
  }
  auto go(int delta /* = 0 */) {
    History_go(this.handle, delta);
  }
  auto back() {
    History_back(this.handle);
  }
  auto forward() {
    History_forward(this.handle);
  }
  auto pushState(T0)(T0 data, string title, Optional!(string) url /* = no!(string) */) {
    Handle _handle_data = getOrCreateHandle(data);
    History_pushState(this.handle, _handle_data, title, !url.empty, url.front);
    dropHandle!(T0)(_handle_data);
  }
  auto replaceState(T0)(T0 data, string title, Optional!(string) url /* = no!(string) */) {
    Handle _handle_data = getOrCreateHandle(data);
    History_replaceState(this.handle, _handle_data, title, !url.empty, url.front);
    dropHandle!(T0)(_handle_data);
  }
}
struct ImageBitmap {
  JsHandle handle;
  alias handle this;
  auto width() {
    auto result = ImageBitmap_width_Get(this.handle);
    return result;
  }
  auto height() {
    auto result = ImageBitmap_height_Get(this.handle);
    return result;
  }
  auto close() {
    ImageBitmap_close(this.handle);
  }
}
struct ImageBitmapOptions {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return ImageBitmapOptions(JsHandle(spasm_add__object()));
  }
  auto imageOrientation(ImageOrientation imageOrientation) {
    ImageBitmapOptions_imageOrientation_Set(this.handle, imageOrientation);
  }
  auto imageOrientation() {
    auto result = ImageBitmapOptions_imageOrientation_Get(this.handle);
    return result;
  }
  auto premultiplyAlpha(PremultiplyAlpha premultiplyAlpha) {
    ImageBitmapOptions_premultiplyAlpha_Set(this.handle, premultiplyAlpha);
  }
  auto premultiplyAlpha() {
    auto result = ImageBitmapOptions_premultiplyAlpha_Get(this.handle);
    return result;
  }
  auto colorSpaceConversion(ColorSpaceConversion colorSpaceConversion) {
    ImageBitmapOptions_colorSpaceConversion_Set(this.handle, colorSpaceConversion);
  }
  auto colorSpaceConversion() {
    auto result = ImageBitmapOptions_colorSpaceConversion_Get(this.handle);
    return result;
  }
  auto resizeWidth(uint resizeWidth) {
    ImageBitmapOptions_resizeWidth_Set(this.handle, resizeWidth);
  }
  auto resizeWidth() {
    auto result = ImageBitmapOptions_resizeWidth_Get(this.handle);
    return result;
  }
  auto resizeHeight(uint resizeHeight) {
    ImageBitmapOptions_resizeHeight_Set(this.handle, resizeHeight);
  }
  auto resizeHeight() {
    auto result = ImageBitmapOptions_resizeHeight_Get(this.handle);
    return result;
  }
  auto resizeQuality(ResizeQuality resizeQuality) {
    ImageBitmapOptions_resizeQuality_Set(this.handle, resizeQuality);
  }
  auto resizeQuality() {
    auto result = ImageBitmapOptions_resizeQuality_Get(this.handle);
    return result;
  }
}
struct ImageBitmapRenderingContext {
  JsHandle handle;
  alias handle this;
  auto canvas() {
    auto result = HTMLCanvasElement(JsHandle(ImageBitmapRenderingContext_canvas_Get(this.handle)));
    return result;
  }
  auto transferFromImageBitmap(Optional!(ImageBitmap) bitmap) {
    ImageBitmapRenderingContext_transferFromImageBitmap(this.handle, !bitmap.empty, bitmap.front.handle);
  }
}
struct ImageBitmapRenderingContextSettings {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return ImageBitmapRenderingContextSettings(JsHandle(spasm_add__object()));
  }
  auto alpha(bool alpha) {
    ImageBitmapRenderingContextSettings_alpha_Set(this.handle, alpha);
  }
  auto alpha() {
    auto result = ImageBitmapRenderingContextSettings_alpha_Get(this.handle);
    return result;
  }
}
alias ImageBitmapSource = SumType!(CanvasImageSource, Blob, ImageData);
struct ImageData {
  JsHandle handle;
  alias handle this;
  auto width() {
    auto result = ImageData_width_Get(this.handle);
    return result;
  }
  auto height() {
    auto result = ImageData_height_Get(this.handle);
    return result;
  }
  auto data() {
    auto result = Uint8ClampedArray(JsHandle(ImageData_data_Get(this.handle)));
    return result;
  }
}
struct ImageEncodeOptions {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return ImageEncodeOptions(JsHandle(spasm_add__object()));
  }
  auto type(string type) {
    ImageEncodeOptions_type_Set(this.handle, type);
  }
  auto type() {
    auto result = ImageEncodeOptions_type_Get(this.handle);
    return result;
  }
  auto quality(double quality) {
    ImageEncodeOptions_quality_Set(this.handle, quality);
  }
  auto quality() {
    auto result = ImageEncodeOptions_quality_Get(this.handle);
    return result;
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
  JsHandle handle;
  alias handle this;
  auto href(string href) {
    Location_href_Set(this.handle, href);
  }
  auto href() {
    auto result = Location_href_Get(this.handle);
    return result;
  }
  auto origin() {
    auto result = Location_origin_Get(this.handle);
    return result;
  }
  auto protocol(string protocol) {
    Location_protocol_Set(this.handle, protocol);
  }
  auto protocol() {
    auto result = Location_protocol_Get(this.handle);
    return result;
  }
  auto host(string host) {
    Location_host_Set(this.handle, host);
  }
  auto host() {
    auto result = Location_host_Get(this.handle);
    return result;
  }
  auto hostname(string hostname) {
    Location_hostname_Set(this.handle, hostname);
  }
  auto hostname() {
    auto result = Location_hostname_Get(this.handle);
    return result;
  }
  auto port(string port) {
    Location_port_Set(this.handle, port);
  }
  auto port() {
    auto result = Location_port_Get(this.handle);
    return result;
  }
  auto pathname(string pathname) {
    Location_pathname_Set(this.handle, pathname);
  }
  auto pathname() {
    auto result = Location_pathname_Get(this.handle);
    return result;
  }
  auto search(string search) {
    Location_search_Set(this.handle, search);
  }
  auto search() {
    auto result = Location_search_Get(this.handle);
    return result;
  }
  auto hash(string hash) {
    Location_hash_Set(this.handle, hash);
  }
  auto hash() {
    auto result = Location_hash_Get(this.handle);
    return result;
  }
  auto assign(string url) {
    Location_assign(this.handle, url);
  }
  auto replace(string url) {
    Location_replace(this.handle, url);
  }
  auto reload() {
    Location_reload(this.handle);
  }
  auto ancestorOrigins() {
    auto result = DOMStringList(JsHandle(Location_ancestorOrigins_Get(this.handle)));
    return result;
  }
}
struct MediaError {
  JsHandle handle;
  alias handle this;
  enum ushort MEDIA_ERR_ABORTED = 1;
  enum ushort MEDIA_ERR_NETWORK = 2;
  enum ushort MEDIA_ERR_DECODE = 3;
  enum ushort MEDIA_ERR_SRC_NOT_SUPPORTED = 4;
  auto code() {
    auto result = MediaError_code_Get(this.handle);
    return result;
  }
  auto message() {
    auto result = MediaError_message_Get(this.handle);
    return result;
  }
}
alias MediaProvider = SumType!(MediaStream, MediaSource, Blob);
struct MessageChannel {
  JsHandle handle;
  alias handle this;
  auto port1() {
    auto result = MessagePort(JsHandle(MessageChannel_port1_Get(this.handle)));
    return result;
  }
  auto port2() {
    auto result = MessagePort(JsHandle(MessageChannel_port2_Get(this.handle)));
    return result;
  }
}
struct MessageEvent {
  Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Event(h);
  }
  auto data() {
    auto result = Any(JsHandle(MessageEvent_data_Get(this._parent)));
    return result;
  }
  auto origin() {
    auto result = MessageEvent_origin_Get(this._parent);
    return result;
  }
  auto lastEventId() {
    auto result = MessageEvent_lastEventId_Get(this._parent);
    return result;
  }
  auto source() {
    auto result = MessageEvent_source_Get(this._parent);
    return result;
  }
  auto ports() {
    auto result = FrozenArray!(MessagePort)(JsHandle(MessageEvent_ports_Get(this._parent)));
    return result;
  }
  auto initMessageEvent(T3)(string type, bool bubbles /* = false */, bool cancelable /* = false */, T3 data /* = null */, string origin /* = "" */, string lastEventId /* = "" */, Optional!(MessageEventSource) source /* = no!(MessageEventSource) */, Sequence!(MessagePort) ports /* = [] */) {
    Handle _handle_data = getOrCreateHandle(data);
    MessageEvent_initMessageEvent(this._parent, type, bubbles, cancelable, _handle_data, origin, lastEventId, !source.empty, source.front, ports.handle);
    dropHandle!(T3)(_handle_data);
  }
}
struct MessageEventInit {
  EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventInit(h);
  }
  static auto create() {
    return MessageEventInit(JsHandle(spasm_add__object()));
  }
  auto data(T0)(T0 data) {
    Handle _handle_data = getOrCreateHandle(data);
    MessageEventInit_data_Set(this._parent, _handle_data);
    dropHandle!(T0)(_handle_data);
  }
  auto data() {
    auto result = Any(JsHandle(MessageEventInit_data_Get(this._parent)));
    return result;
  }
  auto origin(string origin) {
    MessageEventInit_origin_Set(this._parent, origin);
  }
  auto origin() {
    auto result = MessageEventInit_origin_Get(this._parent);
    return result;
  }
  auto lastEventId(string lastEventId) {
    MessageEventInit_lastEventId_Set(this._parent, lastEventId);
  }
  auto lastEventId() {
    auto result = MessageEventInit_lastEventId_Get(this._parent);
    return result;
  }
  auto source(Optional!(MessageEventSource) source) {
    MessageEventInit_source_Set(this._parent, !source.empty, source.front);
  }
  auto source() {
    auto result = MessageEventInit_source_Get(this._parent);
    return result;
  }
  auto ports(Sequence!(MessagePort) ports) {
    MessageEventInit_ports_Set(this._parent, ports.handle);
  }
  auto ports() {
    auto result = Sequence!(MessagePort)(JsHandle(MessageEventInit_ports_Get(this._parent)));
    return result;
  }
}
alias MessageEventSource = SumType!(Window, MessagePort, ServiceWorker);
struct MessagePort {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto postMessage(T0)(T0 message, Sequence!(JsObject) transfer) {
    Handle _handle_message = getOrCreateHandle(message);
    MessagePort_postMessage__Any_sequence(this._parent, _handle_message, transfer.handle);
    dropHandle!(T0)(_handle_message);
  }
  auto postMessage(T0)(T0 message, PostMessageOptions options) {
    Handle _handle_message = getOrCreateHandle(message);
    MessagePort_postMessage__Any_Handle(this._parent, _handle_message, options.handle);
    dropHandle!(T0)(_handle_message);
  }
  auto start() {
    MessagePort_start(this._parent);
  }
  auto close() {
    MessagePort_close(this._parent);
  }
  auto onmessage(EventHandler onmessage) {
    MessagePort_onmessage_Set(this._parent, onmessage);
  }
  auto onmessage() {
    auto result = MessagePort_onmessage_Get(this._parent);
    return result;
  }
  auto onmessageerror(EventHandler onmessageerror) {
    MessagePort_onmessageerror_Set(this._parent, onmessageerror);
  }
  auto onmessageerror() {
    auto result = MessagePort_onmessageerror_Get(this._parent);
    return result;
  }
}
struct MimeType {
  JsHandle handle;
  alias handle this;
  auto type() {
    auto result = MimeType_type_Get(this.handle);
    return result;
  }
  auto description() {
    auto result = MimeType_description_Get(this.handle);
    return result;
  }
  auto suffixes() {
    auto result = MimeType_suffixes_Get(this.handle);
    return result;
  }
  auto enabledPlugin() {
    auto result = Plugin(JsHandle(MimeType_enabledPlugin_Get(this.handle)));
    return result;
  }
}
struct MimeTypeArray {
  JsHandle handle;
  alias handle this;
  auto length() {
    auto result = MimeTypeArray_length_Get(this.handle);
    return result;
  }
  auto item(uint index) {
    auto result = MimeTypeArray_item_getter(this.handle, index);
    return result;
  }
  auto namedItem(string name) {
    auto result = MimeTypeArray_namedItem_getter(this.handle, name);
    return result;
  }
}
struct Navigator {
  JsHandle handle;
  alias handle this;
  auto clipboard() {
    auto result = Clipboard(JsHandle(Navigator_clipboard_Get(this.handle)));
    return result;
  }
  auto permissions() {
    auto result = Permissions(JsHandle(Navigator_permissions_Get(this.handle)));
    return result;
  }
  auto vibrate(VibratePattern pattern) {
    auto result = Navigator_vibrate(this.handle, pattern);
    return result;
  }
  auto mediaDevices() {
    auto result = MediaDevices(JsHandle(Navigator_mediaDevices_Get(this.handle)));
    return result;
  }
  auto getUserMedia(MediaStreamConstraints constraints, NavigatorUserMediaSuccessCallback successCallback, NavigatorUserMediaErrorCallback errorCallback) {
    Navigator_getUserMedia(this.handle, constraints.handle, successCallback, errorCallback);
  }
  auto maxTouchPoints() {
    auto result = Navigator_maxTouchPoints_Get(this.handle);
    return result;
  }
  auto serviceWorker() {
    auto result = ServiceWorkerContainer(JsHandle(Navigator_serviceWorker_Get(this.handle)));
    return result;
  }
  auto hardwareConcurrency() {
    auto result = NavigatorConcurrentHardware_hardwareConcurrency_Get(this.handle);
    return result;
  }
  auto plugins() {
    auto result = PluginArray(JsHandle(NavigatorPlugins_plugins_Get(this.handle)));
    return result;
  }
  auto mimeTypes() {
    auto result = MimeTypeArray(JsHandle(NavigatorPlugins_mimeTypes_Get(this.handle)));
    return result;
  }
  auto javaEnabled() {
    auto result = NavigatorPlugins_javaEnabled(this.handle);
    return result;
  }
  auto cookieEnabled() {
    auto result = NavigatorCookies_cookieEnabled_Get(this.handle);
    return result;
  }
  auto registerProtocolHandler(string scheme, string url, string title) {
    NavigatorContentUtils_registerProtocolHandler(this.handle, scheme, url, title);
  }
  auto unregisterProtocolHandler(string scheme, string url) {
    NavigatorContentUtils_unregisterProtocolHandler(this.handle, scheme, url);
  }
  auto onLine() {
    auto result = NavigatorOnLine_onLine_Get(this.handle);
    return result;
  }
  auto language() {
    auto result = NavigatorLanguage_language_Get(this.handle);
    return result;
  }
  auto languages() {
    auto result = FrozenArray!(string)(JsHandle(NavigatorLanguage_languages_Get(this.handle)));
    return result;
  }
  auto appCodeName() {
    auto result = NavigatorID_appCodeName_Get(this.handle);
    return result;
  }
  auto appName() {
    auto result = NavigatorID_appName_Get(this.handle);
    return result;
  }
  auto appVersion() {
    auto result = NavigatorID_appVersion_Get(this.handle);
    return result;
  }
  auto platform() {
    auto result = NavigatorID_platform_Get(this.handle);
    return result;
  }
  auto product() {
    auto result = NavigatorID_product_Get(this.handle);
    return result;
  }
  auto productSub() {
    auto result = NavigatorID_productSub_Get(this.handle);
    return result;
  }
  auto userAgent() {
    auto result = NavigatorID_userAgent_Get(this.handle);
    return result;
  }
  auto vendor() {
    auto result = NavigatorID_vendor_Get(this.handle);
    return result;
  }
  auto vendorSub() {
    auto result = NavigatorID_vendorSub_Get(this.handle);
    return result;
  }
  auto taintEnabled() {
    auto result = NavigatorID_taintEnabled(this.handle);
    return result;
  }
  auto oscpu() {
    auto result = NavigatorID_oscpu_Get(this.handle);
    return result;
  }
}
struct OffscreenCanvas {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto width(ulong width) {
    OffscreenCanvas_width_Set(this._parent, width);
  }
  auto width() {
    auto result = OffscreenCanvas_width_Get(this._parent);
    return result;
  }
  auto height(ulong height) {
    OffscreenCanvas_height_Set(this._parent, height);
  }
  auto height() {
    auto result = OffscreenCanvas_height_Get(this._parent);
    return result;
  }
  auto getContext(T1)(OffscreenRenderingContextId contextId, T1 options /* = null */) {
    Handle _handle_options = getOrCreateHandle(options);
    auto result = OffscreenCanvas_getContext(this._parent, contextId, _handle_options);
    dropHandle!(T1)(_handle_options);
    return result;
  }
  auto transferToImageBitmap() {
    auto result = ImageBitmap(JsHandle(OffscreenCanvas_transferToImageBitmap(this._parent)));
    return result;
  }
  auto convertToBlob(ImageEncodeOptions options) {
    auto result = Promise!(Blob)(JsHandle(OffscreenCanvas_convertToBlob(this._parent, options.handle)));
    return result;
  }
}
struct OffscreenCanvasRenderingContext2D {
  JsHandle handle;
  alias handle this;
  auto commit() {
    OffscreenCanvasRenderingContext2D_commit(this.handle);
  }
  auto canvas() {
    auto result = OffscreenCanvas(JsHandle(OffscreenCanvasRenderingContext2D_canvas_Get(this.handle)));
    return result;
  }
  auto closePath() {
    CanvasPath_closePath(this.handle);
  }
  auto moveTo(double x, double y) {
    CanvasPath_moveTo(this.handle, x, y);
  }
  auto lineTo(double x, double y) {
    CanvasPath_lineTo(this.handle, x, y);
  }
  auto quadraticCurveTo(double cpx, double cpy, double x, double y) {
    CanvasPath_quadraticCurveTo(this.handle, cpx, cpy, x, y);
  }
  auto bezierCurveTo(double cp1x, double cp1y, double cp2x, double cp2y, double x, double y) {
    CanvasPath_bezierCurveTo(this.handle, cp1x, cp1y, cp2x, cp2y, x, y);
  }
  auto arcTo(double x1, double y1, double x2, double y2, double radius) {
    CanvasPath_arcTo(this.handle, x1, y1, x2, y2, radius);
  }
  auto rect(double x, double y, double w, double h) {
    CanvasPath_rect(this.handle, x, y, w, h);
  }
  auto arc(double x, double y, double radius, double startAngle, double endAngle, bool anticlockwise /* = false */) {
    CanvasPath_arc(this.handle, x, y, radius, startAngle, endAngle, anticlockwise);
  }
  auto ellipse(double x, double y, double radiusX, double radiusY, double rotation, double startAngle, double endAngle, bool anticlockwise /* = false */) {
    CanvasPath_ellipse(this.handle, x, y, radiusX, radiusY, rotation, startAngle, endAngle, anticlockwise);
  }
  auto setLineDash(Sequence!(double) segments) {
    CanvasPathDrawingStyles_setLineDash(this.handle, segments.handle);
  }
  auto getLineDash() {
    auto result = Sequence!(double)(JsHandle(CanvasPathDrawingStyles_getLineDash(this.handle)));
    return result;
  }
  auto createImageData(int sw, int sh) {
    auto result = ImageData(JsHandle(CanvasImageData_createImageData__int_int(this.handle, sw, sh)));
    return result;
  }
  auto createImageData(ImageData imagedata) {
    auto result = ImageData(JsHandle(CanvasImageData_createImageData__Handle(this.handle, imagedata.handle)));
    return result;
  }
  auto getImageData(int sx, int sy, int sw, int sh) {
    auto result = ImageData(JsHandle(CanvasImageData_getImageData(this.handle, sx, sy, sw, sh)));
    return result;
  }
  auto putImageData(ImageData imagedata, int dx, int dy) {
    CanvasImageData_putImageData__Handle_int_int(this.handle, imagedata.handle, dx, dy);
  }
  auto putImageData(ImageData imagedata, int dx, int dy, int dirtyX, int dirtyY, int dirtyWidth, int dirtyHeight) {
    CanvasImageData_putImageData__Handle_int_int_int_int_int_int(this.handle, imagedata.handle, dx, dy, dirtyX, dirtyY, dirtyWidth, dirtyHeight);
  }
  auto drawImage(CanvasImageSource image, double dx, double dy) {
    CanvasDrawImage_drawImage__CanvasImageSource_double_double(this.handle, image, dx, dy);
  }
  auto drawImage(CanvasImageSource image, double dx, double dy, double dw, double dh) {
    CanvasDrawImage_drawImage__CanvasImageSource_double_double_double_double(this.handle, image, dx, dy, dw, dh);
  }
  auto drawImage(CanvasImageSource image, double sx, double sy, double sw, double sh, double dx, double dy, double dw, double dh) {
    CanvasDrawImage_drawImage__CanvasImageSource_double_double_double_double_double_double_double_double(this.handle, image, sx, sy, sw, sh, dx, dy, dw, dh);
  }
  auto fillText(string text, double x, double y, double maxWidth) {
    CanvasText_fillText(this.handle, text, x, y, maxWidth);
  }
  auto strokeText(string text, double x, double y, double maxWidth) {
    CanvasText_strokeText(this.handle, text, x, y, maxWidth);
  }
  auto measureText(string text) {
    auto result = TextMetrics(JsHandle(CanvasText_measureText(this.handle, text)));
    return result;
  }
  auto beginPath() {
    CanvasDrawPath_beginPath(this.handle);
  }
  auto fill(CanvasFillRule fillRule /* = "nonzero" */) {
    CanvasDrawPath_fill__CanvasFillRule(this.handle, fillRule);
  }
  auto fill(Path2D path, CanvasFillRule fillRule /* = "nonzero" */) {
    CanvasDrawPath_fill__Handle_CanvasFillRule(this.handle, path.handle, fillRule);
  }
  auto stroke() {
    CanvasDrawPath_stroke__(this.handle);
  }
  auto stroke(Path2D path) {
    CanvasDrawPath_stroke__Handle(this.handle, path.handle);
  }
  auto clip(CanvasFillRule fillRule /* = "nonzero" */) {
    CanvasDrawPath_clip__CanvasFillRule(this.handle, fillRule);
  }
  auto clip(Path2D path, CanvasFillRule fillRule /* = "nonzero" */) {
    CanvasDrawPath_clip__Handle_CanvasFillRule(this.handle, path.handle, fillRule);
  }
  auto isPointInPath(double x, double y, CanvasFillRule fillRule /* = "nonzero" */) {
    auto result = CanvasDrawPath_isPointInPath__double_double_CanvasFillRule(this.handle, x, y, fillRule);
    return result;
  }
  auto isPointInPath(Path2D path, double x, double y, CanvasFillRule fillRule /* = "nonzero" */) {
    auto result = CanvasDrawPath_isPointInPath__Handle_double_double_CanvasFillRule(this.handle, path.handle, x, y, fillRule);
    return result;
  }
  auto isPointInStroke(double x, double y) {
    auto result = CanvasDrawPath_isPointInStroke__double_double(this.handle, x, y);
    return result;
  }
  auto isPointInStroke(Path2D path, double x, double y) {
    auto result = CanvasDrawPath_isPointInStroke__Handle_double_double(this.handle, path.handle, x, y);
    return result;
  }
  auto clearRect(double x, double y, double w, double h) {
    CanvasRect_clearRect(this.handle, x, y, w, h);
  }
  auto fillRect(double x, double y, double w, double h) {
    CanvasRect_fillRect(this.handle, x, y, w, h);
  }
  auto strokeRect(double x, double y, double w, double h) {
    CanvasRect_strokeRect(this.handle, x, y, w, h);
  }
  auto createLinearGradient(double x0, double y0, double x1, double y1) {
    auto result = CanvasGradient(JsHandle(CanvasFillStrokeStyles_createLinearGradient(this.handle, x0, y0, x1, y1)));
    return result;
  }
  auto createRadialGradient(double x0, double y0, double r0, double x1, double y1, double r1) {
    auto result = CanvasGradient(JsHandle(CanvasFillStrokeStyles_createRadialGradient(this.handle, x0, y0, r0, x1, y1, r1)));
    return result;
  }
  auto createPattern(CanvasImageSource image, string repetition) {
    auto result = CanvasFillStrokeStyles_createPattern(this.handle, image, repetition);
    return result;
  }
  auto scale(double x, double y) {
    CanvasTransform_scale(this.handle, x, y);
  }
  auto rotate(double angle) {
    CanvasTransform_rotate(this.handle, angle);
  }
  auto translate(double x, double y) {
    CanvasTransform_translate(this.handle, x, y);
  }
  auto transform(double a, double b, double c, double d, double e, double f) {
    CanvasTransform_transform(this.handle, a, b, c, d, e, f);
  }
  auto getTransform() {
    auto result = DOMMatrix(JsHandle(CanvasTransform_getTransform(this.handle)));
    return result;
  }
  auto setTransform(double a, double b, double c, double d, double e, double f) {
    CanvasTransform_setTransform__double_double_double_double_double_double(this.handle, a, b, c, d, e, f);
  }
  auto setTransform(DOMMatrix2DInit transform) {
    CanvasTransform_setTransform__Handle(this.handle, transform.handle);
  }
  auto resetTransform() {
    CanvasTransform_resetTransform(this.handle);
  }
  auto save() {
    CanvasState_save(this.handle);
  }
  auto restore() {
    CanvasState_restore(this.handle);
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
  Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Event(h);
  }
  auto persisted() {
    auto result = PageTransitionEvent_persisted_Get(this._parent);
    return result;
  }
}
struct PageTransitionEventInit {
  EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventInit(h);
  }
  static auto create() {
    return PageTransitionEventInit(JsHandle(spasm_add__object()));
  }
  auto persisted(bool persisted) {
    PageTransitionEventInit_persisted_Set(this._parent, persisted);
  }
  auto persisted() {
    auto result = PageTransitionEventInit_persisted_Get(this._parent);
    return result;
  }
}
struct Path2D {
  JsHandle handle;
  alias handle this;
  auto addPath(Path2D path, DOMMatrix2DInit transform) {
    Path2D_addPath(this.handle, path.handle, transform.handle);
  }
  auto closePath() {
    CanvasPath_closePath(this.handle);
  }
  auto moveTo(double x, double y) {
    CanvasPath_moveTo(this.handle, x, y);
  }
  auto lineTo(double x, double y) {
    CanvasPath_lineTo(this.handle, x, y);
  }
  auto quadraticCurveTo(double cpx, double cpy, double x, double y) {
    CanvasPath_quadraticCurveTo(this.handle, cpx, cpy, x, y);
  }
  auto bezierCurveTo(double cp1x, double cp1y, double cp2x, double cp2y, double x, double y) {
    CanvasPath_bezierCurveTo(this.handle, cp1x, cp1y, cp2x, cp2y, x, y);
  }
  auto arcTo(double x1, double y1, double x2, double y2, double radius) {
    CanvasPath_arcTo(this.handle, x1, y1, x2, y2, radius);
  }
  auto rect(double x, double y, double w, double h) {
    CanvasPath_rect(this.handle, x, y, w, h);
  }
  auto arc(double x, double y, double radius, double startAngle, double endAngle, bool anticlockwise /* = false */) {
    CanvasPath_arc(this.handle, x, y, radius, startAngle, endAngle, anticlockwise);
  }
  auto ellipse(double x, double y, double radiusX, double radiusY, double rotation, double startAngle, double endAngle, bool anticlockwise /* = false */) {
    CanvasPath_ellipse(this.handle, x, y, radiusX, radiusY, rotation, startAngle, endAngle, anticlockwise);
  }
}
struct Plugin {
  JsHandle handle;
  alias handle this;
  auto name() {
    auto result = Plugin_name_Get(this.handle);
    return result;
  }
  auto description() {
    auto result = Plugin_description_Get(this.handle);
    return result;
  }
  auto filename() {
    auto result = Plugin_filename_Get(this.handle);
    return result;
  }
  auto length() {
    auto result = Plugin_length_Get(this.handle);
    return result;
  }
  auto item(uint index) {
    auto result = Plugin_item_getter(this.handle, index);
    return result;
  }
  auto namedItem(string name) {
    auto result = Plugin_namedItem_getter(this.handle, name);
    return result;
  }
}
struct PluginArray {
  JsHandle handle;
  alias handle this;
  auto refresh(bool reload /* = false */) {
    PluginArray_refresh(this.handle, reload);
  }
  auto length() {
    auto result = PluginArray_length_Get(this.handle);
    return result;
  }
  auto item(uint index) {
    auto result = PluginArray_item_getter(this.handle, index);
    return result;
  }
  auto namedItem(string name) {
    auto result = PluginArray_namedItem_getter(this.handle, name);
    return result;
  }
}
struct PopStateEvent {
  Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Event(h);
  }
  auto state() {
    auto result = Any(JsHandle(PopStateEvent_state_Get(this._parent)));
    return result;
  }
}
struct PopStateEventInit {
  EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventInit(h);
  }
  static auto create() {
    return PopStateEventInit(JsHandle(spasm_add__object()));
  }
  auto state(T0)(T0 state) {
    Handle _handle_state = getOrCreateHandle(state);
    PopStateEventInit_state_Set(this._parent, _handle_state);
    dropHandle!(T0)(_handle_state);
  }
  auto state() {
    auto result = Any(JsHandle(PopStateEventInit_state_Get(this._parent)));
    return result;
  }
}
struct PostMessageOptions {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return PostMessageOptions(JsHandle(spasm_add__object()));
  }
  auto transfer(Sequence!(JsObject) transfer) {
    PostMessageOptions_transfer_Set(this.handle, transfer.handle);
  }
  auto transfer() {
    auto result = Sequence!(JsObject)(JsHandle(PostMessageOptions_transfer_Get(this.handle)));
    return result;
  }
}
enum PremultiplyAlpha {
  none,
  premultiply,
  default_
}
struct PromiseRejectionEvent {
  Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Event(h);
  }
  auto promise() {
    auto result = Promise!(Any)(JsHandle(PromiseRejectionEvent_promise_Get(this._parent)));
    return result;
  }
  auto reason() {
    auto result = Any(JsHandle(PromiseRejectionEvent_reason_Get(this._parent)));
    return result;
  }
}
struct PromiseRejectionEventInit {
  EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventInit(h);
  }
  static auto create() {
    return PromiseRejectionEventInit(JsHandle(spasm_add__object()));
  }
  auto promise(Promise!(Any) promise) {
    PromiseRejectionEventInit_promise_Set(this._parent, promise.handle);
  }
  auto promise() {
    auto result = Promise!(Any)(JsHandle(PromiseRejectionEventInit_promise_Get(this._parent)));
    return result;
  }
  auto reason(T0)(T0 reason) {
    Handle _handle_reason = getOrCreateHandle(reason);
    PromiseRejectionEventInit_reason_Set(this._parent, _handle_reason);
    dropHandle!(T0)(_handle_reason);
  }
  auto reason() {
    auto result = Any(JsHandle(PromiseRejectionEventInit_reason_Get(this._parent)));
    return result;
  }
}
struct RadioNodeList {
  NodeList _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = NodeList(h);
  }
  auto value(string value) {
    RadioNodeList_value_Set(this._parent, value);
  }
  auto value() {
    auto result = RadioNodeList_value_Get(this._parent);
    return result;
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
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto port() {
    auto result = MessagePort(JsHandle(SharedWorker_port_Get(this._parent)));
    return result;
  }
}
struct SharedWorkerGlobalScope {
  WorkerGlobalScope _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = WorkerGlobalScope(h);
  }
  auto name() {
    auto result = SharedWorkerGlobalScope_name_Get(this._parent);
    return result;
  }
  auto close() {
    SharedWorkerGlobalScope_close(this._parent);
  }
  auto onconnect(EventHandler onconnect) {
    SharedWorkerGlobalScope_onconnect_Set(this._parent, onconnect);
  }
  auto onconnect() {
    auto result = SharedWorkerGlobalScope_onconnect_Get(this._parent);
    return result;
  }
}
struct Storage {
  JsHandle handle;
  alias handle this;
  auto length() {
    auto result = Storage_length_Get(this.handle);
    return result;
  }
  auto key(uint index) {
    auto result = Storage_key(this.handle, index);
    return result;
  }
  auto getItem(string key) {
    auto result = Storage_getItem_getter(this.handle, key);
    return result;
  }
  auto setItem(string key, string value) {
    Storage_setItem_setter(this.handle, key, value);
  }
  auto removeItem(string key) {
    Storage_removeItem(this.handle, key);
  }
  auto clear() {
    Storage_clear(this.handle);
  }
}
struct StorageEvent {
  Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Event(h);
  }
  auto key() {
    auto result = StorageEvent_key_Get(this._parent);
    return result;
  }
  auto oldValue() {
    auto result = StorageEvent_oldValue_Get(this._parent);
    return result;
  }
  auto newValue() {
    auto result = StorageEvent_newValue_Get(this._parent);
    return result;
  }
  auto url() {
    auto result = StorageEvent_url_Get(this._parent);
    return result;
  }
  auto storageArea() {
    auto result = StorageEvent_storageArea_Get(this._parent);
    return result;
  }
  auto initStorageEvent(string type, bool bubbles /* = false */, bool cancelable /* = false */, Optional!(string) key /* = no!(string) */, Optional!(string) oldValue /* = no!(string) */, Optional!(string) newValue /* = no!(string) */, string url /* = "" */, Optional!(Storage) storageArea /* = no!(Storage) */) {
    StorageEvent_initStorageEvent(this._parent, type, bubbles, cancelable, !key.empty, key.front, !oldValue.empty, oldValue.front, !newValue.empty, newValue.front, url, !storageArea.empty, storageArea.front.handle);
  }
}
struct StorageEventInit {
  EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventInit(h);
  }
  static auto create() {
    return StorageEventInit(JsHandle(spasm_add__object()));
  }
  auto key(Optional!(string) key) {
    StorageEventInit_key_Set(this._parent, !key.empty, key.front);
  }
  auto key() {
    auto result = StorageEventInit_key_Get(this._parent);
    return result;
  }
  auto oldValue(Optional!(string) oldValue) {
    StorageEventInit_oldValue_Set(this._parent, !oldValue.empty, oldValue.front);
  }
  auto oldValue() {
    auto result = StorageEventInit_oldValue_Get(this._parent);
    return result;
  }
  auto newValue(Optional!(string) newValue) {
    StorageEventInit_newValue_Set(this._parent, !newValue.empty, newValue.front);
  }
  auto newValue() {
    auto result = StorageEventInit_newValue_Get(this._parent);
    return result;
  }
  auto url(string url) {
    StorageEventInit_url_Set(this._parent, url);
  }
  auto url() {
    auto result = StorageEventInit_url_Get(this._parent);
    return result;
  }
  auto storageArea(Optional!(Storage) storageArea) {
    StorageEventInit_storageArea_Set(this._parent, !storageArea.empty, storageArea.front.handle);
  }
  auto storageArea() {
    auto result = StorageEventInit_storageArea_Get(this._parent);
    return result;
  }
}
struct TextMetrics {
  JsHandle handle;
  alias handle this;
  auto width() {
    auto result = TextMetrics_width_Get(this.handle);
    return result;
  }
  auto actualBoundingBoxLeft() {
    auto result = TextMetrics_actualBoundingBoxLeft_Get(this.handle);
    return result;
  }
  auto actualBoundingBoxRight() {
    auto result = TextMetrics_actualBoundingBoxRight_Get(this.handle);
    return result;
  }
  auto fontBoundingBoxAscent() {
    auto result = TextMetrics_fontBoundingBoxAscent_Get(this.handle);
    return result;
  }
  auto fontBoundingBoxDescent() {
    auto result = TextMetrics_fontBoundingBoxDescent_Get(this.handle);
    return result;
  }
  auto actualBoundingBoxAscent() {
    auto result = TextMetrics_actualBoundingBoxAscent_Get(this.handle);
    return result;
  }
  auto actualBoundingBoxDescent() {
    auto result = TextMetrics_actualBoundingBoxDescent_Get(this.handle);
    return result;
  }
  auto emHeightAscent() {
    auto result = TextMetrics_emHeightAscent_Get(this.handle);
    return result;
  }
  auto emHeightDescent() {
    auto result = TextMetrics_emHeightDescent_Get(this.handle);
    return result;
  }
  auto hangingBaseline() {
    auto result = TextMetrics_hangingBaseline_Get(this.handle);
    return result;
  }
  auto alphabeticBaseline() {
    auto result = TextMetrics_alphabeticBaseline_Get(this.handle);
    return result;
  }
  auto ideographicBaseline() {
    auto result = TextMetrics_ideographicBaseline_Get(this.handle);
    return result;
  }
}
struct TextTrack {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto kind() {
    auto result = TextTrack_kind_Get(this._parent);
    return result;
  }
  auto label() {
    auto result = TextTrack_label_Get(this._parent);
    return result;
  }
  auto language() {
    auto result = TextTrack_language_Get(this._parent);
    return result;
  }
  auto id() {
    auto result = TextTrack_id_Get(this._parent);
    return result;
  }
  auto inBandMetadataTrackDispatchType() {
    auto result = TextTrack_inBandMetadataTrackDispatchType_Get(this._parent);
    return result;
  }
  auto mode(TextTrackMode mode) {
    TextTrack_mode_Set(this._parent, mode);
  }
  auto mode() {
    auto result = TextTrack_mode_Get(this._parent);
    return result;
  }
  auto cues() {
    auto result = TextTrack_cues_Get(this._parent);
    return result;
  }
  auto activeCues() {
    auto result = TextTrack_activeCues_Get(this._parent);
    return result;
  }
  auto addCue(TextTrackCue cue) {
    TextTrack_addCue(this._parent, cue.handle);
  }
  auto removeCue(TextTrackCue cue) {
    TextTrack_removeCue(this._parent, cue.handle);
  }
  auto oncuechange(EventHandler oncuechange) {
    TextTrack_oncuechange_Set(this._parent, oncuechange);
  }
  auto oncuechange() {
    auto result = TextTrack_oncuechange_Get(this._parent);
    return result;
  }
  auto sourceBuffer() {
    auto result = TextTrack_sourceBuffer_Get(this._parent);
    return result;
  }
}
struct TextTrackCue {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto track() {
    auto result = TextTrackCue_track_Get(this._parent);
    return result;
  }
  auto id(string id) {
    TextTrackCue_id_Set(this._parent, id);
  }
  auto id() {
    auto result = TextTrackCue_id_Get(this._parent);
    return result;
  }
  auto startTime(double startTime) {
    TextTrackCue_startTime_Set(this._parent, startTime);
  }
  auto startTime() {
    auto result = TextTrackCue_startTime_Get(this._parent);
    return result;
  }
  auto endTime(double endTime) {
    TextTrackCue_endTime_Set(this._parent, endTime);
  }
  auto endTime() {
    auto result = TextTrackCue_endTime_Get(this._parent);
    return result;
  }
  auto pauseOnExit(bool pauseOnExit) {
    TextTrackCue_pauseOnExit_Set(this._parent, pauseOnExit);
  }
  auto pauseOnExit() {
    auto result = TextTrackCue_pauseOnExit_Get(this._parent);
    return result;
  }
  auto onenter(EventHandler onenter) {
    TextTrackCue_onenter_Set(this._parent, onenter);
  }
  auto onenter() {
    auto result = TextTrackCue_onenter_Get(this._parent);
    return result;
  }
  auto onexit(EventHandler onexit) {
    TextTrackCue_onexit_Set(this._parent, onexit);
  }
  auto onexit() {
    auto result = TextTrackCue_onexit_Get(this._parent);
    return result;
  }
}
struct TextTrackCueList {
  JsHandle handle;
  alias handle this;
  auto length() {
    auto result = TextTrackCueList_length_Get(this.handle);
    return result;
  }
  auto opIndex(uint index) {
    auto result = TextTrackCue(JsHandle(TextTrackCueList_getter__uint(this.handle, index)));
    return result;
  }
  auto opDispatch(uint index)() {
    auto result = TextTrackCue(JsHandle(TextTrackCueList_getter__uint(this.handle, index)));
    return result;
  }
  auto getCueById(string id) {
    auto result = TextTrackCueList_getCueById(this.handle, id);
    return result;
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
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto length() {
    auto result = TextTrackList_length_Get(this._parent);
    return result;
  }
  auto opIndex(uint index) {
    auto result = TextTrack(JsHandle(TextTrackList_getter__uint(this._parent, index)));
    return result;
  }
  auto opDispatch(uint index)() {
    auto result = TextTrack(JsHandle(TextTrackList_getter__uint(this._parent, index)));
    return result;
  }
  auto getTrackById(string id) {
    auto result = TextTrackList_getTrackById(this._parent, id);
    return result;
  }
  auto onchange(EventHandler onchange) {
    TextTrackList_onchange_Set(this._parent, onchange);
  }
  auto onchange() {
    auto result = TextTrackList_onchange_Get(this._parent);
    return result;
  }
  auto onaddtrack(EventHandler onaddtrack) {
    TextTrackList_onaddtrack_Set(this._parent, onaddtrack);
  }
  auto onaddtrack() {
    auto result = TextTrackList_onaddtrack_Get(this._parent);
    return result;
  }
  auto onremovetrack(EventHandler onremovetrack) {
    TextTrackList_onremovetrack_Set(this._parent, onremovetrack);
  }
  auto onremovetrack() {
    auto result = TextTrackList_onremovetrack_Get(this._parent);
    return result;
  }
}
enum TextTrackMode {
  disabled,
  hidden,
  showing
}
struct TimeRanges {
  JsHandle handle;
  alias handle this;
  auto length() {
    auto result = TimeRanges_length_Get(this.handle);
    return result;
  }
  auto start(uint index) {
    auto result = TimeRanges_start(this.handle, index);
    return result;
  }
  auto end(uint index) {
    auto result = TimeRanges_end(this.handle, index);
    return result;
  }
}
alias TimerHandler = SumType!(string, Function);
struct TrackEvent {
  Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Event(h);
  }
  auto track() {
    auto result = TrackEvent_track_Get(this._parent);
    return result;
  }
}
struct TrackEventInit {
  EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventInit(h);
  }
  static auto create() {
    return TrackEventInit(JsHandle(spasm_add__object()));
  }
  auto track(Optional!(SumType!(VideoTrack, AudioTrack, TextTrack)) track) {
    TrackEventInit_track_Set(this._parent, !track.empty, track.front);
  }
  auto track() {
    auto result = TrackEventInit_track_Get(this._parent);
    return result;
  }
}
struct ValidityState {
  JsHandle handle;
  alias handle this;
  auto valueMissing() {
    auto result = ValidityState_valueMissing_Get(this.handle);
    return result;
  }
  auto typeMismatch() {
    auto result = ValidityState_typeMismatch_Get(this.handle);
    return result;
  }
  auto patternMismatch() {
    auto result = ValidityState_patternMismatch_Get(this.handle);
    return result;
  }
  auto tooLong() {
    auto result = ValidityState_tooLong_Get(this.handle);
    return result;
  }
  auto tooShort() {
    auto result = ValidityState_tooShort_Get(this.handle);
    return result;
  }
  auto rangeUnderflow() {
    auto result = ValidityState_rangeUnderflow_Get(this.handle);
    return result;
  }
  auto rangeOverflow() {
    auto result = ValidityState_rangeOverflow_Get(this.handle);
    return result;
  }
  auto stepMismatch() {
    auto result = ValidityState_stepMismatch_Get(this.handle);
    return result;
  }
  auto badInput() {
    auto result = ValidityState_badInput_Get(this.handle);
    return result;
  }
  auto customError() {
    auto result = ValidityState_customError_Get(this.handle);
    return result;
  }
  auto valid() {
    auto result = ValidityState_valid_Get(this.handle);
    return result;
  }
}
struct VideoTrack {
  JsHandle handle;
  alias handle this;
  auto id() {
    auto result = VideoTrack_id_Get(this.handle);
    return result;
  }
  auto kind() {
    auto result = VideoTrack_kind_Get(this.handle);
    return result;
  }
  auto label() {
    auto result = VideoTrack_label_Get(this.handle);
    return result;
  }
  auto language() {
    auto result = VideoTrack_language_Get(this.handle);
    return result;
  }
  auto selected(bool selected) {
    VideoTrack_selected_Set(this.handle, selected);
  }
  auto selected() {
    auto result = VideoTrack_selected_Get(this.handle);
    return result;
  }
  auto sourceBuffer() {
    auto result = VideoTrack_sourceBuffer_Get(this.handle);
    return result;
  }
}
struct VideoTrackList {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto length() {
    auto result = VideoTrackList_length_Get(this._parent);
    return result;
  }
  auto opIndex(uint index) {
    auto result = VideoTrack(JsHandle(VideoTrackList_getter__uint(this._parent, index)));
    return result;
  }
  auto opDispatch(uint index)() {
    auto result = VideoTrack(JsHandle(VideoTrackList_getter__uint(this._parent, index)));
    return result;
  }
  auto getTrackById(string id) {
    auto result = VideoTrackList_getTrackById(this._parent, id);
    return result;
  }
  auto selectedIndex() {
    auto result = VideoTrackList_selectedIndex_Get(this._parent);
    return result;
  }
  auto onchange(EventHandler onchange) {
    VideoTrackList_onchange_Set(this._parent, onchange);
  }
  auto onchange() {
    auto result = VideoTrackList_onchange_Get(this._parent);
    return result;
  }
  auto onaddtrack(EventHandler onaddtrack) {
    VideoTrackList_onaddtrack_Set(this._parent, onaddtrack);
  }
  auto onaddtrack() {
    auto result = VideoTrackList_onaddtrack_Get(this._parent);
    return result;
  }
  auto onremovetrack(EventHandler onremovetrack) {
    VideoTrackList_onremovetrack_Set(this._parent, onremovetrack);
  }
  auto onremovetrack() {
    auto result = VideoTrackList_onremovetrack_Get(this._parent);
    return result;
  }
}
struct WebSocket {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto url() {
    auto result = WebSocket_url_Get(this._parent);
    return result;
  }
  enum ushort CONNECTING = 0;
  enum ushort OPEN = 1;
  enum ushort CLOSING = 2;
  enum ushort CLOSED = 3;
  auto readyState() {
    auto result = WebSocket_readyState_Get(this._parent);
    return result;
  }
  auto bufferedAmount() {
    auto result = WebSocket_bufferedAmount_Get(this._parent);
    return result;
  }
  auto onopen(EventHandler onopen) {
    WebSocket_onopen_Set(this._parent, onopen);
  }
  auto onopen() {
    auto result = WebSocket_onopen_Get(this._parent);
    return result;
  }
  auto onerror(EventHandler onerror) {
    WebSocket_onerror_Set(this._parent, onerror);
  }
  auto onerror() {
    auto result = WebSocket_onerror_Get(this._parent);
    return result;
  }
  auto onclose(EventHandler onclose) {
    WebSocket_onclose_Set(this._parent, onclose);
  }
  auto onclose() {
    auto result = WebSocket_onclose_Get(this._parent);
    return result;
  }
  auto extensions() {
    auto result = WebSocket_extensions_Get(this._parent);
    return result;
  }
  auto protocol() {
    auto result = WebSocket_protocol_Get(this._parent);
    return result;
  }
  auto close(ushort code, string reason) {
    WebSocket_close(this._parent, code, reason);
  }
  auto onmessage(EventHandler onmessage) {
    WebSocket_onmessage_Set(this._parent, onmessage);
  }
  auto onmessage() {
    auto result = WebSocket_onmessage_Get(this._parent);
    return result;
  }
  auto binaryType(BinaryType binaryType) {
    WebSocket_binaryType_Set(this._parent, binaryType);
  }
  auto binaryType() {
    auto result = WebSocket_binaryType_Get(this._parent);
    return result;
  }
  auto send(string data) {
    WebSocket_send__string(this._parent, data);
  }
  auto send(Blob data) {
    WebSocket_send__Handle(this._parent, data.handle);
  }
  auto send(ArrayBuffer data) {
    WebSocket_send__Handle(this._parent, data.handle);
  }
  auto send(ArrayBufferView data) {
    WebSocket_send__ArrayBufferView(this._parent, data);
  }
}
struct Window {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto window() {
    auto result = Window(JsHandle(Window_window_Get(this._parent)));
    return result;
  }
  auto self() {
    auto result = Window(JsHandle(Window_self_Get(this._parent)));
    return result;
  }
  auto document() {
    auto result = Document(JsHandle(Window_document_Get(this._parent)));
    return result;
  }
  auto name(string name) {
    Window_name_Set(this._parent, name);
  }
  auto name() {
    auto result = Window_name_Get(this._parent);
    return result;
  }
  auto location() {
    auto result = Location(JsHandle(Window_location_Get(this._parent)));
    return result;
  }
  auto history() {
    auto result = History(JsHandle(Window_history_Get(this._parent)));
    return result;
  }
  auto customElements() {
    auto result = CustomElementRegistry(JsHandle(Window_customElements_Get(this._parent)));
    return result;
  }
  auto locationbar() {
    auto result = BarProp(JsHandle(Window_locationbar_Get(this._parent)));
    return result;
  }
  auto menubar() {
    auto result = BarProp(JsHandle(Window_menubar_Get(this._parent)));
    return result;
  }
  auto personalbar() {
    auto result = BarProp(JsHandle(Window_personalbar_Get(this._parent)));
    return result;
  }
  auto scrollbars() {
    auto result = BarProp(JsHandle(Window_scrollbars_Get(this._parent)));
    return result;
  }
  auto statusbar() {
    auto result = BarProp(JsHandle(Window_statusbar_Get(this._parent)));
    return result;
  }
  auto toolbar() {
    auto result = BarProp(JsHandle(Window_toolbar_Get(this._parent)));
    return result;
  }
  auto status(string status) {
    Window_status_Set(this._parent, status);
  }
  auto status() {
    auto result = Window_status_Get(this._parent);
    return result;
  }
  auto close() {
    Window_close(this._parent);
  }
  auto closed() {
    auto result = Window_closed_Get(this._parent);
    return result;
  }
  auto stop() {
    Window_stop(this._parent);
  }
  auto focus() {
    Window_focus(this._parent);
  }
  auto blur() {
    Window_blur(this._parent);
  }
  auto frames() {
    auto result = Window(JsHandle(Window_frames_Get(this._parent)));
    return result;
  }
  auto length() {
    auto result = Window_length_Get(this._parent);
    return result;
  }
  auto top() {
    auto result = Window_top_Get(this._parent);
    return result;
  }
  auto opener(Any opener) {
    Window_opener_Set(this._parent, opener.handle);
  }
  auto opener() {
    auto result = Any(JsHandle(Window_opener_Get(this._parent)));
    return result;
  }
  auto parent() {
    auto result = Window_parent_Get(this._parent);
    return result;
  }
  auto frameElement() {
    auto result = Window_frameElement_Get(this._parent);
    return result;
  }
  auto open(string url /* = "about:blank" */, string target /* = "_blank" */, string features /* = "" */) {
    auto result = Window_open(this._parent, url, target, features);
    return result;
  }
  auto opIndex(string name) {
    auto result = JsObject(JsHandle(Window_getter__string(this._parent, name)));
    return result;
  }
  auto opDispatch(string name)() {
    auto result = JsObject(JsHandle(Window_getter__string(this._parent, name)));
    return result;
  }
  auto navigator() {
    auto result = Navigator(JsHandle(Window_navigator_Get(this._parent)));
    return result;
  }
  auto applicationCache() {
    auto result = ApplicationCache(JsHandle(Window_applicationCache_Get(this._parent)));
    return result;
  }
  auto alert() {
    Window_alert__(this._parent);
  }
  auto alert(string message) {
    Window_alert__string(this._parent, message);
  }
  auto confirm(string message /* = "" */) {
    auto result = Window_confirm(this._parent, message);
    return result;
  }
  auto prompt(string message /* = "" */, string default_ /* = "" */) {
    auto result = Window_prompt(this._parent, message, default_);
    return result;
  }
  auto print() {
    Window_print(this._parent);
  }
  auto postMessage(T0)(T0 message, string targetOrigin, Sequence!(JsObject) transfer /* = [] */) {
    Handle _handle_message = getOrCreateHandle(message);
    Window_postMessage__Any_string_sequence(this._parent, _handle_message, targetOrigin, transfer.handle);
    dropHandle!(T0)(_handle_message);
  }
  auto postMessage(T0)(T0 message, WindowPostMessageOptions options) {
    Handle _handle_message = getOrCreateHandle(message);
    Window_postMessage__Any_Handle(this._parent, _handle_message, options.handle);
    dropHandle!(T0)(_handle_message);
  }
  auto event() {
    auto result = Any(JsHandle(Window_event_Get(this._parent)));
    return result;
  }
  auto captureEvents() {
    Window_captureEvents(this._parent);
  }
  auto releaseEvents() {
    Window_releaseEvents(this._parent);
  }
  auto external() {
    auto result = External(JsHandle(Window_external_Get(this._parent)));
    return result;
  }
  auto orientation() {
    auto result = Window_orientation_Get(this._parent);
    return result;
  }
  auto onorientationchange(EventHandler onorientationchange) {
    Window_onorientationchange_Set(this._parent, onorientationchange);
  }
  auto onorientationchange() {
    auto result = Window_onorientationchange_Get(this._parent);
    return result;
  }
  auto localStorage() {
    auto result = Storage(JsHandle(WindowLocalStorage_localStorage_Get(this._parent)));
    return result;
  }
  auto sessionStorage() {
    auto result = Storage(JsHandle(WindowSessionStorage_sessionStorage_Get(this._parent)));
    return result;
  }
  auto requestAnimationFrame(FrameRequestCallback callback) {
    auto result = AnimationFrameProvider_requestAnimationFrame(this._parent, callback);
    return result;
  }
  auto cancelAnimationFrame(uint handle) {
    AnimationFrameProvider_cancelAnimationFrame(this._parent, handle);
  }
  auto origin() {
    auto result = WindowOrWorkerGlobalScope_origin_Get(this._parent);
    return result;
  }
  auto btoa(string data) {
    auto result = WindowOrWorkerGlobalScope_btoa(this._parent, data);
    return result;
  }
  auto atob(string data) {
    auto result = WindowOrWorkerGlobalScope_atob(this._parent, data);
    return result;
  }
  auto setTimeout(T2)(TimerHandler handler, int timeout /* = 0 */, T2 arguments) {
    Handle _handle_arguments = getOrCreateHandle(arguments);
    auto result = WindowOrWorkerGlobalScope_setTimeout(this._parent, handler, timeout, _handle_arguments);
    dropHandle!(T2)(_handle_arguments);
    return result;
  }
  auto clearTimeout(int handle /* = 0 */) {
    WindowOrWorkerGlobalScope_clearTimeout(this._parent, handle);
  }
  auto setInterval(T2)(TimerHandler handler, int timeout /* = 0 */, T2 arguments) {
    Handle _handle_arguments = getOrCreateHandle(arguments);
    auto result = WindowOrWorkerGlobalScope_setInterval(this._parent, handler, timeout, _handle_arguments);
    dropHandle!(T2)(_handle_arguments);
    return result;
  }
  auto clearInterval(int handle /* = 0 */) {
    WindowOrWorkerGlobalScope_clearInterval(this._parent, handle);
  }
  auto queueMicrotask(VoidFunction callback) {
    WindowOrWorkerGlobalScope_queueMicrotask(this._parent, callback);
  }
  auto createImageBitmap(ImageBitmapSource image, ImageBitmapOptions options) {
    auto result = Promise!(ImageBitmap)(JsHandle(WindowOrWorkerGlobalScope_createImageBitmap__ImageBitmapSource_Handle(this._parent, image, options.handle)));
    return result;
  }
  auto createImageBitmap(ImageBitmapSource image, int sx, int sy, int sw, int sh, ImageBitmapOptions options) {
    auto result = Promise!(ImageBitmap)(JsHandle(WindowOrWorkerGlobalScope_createImageBitmap__ImageBitmapSource_int_int_int_int_Handle(this._parent, image, sx, sy, sw, sh, options.handle)));
    return result;
  }
  auto fetch(RequestInfo input, RequestInit init) {
    auto result = Promise!(Response)(JsHandle(WindowOrWorkerGlobalScope_fetch(this._parent, input, init.handle)));
    return result;
  }
  auto indexedDB() {
    auto result = IDBFactory(JsHandle(WindowOrWorkerGlobalScope_indexedDB_Get(this._parent)));
    return result;
  }
  auto caches() {
    auto result = CacheStorage(JsHandle(WindowOrWorkerGlobalScope_caches_Get(this._parent)));
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
}
struct WindowPostMessageOptions {
  PostMessageOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = PostMessageOptions(h);
  }
  static auto create() {
    return WindowPostMessageOptions(JsHandle(spasm_add__object()));
  }
  auto targetOrigin(string targetOrigin) {
    WindowPostMessageOptions_targetOrigin_Set(this._parent, targetOrigin);
  }
  auto targetOrigin() {
    auto result = WindowPostMessageOptions_targetOrigin_Get(this._parent);
    return result;
  }
}
alias WindowProxy = Window;
struct Worker {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto terminate() {
    Worker_terminate(this._parent);
  }
  auto postMessage(T0)(T0 message, Sequence!(JsObject) transfer) {
    Handle _handle_message = getOrCreateHandle(message);
    Worker_postMessage__Any_sequence(this._parent, _handle_message, transfer.handle);
    dropHandle!(T0)(_handle_message);
  }
  auto postMessage(T0)(T0 message, PostMessageOptions options) {
    Handle _handle_message = getOrCreateHandle(message);
    Worker_postMessage__Any_Handle(this._parent, _handle_message, options.handle);
    dropHandle!(T0)(_handle_message);
  }
  auto onmessage(EventHandler onmessage) {
    Worker_onmessage_Set(this._parent, onmessage);
  }
  auto onmessage() {
    auto result = Worker_onmessage_Get(this._parent);
    return result;
  }
  auto onmessageerror(EventHandler onmessageerror) {
    Worker_onmessageerror_Set(this._parent, onmessageerror);
  }
  auto onmessageerror() {
    auto result = Worker_onmessageerror_Get(this._parent);
    return result;
  }
}
struct WorkerGlobalScope {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto self() {
    auto result = WorkerGlobalScope(JsHandle(WorkerGlobalScope_self_Get(this._parent)));
    return result;
  }
  auto location() {
    auto result = WorkerLocation(JsHandle(WorkerGlobalScope_location_Get(this._parent)));
    return result;
  }
  auto navigator() {
    auto result = WorkerNavigator(JsHandle(WorkerGlobalScope_navigator_Get(this._parent)));
    return result;
  }
  auto importScripts(string urls) {
    WorkerGlobalScope_importScripts(this._parent, urls);
  }
  auto onerror(OnErrorEventHandler onerror) {
    WorkerGlobalScope_onerror_Set(this._parent, !onerror.empty, onerror.front);
  }
  auto onerror() {
    auto result = WorkerGlobalScope_onerror_Get(this._parent);
    return result;
  }
  auto onlanguagechange(EventHandler onlanguagechange) {
    WorkerGlobalScope_onlanguagechange_Set(this._parent, onlanguagechange);
  }
  auto onlanguagechange() {
    auto result = WorkerGlobalScope_onlanguagechange_Get(this._parent);
    return result;
  }
  auto onoffline(EventHandler onoffline) {
    WorkerGlobalScope_onoffline_Set(this._parent, onoffline);
  }
  auto onoffline() {
    auto result = WorkerGlobalScope_onoffline_Get(this._parent);
    return result;
  }
  auto ononline(EventHandler ononline) {
    WorkerGlobalScope_ononline_Set(this._parent, ononline);
  }
  auto ononline() {
    auto result = WorkerGlobalScope_ononline_Get(this._parent);
    return result;
  }
  auto onrejectionhandled(EventHandler onrejectionhandled) {
    WorkerGlobalScope_onrejectionhandled_Set(this._parent, onrejectionhandled);
  }
  auto onrejectionhandled() {
    auto result = WorkerGlobalScope_onrejectionhandled_Get(this._parent);
    return result;
  }
  auto onunhandledrejection(EventHandler onunhandledrejection) {
    WorkerGlobalScope_onunhandledrejection_Set(this._parent, onunhandledrejection);
  }
  auto onunhandledrejection() {
    auto result = WorkerGlobalScope_onunhandledrejection_Get(this._parent);
    return result;
  }
  auto origin() {
    auto result = WindowOrWorkerGlobalScope_origin_Get(this._parent);
    return result;
  }
  auto btoa(string data) {
    auto result = WindowOrWorkerGlobalScope_btoa(this._parent, data);
    return result;
  }
  auto atob(string data) {
    auto result = WindowOrWorkerGlobalScope_atob(this._parent, data);
    return result;
  }
  auto setTimeout(T2)(TimerHandler handler, int timeout /* = 0 */, T2 arguments) {
    Handle _handle_arguments = getOrCreateHandle(arguments);
    auto result = WindowOrWorkerGlobalScope_setTimeout(this._parent, handler, timeout, _handle_arguments);
    dropHandle!(T2)(_handle_arguments);
    return result;
  }
  auto clearTimeout(int handle /* = 0 */) {
    WindowOrWorkerGlobalScope_clearTimeout(this._parent, handle);
  }
  auto setInterval(T2)(TimerHandler handler, int timeout /* = 0 */, T2 arguments) {
    Handle _handle_arguments = getOrCreateHandle(arguments);
    auto result = WindowOrWorkerGlobalScope_setInterval(this._parent, handler, timeout, _handle_arguments);
    dropHandle!(T2)(_handle_arguments);
    return result;
  }
  auto clearInterval(int handle /* = 0 */) {
    WindowOrWorkerGlobalScope_clearInterval(this._parent, handle);
  }
  auto queueMicrotask(VoidFunction callback) {
    WindowOrWorkerGlobalScope_queueMicrotask(this._parent, callback);
  }
  auto createImageBitmap(ImageBitmapSource image, ImageBitmapOptions options) {
    auto result = Promise!(ImageBitmap)(JsHandle(WindowOrWorkerGlobalScope_createImageBitmap__ImageBitmapSource_Handle(this._parent, image, options.handle)));
    return result;
  }
  auto createImageBitmap(ImageBitmapSource image, int sx, int sy, int sw, int sh, ImageBitmapOptions options) {
    auto result = Promise!(ImageBitmap)(JsHandle(WindowOrWorkerGlobalScope_createImageBitmap__ImageBitmapSource_int_int_int_int_Handle(this._parent, image, sx, sy, sw, sh, options.handle)));
    return result;
  }
  auto fetch(RequestInfo input, RequestInit init) {
    auto result = Promise!(Response)(JsHandle(WindowOrWorkerGlobalScope_fetch(this._parent, input, init.handle)));
    return result;
  }
  auto indexedDB() {
    auto result = IDBFactory(JsHandle(WindowOrWorkerGlobalScope_indexedDB_Get(this._parent)));
    return result;
  }
  auto caches() {
    auto result = CacheStorage(JsHandle(WindowOrWorkerGlobalScope_caches_Get(this._parent)));
    return result;
  }
}
struct WorkerLocation {
  JsHandle handle;
  alias handle this;
  auto href(string href) {
    WorkerLocation_href_Set(this.handle, href);
  }
  auto href() {
    auto result = WorkerLocation_href_Get(this.handle);
    return result;
  }
  auto origin() {
    auto result = WorkerLocation_origin_Get(this.handle);
    return result;
  }
  auto protocol() {
    auto result = WorkerLocation_protocol_Get(this.handle);
    return result;
  }
  auto host() {
    auto result = WorkerLocation_host_Get(this.handle);
    return result;
  }
  auto hostname() {
    auto result = WorkerLocation_hostname_Get(this.handle);
    return result;
  }
  auto port() {
    auto result = WorkerLocation_port_Get(this.handle);
    return result;
  }
  auto pathname() {
    auto result = WorkerLocation_pathname_Get(this.handle);
    return result;
  }
  auto search() {
    auto result = WorkerLocation_search_Get(this.handle);
    return result;
  }
  auto hash() {
    auto result = WorkerLocation_hash_Get(this.handle);
    return result;
  }
}
struct WorkerNavigator {
  JsHandle handle;
  alias handle this;
  auto permissions() {
    auto result = Permissions(JsHandle(WorkerNavigator_permissions_Get(this.handle)));
    return result;
  }
  auto serviceWorker() {
    auto result = ServiceWorkerContainer(JsHandle(WorkerNavigator_serviceWorker_Get(this.handle)));
    return result;
  }
  auto hardwareConcurrency() {
    auto result = NavigatorConcurrentHardware_hardwareConcurrency_Get(this.handle);
    return result;
  }
  auto onLine() {
    auto result = NavigatorOnLine_onLine_Get(this.handle);
    return result;
  }
  auto language() {
    auto result = NavigatorLanguage_language_Get(this.handle);
    return result;
  }
  auto languages() {
    auto result = FrozenArray!(string)(JsHandle(NavigatorLanguage_languages_Get(this.handle)));
    return result;
  }
  auto appCodeName() {
    auto result = NavigatorID_appCodeName_Get(this.handle);
    return result;
  }
  auto appName() {
    auto result = NavigatorID_appName_Get(this.handle);
    return result;
  }
  auto appVersion() {
    auto result = NavigatorID_appVersion_Get(this.handle);
    return result;
  }
  auto platform() {
    auto result = NavigatorID_platform_Get(this.handle);
    return result;
  }
  auto product() {
    auto result = NavigatorID_product_Get(this.handle);
    return result;
  }
  auto productSub() {
    auto result = NavigatorID_productSub_Get(this.handle);
    return result;
  }
  auto userAgent() {
    auto result = NavigatorID_userAgent_Get(this.handle);
    return result;
  }
  auto vendor() {
    auto result = NavigatorID_vendor_Get(this.handle);
    return result;
  }
  auto vendorSub() {
    auto result = NavigatorID_vendorSub_Get(this.handle);
    return result;
  }
  auto taintEnabled() {
    auto result = NavigatorID_taintEnabled(this.handle);
    return result;
  }
  auto oscpu() {
    auto result = NavigatorID_oscpu_Get(this.handle);
    return result;
  }
}
struct WorkerOptions {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return WorkerOptions(JsHandle(spasm_add__object()));
  }
  auto type(WorkerType type) {
    WorkerOptions_type_Set(this.handle, type);
  }
  auto type() {
    auto result = WorkerOptions_type_Get(this.handle);
    return result;
  }
  auto credentials(RequestCredentials credentials) {
    WorkerOptions_credentials_Set(this.handle, credentials);
  }
  auto credentials() {
    auto result = WorkerOptions_credentials_Get(this.handle);
    return result;
  }
  auto name(string name) {
    WorkerOptions_name_Set(this.handle, name);
  }
  auto name() {
    auto result = WorkerOptions_name_Get(this.handle);
    return result;
  }
}
enum WorkerType {
  classic,
  module_
}


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
extern (C) void AssignedNodesOptions_create(Handle);
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
extern (C) void CanvasDrawImage_drawImage__CanvasImageSource_double_double(Handle, CanvasImageSource, double, double);
extern (C) void CanvasDrawImage_drawImage__CanvasImageSource_double_double_double_double(Handle, CanvasImageSource, double, double, double, double);
extern (C) void CanvasDrawImage_drawImage__CanvasImageSource_double_double_double_double_double_double_double_double(Handle, CanvasImageSource, double, double, double, double, double, double, double, double);
extern (C) void CanvasDrawPath_beginPath(Handle);
extern (C) void CanvasDrawPath_fill__CanvasFillRule(Handle, CanvasFillRule);
extern (C) void CanvasDrawPath_fill__Handle_CanvasFillRule(Handle, Handle, CanvasFillRule);
extern (C) void CanvasDrawPath_stroke__(Handle);
extern (C) void CanvasDrawPath_stroke__Handle(Handle, Handle);
extern (C) void CanvasDrawPath_clip__CanvasFillRule(Handle, CanvasFillRule);
extern (C) void CanvasDrawPath_clip__Handle_CanvasFillRule(Handle, Handle, CanvasFillRule);
extern (C) bool CanvasDrawPath_isPointInPath__double_double_CanvasFillRule(Handle, double, double, CanvasFillRule);
extern (C) bool CanvasDrawPath_isPointInPath__Handle_double_double_CanvasFillRule(Handle, Handle, double, double, CanvasFillRule);
extern (C) bool CanvasDrawPath_isPointInStroke__double_double(Handle, double, double);
extern (C) bool CanvasDrawPath_isPointInStroke__Handle_double_double(Handle, Handle, double, double);
extern (C) Handle CanvasFillStrokeStyles_createLinearGradient(Handle, double, double, double, double);
extern (C) Handle CanvasFillStrokeStyles_createRadialGradient(Handle, double, double, double, double, double, double);
extern (C) Optional!(CanvasPattern) CanvasFillStrokeStyles_createPattern(Handle, CanvasImageSource, string);
extern (C) void CanvasGradient_addColorStop(Handle, double, string);
extern (C) Handle CanvasImageData_createImageData__int_int(Handle, int, int);
extern (C) Handle CanvasImageData_createImageData__Handle(Handle, Handle);
extern (C) Handle CanvasImageData_getImageData(Handle, int, int, int, int);
extern (C) void CanvasImageData_putImageData__Handle_int_int(Handle, Handle, int, int);
extern (C) void CanvasImageData_putImageData__Handle_int_int_int_int_int_int(Handle, Handle, int, int, int, int, int, int);
extern (C) void CanvasPath_closePath(Handle);
extern (C) void CanvasPath_moveTo(Handle, double, double);
extern (C) void CanvasPath_lineTo(Handle, double, double);
extern (C) void CanvasPath_quadraticCurveTo(Handle, double, double, double, double);
extern (C) void CanvasPath_bezierCurveTo(Handle, double, double, double, double, double, double);
extern (C) void CanvasPath_arcTo(Handle, double, double, double, double, double);
extern (C) void CanvasPath_rect(Handle, double, double, double, double);
extern (C) void CanvasPath_arc(Handle, double, double, double, double, double, bool);
extern (C) void CanvasPath_ellipse(Handle, double, double, double, double, double, double, double, bool);
extern (C) void CanvasPathDrawingStyles_setLineDash(Handle, Handle);
extern (C) Handle CanvasPathDrawingStyles_getLineDash(Handle);
extern (C) void CanvasPattern_setTransform(Handle, Handle);
extern (C) void CanvasRect_clearRect(Handle, double, double, double, double);
extern (C) void CanvasRect_fillRect(Handle, double, double, double, double);
extern (C) void CanvasRect_strokeRect(Handle, double, double, double, double);
extern (C) Handle CanvasRenderingContext2D_canvas_Get(Handle);
extern (C) void CanvasRenderingContext2DSettings_create(Handle);
extern (C) void CanvasRenderingContext2DSettings_alpha_Set(Handle, bool);
extern (C) bool CanvasRenderingContext2DSettings_alpha_Get(Handle);
extern (C) void CanvasState_save(Handle);
extern (C) void CanvasState_restore(Handle);
extern (C) void CanvasText_fillText(Handle, string, double, double, double);
extern (C) void CanvasText_strokeText(Handle, string, double, double, double);
extern (C) Handle CanvasText_measureText(Handle, string);
extern (C) void CanvasTransform_scale(Handle, double, double);
extern (C) void CanvasTransform_rotate(Handle, double);
extern (C) void CanvasTransform_translate(Handle, double, double);
extern (C) void CanvasTransform_transform(Handle, double, double, double, double, double, double);
extern (C) Handle CanvasTransform_getTransform(Handle);
extern (C) void CanvasTransform_setTransform__double_double_double_double_double_double(Handle, double, double, double, double, double, double);
extern (C) void CanvasTransform_setTransform__Handle(Handle, Handle);
extern (C) void CanvasTransform_resetTransform(Handle);
extern (C) void CanvasUserInterface_drawFocusIfNeeded__Handle(Handle, Handle);
extern (C) void CanvasUserInterface_drawFocusIfNeeded__Handle_Handle(Handle, Handle, Handle);
extern (C) void CanvasUserInterface_scrollPathIntoView__(Handle);
extern (C) void CanvasUserInterface_scrollPathIntoView__Handle(Handle, Handle);
extern (C) bool CloseEvent_wasClean_Get(Handle);
extern (C) ushort CloseEvent_code_Get(Handle);
extern (C) string CloseEvent_reason_Get(Handle);
extern (C) void CloseEventInit_create(Handle);
extern (C) void CloseEventInit_wasClean_Set(Handle, bool);
extern (C) bool CloseEventInit_wasClean_Get(Handle);
extern (C) void CloseEventInit_code_Set(Handle, ushort);
extern (C) ushort CloseEventInit_code_Get(Handle);
extern (C) void CloseEventInit_reason_Set(Handle, string);
extern (C) string CloseEventInit_reason_Get(Handle);
extern (C) void CustomElementRegistry_define(Handle, string, CustomElementConstructor, Handle);
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
extern (C) void DedicatedWorkerGlobalScope_postMessage__Any_sequence(Handle, Handle, Handle);
extern (C) void DedicatedWorkerGlobalScope_postMessage__Any_Handle(Handle, Handle, Handle);
extern (C) void DedicatedWorkerGlobalScope_close(Handle);
extern (C) void DedicatedWorkerGlobalScope_onmessage_Set(Handle, EventHandler);
extern (C) EventHandler DedicatedWorkerGlobalScope_onmessage_Get(Handle);
extern (C) void DedicatedWorkerGlobalScope_onmessageerror_Set(Handle, EventHandler);
extern (C) EventHandler DedicatedWorkerGlobalScope_onmessageerror_Get(Handle);
extern (C) Optional!(DataTransfer) DragEvent_dataTransfer_Get(Handle);
extern (C) void DragEventInit_create(Handle);
extern (C) void DragEventInit_dataTransfer_Set(Handle, bool, Handle);
extern (C) Optional!(DataTransfer) DragEventInit_dataTransfer_Get(Handle);
extern (C) bool ElementContentEditable_isContentEditable_Get(Handle);
extern (C) void ElementDefinitionOptions_create(Handle);
extern (C) void ElementDefinitionOptions_extends_Set(Handle, string);
extern (C) string ElementDefinitionOptions_extends_Get(Handle);
extern (C) string ErrorEvent_message_Get(Handle);
extern (C) string ErrorEvent_filename_Get(Handle);
extern (C) uint ErrorEvent_lineno_Get(Handle);
extern (C) uint ErrorEvent_colno_Get(Handle);
extern (C) Handle ErrorEvent_error_Get(Handle);
extern (C) void ErrorEventInit_create(Handle);
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
extern (C) void EventSourceInit_create(Handle);
extern (C) void EventSourceInit_withCredentials_Set(Handle, bool);
extern (C) bool EventSourceInit_withCredentials_Get(Handle);
extern (C) void External_AddSearchProvider(Handle);
extern (C) void External_IsSearchProviderInstalled(Handle);
extern (C) void FocusOptions_create(Handle);
extern (C) void FocusOptions_preventScroll_Set(Handle, bool);
extern (C) bool FocusOptions_preventScroll_Get(Handle);
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
extern (C) string HTMLCanvasElement_toDataURL(Handle, string, Handle);
extern (C) void HTMLCanvasElement_toBlob(Handle, BlobCallback, string, Handle);
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
extern (C) void HTMLInputElement_stepDown(Handle, int);
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
extern (C) void HTMLInputElement_setSelectionRange(Handle, uint, uint, string);
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
extern (C) void HTMLMediaElement_srcObject_Set(Handle, bool, MediaProvider);
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
extern (C) void HTMLOptionsCollection_add(Handle, SumType!(HTMLOptionElement, HTMLOptGroupElement), bool, SumType!(HTMLElement, int));
extern (C) void HTMLOptionsCollection_remove(Handle, int);
extern (C) void HTMLOptionsCollection_selectedIndex_Set(Handle, int);
extern (C) int HTMLOptionsCollection_selectedIndex_Get(Handle);
extern (C) Handle HTMLOrSVGElement_dataset_Get(Handle);
extern (C) void HTMLOrSVGElement_focus(Handle, Handle);
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
extern (C) void HTMLSelectElement_add(Handle, SumType!(HTMLOptionElement, HTMLOptGroupElement), bool, SumType!(HTMLElement, int));
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
extern (C) Handle HTMLSlotElement_assignedElements(Handle, Handle);
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
extern (C) void HTMLTextAreaElement_setSelectionRange(Handle, uint, uint, string);
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
extern (C) void HashChangeEventInit_create(Handle);
extern (C) void HashChangeEventInit_oldURL_Set(Handle, string);
extern (C) string HashChangeEventInit_oldURL_Get(Handle);
extern (C) void HashChangeEventInit_newURL_Set(Handle, string);
extern (C) string HashChangeEventInit_newURL_Get(Handle);
extern (C) uint History_length_Get(Handle);
extern (C) void History_scrollRestoration_Set(Handle, ScrollRestoration);
extern (C) ScrollRestoration History_scrollRestoration_Get(Handle);
extern (C) Handle History_state_Get(Handle);
extern (C) void History_go(Handle, int);
extern (C) void History_back(Handle);
extern (C) void History_forward(Handle);
extern (C) void History_pushState(Handle, Handle, string, bool, string);
extern (C) void History_replaceState(Handle, Handle, string, bool, string);
extern (C) uint ImageBitmap_width_Get(Handle);
extern (C) uint ImageBitmap_height_Get(Handle);
extern (C) void ImageBitmap_close(Handle);
extern (C) void ImageBitmapOptions_create(Handle);
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
extern (C) void ImageBitmapRenderingContextSettings_create(Handle);
extern (C) void ImageBitmapRenderingContextSettings_alpha_Set(Handle, bool);
extern (C) bool ImageBitmapRenderingContextSettings_alpha_Get(Handle);
extern (C) uint ImageData_width_Get(Handle);
extern (C) uint ImageData_height_Get(Handle);
extern (C) Handle ImageData_data_Get(Handle);
extern (C) void ImageEncodeOptions_create(Handle);
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
extern (C) void MessageEvent_initMessageEvent(Handle, string, bool, bool, Handle, string, string, bool, MessageEventSource, Handle);
extern (C) void MessageEventInit_create(Handle);
extern (C) void MessageEventInit_data_Set(Handle, Handle);
extern (C) Handle MessageEventInit_data_Get(Handle);
extern (C) void MessageEventInit_origin_Set(Handle, string);
extern (C) string MessageEventInit_origin_Get(Handle);
extern (C) void MessageEventInit_lastEventId_Set(Handle, string);
extern (C) string MessageEventInit_lastEventId_Get(Handle);
extern (C) void MessageEventInit_source_Set(Handle, bool, MessageEventSource);
extern (C) Optional!(MessageEventSource) MessageEventInit_source_Get(Handle);
extern (C) void MessageEventInit_ports_Set(Handle, Handle);
extern (C) Handle MessageEventInit_ports_Get(Handle);
extern (C) void MessagePort_postMessage__Any_sequence(Handle, Handle, Handle);
extern (C) void MessagePort_postMessage__Any_Handle(Handle, Handle, Handle);
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
extern (C) bool Navigator_vibrate(Handle, VibratePattern);
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
extern (C) Handle OffscreenCanvas_transferToImageBitmap(Handle);
extern (C) Handle OffscreenCanvas_convertToBlob(Handle, Handle);
extern (C) void OffscreenCanvasRenderingContext2D_commit(Handle);
extern (C) Handle OffscreenCanvasRenderingContext2D_canvas_Get(Handle);
extern (C) bool PageTransitionEvent_persisted_Get(Handle);
extern (C) void PageTransitionEventInit_create(Handle);
extern (C) void PageTransitionEventInit_persisted_Set(Handle, bool);
extern (C) bool PageTransitionEventInit_persisted_Get(Handle);
extern (C) void Path2D_addPath(Handle, Handle, Handle);
extern (C) string Plugin_name_Get(Handle);
extern (C) string Plugin_description_Get(Handle);
extern (C) string Plugin_filename_Get(Handle);
extern (C) uint Plugin_length_Get(Handle);
extern (C) Optional!(MimeType) Plugin_item_getter(Handle, uint);
extern (C) Optional!(MimeType) Plugin_namedItem_getter(Handle, string);
extern (C) void PluginArray_refresh(Handle, bool);
extern (C) uint PluginArray_length_Get(Handle);
extern (C) Optional!(Plugin) PluginArray_item_getter(Handle, uint);
extern (C) Optional!(Plugin) PluginArray_namedItem_getter(Handle, string);
extern (C) Handle PopStateEvent_state_Get(Handle);
extern (C) void PopStateEventInit_create(Handle);
extern (C) void PopStateEventInit_state_Set(Handle, Handle);
extern (C) Handle PopStateEventInit_state_Get(Handle);
extern (C) void PostMessageOptions_create(Handle);
extern (C) void PostMessageOptions_transfer_Set(Handle, Handle);
extern (C) Handle PostMessageOptions_transfer_Get(Handle);
extern (C) Handle PromiseRejectionEvent_promise_Get(Handle);
extern (C) Handle PromiseRejectionEvent_reason_Get(Handle);
extern (C) void PromiseRejectionEventInit_create(Handle);
extern (C) void PromiseRejectionEventInit_promise_Set(Handle, Handle);
extern (C) Handle PromiseRejectionEventInit_promise_Get(Handle);
extern (C) void PromiseRejectionEventInit_reason_Set(Handle, Handle);
extern (C) Handle PromiseRejectionEventInit_reason_Get(Handle);
extern (C) void RadioNodeList_value_Set(Handle, string);
extern (C) string RadioNodeList_value_Get(Handle);
extern (C) Handle SharedWorker_port_Get(Handle);
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
extern (C) void StorageEventInit_create(Handle);
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
extern (C) void TrackEventInit_create(Handle);
extern (C) void TrackEventInit_track_Set(Handle, bool, SumType!(VideoTrack, AudioTrack, TextTrack));
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
extern (C) void WebSocket_onmessage_Set(Handle, EventHandler);
extern (C) EventHandler WebSocket_onmessage_Get(Handle);
extern (C) void WebSocket_binaryType_Set(Handle, BinaryType);
extern (C) BinaryType WebSocket_binaryType_Get(Handle);
extern (C) void WebSocket_send__string(Handle, string);
extern (C) void WebSocket_send__Handle(Handle, Handle);
extern (C) void WebSocket_send__ArrayBufferView(Handle, ArrayBufferView);
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
extern (C) Handle Window_getter__string(Handle, string);
extern (C) Handle Window_navigator_Get(Handle);
extern (C) Handle Window_applicationCache_Get(Handle);
extern (C) void Window_alert__(Handle);
extern (C) void Window_alert__string(Handle, string);
extern (C) bool Window_confirm(Handle, string);
extern (C) Optional!(string) Window_prompt(Handle, string, string);
extern (C) void Window_print(Handle);
extern (C) void Window_postMessage__Any_string_sequence(Handle, Handle, string, Handle);
extern (C) void Window_postMessage__Any_Handle(Handle, Handle, Handle);
extern (C) Handle Window_event_Get(Handle);
extern (C) void Window_captureEvents(Handle);
extern (C) void Window_releaseEvents(Handle);
extern (C) Handle Window_external_Get(Handle);
extern (C) short Window_orientation_Get(Handle);
extern (C) void Window_onorientationchange_Set(Handle, EventHandler);
extern (C) EventHandler Window_onorientationchange_Get(Handle);
extern (C) Handle WindowLocalStorage_localStorage_Get(Handle);
extern (C) string WindowOrWorkerGlobalScope_origin_Get(Handle);
extern (C) string WindowOrWorkerGlobalScope_btoa(Handle, string);
extern (C) string WindowOrWorkerGlobalScope_atob(Handle, string);
extern (C) int WindowOrWorkerGlobalScope_setTimeout(Handle, TimerHandler, int, Handle);
extern (C) void WindowOrWorkerGlobalScope_clearTimeout(Handle, int);
extern (C) int WindowOrWorkerGlobalScope_setInterval(Handle, TimerHandler, int, Handle);
extern (C) void WindowOrWorkerGlobalScope_clearInterval(Handle, int);
extern (C) void WindowOrWorkerGlobalScope_queueMicrotask(Handle, VoidFunction);
extern (C) Handle WindowOrWorkerGlobalScope_createImageBitmap__ImageBitmapSource_Handle(Handle, ImageBitmapSource, Handle);
extern (C) Handle WindowOrWorkerGlobalScope_createImageBitmap__ImageBitmapSource_int_int_int_int_Handle(Handle, ImageBitmapSource, int, int, int, int, Handle);
extern (C) Handle WindowOrWorkerGlobalScope_fetch(Handle, RequestInfo, Handle);
extern (C) Handle WindowOrWorkerGlobalScope_indexedDB_Get(Handle);
extern (C) Handle WindowOrWorkerGlobalScope_caches_Get(Handle);
extern (C) void WindowPostMessageOptions_create(Handle);
extern (C) void WindowPostMessageOptions_targetOrigin_Set(Handle, string);
extern (C) string WindowPostMessageOptions_targetOrigin_Get(Handle);
extern (C) Handle WindowSessionStorage_sessionStorage_Get(Handle);
extern (C) void Worker_terminate(Handle);
extern (C) void Worker_postMessage__Any_sequence(Handle, Handle, Handle);
extern (C) void Worker_postMessage__Any_Handle(Handle, Handle, Handle);
extern (C) void Worker_onmessage_Set(Handle, EventHandler);
extern (C) EventHandler Worker_onmessage_Get(Handle);
extern (C) void Worker_onmessageerror_Set(Handle, EventHandler);
extern (C) EventHandler Worker_onmessageerror_Get(Handle);
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
extern (C) void WorkerOptions_create(Handle);
extern (C) void WorkerOptions_type_Set(Handle, WorkerType);
extern (C) WorkerType WorkerOptions_type_Get(Handle);
extern (C) void WorkerOptions_credentials_Set(Handle, RequestCredentials);
extern (C) RequestCredentials WorkerOptions_credentials_Get(Handle);
extern (C) void WorkerOptions_name_Set(Handle, string);
extern (C) string WorkerOptions_name_Get(Handle);