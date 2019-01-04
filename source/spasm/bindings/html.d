module spasm.bindings.html;

import spasm.types;
import spasm.bindings.common : ArrayBufferView;
import spasm.bindings.fileapi : Blob;
import spasm.bindings.domhighrestimestamp : DOMHighResTimeStamp;
import spasm.bindings.geometry : DOMMatrix;
import spasm.bindings.geometry : DOMMatrix2DInit;
import spasm.bindings.dom : DOMTokenList;
import spasm.bindings.dom : Document;
import spasm.bindings.dom : DocumentFragment;
import spasm.bindings.dom : Element;
import spasm.bindings.dom : Event;
import spasm.bindings.fileapi : File;
import spasm.bindings.fileapi : FileList;
import spasm.bindings.common : Function;
import spasm.bindings.dom : HTMLCollection;
import spasm.bindings.dom : Node;
import spasm.bindings.dom : NodeList;
import spasm.bindings.fetch : RequestCredentials;
import spasm.bindings.svg : SVGImageElement;
import spasm.bindings.svg : SVGScriptElement;
import spasm.bindings.common : VoidFunction;
import spasm.bindings.webgl2 : WebGL2RenderingContext;
import spasm.bindings.webgl : WebGLRenderingContext;

struct ApplicationCache {
  EventTarget _parent;
  alias _parent this;
  enum ushort UNCACHED = 0;
  enum ushort IDLE = 1;
  enum ushort CHECKING = 2;
  enum ushort DOWNLOADING = 3;
  enum ushort UPDATEREADY = 4;
  enum ushort OBSOLETE = 5;
  ushort status() {
    return ApplicationCache_status_Get(handle);
  }
  void update() {
    ApplicationCache_update(handle);
  }
  void abort() {
    ApplicationCache_abort(handle);
  }
  void swapCache() {
    ApplicationCache_swapCache(handle);
  }
  void onchecking(EventHandler onchecking) {
    ApplicationCache_onchecking_Set(handle, !onchecking.empty, onchecking.value);
  }
  EventHandler onchecking() {
    return ApplicationCache_onchecking_Get(handle);
  }
  void onerror(EventHandler onerror) {
    ApplicationCache_onerror_Set(handle, !onerror.empty, onerror.value);
  }
  EventHandler onerror() {
    return ApplicationCache_onerror_Get(handle);
  }
  void onnoupdate(EventHandler onnoupdate) {
    ApplicationCache_onnoupdate_Set(handle, !onnoupdate.empty, onnoupdate.value);
  }
  EventHandler onnoupdate() {
    return ApplicationCache_onnoupdate_Get(handle);
  }
  void ondownloading(EventHandler ondownloading) {
    ApplicationCache_ondownloading_Set(handle, !ondownloading.empty, ondownloading.value);
  }
  EventHandler ondownloading() {
    return ApplicationCache_ondownloading_Get(handle);
  }
  void onprogress(EventHandler onprogress) {
    ApplicationCache_onprogress_Set(handle, !onprogress.empty, onprogress.value);
  }
  EventHandler onprogress() {
    return ApplicationCache_onprogress_Get(handle);
  }
  void onupdateready(EventHandler onupdateready) {
    ApplicationCache_onupdateready_Set(handle, !onupdateready.empty, onupdateready.value);
  }
  EventHandler onupdateready() {
    return ApplicationCache_onupdateready_Get(handle);
  }
  void oncached(EventHandler oncached) {
    ApplicationCache_oncached_Set(handle, !oncached.empty, oncached.value);
  }
  EventHandler oncached() {
    return ApplicationCache_oncached_Get(handle);
  }
  void onobsolete(EventHandler onobsolete) {
    ApplicationCache_onobsolete_Set(handle, !onobsolete.empty, onobsolete.value);
  }
  EventHandler onobsolete() {
    return ApplicationCache_onobsolete_Get(handle);
  }
}
struct AssignedNodesOptions {
  JsHandle handle;
  alias handle this;
  void flatten(bool flatten) {
    AssignedNodesOptions_flatten_Set(handle, flatten);
  }
  bool flatten() {
    return AssignedNodesOptions_flatten_Get(handle);
  }
}
struct AudioTrack {
  JsHandle handle;
  alias handle this;
  string id() {
    return AudioTrack_id_Get(handle);
  }
  string kind() {
    return AudioTrack_kind_Get(handle);
  }
  string label() {
    return AudioTrack_label_Get(handle);
  }
  string language() {
    return AudioTrack_language_Get(handle);
  }
  void enabled(bool enabled) {
    AudioTrack_enabled_Set(handle, enabled);
  }
  bool enabled() {
    return AudioTrack_enabled_Get(handle);
  }
}
struct AudioTrackList {
  EventTarget _parent;
  alias _parent this;
  uint length() {
    return AudioTrackList_length_Get(handle);
  }
  AudioTrack opIndex(uint index) {
    return AudioTrack(AudioTrackList_getter__uint(handle, index));
  }
  AudioTrack opDispatch(uint index)() {
    return AudioTrack(AudioTrackList_getter__uint(handle, index));
  }
  Optional!(AudioTrack) getTrackById(string id) {
    return AudioTrackList_getTrackById(handle, id);
  }
  void onchange(EventHandler onchange) {
    AudioTrackList_onchange_Set(handle, !onchange.empty, onchange.value);
  }
  EventHandler onchange() {
    return AudioTrackList_onchange_Get(handle);
  }
  void onaddtrack(EventHandler onaddtrack) {
    AudioTrackList_onaddtrack_Set(handle, !onaddtrack.empty, onaddtrack.value);
  }
  EventHandler onaddtrack() {
    return AudioTrackList_onaddtrack_Get(handle);
  }
  void onremovetrack(EventHandler onremovetrack) {
    AudioTrackList_onremovetrack_Set(handle, !onremovetrack.empty, onremovetrack.value);
  }
  EventHandler onremovetrack() {
    return AudioTrackList_onremovetrack_Get(handle);
  }
}
struct BarProp {
  JsHandle handle;
  alias handle this;
  bool visible() {
    return BarProp_visible_Get(handle);
  }
}
struct BeforeUnloadEvent {
  Event _parent;
  alias _parent this;
  void returnValue(string returnValue) {
    BeforeUnloadEvent_returnValue_Set(handle, returnValue);
  }
  string returnValue() {
    return BeforeUnloadEvent_returnValue_Get(handle);
  }
}
enum BinaryType {
  blob,
  arraybuffer
}
alias BlobCallback = void delegate(Blob);
struct BroadcastChannel {
  EventTarget _parent;
  alias _parent this;
  string name() {
    return BroadcastChannel_name_Get(handle);
  }
  void postMessage(Any message) {
    BroadcastChannel_postMessage(handle, message.handle);
  }
  void close() {
    BroadcastChannel_close(handle);
  }
  void onmessage(EventHandler onmessage) {
    BroadcastChannel_onmessage_Set(handle, !onmessage.empty, onmessage.value);
  }
  EventHandler onmessage() {
    return BroadcastChannel_onmessage_Get(handle);
  }
  void onmessageerror(EventHandler onmessageerror) {
    BroadcastChannel_onmessageerror_Set(handle, !onmessageerror.empty, onmessageerror.value);
  }
  EventHandler onmessageerror() {
    return BroadcastChannel_onmessageerror_Get(handle);
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
  void addColorStop(double offset, string color) {
    CanvasGradient_addColorStop(handle, offset, color);
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
  void setTransform(DOMMatrix2DInit transform) {
    CanvasPattern_setTransform(handle, transform.handle);
  }
}
struct CanvasRenderingContext2D {
  JsHandle handle;
  alias handle this;
  HTMLCanvasElement canvas() {
    return HTMLCanvasElement(CanvasRenderingContext2D_canvas_Get(handle));
  }
  void closePath() {
    CanvasPath_closePath(handle);
  }
  void moveTo(double x, double y) {
    CanvasPath_moveTo(handle, x, y);
  }
  void lineTo(double x, double y) {
    CanvasPath_lineTo(handle, x, y);
  }
  void quadraticCurveTo(double cpx, double cpy, double x, double y) {
    CanvasPath_quadraticCurveTo(handle, cpx, cpy, x, y);
  }
  void bezierCurveTo(double cp1x, double cp1y, double cp2x, double cp2y, double x, double y) {
    CanvasPath_bezierCurveTo(handle, cp1x, cp1y, cp2x, cp2y, x, y);
  }
  void arcTo(double x1, double y1, double x2, double y2, double radius) {
    CanvasPath_arcTo(handle, x1, y1, x2, y2, radius);
  }
  void rect(double x, double y, double w, double h) {
    CanvasPath_rect(handle, x, y, w, h);
  }
  void arc(double x, double y, double radius, double startAngle, double endAngle, bool anticlockwise = false) {
    CanvasPath_arc(handle, x, y, radius, startAngle, endAngle, anticlockwise);
  }
  void ellipse(double x, double y, double radiusX, double radiusY, double rotation, double startAngle, double endAngle, bool anticlockwise = false) {
    CanvasPath_ellipse(handle, x, y, radiusX, radiusY, rotation, startAngle, endAngle, anticlockwise);
  }
  void setLineDash(Sequence!(double) segments) {
    CanvasPathDrawingStyles_setLineDash(handle, segments.handle);
  }
  Sequence!(double) getLineDash() {
    return Sequence!(double)(CanvasPathDrawingStyles_getLineDash(handle));
  }
  ImageData createImageData(int sw, int sh) {
    return ImageData(CanvasImageData_createImageData(handle, sw, sh));
  }
  ImageData createImageData(ImageData imagedata) {
    return ImageData(CanvasImageData_createImageData(handle, imagedata.handle));
  }
  ImageData getImageData(int sx, int sy, int sw, int sh) {
    return ImageData(CanvasImageData_getImageData(handle, sx, sy, sw, sh));
  }
  void putImageData(ImageData imagedata, int dx, int dy) {
    CanvasImageData_putImageData(handle, imagedata.handle, dx, dy);
  }
  void putImageData(ImageData imagedata, int dx, int dy, int dirtyX, int dirtyY, int dirtyWidth, int dirtyHeight) {
    CanvasImageData_putImageData(handle, imagedata.handle, dx, dy, dirtyX, dirtyY, dirtyWidth, dirtyHeight);
  }
  void drawImage(CanvasImageSource image, double dx, double dy) {
    CanvasDrawImage_drawImage(handle, image, dx, dy);
  }
  void drawImage(CanvasImageSource image, double dx, double dy, double dw, double dh) {
    CanvasDrawImage_drawImage(handle, image, dx, dy, dw, dh);
  }
  void drawImage(CanvasImageSource image, double sx, double sy, double sw, double sh, double dx, double dy, double dw, double dh) {
    CanvasDrawImage_drawImage(handle, image, sx, sy, sw, sh, dx, dy, dw, dh);
  }
  void fillText(string text, double x, double y, double maxWidth) {
    CanvasText_fillText(handle, text, x, y, maxWidth);
  }
  void strokeText(string text, double x, double y, double maxWidth) {
    CanvasText_strokeText(handle, text, x, y, maxWidth);
  }
  TextMetrics measureText(string text) {
    return TextMetrics(CanvasText_measureText(handle, text));
  }
  void drawFocusIfNeeded(Element element) {
    CanvasUserInterface_drawFocusIfNeeded(handle, element.handle);
  }
  void drawFocusIfNeeded(Path2D path, Element element) {
    CanvasUserInterface_drawFocusIfNeeded(handle, path.handle, element.handle);
  }
  void scrollPathIntoView() {
    CanvasUserInterface_scrollPathIntoView(handle);
  }
  void scrollPathIntoView(Path2D path) {
    CanvasUserInterface_scrollPathIntoView(handle, path.handle);
  }
  void beginPath() {
    CanvasDrawPath_beginPath(handle);
  }
  void fill(CanvasFillRule fillRule = "nonzero") {
    CanvasDrawPath_fill(handle, fillRule);
  }
  void fill(Path2D path, CanvasFillRule fillRule = "nonzero") {
    CanvasDrawPath_fill(handle, path.handle, fillRule);
  }
  void stroke() {
    CanvasDrawPath_stroke(handle);
  }
  void stroke(Path2D path) {
    CanvasDrawPath_stroke(handle, path.handle);
  }
  void clip(CanvasFillRule fillRule = "nonzero") {
    CanvasDrawPath_clip(handle, fillRule);
  }
  void clip(Path2D path, CanvasFillRule fillRule = "nonzero") {
    CanvasDrawPath_clip(handle, path.handle, fillRule);
  }
  bool isPointInPath(double x, double y, CanvasFillRule fillRule = "nonzero") {
    return CanvasDrawPath_isPointInPath(handle, x, y, fillRule);
  }
  bool isPointInPath(Path2D path, double x, double y, CanvasFillRule fillRule = "nonzero") {
    return CanvasDrawPath_isPointInPath(handle, path.handle, x, y, fillRule);
  }
  bool isPointInStroke(double x, double y) {
    return CanvasDrawPath_isPointInStroke(handle, x, y);
  }
  bool isPointInStroke(Path2D path, double x, double y) {
    return CanvasDrawPath_isPointInStroke(handle, path.handle, x, y);
  }
  void clearRect(double x, double y, double w, double h) {
    CanvasRect_clearRect(handle, x, y, w, h);
  }
  void fillRect(double x, double y, double w, double h) {
    CanvasRect_fillRect(handle, x, y, w, h);
  }
  void strokeRect(double x, double y, double w, double h) {
    CanvasRect_strokeRect(handle, x, y, w, h);
  }
  CanvasGradient createLinearGradient(double x0, double y0, double x1, double y1) {
    return CanvasGradient(CanvasFillStrokeStyles_createLinearGradient(handle, x0, y0, x1, y1));
  }
  CanvasGradient createRadialGradient(double x0, double y0, double r0, double x1, double y1, double r1) {
    return CanvasGradient(CanvasFillStrokeStyles_createRadialGradient(handle, x0, y0, r0, x1, y1, r1));
  }
  Optional!(CanvasPattern) createPattern(CanvasImageSource image, string repetition) {
    return CanvasFillStrokeStyles_createPattern(handle, image, repetition);
  }
  void scale(double x, double y) {
    CanvasTransform_scale(handle, x, y);
  }
  void rotate(double angle) {
    CanvasTransform_rotate(handle, angle);
  }
  void translate(double x, double y) {
    CanvasTransform_translate(handle, x, y);
  }
  void transform(double a, double b, double c, double d, double e, double f) {
    CanvasTransform_transform(handle, a, b, c, d, e, f);
  }
  DOMMatrix getTransform() {
    return DOMMatrix(CanvasTransform_getTransform(handle));
  }
  void setTransform(double a, double b, double c, double d, double e, double f) {
    CanvasTransform_setTransform(handle, a, b, c, d, e, f);
  }
  void setTransform(DOMMatrix2DInit transform) {
    CanvasTransform_setTransform(handle, transform.handle);
  }
  void resetTransform() {
    CanvasTransform_resetTransform(handle);
  }
  void save() {
    CanvasState_save(handle);
  }
  void restore() {
    CanvasState_restore(handle);
  }
}
struct CanvasRenderingContext2DSettings {
  JsHandle handle;
  alias handle this;
  void alpha(bool alpha) {
    CanvasRenderingContext2DSettings_alpha_Set(handle, alpha);
  }
  bool alpha() {
    return CanvasRenderingContext2DSettings_alpha_Get(handle);
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
  bool wasClean() {
    return CloseEvent_wasClean_Get(handle);
  }
  ushort code() {
    return CloseEvent_code_Get(handle);
  }
  USVString reason() {
    return USVString(CloseEvent_reason_Get(handle));
  }
}
struct CloseEventInit {
  EventInit _parent;
  alias _parent this;
  void wasClean(bool wasClean) {
    CloseEventInit_wasClean_Set(handle, wasClean);
  }
  bool wasClean() {
    return CloseEventInit_wasClean_Get(handle);
  }
  void code(ushort code) {
    CloseEventInit_code_Set(handle, code);
  }
  ushort code() {
    return CloseEventInit_code_Get(handle);
  }
  void reason(USVString reason) {
    CloseEventInit_reason_Set(handle, reason.handle);
  }
  USVString reason() {
    return USVString(CloseEventInit_reason_Get(handle));
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
  void define(string name, CustomElementConstructor constructor, ElementDefinitionOptions options) {
    CustomElementRegistry_define(handle, name, constructor, options.handle);
  }
  Any get(string name) {
    return Any(CustomElementRegistry_get(handle, name));
  }
  Promise!(void) whenDefined(string name) {
    return Promise!(void)(CustomElementRegistry_whenDefined(handle, name));
  }
  void upgrade(Node root) {
    CustomElementRegistry_upgrade(handle, root.handle);
  }
}
struct DOMStringList {
  JsHandle handle;
  alias handle this;
  uint length() {
    return DOMStringList_length_Get(handle);
  }
  Optional!(string) item(uint index) {
    return DOMStringList_item_getter(handle, index);
  }
  bool contains(string string) {
    return DOMStringList_contains(handle, string);
  }
}
struct DOMStringMap {
  JsHandle handle;
  alias handle this;
  string opIndex(string name) {
    return DOMStringMap_getter__string(handle, name);
  }
  string opDispatch(string name)() {
    return DOMStringMap_getter__string(handle, name);
  }
  void opIndexAssign(string value, string name) {
    DOMStringMap_setter__string_string(handle, name, value);
  }
  void opDispatch(string name)(string value) {
    DOMStringMap_setter__string_string(handle, name, value);
  }
  void remove(string name) {
    DOMStringMap_deleter(handle, name);
  }
}
struct DataTransfer {
  JsHandle handle;
  alias handle this;
  void dropEffect(string dropEffect) {
    DataTransfer_dropEffect_Set(handle, dropEffect);
  }
  string dropEffect() {
    return DataTransfer_dropEffect_Get(handle);
  }
  void effectAllowed(string effectAllowed) {
    DataTransfer_effectAllowed_Set(handle, effectAllowed);
  }
  string effectAllowed() {
    return DataTransfer_effectAllowed_Get(handle);
  }
  DataTransferItemList items() {
    return DataTransferItemList(DataTransfer_items_Get(handle));
  }
  void setDragImage(Element image, int x, int y) {
    DataTransfer_setDragImage(handle, image.handle, x, y);
  }
  FrozenArray!(string) types() {
    return FrozenArray!(string)(DataTransfer_types_Get(handle));
  }
  string getData(string format) {
    return DataTransfer_getData(handle, format);
  }
  void setData(string format, string data) {
    DataTransfer_setData(handle, format, data);
  }
  void clearData(string format) {
    DataTransfer_clearData(handle, format);
  }
  FileList files() {
    return FileList(DataTransfer_files_Get(handle));
  }
}
struct DataTransferItem {
  JsHandle handle;
  alias handle this;
  string kind() {
    return DataTransferItem_kind_Get(handle);
  }
  string type() {
    return DataTransferItem_type_Get(handle);
  }
  void getAsString(Optional!(FunctionStringCallback) _callback) {
    DataTransferItem_getAsString(handle, !_callback.empty, _callback.value);
  }
  Optional!(File) getAsFile() {
    return DataTransferItem_getAsFile(handle);
  }
}
struct DataTransferItemList {
  JsHandle handle;
  alias handle this;
  uint length() {
    return DataTransferItemList_length_Get(handle);
  }
  DataTransferItem opIndex(uint index) {
    return DataTransferItem(DataTransferItemList_getter__uint(handle, index));
  }
  DataTransferItem opDispatch(uint index)() {
    return DataTransferItem(DataTransferItemList_getter__uint(handle, index));
  }
  Optional!(DataTransferItem) add(string data, string type) {
    return DataTransferItemList_add__string_string(handle, data, type);
  }
  Optional!(DataTransferItem) add(File data) {
    return DataTransferItemList_add__JsHandle(handle, data.handle);
  }
  void remove(uint index) {
    DataTransferItemList_remove(handle, index);
  }
  void clear() {
    DataTransferItemList_clear(handle);
  }
}
struct DedicatedWorkerGlobalScope {
  WorkerGlobalScope _parent;
  alias _parent this;
  string name() {
    return DedicatedWorkerGlobalScope_name_Get(handle);
  }
  void postMessage(Any message, Sequence!(Object) transfer) {
    DedicatedWorkerGlobalScope_postMessage__any_sequence_object(handle, message.handle, transfer.handle);
  }
  void postMessage(Any message, PostMessageOptions options) {
    DedicatedWorkerGlobalScope_postMessage__any_JsHandle(handle, message.handle, options.handle);
  }
  void close() {
    DedicatedWorkerGlobalScope_close(handle);
  }
  void onmessage(EventHandler onmessage) {
    DedicatedWorkerGlobalScope_onmessage_Set(handle, !onmessage.empty, onmessage.value);
  }
  EventHandler onmessage() {
    return DedicatedWorkerGlobalScope_onmessage_Get(handle);
  }
  void onmessageerror(EventHandler onmessageerror) {
    DedicatedWorkerGlobalScope_onmessageerror_Set(handle, !onmessageerror.empty, onmessageerror.value);
  }
  EventHandler onmessageerror() {
    return DedicatedWorkerGlobalScope_onmessageerror_Get(handle);
  }
  uint requestAnimationFrame(FrameRequestCallback callback) {
    return AnimationFrameProvider_requestAnimationFrame(handle, callback);
  }
  void cancelAnimationFrame(uint handle) {
    AnimationFrameProvider_cancelAnimationFrame(handle, handle);
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
  Optional!(DataTransfer) dataTransfer() {
    return DragEvent_dataTransfer_Get(handle);
  }
}
struct DragEventInit {
  MouseEventInit _parent;
  alias _parent this;
  void dataTransfer(Optional!(DataTransfer) dataTransfer) {
    DragEventInit_dataTransfer_Set(handle, !dataTransfer.empty, dataTransfer.value.handle);
  }
  Optional!(DataTransfer) dataTransfer() {
    return DragEventInit_dataTransfer_Get(handle);
  }
}
struct ElementDefinitionOptions {
  JsHandle handle;
  alias handle this;
  void extends(string extends) {
    ElementDefinitionOptions_extends_Set(handle, extends);
  }
  string extends() {
    return ElementDefinitionOptions_extends_Get(handle);
  }
}
struct ErrorEvent {
  Event _parent;
  alias _parent this;
  string message() {
    return ErrorEvent_message_Get(handle);
  }
  USVString filename() {
    return USVString(ErrorEvent_filename_Get(handle));
  }
  uint lineno() {
    return ErrorEvent_lineno_Get(handle);
  }
  uint colno() {
    return ErrorEvent_colno_Get(handle);
  }
  Any error() {
    return Any(ErrorEvent_error_Get(handle));
  }
}
struct ErrorEventInit {
  EventInit _parent;
  alias _parent this;
  void message(string message) {
    ErrorEventInit_message_Set(handle, message);
  }
  string message() {
    return ErrorEventInit_message_Get(handle);
  }
  void filename(USVString filename) {
    ErrorEventInit_filename_Set(handle, filename.handle);
  }
  USVString filename() {
    return USVString(ErrorEventInit_filename_Get(handle));
  }
  void lineno(uint lineno) {
    ErrorEventInit_lineno_Set(handle, lineno);
  }
  uint lineno() {
    return ErrorEventInit_lineno_Get(handle);
  }
  void colno(uint colno) {
    ErrorEventInit_colno_Set(handle, colno);
  }
  uint colno() {
    return ErrorEventInit_colno_Get(handle);
  }
  void error(Any error) {
    ErrorEventInit_error_Set(handle, error.handle);
  }
  Any error() {
    return Any(ErrorEventInit_error_Get(handle));
  }
}
alias EventHandler = Optional!(EventHandlerNonNull);
alias EventHandlerNonNull = Any delegate(Event);
struct EventSource {
  EventTarget _parent;
  alias _parent this;
  USVString url() {
    return USVString(EventSource_url_Get(handle));
  }
  bool withCredentials() {
    return EventSource_withCredentials_Get(handle);
  }
  enum ushort CONNECTING = 0;
  enum ushort OPEN = 1;
  enum ushort CLOSED = 2;
  ushort readyState() {
    return EventSource_readyState_Get(handle);
  }
  void onopen(EventHandler onopen) {
    EventSource_onopen_Set(handle, !onopen.empty, onopen.value);
  }
  EventHandler onopen() {
    return EventSource_onopen_Get(handle);
  }
  void onmessage(EventHandler onmessage) {
    EventSource_onmessage_Set(handle, !onmessage.empty, onmessage.value);
  }
  EventHandler onmessage() {
    return EventSource_onmessage_Get(handle);
  }
  void onerror(EventHandler onerror) {
    EventSource_onerror_Set(handle, !onerror.empty, onerror.value);
  }
  EventHandler onerror() {
    return EventSource_onerror_Get(handle);
  }
  void close() {
    EventSource_close(handle);
  }
}
struct EventSourceInit {
  JsHandle handle;
  alias handle this;
  void withCredentials(bool withCredentials) {
    EventSourceInit_withCredentials_Set(handle, withCredentials);
  }
  bool withCredentials() {
    return EventSourceInit_withCredentials_Get(handle);
  }
}
struct External {
  JsHandle handle;
  alias handle this;
  void AddSearchProvider() {
    External_AddSearchProvider(handle);
  }
  void IsSearchProviderInstalled() {
    External_IsSearchProviderInstalled(handle);
  }
}
struct FocusOptions {
  JsHandle handle;
  alias handle this;
  void preventScroll(bool preventScroll) {
    FocusOptions_preventScroll_Set(handle, preventScroll);
  }
  bool preventScroll() {
    return FocusOptions_preventScroll_Get(handle);
  }
}
alias FrameRequestCallback = void delegate(DOMHighResTimeStamp);
alias FunctionStringCallback = void delegate(string);
struct HTMLAllCollection {
  JsHandle handle;
  alias handle this;
  uint length() {
    return HTMLAllCollection_length_Get(handle);
  }
  Element opIndex(uint index) {
    return Element(HTMLAllCollection_getter__uint(handle, index));
  }
  Element opDispatch(uint index)() {
    return Element(HTMLAllCollection_getter__uint(handle, index));
  }
  Optional!(SumType!(HTMLCollection, Element)) namedItem(string name) {
    return HTMLAllCollection_namedItem_getter(handle, name);
  }
  Optional!(SumType!(HTMLCollection, Element)) item(string nameOrIndex) {
    return HTMLAllCollection_item(handle, nameOrIndex);
  }
}
struct HTMLAnchorElement {
  HTMLElement _parent;
  alias _parent this;
  void target(string target) {
    HTMLAnchorElement_target_Set(handle, target);
  }
  string target() {
    return HTMLAnchorElement_target_Get(handle);
  }
  void download(string download) {
    HTMLAnchorElement_download_Set(handle, download);
  }
  string download() {
    return HTMLAnchorElement_download_Get(handle);
  }
  void ping(USVString ping) {
    HTMLAnchorElement_ping_Set(handle, ping.handle);
  }
  USVString ping() {
    return USVString(HTMLAnchorElement_ping_Get(handle));
  }
  void rel(string rel) {
    HTMLAnchorElement_rel_Set(handle, rel);
  }
  string rel() {
    return HTMLAnchorElement_rel_Get(handle);
  }
  DOMTokenList relList() {
    return DOMTokenList(HTMLAnchorElement_relList_Get(handle));
  }
  void hreflang(string hreflang) {
    HTMLAnchorElement_hreflang_Set(handle, hreflang);
  }
  string hreflang() {
    return HTMLAnchorElement_hreflang_Get(handle);
  }
  void type(string type) {
    HTMLAnchorElement_type_Set(handle, type);
  }
  string type() {
    return HTMLAnchorElement_type_Get(handle);
  }
  void text(string text) {
    HTMLAnchorElement_text_Set(handle, text);
  }
  string text() {
    return HTMLAnchorElement_text_Get(handle);
  }
  void referrerPolicy(string referrerPolicy) {
    HTMLAnchorElement_referrerPolicy_Set(handle, referrerPolicy);
  }
  string referrerPolicy() {
    return HTMLAnchorElement_referrerPolicy_Get(handle);
  }
  void coords(string coords) {
    HTMLAnchorElement_coords_Set(handle, coords);
  }
  string coords() {
    return HTMLAnchorElement_coords_Get(handle);
  }
  void charset(string charset) {
    HTMLAnchorElement_charset_Set(handle, charset);
  }
  string charset() {
    return HTMLAnchorElement_charset_Get(handle);
  }
  void name(string name) {
    HTMLAnchorElement_name_Set(handle, name);
  }
  string name() {
    return HTMLAnchorElement_name_Get(handle);
  }
  void rev(string rev) {
    HTMLAnchorElement_rev_Set(handle, rev);
  }
  string rev() {
    return HTMLAnchorElement_rev_Get(handle);
  }
  void shape(string shape) {
    HTMLAnchorElement_shape_Set(handle, shape);
  }
  string shape() {
    return HTMLAnchorElement_shape_Get(handle);
  }
  void href(USVString href) {
    HTMLHyperlinkElementUtils_href_Set(handle, href.handle);
  }
  USVString href() {
    return USVString(HTMLHyperlinkElementUtils_href_Get(handle));
  }
  USVString origin() {
    return USVString(HTMLHyperlinkElementUtils_origin_Get(handle));
  }
}
struct HTMLAreaElement {
  HTMLElement _parent;
  alias _parent this;
  void alt(string alt) {
    HTMLAreaElement_alt_Set(handle, alt);
  }
  string alt() {
    return HTMLAreaElement_alt_Get(handle);
  }
  void coords(string coords) {
    HTMLAreaElement_coords_Set(handle, coords);
  }
  string coords() {
    return HTMLAreaElement_coords_Get(handle);
  }
  void shape(string shape) {
    HTMLAreaElement_shape_Set(handle, shape);
  }
  string shape() {
    return HTMLAreaElement_shape_Get(handle);
  }
  void target(string target) {
    HTMLAreaElement_target_Set(handle, target);
  }
  string target() {
    return HTMLAreaElement_target_Get(handle);
  }
  void download(string download) {
    HTMLAreaElement_download_Set(handle, download);
  }
  string download() {
    return HTMLAreaElement_download_Get(handle);
  }
  void ping(USVString ping) {
    HTMLAreaElement_ping_Set(handle, ping.handle);
  }
  USVString ping() {
    return USVString(HTMLAreaElement_ping_Get(handle));
  }
  void rel(string rel) {
    HTMLAreaElement_rel_Set(handle, rel);
  }
  string rel() {
    return HTMLAreaElement_rel_Get(handle);
  }
  DOMTokenList relList() {
    return DOMTokenList(HTMLAreaElement_relList_Get(handle));
  }
  void referrerPolicy(string referrerPolicy) {
    HTMLAreaElement_referrerPolicy_Set(handle, referrerPolicy);
  }
  string referrerPolicy() {
    return HTMLAreaElement_referrerPolicy_Get(handle);
  }
  void noHref(bool noHref) {
    HTMLAreaElement_noHref_Set(handle, noHref);
  }
  bool noHref() {
    return HTMLAreaElement_noHref_Get(handle);
  }
  void href(USVString href) {
    HTMLHyperlinkElementUtils_href_Set(handle, href.handle);
  }
  USVString href() {
    return USVString(HTMLHyperlinkElementUtils_href_Get(handle));
  }
  USVString origin() {
    return USVString(HTMLHyperlinkElementUtils_origin_Get(handle));
  }
}
struct HTMLAudioElement {
  HTMLMediaElement _parent;
  alias _parent this;
}
struct HTMLBRElement {
  HTMLElement _parent;
  alias _parent this;
  void clear(string clear) {
    HTMLBRElement_clear_Set(handle, clear);
  }
  string clear() {
    return HTMLBRElement_clear_Get(handle);
  }
}
struct HTMLBaseElement {
  HTMLElement _parent;
  alias _parent this;
  void href(USVString href) {
    HTMLBaseElement_href_Set(handle, href.handle);
  }
  USVString href() {
    return USVString(HTMLBaseElement_href_Get(handle));
  }
  void target(string target) {
    HTMLBaseElement_target_Set(handle, target);
  }
  string target() {
    return HTMLBaseElement_target_Get(handle);
  }
}
struct HTMLBodyElement {
  HTMLElement _parent;
  alias _parent this;
  void text(string text) {
    HTMLBodyElement_text_Set(handle, text);
  }
  string text() {
    return HTMLBodyElement_text_Get(handle);
  }
  void link(string link) {
    HTMLBodyElement_link_Set(handle, link);
  }
  string link() {
    return HTMLBodyElement_link_Get(handle);
  }
  void vLink(string vLink) {
    HTMLBodyElement_vLink_Set(handle, vLink);
  }
  string vLink() {
    return HTMLBodyElement_vLink_Get(handle);
  }
  void aLink(string aLink) {
    HTMLBodyElement_aLink_Set(handle, aLink);
  }
  string aLink() {
    return HTMLBodyElement_aLink_Get(handle);
  }
  void bgColor(string bgColor) {
    HTMLBodyElement_bgColor_Set(handle, bgColor);
  }
  string bgColor() {
    return HTMLBodyElement_bgColor_Get(handle);
  }
  void background(string background) {
    HTMLBodyElement_background_Set(handle, background);
  }
  string background() {
    return HTMLBodyElement_background_Get(handle);
  }
  void onorientationchange(EventHandler onorientationchange) {
    HTMLBodyElement_onorientationchange_Set(handle, !onorientationchange.empty, onorientationchange.value);
  }
  EventHandler onorientationchange() {
    return HTMLBodyElement_onorientationchange_Get(handle);
  }
}
struct HTMLButtonElement {
  HTMLElement _parent;
  alias _parent this;
  void autofocus(bool autofocus) {
    HTMLButtonElement_autofocus_Set(handle, autofocus);
  }
  bool autofocus() {
    return HTMLButtonElement_autofocus_Get(handle);
  }
  void disabled(bool disabled) {
    HTMLButtonElement_disabled_Set(handle, disabled);
  }
  bool disabled() {
    return HTMLButtonElement_disabled_Get(handle);
  }
  Optional!(HTMLFormElement) form() {
    return HTMLButtonElement_form_Get(handle);
  }
  void formAction(USVString formAction) {
    HTMLButtonElement_formAction_Set(handle, formAction.handle);
  }
  USVString formAction() {
    return USVString(HTMLButtonElement_formAction_Get(handle));
  }
  void formEnctype(string formEnctype) {
    HTMLButtonElement_formEnctype_Set(handle, formEnctype);
  }
  string formEnctype() {
    return HTMLButtonElement_formEnctype_Get(handle);
  }
  void formMethod(string formMethod) {
    HTMLButtonElement_formMethod_Set(handle, formMethod);
  }
  string formMethod() {
    return HTMLButtonElement_formMethod_Get(handle);
  }
  void formNoValidate(bool formNoValidate) {
    HTMLButtonElement_formNoValidate_Set(handle, formNoValidate);
  }
  bool formNoValidate() {
    return HTMLButtonElement_formNoValidate_Get(handle);
  }
  void formTarget(string formTarget) {
    HTMLButtonElement_formTarget_Set(handle, formTarget);
  }
  string formTarget() {
    return HTMLButtonElement_formTarget_Get(handle);
  }
  void name(string name) {
    HTMLButtonElement_name_Set(handle, name);
  }
  string name() {
    return HTMLButtonElement_name_Get(handle);
  }
  void type(string type) {
    HTMLButtonElement_type_Set(handle, type);
  }
  string type() {
    return HTMLButtonElement_type_Get(handle);
  }
  void value(string value) {
    HTMLButtonElement_value_Set(handle, value);
  }
  string value() {
    return HTMLButtonElement_value_Get(handle);
  }
  bool willValidate() {
    return HTMLButtonElement_willValidate_Get(handle);
  }
  ValidityState validity() {
    return ValidityState(HTMLButtonElement_validity_Get(handle));
  }
  string validationMessage() {
    return HTMLButtonElement_validationMessage_Get(handle);
  }
  bool checkValidity() {
    return HTMLButtonElement_checkValidity(handle);
  }
  bool reportValidity() {
    return HTMLButtonElement_reportValidity(handle);
  }
  void setCustomValidity(string error) {
    HTMLButtonElement_setCustomValidity(handle, error);
  }
  NodeList labels() {
    return NodeList(HTMLButtonElement_labels_Get(handle));
  }
}
struct HTMLCanvasElement {
  HTMLElement _parent;
  alias _parent this;
  void width(uint width) {
    HTMLCanvasElement_width_Set(handle, width);
  }
  uint width() {
    return HTMLCanvasElement_width_Get(handle);
  }
  void height(uint height) {
    HTMLCanvasElement_height_Set(handle, height);
  }
  uint height() {
    return HTMLCanvasElement_height_Get(handle);
  }
  Optional!(RenderingContext) getContext(string contextId, Any options = null) {
    return HTMLCanvasElement_getContext(handle, contextId, options.handle);
  }
  USVString toDataURL(string type, Any quality) {
    return USVString(HTMLCanvasElement_toDataURL(handle, type, quality.handle));
  }
  void toBlob(BlobCallback _callback, string type, Any quality) {
    HTMLCanvasElement_toBlob(handle, _callback, type, quality.handle);
  }
  OffscreenCanvas transferControlToOffscreen() {
    return OffscreenCanvas(HTMLCanvasElement_transferControlToOffscreen(handle));
  }
}
struct HTMLDListElement {
  HTMLElement _parent;
  alias _parent this;
  void compact(bool compact) {
    HTMLDListElement_compact_Set(handle, compact);
  }
  bool compact() {
    return HTMLDListElement_compact_Get(handle);
  }
}
struct HTMLDataElement {
  HTMLElement _parent;
  alias _parent this;
  void value(string value) {
    HTMLDataElement_value_Set(handle, value);
  }
  string value() {
    return HTMLDataElement_value_Get(handle);
  }
}
struct HTMLDataListElement {
  HTMLElement _parent;
  alias _parent this;
  HTMLCollection options() {
    return HTMLCollection(HTMLDataListElement_options_Get(handle));
  }
}
struct HTMLDetailsElement {
  HTMLElement _parent;
  alias _parent this;
  void open(bool open) {
    HTMLDetailsElement_open_Set(handle, open);
  }
  bool open() {
    return HTMLDetailsElement_open_Get(handle);
  }
}
struct HTMLDialogElement {
  HTMLElement _parent;
  alias _parent this;
  void open(bool open) {
    HTMLDialogElement_open_Set(handle, open);
  }
  bool open() {
    return HTMLDialogElement_open_Get(handle);
  }
  void returnValue(string returnValue) {
    HTMLDialogElement_returnValue_Set(handle, returnValue);
  }
  string returnValue() {
    return HTMLDialogElement_returnValue_Get(handle);
  }
  void show() {
    HTMLDialogElement_show(handle);
  }
  void showModal() {
    HTMLDialogElement_showModal(handle);
  }
  void close(string returnValue) {
    HTMLDialogElement_close(handle, returnValue);
  }
}
struct HTMLDirectoryElement {
  HTMLElement _parent;
  alias _parent this;
  void compact(bool compact) {
    HTMLDirectoryElement_compact_Set(handle, compact);
  }
  bool compact() {
    return HTMLDirectoryElement_compact_Get(handle);
  }
}
struct HTMLDivElement {
  HTMLElement _parent;
  alias _parent this;
  void align_(string align_) {
    HTMLDivElement_align_Set(handle, align_);
  }
  string align_() {
    return HTMLDivElement_align_Get(handle);
  }
}
struct HTMLElement {
  Element _parent;
  alias _parent this;
  void title(string title) {
    HTMLElement_title_Set(handle, title);
  }
  string title() {
    return HTMLElement_title_Get(handle);
  }
  void lang(string lang) {
    HTMLElement_lang_Set(handle, lang);
  }
  string lang() {
    return HTMLElement_lang_Get(handle);
  }
  void translate(bool translate) {
    HTMLElement_translate_Set(handle, translate);
  }
  bool translate() {
    return HTMLElement_translate_Get(handle);
  }
  void dir(string dir) {
    HTMLElement_dir_Set(handle, dir);
  }
  string dir() {
    return HTMLElement_dir_Get(handle);
  }
  void hidden(bool hidden) {
    HTMLElement_hidden_Set(handle, hidden);
  }
  bool hidden() {
    return HTMLElement_hidden_Get(handle);
  }
  void click() {
    HTMLElement_click(handle);
  }
  void accessKey(string accessKey) {
    HTMLElement_accessKey_Set(handle, accessKey);
  }
  string accessKey() {
    return HTMLElement_accessKey_Get(handle);
  }
  string accessKeyLabel() {
    return HTMLElement_accessKeyLabel_Get(handle);
  }
  void draggable(bool draggable) {
    HTMLElement_draggable_Set(handle, draggable);
  }
  bool draggable() {
    return HTMLElement_draggable_Get(handle);
  }
  void spellcheck(bool spellcheck) {
    HTMLElement_spellcheck_Set(handle, spellcheck);
  }
  bool spellcheck() {
    return HTMLElement_spellcheck_Get(handle);
  }
  void autocapitalize(string autocapitalize) {
    HTMLElement_autocapitalize_Set(handle, autocapitalize);
  }
  string autocapitalize() {
    return HTMLElement_autocapitalize_Get(handle);
  }
  void innerText(string innerText) {
    HTMLElement_innerText_Set(handle, innerText);
  }
  string innerText() {
    return HTMLElement_innerText_Get(handle);
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
  bool isContentEditable() {
    return ElementContentEditable_isContentEditable_Get(handle);
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
}
struct HTMLEmbedElement {
  HTMLElement _parent;
  alias _parent this;
  void src(USVString src) {
    HTMLEmbedElement_src_Set(handle, src.handle);
  }
  USVString src() {
    return USVString(HTMLEmbedElement_src_Get(handle));
  }
  void type(string type) {
    HTMLEmbedElement_type_Set(handle, type);
  }
  string type() {
    return HTMLEmbedElement_type_Get(handle);
  }
  void width(string width) {
    HTMLEmbedElement_width_Set(handle, width);
  }
  string width() {
    return HTMLEmbedElement_width_Get(handle);
  }
  void height(string height) {
    HTMLEmbedElement_height_Set(handle, height);
  }
  string height() {
    return HTMLEmbedElement_height_Get(handle);
  }
  Optional!(Document) getSVGDocument() {
    return HTMLEmbedElement_getSVGDocument(handle);
  }
  void align_(string align_) {
    HTMLEmbedElement_align_Set(handle, align_);
  }
  string align_() {
    return HTMLEmbedElement_align_Get(handle);
  }
  void name(string name) {
    HTMLEmbedElement_name_Set(handle, name);
  }
  string name() {
    return HTMLEmbedElement_name_Get(handle);
  }
}
struct HTMLFieldSetElement {
  HTMLElement _parent;
  alias _parent this;
  void disabled(bool disabled) {
    HTMLFieldSetElement_disabled_Set(handle, disabled);
  }
  bool disabled() {
    return HTMLFieldSetElement_disabled_Get(handle);
  }
  Optional!(HTMLFormElement) form() {
    return HTMLFieldSetElement_form_Get(handle);
  }
  void name(string name) {
    HTMLFieldSetElement_name_Set(handle, name);
  }
  string name() {
    return HTMLFieldSetElement_name_Get(handle);
  }
  string type() {
    return HTMLFieldSetElement_type_Get(handle);
  }
  HTMLCollection elements() {
    return HTMLCollection(HTMLFieldSetElement_elements_Get(handle));
  }
  bool willValidate() {
    return HTMLFieldSetElement_willValidate_Get(handle);
  }
  ValidityState validity() {
    return ValidityState(HTMLFieldSetElement_validity_Get(handle));
  }
  string validationMessage() {
    return HTMLFieldSetElement_validationMessage_Get(handle);
  }
  bool checkValidity() {
    return HTMLFieldSetElement_checkValidity(handle);
  }
  bool reportValidity() {
    return HTMLFieldSetElement_reportValidity(handle);
  }
  void setCustomValidity(string error) {
    HTMLFieldSetElement_setCustomValidity(handle, error);
  }
}
struct HTMLFontElement {
  HTMLElement _parent;
  alias _parent this;
  void color(string color) {
    HTMLFontElement_color_Set(handle, color);
  }
  string color() {
    return HTMLFontElement_color_Get(handle);
  }
  void face(string face) {
    HTMLFontElement_face_Set(handle, face);
  }
  string face() {
    return HTMLFontElement_face_Get(handle);
  }
  void size(string size) {
    HTMLFontElement_size_Set(handle, size);
  }
  string size() {
    return HTMLFontElement_size_Get(handle);
  }
}
struct HTMLFormControlsCollection {
  HTMLCollection _parent;
  alias _parent this;
  Optional!(SumType!(RadioNodeList, Element)) namedItem(string name) {
    return HTMLFormControlsCollection_namedItem_getter(handle, name);
  }
}
struct HTMLFormElement {
  HTMLElement _parent;
  alias _parent this;
  void acceptCharset(string acceptCharset) {
    HTMLFormElement_acceptCharset_Set(handle, acceptCharset);
  }
  string acceptCharset() {
    return HTMLFormElement_acceptCharset_Get(handle);
  }
  void action(USVString action) {
    HTMLFormElement_action_Set(handle, action.handle);
  }
  USVString action() {
    return USVString(HTMLFormElement_action_Get(handle));
  }
  void autocomplete(string autocomplete) {
    HTMLFormElement_autocomplete_Set(handle, autocomplete);
  }
  string autocomplete() {
    return HTMLFormElement_autocomplete_Get(handle);
  }
  void enctype(string enctype) {
    HTMLFormElement_enctype_Set(handle, enctype);
  }
  string enctype() {
    return HTMLFormElement_enctype_Get(handle);
  }
  void encoding(string encoding) {
    HTMLFormElement_encoding_Set(handle, encoding);
  }
  string encoding() {
    return HTMLFormElement_encoding_Get(handle);
  }
  void method(string method) {
    HTMLFormElement_method_Set(handle, method);
  }
  string method() {
    return HTMLFormElement_method_Get(handle);
  }
  void name(string name) {
    HTMLFormElement_name_Set(handle, name);
  }
  string name() {
    return HTMLFormElement_name_Get(handle);
  }
  void noValidate(bool noValidate) {
    HTMLFormElement_noValidate_Set(handle, noValidate);
  }
  bool noValidate() {
    return HTMLFormElement_noValidate_Get(handle);
  }
  void target(string target) {
    HTMLFormElement_target_Set(handle, target);
  }
  string target() {
    return HTMLFormElement_target_Get(handle);
  }
  HTMLFormControlsCollection elements() {
    return HTMLFormControlsCollection(HTMLFormElement_elements_Get(handle));
  }
  uint length() {
    return HTMLFormElement_length_Get(handle);
  }
  Element opIndex(uint index) {
    return Element(HTMLFormElement_getter__uint(handle, index));
  }
  Element opDispatch(uint index)() {
    return Element(HTMLFormElement_getter__uint(handle, index));
  }
  SumType!(RadioNodeList, Element) opIndex(string name) {
    return HTMLFormElement_getter__string(handle, name);
  }
  SumType!(RadioNodeList, Element) opDispatch(string name)() {
    return HTMLFormElement_getter__string(handle, name);
  }
  void submit() {
    HTMLFormElement_submit(handle);
  }
  void reset() {
    HTMLFormElement_reset(handle);
  }
  bool checkValidity() {
    return HTMLFormElement_checkValidity(handle);
  }
  bool reportValidity() {
    return HTMLFormElement_reportValidity(handle);
  }
}
struct HTMLFrameElement {
  HTMLElement _parent;
  alias _parent this;
  void name(string name) {
    HTMLFrameElement_name_Set(handle, name);
  }
  string name() {
    return HTMLFrameElement_name_Get(handle);
  }
  void scrolling(string scrolling) {
    HTMLFrameElement_scrolling_Set(handle, scrolling);
  }
  string scrolling() {
    return HTMLFrameElement_scrolling_Get(handle);
  }
  void src(USVString src) {
    HTMLFrameElement_src_Set(handle, src.handle);
  }
  USVString src() {
    return USVString(HTMLFrameElement_src_Get(handle));
  }
  void frameBorder(string frameBorder) {
    HTMLFrameElement_frameBorder_Set(handle, frameBorder);
  }
  string frameBorder() {
    return HTMLFrameElement_frameBorder_Get(handle);
  }
  void longDesc(USVString longDesc) {
    HTMLFrameElement_longDesc_Set(handle, longDesc.handle);
  }
  USVString longDesc() {
    return USVString(HTMLFrameElement_longDesc_Get(handle));
  }
  void noResize(bool noResize) {
    HTMLFrameElement_noResize_Set(handle, noResize);
  }
  bool noResize() {
    return HTMLFrameElement_noResize_Get(handle);
  }
  Optional!(Document) contentDocument() {
    return HTMLFrameElement_contentDocument_Get(handle);
  }
  Optional!(WindowProxy) contentWindow() {
    return HTMLFrameElement_contentWindow_Get(handle);
  }
  void marginHeight(string marginHeight) {
    HTMLFrameElement_marginHeight_Set(handle, marginHeight);
  }
  string marginHeight() {
    return HTMLFrameElement_marginHeight_Get(handle);
  }
  void marginWidth(string marginWidth) {
    HTMLFrameElement_marginWidth_Set(handle, marginWidth);
  }
  string marginWidth() {
    return HTMLFrameElement_marginWidth_Get(handle);
  }
}
struct HTMLFrameSetElement {
  HTMLElement _parent;
  alias _parent this;
  void cols(string cols) {
    HTMLFrameSetElement_cols_Set(handle, cols);
  }
  string cols() {
    return HTMLFrameSetElement_cols_Get(handle);
  }
  void rows(string rows) {
    HTMLFrameSetElement_rows_Set(handle, rows);
  }
  string rows() {
    return HTMLFrameSetElement_rows_Get(handle);
  }
}
struct HTMLHRElement {
  HTMLElement _parent;
  alias _parent this;
  void align_(string align_) {
    HTMLHRElement_align_Set(handle, align_);
  }
  string align_() {
    return HTMLHRElement_align_Get(handle);
  }
  void color(string color) {
    HTMLHRElement_color_Set(handle, color);
  }
  string color() {
    return HTMLHRElement_color_Get(handle);
  }
  void noShade(bool noShade) {
    HTMLHRElement_noShade_Set(handle, noShade);
  }
  bool noShade() {
    return HTMLHRElement_noShade_Get(handle);
  }
  void size(string size) {
    HTMLHRElement_size_Set(handle, size);
  }
  string size() {
    return HTMLHRElement_size_Get(handle);
  }
  void width(string width) {
    HTMLHRElement_width_Set(handle, width);
  }
  string width() {
    return HTMLHRElement_width_Get(handle);
  }
}
struct HTMLHeadElement {
  HTMLElement _parent;
  alias _parent this;
}
struct HTMLHeadingElement {
  HTMLElement _parent;
  alias _parent this;
  void align_(string align_) {
    HTMLHeadingElement_align_Set(handle, align_);
  }
  string align_() {
    return HTMLHeadingElement_align_Get(handle);
  }
}
struct HTMLHtmlElement {
  HTMLElement _parent;
  alias _parent this;
  void version_(string version_) {
    HTMLHtmlElement_version_Set(handle, version_);
  }
  string version_() {
    return HTMLHtmlElement_version_Get(handle);
  }
}
struct HTMLIFrameElement {
  HTMLElement _parent;
  alias _parent this;
  void src(USVString src) {
    HTMLIFrameElement_src_Set(handle, src.handle);
  }
  USVString src() {
    return USVString(HTMLIFrameElement_src_Get(handle));
  }
  void srcdoc(string srcdoc) {
    HTMLIFrameElement_srcdoc_Set(handle, srcdoc);
  }
  string srcdoc() {
    return HTMLIFrameElement_srcdoc_Get(handle);
  }
  void name(string name) {
    HTMLIFrameElement_name_Set(handle, name);
  }
  string name() {
    return HTMLIFrameElement_name_Get(handle);
  }
  DOMTokenList sandbox() {
    return DOMTokenList(HTMLIFrameElement_sandbox_Get(handle));
  }
  void allow(string allow) {
    HTMLIFrameElement_allow_Set(handle, allow);
  }
  string allow() {
    return HTMLIFrameElement_allow_Get(handle);
  }
  void allowFullscreen(bool allowFullscreen) {
    HTMLIFrameElement_allowFullscreen_Set(handle, allowFullscreen);
  }
  bool allowFullscreen() {
    return HTMLIFrameElement_allowFullscreen_Get(handle);
  }
  void allowPaymentRequest(bool allowPaymentRequest) {
    HTMLIFrameElement_allowPaymentRequest_Set(handle, allowPaymentRequest);
  }
  bool allowPaymentRequest() {
    return HTMLIFrameElement_allowPaymentRequest_Get(handle);
  }
  void width(string width) {
    HTMLIFrameElement_width_Set(handle, width);
  }
  string width() {
    return HTMLIFrameElement_width_Get(handle);
  }
  void height(string height) {
    HTMLIFrameElement_height_Set(handle, height);
  }
  string height() {
    return HTMLIFrameElement_height_Get(handle);
  }
  void referrerPolicy(string referrerPolicy) {
    HTMLIFrameElement_referrerPolicy_Set(handle, referrerPolicy);
  }
  string referrerPolicy() {
    return HTMLIFrameElement_referrerPolicy_Get(handle);
  }
  Optional!(Document) contentDocument() {
    return HTMLIFrameElement_contentDocument_Get(handle);
  }
  Optional!(WindowProxy) contentWindow() {
    return HTMLIFrameElement_contentWindow_Get(handle);
  }
  Optional!(Document) getSVGDocument() {
    return HTMLIFrameElement_getSVGDocument(handle);
  }
  void align_(string align_) {
    HTMLIFrameElement_align_Set(handle, align_);
  }
  string align_() {
    return HTMLIFrameElement_align_Get(handle);
  }
  void scrolling(string scrolling) {
    HTMLIFrameElement_scrolling_Set(handle, scrolling);
  }
  string scrolling() {
    return HTMLIFrameElement_scrolling_Get(handle);
  }
  void frameBorder(string frameBorder) {
    HTMLIFrameElement_frameBorder_Set(handle, frameBorder);
  }
  string frameBorder() {
    return HTMLIFrameElement_frameBorder_Get(handle);
  }
  void longDesc(USVString longDesc) {
    HTMLIFrameElement_longDesc_Set(handle, longDesc.handle);
  }
  USVString longDesc() {
    return USVString(HTMLIFrameElement_longDesc_Get(handle));
  }
  void marginHeight(string marginHeight) {
    HTMLIFrameElement_marginHeight_Set(handle, marginHeight);
  }
  string marginHeight() {
    return HTMLIFrameElement_marginHeight_Get(handle);
  }
  void marginWidth(string marginWidth) {
    HTMLIFrameElement_marginWidth_Set(handle, marginWidth);
  }
  string marginWidth() {
    return HTMLIFrameElement_marginWidth_Get(handle);
  }
}
struct HTMLImageElement {
  HTMLElement _parent;
  alias _parent this;
  void alt(string alt) {
    HTMLImageElement_alt_Set(handle, alt);
  }
  string alt() {
    return HTMLImageElement_alt_Get(handle);
  }
  void src(USVString src) {
    HTMLImageElement_src_Set(handle, src.handle);
  }
  USVString src() {
    return USVString(HTMLImageElement_src_Get(handle));
  }
  void srcset(USVString srcset) {
    HTMLImageElement_srcset_Set(handle, srcset.handle);
  }
  USVString srcset() {
    return USVString(HTMLImageElement_srcset_Get(handle));
  }
  void sizes(string sizes) {
    HTMLImageElement_sizes_Set(handle, sizes);
  }
  string sizes() {
    return HTMLImageElement_sizes_Get(handle);
  }
  void crossOrigin(Optional!(string) crossOrigin) {
    HTMLImageElement_crossOrigin_Set(handle, !crossOrigin.empty, crossOrigin.value);
  }
  Optional!(string) crossOrigin() {
    return HTMLImageElement_crossOrigin_Get(handle);
  }
  void useMap(string useMap) {
    HTMLImageElement_useMap_Set(handle, useMap);
  }
  string useMap() {
    return HTMLImageElement_useMap_Get(handle);
  }
  void isMap(bool isMap) {
    HTMLImageElement_isMap_Set(handle, isMap);
  }
  bool isMap() {
    return HTMLImageElement_isMap_Get(handle);
  }
  void width(uint width) {
    HTMLImageElement_width_Set(handle, width);
  }
  uint width() {
    return HTMLImageElement_width_Get(handle);
  }
  void height(uint height) {
    HTMLImageElement_height_Set(handle, height);
  }
  uint height() {
    return HTMLImageElement_height_Get(handle);
  }
  uint naturalWidth() {
    return HTMLImageElement_naturalWidth_Get(handle);
  }
  uint naturalHeight() {
    return HTMLImageElement_naturalHeight_Get(handle);
  }
  bool complete() {
    return HTMLImageElement_complete_Get(handle);
  }
  USVString currentSrc() {
    return USVString(HTMLImageElement_currentSrc_Get(handle));
  }
  void referrerPolicy(string referrerPolicy) {
    HTMLImageElement_referrerPolicy_Set(handle, referrerPolicy);
  }
  string referrerPolicy() {
    return HTMLImageElement_referrerPolicy_Get(handle);
  }
  void decoding(string decoding) {
    HTMLImageElement_decoding_Set(handle, decoding);
  }
  string decoding() {
    return HTMLImageElement_decoding_Get(handle);
  }
  Promise!(void) decode() {
    return Promise!(void)(HTMLImageElement_decode(handle));
  }
  void name(string name) {
    HTMLImageElement_name_Set(handle, name);
  }
  string name() {
    return HTMLImageElement_name_Get(handle);
  }
  void lowsrc(USVString lowsrc) {
    HTMLImageElement_lowsrc_Set(handle, lowsrc.handle);
  }
  USVString lowsrc() {
    return USVString(HTMLImageElement_lowsrc_Get(handle));
  }
  void align_(string align_) {
    HTMLImageElement_align_Set(handle, align_);
  }
  string align_() {
    return HTMLImageElement_align_Get(handle);
  }
  void hspace(uint hspace) {
    HTMLImageElement_hspace_Set(handle, hspace);
  }
  uint hspace() {
    return HTMLImageElement_hspace_Get(handle);
  }
  void vspace(uint vspace) {
    HTMLImageElement_vspace_Set(handle, vspace);
  }
  uint vspace() {
    return HTMLImageElement_vspace_Get(handle);
  }
  void longDesc(USVString longDesc) {
    HTMLImageElement_longDesc_Set(handle, longDesc.handle);
  }
  USVString longDesc() {
    return USVString(HTMLImageElement_longDesc_Get(handle));
  }
  void border(string border) {
    HTMLImageElement_border_Set(handle, border);
  }
  string border() {
    return HTMLImageElement_border_Get(handle);
  }
}
struct HTMLInputElement {
  HTMLElement _parent;
  alias _parent this;
  void accept(string accept) {
    HTMLInputElement_accept_Set(handle, accept);
  }
  string accept() {
    return HTMLInputElement_accept_Get(handle);
  }
  void alt(string alt) {
    HTMLInputElement_alt_Set(handle, alt);
  }
  string alt() {
    return HTMLInputElement_alt_Get(handle);
  }
  void autocomplete(string autocomplete) {
    HTMLInputElement_autocomplete_Set(handle, autocomplete);
  }
  string autocomplete() {
    return HTMLInputElement_autocomplete_Get(handle);
  }
  void autofocus(bool autofocus) {
    HTMLInputElement_autofocus_Set(handle, autofocus);
  }
  bool autofocus() {
    return HTMLInputElement_autofocus_Get(handle);
  }
  void defaultChecked(bool defaultChecked) {
    HTMLInputElement_defaultChecked_Set(handle, defaultChecked);
  }
  bool defaultChecked() {
    return HTMLInputElement_defaultChecked_Get(handle);
  }
  void checked(bool checked) {
    HTMLInputElement_checked_Set(handle, checked);
  }
  bool checked() {
    return HTMLInputElement_checked_Get(handle);
  }
  void dirName(string dirName) {
    HTMLInputElement_dirName_Set(handle, dirName);
  }
  string dirName() {
    return HTMLInputElement_dirName_Get(handle);
  }
  void disabled(bool disabled) {
    HTMLInputElement_disabled_Set(handle, disabled);
  }
  bool disabled() {
    return HTMLInputElement_disabled_Get(handle);
  }
  Optional!(HTMLFormElement) form() {
    return HTMLInputElement_form_Get(handle);
  }
  void files(Optional!(FileList) files) {
    HTMLInputElement_files_Set(handle, !files.empty, files.value.handle);
  }
  Optional!(FileList) files() {
    return HTMLInputElement_files_Get(handle);
  }
  void formAction(USVString formAction) {
    HTMLInputElement_formAction_Set(handle, formAction.handle);
  }
  USVString formAction() {
    return USVString(HTMLInputElement_formAction_Get(handle));
  }
  void formEnctype(string formEnctype) {
    HTMLInputElement_formEnctype_Set(handle, formEnctype);
  }
  string formEnctype() {
    return HTMLInputElement_formEnctype_Get(handle);
  }
  void formMethod(string formMethod) {
    HTMLInputElement_formMethod_Set(handle, formMethod);
  }
  string formMethod() {
    return HTMLInputElement_formMethod_Get(handle);
  }
  void formNoValidate(bool formNoValidate) {
    HTMLInputElement_formNoValidate_Set(handle, formNoValidate);
  }
  bool formNoValidate() {
    return HTMLInputElement_formNoValidate_Get(handle);
  }
  void formTarget(string formTarget) {
    HTMLInputElement_formTarget_Set(handle, formTarget);
  }
  string formTarget() {
    return HTMLInputElement_formTarget_Get(handle);
  }
  void height(uint height) {
    HTMLInputElement_height_Set(handle, height);
  }
  uint height() {
    return HTMLInputElement_height_Get(handle);
  }
  void indeterminate(bool indeterminate) {
    HTMLInputElement_indeterminate_Set(handle, indeterminate);
  }
  bool indeterminate() {
    return HTMLInputElement_indeterminate_Get(handle);
  }
  Optional!(HTMLElement) list() {
    return HTMLInputElement_list_Get(handle);
  }
  void max(string max) {
    HTMLInputElement_max_Set(handle, max);
  }
  string max() {
    return HTMLInputElement_max_Get(handle);
  }
  void maxLength(int maxLength) {
    HTMLInputElement_maxLength_Set(handle, maxLength);
  }
  int maxLength() {
    return HTMLInputElement_maxLength_Get(handle);
  }
  void min(string min) {
    HTMLInputElement_min_Set(handle, min);
  }
  string min() {
    return HTMLInputElement_min_Get(handle);
  }
  void minLength(int minLength) {
    HTMLInputElement_minLength_Set(handle, minLength);
  }
  int minLength() {
    return HTMLInputElement_minLength_Get(handle);
  }
  void multiple(bool multiple) {
    HTMLInputElement_multiple_Set(handle, multiple);
  }
  bool multiple() {
    return HTMLInputElement_multiple_Get(handle);
  }
  void name(string name) {
    HTMLInputElement_name_Set(handle, name);
  }
  string name() {
    return HTMLInputElement_name_Get(handle);
  }
  void pattern(string pattern) {
    HTMLInputElement_pattern_Set(handle, pattern);
  }
  string pattern() {
    return HTMLInputElement_pattern_Get(handle);
  }
  void placeholder(string placeholder) {
    HTMLInputElement_placeholder_Set(handle, placeholder);
  }
  string placeholder() {
    return HTMLInputElement_placeholder_Get(handle);
  }
  void readOnly(bool readOnly) {
    HTMLInputElement_readOnly_Set(handle, readOnly);
  }
  bool readOnly() {
    return HTMLInputElement_readOnly_Get(handle);
  }
  void required(bool required) {
    HTMLInputElement_required_Set(handle, required);
  }
  bool required() {
    return HTMLInputElement_required_Get(handle);
  }
  void size(uint size) {
    HTMLInputElement_size_Set(handle, size);
  }
  uint size() {
    return HTMLInputElement_size_Get(handle);
  }
  void src(USVString src) {
    HTMLInputElement_src_Set(handle, src.handle);
  }
  USVString src() {
    return USVString(HTMLInputElement_src_Get(handle));
  }
  void step(string step) {
    HTMLInputElement_step_Set(handle, step);
  }
  string step() {
    return HTMLInputElement_step_Get(handle);
  }
  void type(string type) {
    HTMLInputElement_type_Set(handle, type);
  }
  string type() {
    return HTMLInputElement_type_Get(handle);
  }
  void defaultValue(string defaultValue) {
    HTMLInputElement_defaultValue_Set(handle, defaultValue);
  }
  string defaultValue() {
    return HTMLInputElement_defaultValue_Get(handle);
  }
  void value(string value) {
    HTMLInputElement_value_Set(handle, value);
  }
  string value() {
    return HTMLInputElement_value_Get(handle);
  }
  void valueAsDate(Optional!(Object) valueAsDate) {
    HTMLInputElement_valueAsDate_Set(handle, !valueAsDate.empty, valueAsDate.value.handle);
  }
  Optional!(Object) valueAsDate() {
    return HTMLInputElement_valueAsDate_Get(handle);
  }
  void valueAsNumber(double valueAsNumber) {
    HTMLInputElement_valueAsNumber_Set(handle, valueAsNumber);
  }
  double valueAsNumber() {
    return HTMLInputElement_valueAsNumber_Get(handle);
  }
  void width(uint width) {
    HTMLInputElement_width_Set(handle, width);
  }
  uint width() {
    return HTMLInputElement_width_Get(handle);
  }
  void stepUp(int n = 1) {
    HTMLInputElement_stepUp(handle, n);
  }
  void stepDown(int n = 1) {
    HTMLInputElement_stepDown(handle, n);
  }
  bool willValidate() {
    return HTMLInputElement_willValidate_Get(handle);
  }
  ValidityState validity() {
    return ValidityState(HTMLInputElement_validity_Get(handle));
  }
  string validationMessage() {
    return HTMLInputElement_validationMessage_Get(handle);
  }
  bool checkValidity() {
    return HTMLInputElement_checkValidity(handle);
  }
  bool reportValidity() {
    return HTMLInputElement_reportValidity(handle);
  }
  void setCustomValidity(string error) {
    HTMLInputElement_setCustomValidity(handle, error);
  }
  Optional!(NodeList) labels() {
    return HTMLInputElement_labels_Get(handle);
  }
  void select() {
    HTMLInputElement_select(handle);
  }
  void selectionStart(Optional!(uint) selectionStart) {
    HTMLInputElement_selectionStart_Set(handle, !selectionStart.empty, selectionStart.value);
  }
  Optional!(uint) selectionStart() {
    return HTMLInputElement_selectionStart_Get(handle);
  }
  void selectionEnd(Optional!(uint) selectionEnd) {
    HTMLInputElement_selectionEnd_Set(handle, !selectionEnd.empty, selectionEnd.value);
  }
  Optional!(uint) selectionEnd() {
    return HTMLInputElement_selectionEnd_Get(handle);
  }
  void selectionDirection(Optional!(string) selectionDirection) {
    HTMLInputElement_selectionDirection_Set(handle, !selectionDirection.empty, selectionDirection.value);
  }
  Optional!(string) selectionDirection() {
    return HTMLInputElement_selectionDirection_Get(handle);
  }
  void setRangeText(string replacement) {
    HTMLInputElement_setRangeText__string(handle, replacement);
  }
  void setRangeText(string replacement, uint start, uint end, SelectionMode selectionMode = "preserve") {
    HTMLInputElement_setRangeText__string_uint_uint_SelectionMode(handle, replacement, start, end, selectionMode);
  }
  void setSelectionRange(uint start, uint end, string direction) {
    HTMLInputElement_setSelectionRange(handle, start, end, direction);
  }
  void align_(string align_) {
    HTMLInputElement_align_Set(handle, align_);
  }
  string align_() {
    return HTMLInputElement_align_Get(handle);
  }
  void useMap(string useMap) {
    HTMLInputElement_useMap_Set(handle, useMap);
  }
  string useMap() {
    return HTMLInputElement_useMap_Get(handle);
  }
}
struct HTMLLIElement {
  HTMLElement _parent;
  alias _parent this;
  void value(int value) {
    HTMLLIElement_value_Set(handle, value);
  }
  int value() {
    return HTMLLIElement_value_Get(handle);
  }
  void type(string type) {
    HTMLLIElement_type_Set(handle, type);
  }
  string type() {
    return HTMLLIElement_type_Get(handle);
  }
}
struct HTMLLabelElement {
  HTMLElement _parent;
  alias _parent this;
  Optional!(HTMLFormElement) form() {
    return HTMLLabelElement_form_Get(handle);
  }
  void htmlFor(string htmlFor) {
    HTMLLabelElement_htmlFor_Set(handle, htmlFor);
  }
  string htmlFor() {
    return HTMLLabelElement_htmlFor_Get(handle);
  }
  Optional!(HTMLElement) control() {
    return HTMLLabelElement_control_Get(handle);
  }
}
struct HTMLLegendElement {
  HTMLElement _parent;
  alias _parent this;
  Optional!(HTMLFormElement) form() {
    return HTMLLegendElement_form_Get(handle);
  }
  void align_(string align_) {
    HTMLLegendElement_align_Set(handle, align_);
  }
  string align_() {
    return HTMLLegendElement_align_Get(handle);
  }
}
struct HTMLLinkElement {
  HTMLElement _parent;
  alias _parent this;
  void href(USVString href) {
    HTMLLinkElement_href_Set(handle, href.handle);
  }
  USVString href() {
    return USVString(HTMLLinkElement_href_Get(handle));
  }
  void crossOrigin(Optional!(string) crossOrigin) {
    HTMLLinkElement_crossOrigin_Set(handle, !crossOrigin.empty, crossOrigin.value);
  }
  Optional!(string) crossOrigin() {
    return HTMLLinkElement_crossOrigin_Get(handle);
  }
  void rel(string rel) {
    HTMLLinkElement_rel_Set(handle, rel);
  }
  string rel() {
    return HTMLLinkElement_rel_Get(handle);
  }
  void as(string as) {
    HTMLLinkElement_as_Set(handle, as);
  }
  string as() {
    return HTMLLinkElement_as_Get(handle);
  }
  DOMTokenList relList() {
    return DOMTokenList(HTMLLinkElement_relList_Get(handle));
  }
  void media(string media) {
    HTMLLinkElement_media_Set(handle, media);
  }
  string media() {
    return HTMLLinkElement_media_Get(handle);
  }
  void integrity(string integrity) {
    HTMLLinkElement_integrity_Set(handle, integrity);
  }
  string integrity() {
    return HTMLLinkElement_integrity_Get(handle);
  }
  void hreflang(string hreflang) {
    HTMLLinkElement_hreflang_Set(handle, hreflang);
  }
  string hreflang() {
    return HTMLLinkElement_hreflang_Get(handle);
  }
  void type(string type) {
    HTMLLinkElement_type_Set(handle, type);
  }
  string type() {
    return HTMLLinkElement_type_Get(handle);
  }
  DOMTokenList sizes() {
    return DOMTokenList(HTMLLinkElement_sizes_Get(handle));
  }
  void referrerPolicy(string referrerPolicy) {
    HTMLLinkElement_referrerPolicy_Set(handle, referrerPolicy);
  }
  string referrerPolicy() {
    return HTMLLinkElement_referrerPolicy_Get(handle);
  }
  void charset(string charset) {
    HTMLLinkElement_charset_Set(handle, charset);
  }
  string charset() {
    return HTMLLinkElement_charset_Get(handle);
  }
  void rev(string rev) {
    HTMLLinkElement_rev_Set(handle, rev);
  }
  string rev() {
    return HTMLLinkElement_rev_Get(handle);
  }
  void target(string target) {
    HTMLLinkElement_target_Set(handle, target);
  }
  string target() {
    return HTMLLinkElement_target_Get(handle);
  }
  Optional!(StyleSheet) sheet() {
    return LinkStyle_sheet_Get(handle);
  }
}
struct HTMLMapElement {
  HTMLElement _parent;
  alias _parent this;
  void name(string name) {
    HTMLMapElement_name_Set(handle, name);
  }
  string name() {
    return HTMLMapElement_name_Get(handle);
  }
  HTMLCollection areas() {
    return HTMLCollection(HTMLMapElement_areas_Get(handle));
  }
}
struct HTMLMarqueeElement {
  HTMLElement _parent;
  alias _parent this;
  void behavior(string behavior) {
    HTMLMarqueeElement_behavior_Set(handle, behavior);
  }
  string behavior() {
    return HTMLMarqueeElement_behavior_Get(handle);
  }
  void bgColor(string bgColor) {
    HTMLMarqueeElement_bgColor_Set(handle, bgColor);
  }
  string bgColor() {
    return HTMLMarqueeElement_bgColor_Get(handle);
  }
  void direction(string direction) {
    HTMLMarqueeElement_direction_Set(handle, direction);
  }
  string direction() {
    return HTMLMarqueeElement_direction_Get(handle);
  }
  void height(string height) {
    HTMLMarqueeElement_height_Set(handle, height);
  }
  string height() {
    return HTMLMarqueeElement_height_Get(handle);
  }
  void hspace(uint hspace) {
    HTMLMarqueeElement_hspace_Set(handle, hspace);
  }
  uint hspace() {
    return HTMLMarqueeElement_hspace_Get(handle);
  }
  void loop(int loop) {
    HTMLMarqueeElement_loop_Set(handle, loop);
  }
  int loop() {
    return HTMLMarqueeElement_loop_Get(handle);
  }
  void scrollAmount(uint scrollAmount) {
    HTMLMarqueeElement_scrollAmount_Set(handle, scrollAmount);
  }
  uint scrollAmount() {
    return HTMLMarqueeElement_scrollAmount_Get(handle);
  }
  void scrollDelay(uint scrollDelay) {
    HTMLMarqueeElement_scrollDelay_Set(handle, scrollDelay);
  }
  uint scrollDelay() {
    return HTMLMarqueeElement_scrollDelay_Get(handle);
  }
  void trueSpeed(bool trueSpeed) {
    HTMLMarqueeElement_trueSpeed_Set(handle, trueSpeed);
  }
  bool trueSpeed() {
    return HTMLMarqueeElement_trueSpeed_Get(handle);
  }
  void vspace(uint vspace) {
    HTMLMarqueeElement_vspace_Set(handle, vspace);
  }
  uint vspace() {
    return HTMLMarqueeElement_vspace_Get(handle);
  }
  void width(string width) {
    HTMLMarqueeElement_width_Set(handle, width);
  }
  string width() {
    return HTMLMarqueeElement_width_Get(handle);
  }
  void onbounce(EventHandler onbounce) {
    HTMLMarqueeElement_onbounce_Set(handle, !onbounce.empty, onbounce.value);
  }
  EventHandler onbounce() {
    return HTMLMarqueeElement_onbounce_Get(handle);
  }
  void onfinish(EventHandler onfinish) {
    HTMLMarqueeElement_onfinish_Set(handle, !onfinish.empty, onfinish.value);
  }
  EventHandler onfinish() {
    return HTMLMarqueeElement_onfinish_Get(handle);
  }
  void onstart(EventHandler onstart) {
    HTMLMarqueeElement_onstart_Set(handle, !onstart.empty, onstart.value);
  }
  EventHandler onstart() {
    return HTMLMarqueeElement_onstart_Get(handle);
  }
  void start() {
    HTMLMarqueeElement_start(handle);
  }
  void stop() {
    HTMLMarqueeElement_stop(handle);
  }
}
struct HTMLMediaElement {
  HTMLElement _parent;
  alias _parent this;
  Optional!(MediaError) error() {
    return HTMLMediaElement_error_Get(handle);
  }
  void src(USVString src) {
    HTMLMediaElement_src_Set(handle, src.handle);
  }
  USVString src() {
    return USVString(HTMLMediaElement_src_Get(handle));
  }
  void srcObject(Optional!(MediaProvider) srcObject) {
    HTMLMediaElement_srcObject_Set(handle, !srcObject.empty, srcObject.value);
  }
  Optional!(MediaProvider) srcObject() {
    return HTMLMediaElement_srcObject_Get(handle);
  }
  USVString currentSrc() {
    return USVString(HTMLMediaElement_currentSrc_Get(handle));
  }
  void crossOrigin(Optional!(string) crossOrigin) {
    HTMLMediaElement_crossOrigin_Set(handle, !crossOrigin.empty, crossOrigin.value);
  }
  Optional!(string) crossOrigin() {
    return HTMLMediaElement_crossOrigin_Get(handle);
  }
  enum ushort NETWORK_EMPTY = 0;
  enum ushort NETWORK_IDLE = 1;
  enum ushort NETWORK_LOADING = 2;
  enum ushort NETWORK_NO_SOURCE = 3;
  ushort networkState() {
    return HTMLMediaElement_networkState_Get(handle);
  }
  void preload(string preload) {
    HTMLMediaElement_preload_Set(handle, preload);
  }
  string preload() {
    return HTMLMediaElement_preload_Get(handle);
  }
  TimeRanges buffered() {
    return TimeRanges(HTMLMediaElement_buffered_Get(handle));
  }
  void load() {
    HTMLMediaElement_load(handle);
  }
  CanPlayTypeResult canPlayType(string type) {
    return HTMLMediaElement_canPlayType(handle, type);
  }
  enum ushort HAVE_NOTHING = 0;
  enum ushort HAVE_METADATA = 1;
  enum ushort HAVE_CURRENT_DATA = 2;
  enum ushort HAVE_FUTURE_DATA = 3;
  enum ushort HAVE_ENOUGH_DATA = 4;
  ushort readyState() {
    return HTMLMediaElement_readyState_Get(handle);
  }
  bool seeking() {
    return HTMLMediaElement_seeking_Get(handle);
  }
  void currentTime(double currentTime) {
    HTMLMediaElement_currentTime_Set(handle, currentTime);
  }
  double currentTime() {
    return HTMLMediaElement_currentTime_Get(handle);
  }
  void fastSeek(double time) {
    HTMLMediaElement_fastSeek(handle, time);
  }
  double duration() {
    return HTMLMediaElement_duration_Get(handle);
  }
  Object getStartDate() {
    return Object(HTMLMediaElement_getStartDate(handle));
  }
  bool paused() {
    return HTMLMediaElement_paused_Get(handle);
  }
  void defaultPlaybackRate(double defaultPlaybackRate) {
    HTMLMediaElement_defaultPlaybackRate_Set(handle, defaultPlaybackRate);
  }
  double defaultPlaybackRate() {
    return HTMLMediaElement_defaultPlaybackRate_Get(handle);
  }
  void playbackRate(double playbackRate) {
    HTMLMediaElement_playbackRate_Set(handle, playbackRate);
  }
  double playbackRate() {
    return HTMLMediaElement_playbackRate_Get(handle);
  }
  TimeRanges played() {
    return TimeRanges(HTMLMediaElement_played_Get(handle));
  }
  TimeRanges seekable() {
    return TimeRanges(HTMLMediaElement_seekable_Get(handle));
  }
  bool ended() {
    return HTMLMediaElement_ended_Get(handle);
  }
  void autoplay(bool autoplay) {
    HTMLMediaElement_autoplay_Set(handle, autoplay);
  }
  bool autoplay() {
    return HTMLMediaElement_autoplay_Get(handle);
  }
  void loop(bool loop) {
    HTMLMediaElement_loop_Set(handle, loop);
  }
  bool loop() {
    return HTMLMediaElement_loop_Get(handle);
  }
  Promise!(void) play() {
    return Promise!(void)(HTMLMediaElement_play(handle));
  }
  void pause() {
    HTMLMediaElement_pause(handle);
  }
  void controls(bool controls) {
    HTMLMediaElement_controls_Set(handle, controls);
  }
  bool controls() {
    return HTMLMediaElement_controls_Get(handle);
  }
  void volume(double volume) {
    HTMLMediaElement_volume_Set(handle, volume);
  }
  double volume() {
    return HTMLMediaElement_volume_Get(handle);
  }
  void muted(bool muted) {
    HTMLMediaElement_muted_Set(handle, muted);
  }
  bool muted() {
    return HTMLMediaElement_muted_Get(handle);
  }
  void defaultMuted(bool defaultMuted) {
    HTMLMediaElement_defaultMuted_Set(handle, defaultMuted);
  }
  bool defaultMuted() {
    return HTMLMediaElement_defaultMuted_Get(handle);
  }
  AudioTrackList audioTracks() {
    return AudioTrackList(HTMLMediaElement_audioTracks_Get(handle));
  }
  VideoTrackList videoTracks() {
    return VideoTrackList(HTMLMediaElement_videoTracks_Get(handle));
  }
  TextTrackList textTracks() {
    return TextTrackList(HTMLMediaElement_textTracks_Get(handle));
  }
  TextTrack addTextTrack(TextTrackKind kind, string label = "", string language = "") {
    return TextTrack(HTMLMediaElement_addTextTrack(handle, kind, label, language));
  }
}
struct HTMLMenuElement {
  HTMLElement _parent;
  alias _parent this;
  void compact(bool compact) {
    HTMLMenuElement_compact_Set(handle, compact);
  }
  bool compact() {
    return HTMLMenuElement_compact_Get(handle);
  }
}
struct HTMLMetaElement {
  HTMLElement _parent;
  alias _parent this;
  void name(string name) {
    HTMLMetaElement_name_Set(handle, name);
  }
  string name() {
    return HTMLMetaElement_name_Get(handle);
  }
  void httpEquiv(string httpEquiv) {
    HTMLMetaElement_httpEquiv_Set(handle, httpEquiv);
  }
  string httpEquiv() {
    return HTMLMetaElement_httpEquiv_Get(handle);
  }
  void content(string content) {
    HTMLMetaElement_content_Set(handle, content);
  }
  string content() {
    return HTMLMetaElement_content_Get(handle);
  }
  void scheme(string scheme) {
    HTMLMetaElement_scheme_Set(handle, scheme);
  }
  string scheme() {
    return HTMLMetaElement_scheme_Get(handle);
  }
}
struct HTMLMeterElement {
  HTMLElement _parent;
  alias _parent this;
  void value(double value) {
    HTMLMeterElement_value_Set(handle, value);
  }
  double value() {
    return HTMLMeterElement_value_Get(handle);
  }
  void min(double min) {
    HTMLMeterElement_min_Set(handle, min);
  }
  double min() {
    return HTMLMeterElement_min_Get(handle);
  }
  void max(double max) {
    HTMLMeterElement_max_Set(handle, max);
  }
  double max() {
    return HTMLMeterElement_max_Get(handle);
  }
  void low(double low) {
    HTMLMeterElement_low_Set(handle, low);
  }
  double low() {
    return HTMLMeterElement_low_Get(handle);
  }
  void high(double high) {
    HTMLMeterElement_high_Set(handle, high);
  }
  double high() {
    return HTMLMeterElement_high_Get(handle);
  }
  void optimum(double optimum) {
    HTMLMeterElement_optimum_Set(handle, optimum);
  }
  double optimum() {
    return HTMLMeterElement_optimum_Get(handle);
  }
  NodeList labels() {
    return NodeList(HTMLMeterElement_labels_Get(handle));
  }
}
struct HTMLModElement {
  HTMLElement _parent;
  alias _parent this;
  void cite(USVString cite) {
    HTMLModElement_cite_Set(handle, cite.handle);
  }
  USVString cite() {
    return USVString(HTMLModElement_cite_Get(handle));
  }
  void dateTime(string dateTime) {
    HTMLModElement_dateTime_Set(handle, dateTime);
  }
  string dateTime() {
    return HTMLModElement_dateTime_Get(handle);
  }
}
struct HTMLOListElement {
  HTMLElement _parent;
  alias _parent this;
  void reversed(bool reversed) {
    HTMLOListElement_reversed_Set(handle, reversed);
  }
  bool reversed() {
    return HTMLOListElement_reversed_Get(handle);
  }
  void start(int start) {
    HTMLOListElement_start_Set(handle, start);
  }
  int start() {
    return HTMLOListElement_start_Get(handle);
  }
  void type(string type) {
    HTMLOListElement_type_Set(handle, type);
  }
  string type() {
    return HTMLOListElement_type_Get(handle);
  }
  void compact(bool compact) {
    HTMLOListElement_compact_Set(handle, compact);
  }
  bool compact() {
    return HTMLOListElement_compact_Get(handle);
  }
}
struct HTMLObjectElement {
  HTMLElement _parent;
  alias _parent this;
  void data(USVString data) {
    HTMLObjectElement_data_Set(handle, data.handle);
  }
  USVString data() {
    return USVString(HTMLObjectElement_data_Get(handle));
  }
  void type(string type) {
    HTMLObjectElement_type_Set(handle, type);
  }
  string type() {
    return HTMLObjectElement_type_Get(handle);
  }
  void typeMustMatch(bool typeMustMatch) {
    HTMLObjectElement_typeMustMatch_Set(handle, typeMustMatch);
  }
  bool typeMustMatch() {
    return HTMLObjectElement_typeMustMatch_Get(handle);
  }
  void name(string name) {
    HTMLObjectElement_name_Set(handle, name);
  }
  string name() {
    return HTMLObjectElement_name_Get(handle);
  }
  void useMap(string useMap) {
    HTMLObjectElement_useMap_Set(handle, useMap);
  }
  string useMap() {
    return HTMLObjectElement_useMap_Get(handle);
  }
  Optional!(HTMLFormElement) form() {
    return HTMLObjectElement_form_Get(handle);
  }
  void width(string width) {
    HTMLObjectElement_width_Set(handle, width);
  }
  string width() {
    return HTMLObjectElement_width_Get(handle);
  }
  void height(string height) {
    HTMLObjectElement_height_Set(handle, height);
  }
  string height() {
    return HTMLObjectElement_height_Get(handle);
  }
  Optional!(Document) contentDocument() {
    return HTMLObjectElement_contentDocument_Get(handle);
  }
  Optional!(WindowProxy) contentWindow() {
    return HTMLObjectElement_contentWindow_Get(handle);
  }
  Optional!(Document) getSVGDocument() {
    return HTMLObjectElement_getSVGDocument(handle);
  }
  bool willValidate() {
    return HTMLObjectElement_willValidate_Get(handle);
  }
  ValidityState validity() {
    return ValidityState(HTMLObjectElement_validity_Get(handle));
  }
  string validationMessage() {
    return HTMLObjectElement_validationMessage_Get(handle);
  }
  bool checkValidity() {
    return HTMLObjectElement_checkValidity(handle);
  }
  bool reportValidity() {
    return HTMLObjectElement_reportValidity(handle);
  }
  void setCustomValidity(string error) {
    HTMLObjectElement_setCustomValidity(handle, error);
  }
  void align_(string align_) {
    HTMLObjectElement_align_Set(handle, align_);
  }
  string align_() {
    return HTMLObjectElement_align_Get(handle);
  }
  void archive(string archive) {
    HTMLObjectElement_archive_Set(handle, archive);
  }
  string archive() {
    return HTMLObjectElement_archive_Get(handle);
  }
  void code(string code) {
    HTMLObjectElement_code_Set(handle, code);
  }
  string code() {
    return HTMLObjectElement_code_Get(handle);
  }
  void declare(bool declare) {
    HTMLObjectElement_declare_Set(handle, declare);
  }
  bool declare() {
    return HTMLObjectElement_declare_Get(handle);
  }
  void hspace(uint hspace) {
    HTMLObjectElement_hspace_Set(handle, hspace);
  }
  uint hspace() {
    return HTMLObjectElement_hspace_Get(handle);
  }
  void standby(string standby) {
    HTMLObjectElement_standby_Set(handle, standby);
  }
  string standby() {
    return HTMLObjectElement_standby_Get(handle);
  }
  void vspace(uint vspace) {
    HTMLObjectElement_vspace_Set(handle, vspace);
  }
  uint vspace() {
    return HTMLObjectElement_vspace_Get(handle);
  }
  void codeBase(string codeBase) {
    HTMLObjectElement_codeBase_Set(handle, codeBase);
  }
  string codeBase() {
    return HTMLObjectElement_codeBase_Get(handle);
  }
  void codeType(string codeType) {
    HTMLObjectElement_codeType_Set(handle, codeType);
  }
  string codeType() {
    return HTMLObjectElement_codeType_Get(handle);
  }
  void border(string border) {
    HTMLObjectElement_border_Set(handle, border);
  }
  string border() {
    return HTMLObjectElement_border_Get(handle);
  }
}
struct HTMLOptGroupElement {
  HTMLElement _parent;
  alias _parent this;
  void disabled(bool disabled) {
    HTMLOptGroupElement_disabled_Set(handle, disabled);
  }
  bool disabled() {
    return HTMLOptGroupElement_disabled_Get(handle);
  }
  void label(string label) {
    HTMLOptGroupElement_label_Set(handle, label);
  }
  string label() {
    return HTMLOptGroupElement_label_Get(handle);
  }
}
struct HTMLOptionElement {
  HTMLElement _parent;
  alias _parent this;
  void disabled(bool disabled) {
    HTMLOptionElement_disabled_Set(handle, disabled);
  }
  bool disabled() {
    return HTMLOptionElement_disabled_Get(handle);
  }
  Optional!(HTMLFormElement) form() {
    return HTMLOptionElement_form_Get(handle);
  }
  void label(string label) {
    HTMLOptionElement_label_Set(handle, label);
  }
  string label() {
    return HTMLOptionElement_label_Get(handle);
  }
  void defaultSelected(bool defaultSelected) {
    HTMLOptionElement_defaultSelected_Set(handle, defaultSelected);
  }
  bool defaultSelected() {
    return HTMLOptionElement_defaultSelected_Get(handle);
  }
  void selected(bool selected) {
    HTMLOptionElement_selected_Set(handle, selected);
  }
  bool selected() {
    return HTMLOptionElement_selected_Get(handle);
  }
  void value(string value) {
    HTMLOptionElement_value_Set(handle, value);
  }
  string value() {
    return HTMLOptionElement_value_Get(handle);
  }
  void text(string text) {
    HTMLOptionElement_text_Set(handle, text);
  }
  string text() {
    return HTMLOptionElement_text_Get(handle);
  }
  int index() {
    return HTMLOptionElement_index_Get(handle);
  }
}
struct HTMLOptionsCollection {
  HTMLCollection _parent;
  alias _parent this;
  void length(uint length) {
    HTMLOptionsCollection_length_Set(handle, length);
  }
  uint length() {
    return HTMLOptionsCollection_length_Get(handle);
  }
  void opIndexAssign(Optional!(HTMLOptionElement) option, uint index) {
    HTMLOptionsCollection_setter__uint_optional_JsHandle(handle, index, !option.empty, option.value.handle);
  }
  void opDispatch(uint index)(Optional!(HTMLOptionElement) option) {
    HTMLOptionsCollection_setter__uint_optional_JsHandle(handle, index, !option.empty, option.value.handle);
  }
  void add(SumType!(HTMLOptionElement, HTMLOptGroupElement) element, Optional!(SumType!(HTMLElement, int)) before = no!(SumType!(HTMLElement, int))) {
    HTMLOptionsCollection_add(handle, element, !before.empty, before.value);
  }
  void remove(int index) {
    HTMLOptionsCollection_remove(handle, index);
  }
  void selectedIndex(int selectedIndex) {
    HTMLOptionsCollection_selectedIndex_Set(handle, selectedIndex);
  }
  int selectedIndex() {
    return HTMLOptionsCollection_selectedIndex_Get(handle);
  }
}
alias HTMLOrSVGImageElement = SumType!(HTMLImageElement, SVGImageElement);
alias HTMLOrSVGScriptElement = SumType!(HTMLScriptElement, SVGScriptElement);
struct HTMLOutputElement {
  HTMLElement _parent;
  alias _parent this;
  DOMTokenList htmlFor() {
    return DOMTokenList(HTMLOutputElement_htmlFor_Get(handle));
  }
  Optional!(HTMLFormElement) form() {
    return HTMLOutputElement_form_Get(handle);
  }
  void name(string name) {
    HTMLOutputElement_name_Set(handle, name);
  }
  string name() {
    return HTMLOutputElement_name_Get(handle);
  }
  string type() {
    return HTMLOutputElement_type_Get(handle);
  }
  void defaultValue(string defaultValue) {
    HTMLOutputElement_defaultValue_Set(handle, defaultValue);
  }
  string defaultValue() {
    return HTMLOutputElement_defaultValue_Get(handle);
  }
  void value(string value) {
    HTMLOutputElement_value_Set(handle, value);
  }
  string value() {
    return HTMLOutputElement_value_Get(handle);
  }
  bool willValidate() {
    return HTMLOutputElement_willValidate_Get(handle);
  }
  ValidityState validity() {
    return ValidityState(HTMLOutputElement_validity_Get(handle));
  }
  string validationMessage() {
    return HTMLOutputElement_validationMessage_Get(handle);
  }
  bool checkValidity() {
    return HTMLOutputElement_checkValidity(handle);
  }
  bool reportValidity() {
    return HTMLOutputElement_reportValidity(handle);
  }
  void setCustomValidity(string error) {
    HTMLOutputElement_setCustomValidity(handle, error);
  }
  NodeList labels() {
    return NodeList(HTMLOutputElement_labels_Get(handle));
  }
}
struct HTMLParagraphElement {
  HTMLElement _parent;
  alias _parent this;
  void align_(string align_) {
    HTMLParagraphElement_align_Set(handle, align_);
  }
  string align_() {
    return HTMLParagraphElement_align_Get(handle);
  }
}
struct HTMLParamElement {
  HTMLElement _parent;
  alias _parent this;
  void name(string name) {
    HTMLParamElement_name_Set(handle, name);
  }
  string name() {
    return HTMLParamElement_name_Get(handle);
  }
  void value(string value) {
    HTMLParamElement_value_Set(handle, value);
  }
  string value() {
    return HTMLParamElement_value_Get(handle);
  }
  void type(string type) {
    HTMLParamElement_type_Set(handle, type);
  }
  string type() {
    return HTMLParamElement_type_Get(handle);
  }
  void valueType(string valueType) {
    HTMLParamElement_valueType_Set(handle, valueType);
  }
  string valueType() {
    return HTMLParamElement_valueType_Get(handle);
  }
}
struct HTMLPictureElement {
  HTMLElement _parent;
  alias _parent this;
}
struct HTMLPreElement {
  HTMLElement _parent;
  alias _parent this;
  void width(int width) {
    HTMLPreElement_width_Set(handle, width);
  }
  int width() {
    return HTMLPreElement_width_Get(handle);
  }
}
struct HTMLProgressElement {
  HTMLElement _parent;
  alias _parent this;
  void value(double value) {
    HTMLProgressElement_value_Set(handle, value);
  }
  double value() {
    return HTMLProgressElement_value_Get(handle);
  }
  void max(double max) {
    HTMLProgressElement_max_Set(handle, max);
  }
  double max() {
    return HTMLProgressElement_max_Get(handle);
  }
  double position() {
    return HTMLProgressElement_position_Get(handle);
  }
  NodeList labels() {
    return NodeList(HTMLProgressElement_labels_Get(handle));
  }
}
struct HTMLQuoteElement {
  HTMLElement _parent;
  alias _parent this;
  void cite(USVString cite) {
    HTMLQuoteElement_cite_Set(handle, cite.handle);
  }
  USVString cite() {
    return USVString(HTMLQuoteElement_cite_Get(handle));
  }
}
struct HTMLScriptElement {
  HTMLElement _parent;
  alias _parent this;
  void src(USVString src) {
    HTMLScriptElement_src_Set(handle, src.handle);
  }
  USVString src() {
    return USVString(HTMLScriptElement_src_Get(handle));
  }
  void type(string type) {
    HTMLScriptElement_type_Set(handle, type);
  }
  string type() {
    return HTMLScriptElement_type_Get(handle);
  }
  void noModule(bool noModule) {
    HTMLScriptElement_noModule_Set(handle, noModule);
  }
  bool noModule() {
    return HTMLScriptElement_noModule_Get(handle);
  }
  void async(bool async) {
    HTMLScriptElement_async_Set(handle, async);
  }
  bool async() {
    return HTMLScriptElement_async_Get(handle);
  }
  void defer(bool defer) {
    HTMLScriptElement_defer_Set(handle, defer);
  }
  bool defer() {
    return HTMLScriptElement_defer_Get(handle);
  }
  void crossOrigin(Optional!(string) crossOrigin) {
    HTMLScriptElement_crossOrigin_Set(handle, !crossOrigin.empty, crossOrigin.value);
  }
  Optional!(string) crossOrigin() {
    return HTMLScriptElement_crossOrigin_Get(handle);
  }
  void text(string text) {
    HTMLScriptElement_text_Set(handle, text);
  }
  string text() {
    return HTMLScriptElement_text_Get(handle);
  }
  void integrity(string integrity) {
    HTMLScriptElement_integrity_Set(handle, integrity);
  }
  string integrity() {
    return HTMLScriptElement_integrity_Get(handle);
  }
  void referrerPolicy(string referrerPolicy) {
    HTMLScriptElement_referrerPolicy_Set(handle, referrerPolicy);
  }
  string referrerPolicy() {
    return HTMLScriptElement_referrerPolicy_Get(handle);
  }
  void charset(string charset) {
    HTMLScriptElement_charset_Set(handle, charset);
  }
  string charset() {
    return HTMLScriptElement_charset_Get(handle);
  }
  void event(string event) {
    HTMLScriptElement_event_Set(handle, event);
  }
  string event() {
    return HTMLScriptElement_event_Get(handle);
  }
  void htmlFor(string htmlFor) {
    HTMLScriptElement_htmlFor_Set(handle, htmlFor);
  }
  string htmlFor() {
    return HTMLScriptElement_htmlFor_Get(handle);
  }
}
struct HTMLSelectElement {
  HTMLElement _parent;
  alias _parent this;
  void autocomplete(string autocomplete) {
    HTMLSelectElement_autocomplete_Set(handle, autocomplete);
  }
  string autocomplete() {
    return HTMLSelectElement_autocomplete_Get(handle);
  }
  void autofocus(bool autofocus) {
    HTMLSelectElement_autofocus_Set(handle, autofocus);
  }
  bool autofocus() {
    return HTMLSelectElement_autofocus_Get(handle);
  }
  void disabled(bool disabled) {
    HTMLSelectElement_disabled_Set(handle, disabled);
  }
  bool disabled() {
    return HTMLSelectElement_disabled_Get(handle);
  }
  Optional!(HTMLFormElement) form() {
    return HTMLSelectElement_form_Get(handle);
  }
  void multiple(bool multiple) {
    HTMLSelectElement_multiple_Set(handle, multiple);
  }
  bool multiple() {
    return HTMLSelectElement_multiple_Get(handle);
  }
  void name(string name) {
    HTMLSelectElement_name_Set(handle, name);
  }
  string name() {
    return HTMLSelectElement_name_Get(handle);
  }
  void required(bool required) {
    HTMLSelectElement_required_Set(handle, required);
  }
  bool required() {
    return HTMLSelectElement_required_Get(handle);
  }
  void size(uint size) {
    HTMLSelectElement_size_Set(handle, size);
  }
  uint size() {
    return HTMLSelectElement_size_Get(handle);
  }
  string type() {
    return HTMLSelectElement_type_Get(handle);
  }
  HTMLOptionsCollection options() {
    return HTMLOptionsCollection(HTMLSelectElement_options_Get(handle));
  }
  void length(uint length) {
    HTMLSelectElement_length_Set(handle, length);
  }
  uint length() {
    return HTMLSelectElement_length_Get(handle);
  }
  Optional!(Element) item(uint index) {
    return HTMLSelectElement_item_getter(handle, index);
  }
  Optional!(HTMLOptionElement) namedItem(string name) {
    return HTMLSelectElement_namedItem(handle, name);
  }
  void add(SumType!(HTMLOptionElement, HTMLOptGroupElement) element, Optional!(SumType!(HTMLElement, int)) before = no!(SumType!(HTMLElement, int))) {
    HTMLSelectElement_add(handle, element, !before.empty, before.value);
  }
  void remove() {
    HTMLSelectElement_remove__(handle);
  }
  void remove(int index) {
    HTMLSelectElement_remove__int(handle, index);
  }
  void opIndexAssign(Optional!(HTMLOptionElement) option, uint index) {
    HTMLSelectElement_setter__uint_optional_JsHandle(handle, index, !option.empty, option.value.handle);
  }
  void opDispatch(uint index)(Optional!(HTMLOptionElement) option) {
    HTMLSelectElement_setter__uint_optional_JsHandle(handle, index, !option.empty, option.value.handle);
  }
  HTMLCollection selectedOptions() {
    return HTMLCollection(HTMLSelectElement_selectedOptions_Get(handle));
  }
  void selectedIndex(int selectedIndex) {
    HTMLSelectElement_selectedIndex_Set(handle, selectedIndex);
  }
  int selectedIndex() {
    return HTMLSelectElement_selectedIndex_Get(handle);
  }
  void value(string value) {
    HTMLSelectElement_value_Set(handle, value);
  }
  string value() {
    return HTMLSelectElement_value_Get(handle);
  }
  bool willValidate() {
    return HTMLSelectElement_willValidate_Get(handle);
  }
  ValidityState validity() {
    return ValidityState(HTMLSelectElement_validity_Get(handle));
  }
  string validationMessage() {
    return HTMLSelectElement_validationMessage_Get(handle);
  }
  bool checkValidity() {
    return HTMLSelectElement_checkValidity(handle);
  }
  bool reportValidity() {
    return HTMLSelectElement_reportValidity(handle);
  }
  void setCustomValidity(string error) {
    HTMLSelectElement_setCustomValidity(handle, error);
  }
  NodeList labels() {
    return NodeList(HTMLSelectElement_labels_Get(handle));
  }
}
struct HTMLSlotElement {
  HTMLElement _parent;
  alias _parent this;
  void name(string name) {
    HTMLSlotElement_name_Set(handle, name);
  }
  string name() {
    return HTMLSlotElement_name_Get(handle);
  }
  Sequence!(Node) assignedNodes(AssignedNodesOptions options) {
    return Sequence!(Node)(HTMLSlotElement_assignedNodes(handle, options.handle));
  }
  Sequence!(Element) assignedElements(AssignedNodesOptions options) {
    return Sequence!(Element)(HTMLSlotElement_assignedElements(handle, options.handle));
  }
}
struct HTMLSourceElement {
  HTMLElement _parent;
  alias _parent this;
  void src(USVString src) {
    HTMLSourceElement_src_Set(handle, src.handle);
  }
  USVString src() {
    return USVString(HTMLSourceElement_src_Get(handle));
  }
  void type(string type) {
    HTMLSourceElement_type_Set(handle, type);
  }
  string type() {
    return HTMLSourceElement_type_Get(handle);
  }
  void srcset(USVString srcset) {
    HTMLSourceElement_srcset_Set(handle, srcset.handle);
  }
  USVString srcset() {
    return USVString(HTMLSourceElement_srcset_Get(handle));
  }
  void sizes(string sizes) {
    HTMLSourceElement_sizes_Set(handle, sizes);
  }
  string sizes() {
    return HTMLSourceElement_sizes_Get(handle);
  }
  void media(string media) {
    HTMLSourceElement_media_Set(handle, media);
  }
  string media() {
    return HTMLSourceElement_media_Get(handle);
  }
}
struct HTMLSpanElement {
  HTMLElement _parent;
  alias _parent this;
}
struct HTMLStyleElement {
  HTMLElement _parent;
  alias _parent this;
  void media(string media) {
    HTMLStyleElement_media_Set(handle, media);
  }
  string media() {
    return HTMLStyleElement_media_Get(handle);
  }
  void type(string type) {
    HTMLStyleElement_type_Set(handle, type);
  }
  string type() {
    return HTMLStyleElement_type_Get(handle);
  }
  Optional!(StyleSheet) sheet() {
    return LinkStyle_sheet_Get(handle);
  }
}
struct HTMLTableCaptionElement {
  HTMLElement _parent;
  alias _parent this;
  void align_(string align_) {
    HTMLTableCaptionElement_align_Set(handle, align_);
  }
  string align_() {
    return HTMLTableCaptionElement_align_Get(handle);
  }
}
struct HTMLTableCellElement {
  HTMLElement _parent;
  alias _parent this;
  void colSpan(uint colSpan) {
    HTMLTableCellElement_colSpan_Set(handle, colSpan);
  }
  uint colSpan() {
    return HTMLTableCellElement_colSpan_Get(handle);
  }
  void rowSpan(uint rowSpan) {
    HTMLTableCellElement_rowSpan_Set(handle, rowSpan);
  }
  uint rowSpan() {
    return HTMLTableCellElement_rowSpan_Get(handle);
  }
  void headers(string headers) {
    HTMLTableCellElement_headers_Set(handle, headers);
  }
  string headers() {
    return HTMLTableCellElement_headers_Get(handle);
  }
  int cellIndex() {
    return HTMLTableCellElement_cellIndex_Get(handle);
  }
  void scope_(string scope_) {
    HTMLTableCellElement_scope_Set(handle, scope_);
  }
  string scope_() {
    return HTMLTableCellElement_scope_Get(handle);
  }
  void abbr(string abbr) {
    HTMLTableCellElement_abbr_Set(handle, abbr);
  }
  string abbr() {
    return HTMLTableCellElement_abbr_Get(handle);
  }
  void align_(string align_) {
    HTMLTableCellElement_align_Set(handle, align_);
  }
  string align_() {
    return HTMLTableCellElement_align_Get(handle);
  }
  void axis(string axis) {
    HTMLTableCellElement_axis_Set(handle, axis);
  }
  string axis() {
    return HTMLTableCellElement_axis_Get(handle);
  }
  void height(string height) {
    HTMLTableCellElement_height_Set(handle, height);
  }
  string height() {
    return HTMLTableCellElement_height_Get(handle);
  }
  void width(string width) {
    HTMLTableCellElement_width_Set(handle, width);
  }
  string width() {
    return HTMLTableCellElement_width_Get(handle);
  }
  void ch(string ch) {
    HTMLTableCellElement_ch_Set(handle, ch);
  }
  string ch() {
    return HTMLTableCellElement_ch_Get(handle);
  }
  void chOff(string chOff) {
    HTMLTableCellElement_chOff_Set(handle, chOff);
  }
  string chOff() {
    return HTMLTableCellElement_chOff_Get(handle);
  }
  void noWrap(bool noWrap) {
    HTMLTableCellElement_noWrap_Set(handle, noWrap);
  }
  bool noWrap() {
    return HTMLTableCellElement_noWrap_Get(handle);
  }
  void vAlign(string vAlign) {
    HTMLTableCellElement_vAlign_Set(handle, vAlign);
  }
  string vAlign() {
    return HTMLTableCellElement_vAlign_Get(handle);
  }
  void bgColor(string bgColor) {
    HTMLTableCellElement_bgColor_Set(handle, bgColor);
  }
  string bgColor() {
    return HTMLTableCellElement_bgColor_Get(handle);
  }
}
struct HTMLTableColElement {
  HTMLElement _parent;
  alias _parent this;
  void span(uint span) {
    HTMLTableColElement_span_Set(handle, span);
  }
  uint span() {
    return HTMLTableColElement_span_Get(handle);
  }
  void align_(string align_) {
    HTMLTableColElement_align_Set(handle, align_);
  }
  string align_() {
    return HTMLTableColElement_align_Get(handle);
  }
  void ch(string ch) {
    HTMLTableColElement_ch_Set(handle, ch);
  }
  string ch() {
    return HTMLTableColElement_ch_Get(handle);
  }
  void chOff(string chOff) {
    HTMLTableColElement_chOff_Set(handle, chOff);
  }
  string chOff() {
    return HTMLTableColElement_chOff_Get(handle);
  }
  void vAlign(string vAlign) {
    HTMLTableColElement_vAlign_Set(handle, vAlign);
  }
  string vAlign() {
    return HTMLTableColElement_vAlign_Get(handle);
  }
  void width(string width) {
    HTMLTableColElement_width_Set(handle, width);
  }
  string width() {
    return HTMLTableColElement_width_Get(handle);
  }
}
struct HTMLTableElement {
  HTMLElement _parent;
  alias _parent this;
  void caption(Optional!(HTMLTableCaptionElement) caption) {
    HTMLTableElement_caption_Set(handle, !caption.empty, caption.value.handle);
  }
  Optional!(HTMLTableCaptionElement) caption() {
    return HTMLTableElement_caption_Get(handle);
  }
  HTMLTableCaptionElement createCaption() {
    return HTMLTableCaptionElement(HTMLTableElement_createCaption(handle));
  }
  void deleteCaption() {
    HTMLTableElement_deleteCaption(handle);
  }
  void tHead(Optional!(HTMLTableSectionElement) tHead) {
    HTMLTableElement_tHead_Set(handle, !tHead.empty, tHead.value.handle);
  }
  Optional!(HTMLTableSectionElement) tHead() {
    return HTMLTableElement_tHead_Get(handle);
  }
  HTMLTableSectionElement createTHead() {
    return HTMLTableSectionElement(HTMLTableElement_createTHead(handle));
  }
  void deleteTHead() {
    HTMLTableElement_deleteTHead(handle);
  }
  void tFoot(Optional!(HTMLTableSectionElement) tFoot) {
    HTMLTableElement_tFoot_Set(handle, !tFoot.empty, tFoot.value.handle);
  }
  Optional!(HTMLTableSectionElement) tFoot() {
    return HTMLTableElement_tFoot_Get(handle);
  }
  HTMLTableSectionElement createTFoot() {
    return HTMLTableSectionElement(HTMLTableElement_createTFoot(handle));
  }
  void deleteTFoot() {
    HTMLTableElement_deleteTFoot(handle);
  }
  HTMLCollection tBodies() {
    return HTMLCollection(HTMLTableElement_tBodies_Get(handle));
  }
  HTMLTableSectionElement createTBody() {
    return HTMLTableSectionElement(HTMLTableElement_createTBody(handle));
  }
  HTMLCollection rows() {
    return HTMLCollection(HTMLTableElement_rows_Get(handle));
  }
  HTMLTableRowElement insertRow(int index = -1) {
    return HTMLTableRowElement(HTMLTableElement_insertRow(handle, index));
  }
  void deleteRow(int index) {
    HTMLTableElement_deleteRow(handle, index);
  }
  void align_(string align_) {
    HTMLTableElement_align_Set(handle, align_);
  }
  string align_() {
    return HTMLTableElement_align_Get(handle);
  }
  void border(string border) {
    HTMLTableElement_border_Set(handle, border);
  }
  string border() {
    return HTMLTableElement_border_Get(handle);
  }
  void frame(string frame) {
    HTMLTableElement_frame_Set(handle, frame);
  }
  string frame() {
    return HTMLTableElement_frame_Get(handle);
  }
  void rules(string rules) {
    HTMLTableElement_rules_Set(handle, rules);
  }
  string rules() {
    return HTMLTableElement_rules_Get(handle);
  }
  void summary(string summary) {
    HTMLTableElement_summary_Set(handle, summary);
  }
  string summary() {
    return HTMLTableElement_summary_Get(handle);
  }
  void width(string width) {
    HTMLTableElement_width_Set(handle, width);
  }
  string width() {
    return HTMLTableElement_width_Get(handle);
  }
  void bgColor(string bgColor) {
    HTMLTableElement_bgColor_Set(handle, bgColor);
  }
  string bgColor() {
    return HTMLTableElement_bgColor_Get(handle);
  }
  void cellPadding(string cellPadding) {
    HTMLTableElement_cellPadding_Set(handle, cellPadding);
  }
  string cellPadding() {
    return HTMLTableElement_cellPadding_Get(handle);
  }
  void cellSpacing(string cellSpacing) {
    HTMLTableElement_cellSpacing_Set(handle, cellSpacing);
  }
  string cellSpacing() {
    return HTMLTableElement_cellSpacing_Get(handle);
  }
}
struct HTMLTableRowElement {
  HTMLElement _parent;
  alias _parent this;
  int rowIndex() {
    return HTMLTableRowElement_rowIndex_Get(handle);
  }
  int sectionRowIndex() {
    return HTMLTableRowElement_sectionRowIndex_Get(handle);
  }
  HTMLCollection cells() {
    return HTMLCollection(HTMLTableRowElement_cells_Get(handle));
  }
  HTMLTableCellElement insertCell(int index = -1) {
    return HTMLTableCellElement(HTMLTableRowElement_insertCell(handle, index));
  }
  void deleteCell(int index) {
    HTMLTableRowElement_deleteCell(handle, index);
  }
  void align_(string align_) {
    HTMLTableRowElement_align_Set(handle, align_);
  }
  string align_() {
    return HTMLTableRowElement_align_Get(handle);
  }
  void ch(string ch) {
    HTMLTableRowElement_ch_Set(handle, ch);
  }
  string ch() {
    return HTMLTableRowElement_ch_Get(handle);
  }
  void chOff(string chOff) {
    HTMLTableRowElement_chOff_Set(handle, chOff);
  }
  string chOff() {
    return HTMLTableRowElement_chOff_Get(handle);
  }
  void vAlign(string vAlign) {
    HTMLTableRowElement_vAlign_Set(handle, vAlign);
  }
  string vAlign() {
    return HTMLTableRowElement_vAlign_Get(handle);
  }
  void bgColor(string bgColor) {
    HTMLTableRowElement_bgColor_Set(handle, bgColor);
  }
  string bgColor() {
    return HTMLTableRowElement_bgColor_Get(handle);
  }
}
struct HTMLTableSectionElement {
  HTMLElement _parent;
  alias _parent this;
  HTMLCollection rows() {
    return HTMLCollection(HTMLTableSectionElement_rows_Get(handle));
  }
  HTMLTableRowElement insertRow(int index = -1) {
    return HTMLTableRowElement(HTMLTableSectionElement_insertRow(handle, index));
  }
  void deleteRow(int index) {
    HTMLTableSectionElement_deleteRow(handle, index);
  }
  void align_(string align_) {
    HTMLTableSectionElement_align_Set(handle, align_);
  }
  string align_() {
    return HTMLTableSectionElement_align_Get(handle);
  }
  void ch(string ch) {
    HTMLTableSectionElement_ch_Set(handle, ch);
  }
  string ch() {
    return HTMLTableSectionElement_ch_Get(handle);
  }
  void chOff(string chOff) {
    HTMLTableSectionElement_chOff_Set(handle, chOff);
  }
  string chOff() {
    return HTMLTableSectionElement_chOff_Get(handle);
  }
  void vAlign(string vAlign) {
    HTMLTableSectionElement_vAlign_Set(handle, vAlign);
  }
  string vAlign() {
    return HTMLTableSectionElement_vAlign_Get(handle);
  }
}
struct HTMLTemplateElement {
  HTMLElement _parent;
  alias _parent this;
  DocumentFragment content() {
    return DocumentFragment(HTMLTemplateElement_content_Get(handle));
  }
}
struct HTMLTextAreaElement {
  HTMLElement _parent;
  alias _parent this;
  void autocomplete(string autocomplete) {
    HTMLTextAreaElement_autocomplete_Set(handle, autocomplete);
  }
  string autocomplete() {
    return HTMLTextAreaElement_autocomplete_Get(handle);
  }
  void autofocus(bool autofocus) {
    HTMLTextAreaElement_autofocus_Set(handle, autofocus);
  }
  bool autofocus() {
    return HTMLTextAreaElement_autofocus_Get(handle);
  }
  void cols(uint cols) {
    HTMLTextAreaElement_cols_Set(handle, cols);
  }
  uint cols() {
    return HTMLTextAreaElement_cols_Get(handle);
  }
  void dirName(string dirName) {
    HTMLTextAreaElement_dirName_Set(handle, dirName);
  }
  string dirName() {
    return HTMLTextAreaElement_dirName_Get(handle);
  }
  void disabled(bool disabled) {
    HTMLTextAreaElement_disabled_Set(handle, disabled);
  }
  bool disabled() {
    return HTMLTextAreaElement_disabled_Get(handle);
  }
  Optional!(HTMLFormElement) form() {
    return HTMLTextAreaElement_form_Get(handle);
  }
  void maxLength(int maxLength) {
    HTMLTextAreaElement_maxLength_Set(handle, maxLength);
  }
  int maxLength() {
    return HTMLTextAreaElement_maxLength_Get(handle);
  }
  void minLength(int minLength) {
    HTMLTextAreaElement_minLength_Set(handle, minLength);
  }
  int minLength() {
    return HTMLTextAreaElement_minLength_Get(handle);
  }
  void name(string name) {
    HTMLTextAreaElement_name_Set(handle, name);
  }
  string name() {
    return HTMLTextAreaElement_name_Get(handle);
  }
  void placeholder(string placeholder) {
    HTMLTextAreaElement_placeholder_Set(handle, placeholder);
  }
  string placeholder() {
    return HTMLTextAreaElement_placeholder_Get(handle);
  }
  void readOnly(bool readOnly) {
    HTMLTextAreaElement_readOnly_Set(handle, readOnly);
  }
  bool readOnly() {
    return HTMLTextAreaElement_readOnly_Get(handle);
  }
  void required(bool required) {
    HTMLTextAreaElement_required_Set(handle, required);
  }
  bool required() {
    return HTMLTextAreaElement_required_Get(handle);
  }
  void rows(uint rows) {
    HTMLTextAreaElement_rows_Set(handle, rows);
  }
  uint rows() {
    return HTMLTextAreaElement_rows_Get(handle);
  }
  void wrap(string wrap) {
    HTMLTextAreaElement_wrap_Set(handle, wrap);
  }
  string wrap() {
    return HTMLTextAreaElement_wrap_Get(handle);
  }
  string type() {
    return HTMLTextAreaElement_type_Get(handle);
  }
  void defaultValue(string defaultValue) {
    HTMLTextAreaElement_defaultValue_Set(handle, defaultValue);
  }
  string defaultValue() {
    return HTMLTextAreaElement_defaultValue_Get(handle);
  }
  void value(string value) {
    HTMLTextAreaElement_value_Set(handle, value);
  }
  string value() {
    return HTMLTextAreaElement_value_Get(handle);
  }
  uint textLength() {
    return HTMLTextAreaElement_textLength_Get(handle);
  }
  bool willValidate() {
    return HTMLTextAreaElement_willValidate_Get(handle);
  }
  ValidityState validity() {
    return ValidityState(HTMLTextAreaElement_validity_Get(handle));
  }
  string validationMessage() {
    return HTMLTextAreaElement_validationMessage_Get(handle);
  }
  bool checkValidity() {
    return HTMLTextAreaElement_checkValidity(handle);
  }
  bool reportValidity() {
    return HTMLTextAreaElement_reportValidity(handle);
  }
  void setCustomValidity(string error) {
    HTMLTextAreaElement_setCustomValidity(handle, error);
  }
  NodeList labels() {
    return NodeList(HTMLTextAreaElement_labels_Get(handle));
  }
  void select() {
    HTMLTextAreaElement_select(handle);
  }
  void selectionStart(uint selectionStart) {
    HTMLTextAreaElement_selectionStart_Set(handle, selectionStart);
  }
  uint selectionStart() {
    return HTMLTextAreaElement_selectionStart_Get(handle);
  }
  void selectionEnd(uint selectionEnd) {
    HTMLTextAreaElement_selectionEnd_Set(handle, selectionEnd);
  }
  uint selectionEnd() {
    return HTMLTextAreaElement_selectionEnd_Get(handle);
  }
  void selectionDirection(string selectionDirection) {
    HTMLTextAreaElement_selectionDirection_Set(handle, selectionDirection);
  }
  string selectionDirection() {
    return HTMLTextAreaElement_selectionDirection_Get(handle);
  }
  void setRangeText(string replacement) {
    HTMLTextAreaElement_setRangeText__string(handle, replacement);
  }
  void setRangeText(string replacement, uint start, uint end, SelectionMode selectionMode = "preserve") {
    HTMLTextAreaElement_setRangeText__string_uint_uint_SelectionMode(handle, replacement, start, end, selectionMode);
  }
  void setSelectionRange(uint start, uint end, string direction) {
    HTMLTextAreaElement_setSelectionRange(handle, start, end, direction);
  }
}
struct HTMLTimeElement {
  HTMLElement _parent;
  alias _parent this;
  void dateTime(string dateTime) {
    HTMLTimeElement_dateTime_Set(handle, dateTime);
  }
  string dateTime() {
    return HTMLTimeElement_dateTime_Get(handle);
  }
}
struct HTMLTitleElement {
  HTMLElement _parent;
  alias _parent this;
  void text(string text) {
    HTMLTitleElement_text_Set(handle, text);
  }
  string text() {
    return HTMLTitleElement_text_Get(handle);
  }
}
struct HTMLTrackElement {
  HTMLElement _parent;
  alias _parent this;
  void kind(string kind) {
    HTMLTrackElement_kind_Set(handle, kind);
  }
  string kind() {
    return HTMLTrackElement_kind_Get(handle);
  }
  void src(USVString src) {
    HTMLTrackElement_src_Set(handle, src.handle);
  }
  USVString src() {
    return USVString(HTMLTrackElement_src_Get(handle));
  }
  void srclang(string srclang) {
    HTMLTrackElement_srclang_Set(handle, srclang);
  }
  string srclang() {
    return HTMLTrackElement_srclang_Get(handle);
  }
  void label(string label) {
    HTMLTrackElement_label_Set(handle, label);
  }
  string label() {
    return HTMLTrackElement_label_Get(handle);
  }
  void default_(bool default_) {
    HTMLTrackElement_default_Set(handle, default_);
  }
  bool default_() {
    return HTMLTrackElement_default_Get(handle);
  }
  enum ushort NONE = 0;
  enum ushort LOADING = 1;
  enum ushort LOADED = 2;
  enum ushort ERROR = 3;
  ushort readyState() {
    return HTMLTrackElement_readyState_Get(handle);
  }
  TextTrack track() {
    return TextTrack(HTMLTrackElement_track_Get(handle));
  }
}
struct HTMLUListElement {
  HTMLElement _parent;
  alias _parent this;
  void compact(bool compact) {
    HTMLUListElement_compact_Set(handle, compact);
  }
  bool compact() {
    return HTMLUListElement_compact_Get(handle);
  }
  void type(string type) {
    HTMLUListElement_type_Set(handle, type);
  }
  string type() {
    return HTMLUListElement_type_Get(handle);
  }
}
struct HTMLUnknownElement {
  HTMLElement _parent;
  alias _parent this;
}
struct HTMLVideoElement {
  HTMLMediaElement _parent;
  alias _parent this;
  void width(uint width) {
    HTMLVideoElement_width_Set(handle, width);
  }
  uint width() {
    return HTMLVideoElement_width_Get(handle);
  }
  void height(uint height) {
    HTMLVideoElement_height_Set(handle, height);
  }
  uint height() {
    return HTMLVideoElement_height_Get(handle);
  }
  uint videoWidth() {
    return HTMLVideoElement_videoWidth_Get(handle);
  }
  uint videoHeight() {
    return HTMLVideoElement_videoHeight_Get(handle);
  }
  void poster(USVString poster) {
    HTMLVideoElement_poster_Set(handle, poster.handle);
  }
  USVString poster() {
    return USVString(HTMLVideoElement_poster_Get(handle));
  }
  void playsInline(bool playsInline) {
    HTMLVideoElement_playsInline_Set(handle, playsInline);
  }
  bool playsInline() {
    return HTMLVideoElement_playsInline_Get(handle);
  }
}
struct HashChangeEvent {
  Event _parent;
  alias _parent this;
  USVString oldURL() {
    return USVString(HashChangeEvent_oldURL_Get(handle));
  }
  USVString newURL() {
    return USVString(HashChangeEvent_newURL_Get(handle));
  }
}
struct HashChangeEventInit {
  EventInit _parent;
  alias _parent this;
  void oldURL(USVString oldURL) {
    HashChangeEventInit_oldURL_Set(handle, oldURL.handle);
  }
  USVString oldURL() {
    return USVString(HashChangeEventInit_oldURL_Get(handle));
  }
  void newURL(USVString newURL) {
    HashChangeEventInit_newURL_Set(handle, newURL.handle);
  }
  USVString newURL() {
    return USVString(HashChangeEventInit_newURL_Get(handle));
  }
}
struct History {
  JsHandle handle;
  alias handle this;
  uint length() {
    return History_length_Get(handle);
  }
  void scrollRestoration(ScrollRestoration scrollRestoration) {
    History_scrollRestoration_Set(handle, scrollRestoration);
  }
  ScrollRestoration scrollRestoration() {
    return History_scrollRestoration_Get(handle);
  }
  Any state() {
    return Any(History_state_Get(handle));
  }
  void go(int delta = 0) {
    History_go(handle, delta);
  }
  void back() {
    History_back(handle);
  }
  void forward() {
    History_forward(handle);
  }
  void pushState(Any data, string title, Optional!(USVString) url = no!(USVString)) {
    History_pushState(handle, data.handle, title, !url.empty, url.value.handle);
  }
  void replaceState(Any data, string title, Optional!(USVString) url = no!(USVString)) {
    History_replaceState(handle, data.handle, title, !url.empty, url.value.handle);
  }
}
struct ImageBitmap {
  JsHandle handle;
  alias handle this;
  uint width() {
    return ImageBitmap_width_Get(handle);
  }
  uint height() {
    return ImageBitmap_height_Get(handle);
  }
  void close() {
    ImageBitmap_close(handle);
  }
}
struct ImageBitmapOptions {
  JsHandle handle;
  alias handle this;
  void imageOrientation(ImageOrientation imageOrientation) {
    ImageBitmapOptions_imageOrientation_Set(handle, imageOrientation);
  }
  ImageOrientation imageOrientation() {
    return ImageBitmapOptions_imageOrientation_Get(handle);
  }
  void premultiplyAlpha(PremultiplyAlpha premultiplyAlpha) {
    ImageBitmapOptions_premultiplyAlpha_Set(handle, premultiplyAlpha);
  }
  PremultiplyAlpha premultiplyAlpha() {
    return ImageBitmapOptions_premultiplyAlpha_Get(handle);
  }
  void colorSpaceConversion(ColorSpaceConversion colorSpaceConversion) {
    ImageBitmapOptions_colorSpaceConversion_Set(handle, colorSpaceConversion);
  }
  ColorSpaceConversion colorSpaceConversion() {
    return ImageBitmapOptions_colorSpaceConversion_Get(handle);
  }
  void resizeWidth(uint resizeWidth) {
    ImageBitmapOptions_resizeWidth_Set(handle, resizeWidth);
  }
  uint resizeWidth() {
    return ImageBitmapOptions_resizeWidth_Get(handle);
  }
  void resizeHeight(uint resizeHeight) {
    ImageBitmapOptions_resizeHeight_Set(handle, resizeHeight);
  }
  uint resizeHeight() {
    return ImageBitmapOptions_resizeHeight_Get(handle);
  }
  void resizeQuality(ResizeQuality resizeQuality) {
    ImageBitmapOptions_resizeQuality_Set(handle, resizeQuality);
  }
  ResizeQuality resizeQuality() {
    return ImageBitmapOptions_resizeQuality_Get(handle);
  }
}
struct ImageBitmapRenderingContext {
  JsHandle handle;
  alias handle this;
  HTMLCanvasElement canvas() {
    return HTMLCanvasElement(ImageBitmapRenderingContext_canvas_Get(handle));
  }
  void transferFromImageBitmap(Optional!(ImageBitmap) bitmap) {
    ImageBitmapRenderingContext_transferFromImageBitmap(handle, !bitmap.empty, bitmap.value.handle);
  }
}
struct ImageBitmapRenderingContextSettings {
  JsHandle handle;
  alias handle this;
  void alpha(bool alpha) {
    ImageBitmapRenderingContextSettings_alpha_Set(handle, alpha);
  }
  bool alpha() {
    return ImageBitmapRenderingContextSettings_alpha_Get(handle);
  }
}
alias ImageBitmapSource = SumType!(CanvasImageSource, Blob, ImageData);
struct ImageData {
  JsHandle handle;
  alias handle this;
  uint width() {
    return ImageData_width_Get(handle);
  }
  uint height() {
    return ImageData_height_Get(handle);
  }
  Uint8ClampedArray data() {
    return Uint8ClampedArray(ImageData_data_Get(handle));
  }
}
struct ImageEncodeOptions {
  JsHandle handle;
  alias handle this;
  void type(string type) {
    ImageEncodeOptions_type_Set(handle, type);
  }
  string type() {
    return ImageEncodeOptions_type_Get(handle);
  }
  void quality(double quality) {
    ImageEncodeOptions_quality_Set(handle, quality);
  }
  double quality() {
    return ImageEncodeOptions_quality_Get(handle);
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
  void href(USVString href) {
    Location_href_Set(handle, href.handle);
  }
  USVString href() {
    return USVString(Location_href_Get(handle));
  }
  USVString origin() {
    return USVString(Location_origin_Get(handle));
  }
  void protocol(USVString protocol) {
    Location_protocol_Set(handle, protocol.handle);
  }
  USVString protocol() {
    return USVString(Location_protocol_Get(handle));
  }
  void host(USVString host) {
    Location_host_Set(handle, host.handle);
  }
  USVString host() {
    return USVString(Location_host_Get(handle));
  }
  void hostname(USVString hostname) {
    Location_hostname_Set(handle, hostname.handle);
  }
  USVString hostname() {
    return USVString(Location_hostname_Get(handle));
  }
  void port(USVString port) {
    Location_port_Set(handle, port.handle);
  }
  USVString port() {
    return USVString(Location_port_Get(handle));
  }
  void pathname(USVString pathname) {
    Location_pathname_Set(handle, pathname.handle);
  }
  USVString pathname() {
    return USVString(Location_pathname_Get(handle));
  }
  void search(USVString search) {
    Location_search_Set(handle, search.handle);
  }
  USVString search() {
    return USVString(Location_search_Get(handle));
  }
  void hash(USVString hash) {
    Location_hash_Set(handle, hash.handle);
  }
  USVString hash() {
    return USVString(Location_hash_Get(handle));
  }
  void assign(USVString url) {
    Location_assign(handle, url.handle);
  }
  void replace(USVString url) {
    Location_replace(handle, url.handle);
  }
  void reload() {
    Location_reload(handle);
  }
  DOMStringList ancestorOrigins() {
    return DOMStringList(Location_ancestorOrigins_Get(handle));
  }
}
struct MediaError {
  JsHandle handle;
  alias handle this;
  enum ushort MEDIA_ERR_ABORTED = 1;
  enum ushort MEDIA_ERR_NETWORK = 2;
  enum ushort MEDIA_ERR_DECODE = 3;
  enum ushort MEDIA_ERR_SRC_NOT_SUPPORTED = 4;
  ushort code() {
    return MediaError_code_Get(handle);
  }
  string message() {
    return MediaError_message_Get(handle);
  }
}
alias MediaProvider = SumType!(MediaStream, MediaSource, Blob);
struct MessageChannel {
  JsHandle handle;
  alias handle this;
  MessagePort port1() {
    return MessagePort(MessageChannel_port1_Get(handle));
  }
  MessagePort port2() {
    return MessagePort(MessageChannel_port2_Get(handle));
  }
}
struct MessageEvent {
  Event _parent;
  alias _parent this;
  Any data() {
    return Any(MessageEvent_data_Get(handle));
  }
  USVString origin() {
    return USVString(MessageEvent_origin_Get(handle));
  }
  string lastEventId() {
    return MessageEvent_lastEventId_Get(handle);
  }
  Optional!(MessageEventSource) source() {
    return MessageEvent_source_Get(handle);
  }
  FrozenArray!(MessagePort) ports() {
    return FrozenArray!(MessagePort)(MessageEvent_ports_Get(handle));
  }
  void initMessageEvent(string type, bool bubbles = false, bool cancelable = false, Any data = null, USVString origin = "", string lastEventId = "", Optional!(MessageEventSource) source = no!(MessageEventSource), Sequence!(MessagePort) ports = []) {
    MessageEvent_initMessageEvent(handle, type, bubbles, cancelable, data.handle, origin.handle, lastEventId, !source.empty, source.value, ports.handle);
  }
}
struct MessageEventInit {
  EventInit _parent;
  alias _parent this;
  void data(Any data) {
    MessageEventInit_data_Set(handle, data.handle);
  }
  Any data() {
    return Any(MessageEventInit_data_Get(handle));
  }
  void origin(USVString origin) {
    MessageEventInit_origin_Set(handle, origin.handle);
  }
  USVString origin() {
    return USVString(MessageEventInit_origin_Get(handle));
  }
  void lastEventId(string lastEventId) {
    MessageEventInit_lastEventId_Set(handle, lastEventId);
  }
  string lastEventId() {
    return MessageEventInit_lastEventId_Get(handle);
  }
  void source(Optional!(MessageEventSource) source) {
    MessageEventInit_source_Set(handle, !source.empty, source.value);
  }
  Optional!(MessageEventSource) source() {
    return MessageEventInit_source_Get(handle);
  }
  void ports(Sequence!(MessagePort) ports) {
    MessageEventInit_ports_Set(handle, ports.handle);
  }
  Sequence!(MessagePort) ports() {
    return Sequence!(MessagePort)(MessageEventInit_ports_Get(handle));
  }
}
alias MessageEventSource = SumType!(WindowProxy, MessagePort, ServiceWorker);
struct MessagePort {
  EventTarget _parent;
  alias _parent this;
  void postMessage(Any message, Sequence!(Object) transfer) {
    MessagePort_postMessage__any_sequence_object(handle, message.handle, transfer.handle);
  }
  void postMessage(Any message, PostMessageOptions options) {
    MessagePort_postMessage__any_JsHandle(handle, message.handle, options.handle);
  }
  void start() {
    MessagePort_start(handle);
  }
  void close() {
    MessagePort_close(handle);
  }
  void onmessage(EventHandler onmessage) {
    MessagePort_onmessage_Set(handle, !onmessage.empty, onmessage.value);
  }
  EventHandler onmessage() {
    return MessagePort_onmessage_Get(handle);
  }
  void onmessageerror(EventHandler onmessageerror) {
    MessagePort_onmessageerror_Set(handle, !onmessageerror.empty, onmessageerror.value);
  }
  EventHandler onmessageerror() {
    return MessagePort_onmessageerror_Get(handle);
  }
}
struct MimeType {
  JsHandle handle;
  alias handle this;
  string type() {
    return MimeType_type_Get(handle);
  }
  string description() {
    return MimeType_description_Get(handle);
  }
  string suffixes() {
    return MimeType_suffixes_Get(handle);
  }
  Plugin enabledPlugin() {
    return Plugin(MimeType_enabledPlugin_Get(handle));
  }
}
struct MimeTypeArray {
  JsHandle handle;
  alias handle this;
  uint length() {
    return MimeTypeArray_length_Get(handle);
  }
  Optional!(MimeType) item(uint index) {
    return MimeTypeArray_item_getter(handle, index);
  }
  Optional!(MimeType) namedItem(string name) {
    return MimeTypeArray_namedItem_getter(handle, name);
  }
}
struct Navigator {
  JsHandle handle;
  alias handle this;
  int maxTouchPoints() {
    return Navigator_maxTouchPoints_Get(handle);
  }
  Clipboard clipboard() {
    return Clipboard(Navigator_clipboard_Get(handle));
  }
  ulong hardwareConcurrency() {
    return NavigatorConcurrentHardware_hardwareConcurrency_Get(handle);
  }
  PluginArray plugins() {
    return PluginArray(NavigatorPlugins_plugins_Get(handle));
  }
  MimeTypeArray mimeTypes() {
    return MimeTypeArray(NavigatorPlugins_mimeTypes_Get(handle));
  }
  bool javaEnabled() {
    return NavigatorPlugins_javaEnabled(handle);
  }
  bool cookieEnabled() {
    return NavigatorCookies_cookieEnabled_Get(handle);
  }
  void registerProtocolHandler(string scheme, USVString url, string title) {
    NavigatorContentUtils_registerProtocolHandler(handle, scheme, url.handle, title);
  }
  void unregisterProtocolHandler(string scheme, USVString url) {
    NavigatorContentUtils_unregisterProtocolHandler(handle, scheme, url.handle);
  }
  bool onLine() {
    return NavigatorOnLine_onLine_Get(handle);
  }
  string language() {
    return NavigatorLanguage_language_Get(handle);
  }
  FrozenArray!(string) languages() {
    return FrozenArray!(string)(NavigatorLanguage_languages_Get(handle));
  }
  string appCodeName() {
    return NavigatorID_appCodeName_Get(handle);
  }
  string appName() {
    return NavigatorID_appName_Get(handle);
  }
  string appVersion() {
    return NavigatorID_appVersion_Get(handle);
  }
  string platform() {
    return NavigatorID_platform_Get(handle);
  }
  string product() {
    return NavigatorID_product_Get(handle);
  }
  string productSub() {
    return NavigatorID_productSub_Get(handle);
  }
  string userAgent() {
    return NavigatorID_userAgent_Get(handle);
  }
  string vendor() {
    return NavigatorID_vendor_Get(handle);
  }
  string vendorSub() {
    return NavigatorID_vendorSub_Get(handle);
  }
  bool taintEnabled() {
    return NavigatorID_taintEnabled(handle);
  }
  string oscpu() {
    return NavigatorID_oscpu_Get(handle);
  }
}
struct OffscreenCanvas {
  EventTarget _parent;
  alias _parent this;
  void width(ulong width) {
    OffscreenCanvas_width_Set(handle, width);
  }
  ulong width() {
    return OffscreenCanvas_width_Get(handle);
  }
  void height(ulong height) {
    OffscreenCanvas_height_Set(handle, height);
  }
  ulong height() {
    return OffscreenCanvas_height_Get(handle);
  }
  Optional!(OffscreenRenderingContext) getContext(OffscreenRenderingContextId contextId, Any options = null) {
    return OffscreenCanvas_getContext(handle, contextId, options.handle);
  }
  ImageBitmap transferToImageBitmap() {
    return ImageBitmap(OffscreenCanvas_transferToImageBitmap(handle));
  }
  Promise!(Blob) convertToBlob(ImageEncodeOptions options) {
    return Promise!(Blob)(OffscreenCanvas_convertToBlob(handle, options.handle));
  }
}
struct OffscreenCanvasRenderingContext2D {
  JsHandle handle;
  alias handle this;
  void commit() {
    OffscreenCanvasRenderingContext2D_commit(handle);
  }
  OffscreenCanvas canvas() {
    return OffscreenCanvas(OffscreenCanvasRenderingContext2D_canvas_Get(handle));
  }
  void closePath() {
    CanvasPath_closePath(handle);
  }
  void moveTo(double x, double y) {
    CanvasPath_moveTo(handle, x, y);
  }
  void lineTo(double x, double y) {
    CanvasPath_lineTo(handle, x, y);
  }
  void quadraticCurveTo(double cpx, double cpy, double x, double y) {
    CanvasPath_quadraticCurveTo(handle, cpx, cpy, x, y);
  }
  void bezierCurveTo(double cp1x, double cp1y, double cp2x, double cp2y, double x, double y) {
    CanvasPath_bezierCurveTo(handle, cp1x, cp1y, cp2x, cp2y, x, y);
  }
  void arcTo(double x1, double y1, double x2, double y2, double radius) {
    CanvasPath_arcTo(handle, x1, y1, x2, y2, radius);
  }
  void rect(double x, double y, double w, double h) {
    CanvasPath_rect(handle, x, y, w, h);
  }
  void arc(double x, double y, double radius, double startAngle, double endAngle, bool anticlockwise = false) {
    CanvasPath_arc(handle, x, y, radius, startAngle, endAngle, anticlockwise);
  }
  void ellipse(double x, double y, double radiusX, double radiusY, double rotation, double startAngle, double endAngle, bool anticlockwise = false) {
    CanvasPath_ellipse(handle, x, y, radiusX, radiusY, rotation, startAngle, endAngle, anticlockwise);
  }
  void setLineDash(Sequence!(double) segments) {
    CanvasPathDrawingStyles_setLineDash(handle, segments.handle);
  }
  Sequence!(double) getLineDash() {
    return Sequence!(double)(CanvasPathDrawingStyles_getLineDash(handle));
  }
  ImageData createImageData(int sw, int sh) {
    return ImageData(CanvasImageData_createImageData(handle, sw, sh));
  }
  ImageData createImageData(ImageData imagedata) {
    return ImageData(CanvasImageData_createImageData(handle, imagedata.handle));
  }
  ImageData getImageData(int sx, int sy, int sw, int sh) {
    return ImageData(CanvasImageData_getImageData(handle, sx, sy, sw, sh));
  }
  void putImageData(ImageData imagedata, int dx, int dy) {
    CanvasImageData_putImageData(handle, imagedata.handle, dx, dy);
  }
  void putImageData(ImageData imagedata, int dx, int dy, int dirtyX, int dirtyY, int dirtyWidth, int dirtyHeight) {
    CanvasImageData_putImageData(handle, imagedata.handle, dx, dy, dirtyX, dirtyY, dirtyWidth, dirtyHeight);
  }
  void drawImage(CanvasImageSource image, double dx, double dy) {
    CanvasDrawImage_drawImage(handle, image, dx, dy);
  }
  void drawImage(CanvasImageSource image, double dx, double dy, double dw, double dh) {
    CanvasDrawImage_drawImage(handle, image, dx, dy, dw, dh);
  }
  void drawImage(CanvasImageSource image, double sx, double sy, double sw, double sh, double dx, double dy, double dw, double dh) {
    CanvasDrawImage_drawImage(handle, image, sx, sy, sw, sh, dx, dy, dw, dh);
  }
  void fillText(string text, double x, double y, double maxWidth) {
    CanvasText_fillText(handle, text, x, y, maxWidth);
  }
  void strokeText(string text, double x, double y, double maxWidth) {
    CanvasText_strokeText(handle, text, x, y, maxWidth);
  }
  TextMetrics measureText(string text) {
    return TextMetrics(CanvasText_measureText(handle, text));
  }
  void beginPath() {
    CanvasDrawPath_beginPath(handle);
  }
  void fill(CanvasFillRule fillRule = "nonzero") {
    CanvasDrawPath_fill(handle, fillRule);
  }
  void fill(Path2D path, CanvasFillRule fillRule = "nonzero") {
    CanvasDrawPath_fill(handle, path.handle, fillRule);
  }
  void stroke() {
    CanvasDrawPath_stroke(handle);
  }
  void stroke(Path2D path) {
    CanvasDrawPath_stroke(handle, path.handle);
  }
  void clip(CanvasFillRule fillRule = "nonzero") {
    CanvasDrawPath_clip(handle, fillRule);
  }
  void clip(Path2D path, CanvasFillRule fillRule = "nonzero") {
    CanvasDrawPath_clip(handle, path.handle, fillRule);
  }
  bool isPointInPath(double x, double y, CanvasFillRule fillRule = "nonzero") {
    return CanvasDrawPath_isPointInPath(handle, x, y, fillRule);
  }
  bool isPointInPath(Path2D path, double x, double y, CanvasFillRule fillRule = "nonzero") {
    return CanvasDrawPath_isPointInPath(handle, path.handle, x, y, fillRule);
  }
  bool isPointInStroke(double x, double y) {
    return CanvasDrawPath_isPointInStroke(handle, x, y);
  }
  bool isPointInStroke(Path2D path, double x, double y) {
    return CanvasDrawPath_isPointInStroke(handle, path.handle, x, y);
  }
  void clearRect(double x, double y, double w, double h) {
    CanvasRect_clearRect(handle, x, y, w, h);
  }
  void fillRect(double x, double y, double w, double h) {
    CanvasRect_fillRect(handle, x, y, w, h);
  }
  void strokeRect(double x, double y, double w, double h) {
    CanvasRect_strokeRect(handle, x, y, w, h);
  }
  CanvasGradient createLinearGradient(double x0, double y0, double x1, double y1) {
    return CanvasGradient(CanvasFillStrokeStyles_createLinearGradient(handle, x0, y0, x1, y1));
  }
  CanvasGradient createRadialGradient(double x0, double y0, double r0, double x1, double y1, double r1) {
    return CanvasGradient(CanvasFillStrokeStyles_createRadialGradient(handle, x0, y0, r0, x1, y1, r1));
  }
  Optional!(CanvasPattern) createPattern(CanvasImageSource image, string repetition) {
    return CanvasFillStrokeStyles_createPattern(handle, image, repetition);
  }
  void scale(double x, double y) {
    CanvasTransform_scale(handle, x, y);
  }
  void rotate(double angle) {
    CanvasTransform_rotate(handle, angle);
  }
  void translate(double x, double y) {
    CanvasTransform_translate(handle, x, y);
  }
  void transform(double a, double b, double c, double d, double e, double f) {
    CanvasTransform_transform(handle, a, b, c, d, e, f);
  }
  DOMMatrix getTransform() {
    return DOMMatrix(CanvasTransform_getTransform(handle));
  }
  void setTransform(double a, double b, double c, double d, double e, double f) {
    CanvasTransform_setTransform(handle, a, b, c, d, e, f);
  }
  void setTransform(DOMMatrix2DInit transform) {
    CanvasTransform_setTransform(handle, transform.handle);
  }
  void resetTransform() {
    CanvasTransform_resetTransform(handle);
  }
  void save() {
    CanvasState_save(handle);
  }
  void restore() {
    CanvasState_restore(handle);
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
alias OnErrorEventHandlerNonNull = Any delegate((, string, unsigned, unsigned, Any);
struct PageTransitionEvent {
  Event _parent;
  alias _parent this;
  bool persisted() {
    return PageTransitionEvent_persisted_Get(handle);
  }
}
struct PageTransitionEventInit {
  EventInit _parent;
  alias _parent this;
  void persisted(bool persisted) {
    PageTransitionEventInit_persisted_Set(handle, persisted);
  }
  bool persisted() {
    return PageTransitionEventInit_persisted_Get(handle);
  }
}
struct Path2D {
  JsHandle handle;
  alias handle this;
  void addPath(Path2D path, DOMMatrix2DInit transform) {
    Path2D_addPath(handle, path.handle, transform.handle);
  }
  void closePath() {
    CanvasPath_closePath(handle);
  }
  void moveTo(double x, double y) {
    CanvasPath_moveTo(handle, x, y);
  }
  void lineTo(double x, double y) {
    CanvasPath_lineTo(handle, x, y);
  }
  void quadraticCurveTo(double cpx, double cpy, double x, double y) {
    CanvasPath_quadraticCurveTo(handle, cpx, cpy, x, y);
  }
  void bezierCurveTo(double cp1x, double cp1y, double cp2x, double cp2y, double x, double y) {
    CanvasPath_bezierCurveTo(handle, cp1x, cp1y, cp2x, cp2y, x, y);
  }
  void arcTo(double x1, double y1, double x2, double y2, double radius) {
    CanvasPath_arcTo(handle, x1, y1, x2, y2, radius);
  }
  void rect(double x, double y, double w, double h) {
    CanvasPath_rect(handle, x, y, w, h);
  }
  void arc(double x, double y, double radius, double startAngle, double endAngle, bool anticlockwise = false) {
    CanvasPath_arc(handle, x, y, radius, startAngle, endAngle, anticlockwise);
  }
  void ellipse(double x, double y, double radiusX, double radiusY, double rotation, double startAngle, double endAngle, bool anticlockwise = false) {
    CanvasPath_ellipse(handle, x, y, radiusX, radiusY, rotation, startAngle, endAngle, anticlockwise);
  }
}
struct Plugin {
  JsHandle handle;
  alias handle this;
  string name() {
    return Plugin_name_Get(handle);
  }
  string description() {
    return Plugin_description_Get(handle);
  }
  string filename() {
    return Plugin_filename_Get(handle);
  }
  uint length() {
    return Plugin_length_Get(handle);
  }
  Optional!(MimeType) item(uint index) {
    return Plugin_item_getter(handle, index);
  }
  Optional!(MimeType) namedItem(string name) {
    return Plugin_namedItem_getter(handle, name);
  }
}
struct PluginArray {
  JsHandle handle;
  alias handle this;
  void refresh(bool reload = false) {
    PluginArray_refresh(handle, reload);
  }
  uint length() {
    return PluginArray_length_Get(handle);
  }
  Optional!(Plugin) item(uint index) {
    return PluginArray_item_getter(handle, index);
  }
  Optional!(Plugin) namedItem(string name) {
    return PluginArray_namedItem_getter(handle, name);
  }
}
struct PopStateEvent {
  Event _parent;
  alias _parent this;
  Any state() {
    return Any(PopStateEvent_state_Get(handle));
  }
}
struct PopStateEventInit {
  EventInit _parent;
  alias _parent this;
  void state(Any state) {
    PopStateEventInit_state_Set(handle, state.handle);
  }
  Any state() {
    return Any(PopStateEventInit_state_Get(handle));
  }
}
struct PostMessageOptions {
  JsHandle handle;
  alias handle this;
  void transfer(Sequence!(Object) transfer) {
    PostMessageOptions_transfer_Set(handle, transfer.handle);
  }
  Sequence!(Object) transfer() {
    return Sequence!(Object)(PostMessageOptions_transfer_Get(handle));
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
  Promise!(Any) promise() {
    return Promise!(Any)(PromiseRejectionEvent_promise_Get(handle));
  }
  Any reason() {
    return Any(PromiseRejectionEvent_reason_Get(handle));
  }
}
struct PromiseRejectionEventInit {
  EventInit _parent;
  alias _parent this;
  void promise(Promise!(Any) promise) {
    PromiseRejectionEventInit_promise_Set(handle, promise.handle);
  }
  Promise!(Any) promise() {
    return Promise!(Any)(PromiseRejectionEventInit_promise_Get(handle));
  }
  void reason(Any reason) {
    PromiseRejectionEventInit_reason_Set(handle, reason.handle);
  }
  Any reason() {
    return Any(PromiseRejectionEventInit_reason_Get(handle));
  }
}
struct RadioNodeList {
  NodeList _parent;
  alias _parent this;
  void value(string value) {
    RadioNodeList_value_Set(handle, value);
  }
  string value() {
    return RadioNodeList_value_Get(handle);
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
  MessagePort port() {
    return MessagePort(SharedWorker_port_Get(handle));
  }
}
struct SharedWorkerGlobalScope {
  WorkerGlobalScope _parent;
  alias _parent this;
  string name() {
    return SharedWorkerGlobalScope_name_Get(handle);
  }
  void close() {
    SharedWorkerGlobalScope_close(handle);
  }
  void onconnect(EventHandler onconnect) {
    SharedWorkerGlobalScope_onconnect_Set(handle, !onconnect.empty, onconnect.value);
  }
  EventHandler onconnect() {
    return SharedWorkerGlobalScope_onconnect_Get(handle);
  }
}
struct Storage {
  JsHandle handle;
  alias handle this;
  uint length() {
    return Storage_length_Get(handle);
  }
  Optional!(string) key(uint index) {
    return Storage_key(handle, index);
  }
  Optional!(string) getItem(string key) {
    return Storage_getItem_getter(handle, key);
  }
  void setItem(string key, string value) {
    Storage_setItem_setter(handle, key, value);
  }
  void removeItem(string key) {
    Storage_removeItem(handle, key);
  }
  void clear() {
    Storage_clear(handle);
  }
}
struct StorageEvent {
  Event _parent;
  alias _parent this;
  Optional!(string) key() {
    return StorageEvent_key_Get(handle);
  }
  Optional!(string) oldValue() {
    return StorageEvent_oldValue_Get(handle);
  }
  Optional!(string) newValue() {
    return StorageEvent_newValue_Get(handle);
  }
  USVString url() {
    return USVString(StorageEvent_url_Get(handle));
  }
  Optional!(Storage) storageArea() {
    return StorageEvent_storageArea_Get(handle);
  }
  void initStorageEvent(string type, bool bubbles = false, bool cancelable = false, Optional!(string) key = no!(string), Optional!(string) oldValue = no!(string), Optional!(string) newValue = no!(string), USVString url = "", Optional!(Storage) storageArea = no!(Storage)) {
    StorageEvent_initStorageEvent(handle, type, bubbles, cancelable, !key.empty, key.value, !oldValue.empty, oldValue.value, !newValue.empty, newValue.value, url.handle, !storageArea.empty, storageArea.value.handle);
  }
}
struct StorageEventInit {
  EventInit _parent;
  alias _parent this;
  void key(Optional!(string) key) {
    StorageEventInit_key_Set(handle, !key.empty, key.value);
  }
  Optional!(string) key() {
    return StorageEventInit_key_Get(handle);
  }
  void oldValue(Optional!(string) oldValue) {
    StorageEventInit_oldValue_Set(handle, !oldValue.empty, oldValue.value);
  }
  Optional!(string) oldValue() {
    return StorageEventInit_oldValue_Get(handle);
  }
  void newValue(Optional!(string) newValue) {
    StorageEventInit_newValue_Set(handle, !newValue.empty, newValue.value);
  }
  Optional!(string) newValue() {
    return StorageEventInit_newValue_Get(handle);
  }
  void url(USVString url) {
    StorageEventInit_url_Set(handle, url.handle);
  }
  USVString url() {
    return USVString(StorageEventInit_url_Get(handle));
  }
  void storageArea(Optional!(Storage) storageArea) {
    StorageEventInit_storageArea_Set(handle, !storageArea.empty, storageArea.value.handle);
  }
  Optional!(Storage) storageArea() {
    return StorageEventInit_storageArea_Get(handle);
  }
}
struct TextMetrics {
  JsHandle handle;
  alias handle this;
  double width() {
    return TextMetrics_width_Get(handle);
  }
  double actualBoundingBoxLeft() {
    return TextMetrics_actualBoundingBoxLeft_Get(handle);
  }
  double actualBoundingBoxRight() {
    return TextMetrics_actualBoundingBoxRight_Get(handle);
  }
  double fontBoundingBoxAscent() {
    return TextMetrics_fontBoundingBoxAscent_Get(handle);
  }
  double fontBoundingBoxDescent() {
    return TextMetrics_fontBoundingBoxDescent_Get(handle);
  }
  double actualBoundingBoxAscent() {
    return TextMetrics_actualBoundingBoxAscent_Get(handle);
  }
  double actualBoundingBoxDescent() {
    return TextMetrics_actualBoundingBoxDescent_Get(handle);
  }
  double emHeightAscent() {
    return TextMetrics_emHeightAscent_Get(handle);
  }
  double emHeightDescent() {
    return TextMetrics_emHeightDescent_Get(handle);
  }
  double hangingBaseline() {
    return TextMetrics_hangingBaseline_Get(handle);
  }
  double alphabeticBaseline() {
    return TextMetrics_alphabeticBaseline_Get(handle);
  }
  double ideographicBaseline() {
    return TextMetrics_ideographicBaseline_Get(handle);
  }
}
struct TextTrack {
  EventTarget _parent;
  alias _parent this;
  TextTrackKind kind() {
    return TextTrack_kind_Get(handle);
  }
  string label() {
    return TextTrack_label_Get(handle);
  }
  string language() {
    return TextTrack_language_Get(handle);
  }
  string id() {
    return TextTrack_id_Get(handle);
  }
  string inBandMetadataTrackDispatchType() {
    return TextTrack_inBandMetadataTrackDispatchType_Get(handle);
  }
  void mode(TextTrackMode mode) {
    TextTrack_mode_Set(handle, mode);
  }
  TextTrackMode mode() {
    return TextTrack_mode_Get(handle);
  }
  Optional!(TextTrackCueList) cues() {
    return TextTrack_cues_Get(handle);
  }
  Optional!(TextTrackCueList) activeCues() {
    return TextTrack_activeCues_Get(handle);
  }
  void addCue(TextTrackCue cue) {
    TextTrack_addCue(handle, cue.handle);
  }
  void removeCue(TextTrackCue cue) {
    TextTrack_removeCue(handle, cue.handle);
  }
  void oncuechange(EventHandler oncuechange) {
    TextTrack_oncuechange_Set(handle, !oncuechange.empty, oncuechange.value);
  }
  EventHandler oncuechange() {
    return TextTrack_oncuechange_Get(handle);
  }
}
struct TextTrackCue {
  EventTarget _parent;
  alias _parent this;
  Optional!(TextTrack) track() {
    return TextTrackCue_track_Get(handle);
  }
  void id(string id) {
    TextTrackCue_id_Set(handle, id);
  }
  string id() {
    return TextTrackCue_id_Get(handle);
  }
  void startTime(double startTime) {
    TextTrackCue_startTime_Set(handle, startTime);
  }
  double startTime() {
    return TextTrackCue_startTime_Get(handle);
  }
  void endTime(double endTime) {
    TextTrackCue_endTime_Set(handle, endTime);
  }
  double endTime() {
    return TextTrackCue_endTime_Get(handle);
  }
  void pauseOnExit(bool pauseOnExit) {
    TextTrackCue_pauseOnExit_Set(handle, pauseOnExit);
  }
  bool pauseOnExit() {
    return TextTrackCue_pauseOnExit_Get(handle);
  }
  void onenter(EventHandler onenter) {
    TextTrackCue_onenter_Set(handle, !onenter.empty, onenter.value);
  }
  EventHandler onenter() {
    return TextTrackCue_onenter_Get(handle);
  }
  void onexit(EventHandler onexit) {
    TextTrackCue_onexit_Set(handle, !onexit.empty, onexit.value);
  }
  EventHandler onexit() {
    return TextTrackCue_onexit_Get(handle);
  }
}
struct TextTrackCueList {
  JsHandle handle;
  alias handle this;
  uint length() {
    return TextTrackCueList_length_Get(handle);
  }
  TextTrackCue opIndex(uint index) {
    return TextTrackCue(TextTrackCueList_getter__uint(handle, index));
  }
  TextTrackCue opDispatch(uint index)() {
    return TextTrackCue(TextTrackCueList_getter__uint(handle, index));
  }
  Optional!(TextTrackCue) getCueById(string id) {
    return TextTrackCueList_getCueById(handle, id);
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
  uint length() {
    return TextTrackList_length_Get(handle);
  }
  TextTrack opIndex(uint index) {
    return TextTrack(TextTrackList_getter__uint(handle, index));
  }
  TextTrack opDispatch(uint index)() {
    return TextTrack(TextTrackList_getter__uint(handle, index));
  }
  Optional!(TextTrack) getTrackById(string id) {
    return TextTrackList_getTrackById(handle, id);
  }
  void onchange(EventHandler onchange) {
    TextTrackList_onchange_Set(handle, !onchange.empty, onchange.value);
  }
  EventHandler onchange() {
    return TextTrackList_onchange_Get(handle);
  }
  void onaddtrack(EventHandler onaddtrack) {
    TextTrackList_onaddtrack_Set(handle, !onaddtrack.empty, onaddtrack.value);
  }
  EventHandler onaddtrack() {
    return TextTrackList_onaddtrack_Get(handle);
  }
  void onremovetrack(EventHandler onremovetrack) {
    TextTrackList_onremovetrack_Set(handle, !onremovetrack.empty, onremovetrack.value);
  }
  EventHandler onremovetrack() {
    return TextTrackList_onremovetrack_Get(handle);
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
  uint length() {
    return TimeRanges_length_Get(handle);
  }
  double start(uint index) {
    return TimeRanges_start(handle, index);
  }
  double end(uint index) {
    return TimeRanges_end(handle, index);
  }
}
alias TimerHandler = SumType!(string, Function);
struct TrackEvent {
  Event _parent;
  alias _parent this;
  Optional!(SumType!(VideoTrack, AudioTrack, TextTrack)) track() {
    return TrackEvent_track_Get(handle);
  }
}
struct TrackEventInit {
  EventInit _parent;
  alias _parent this;
  void track(Optional!(SumType!(VideoTrack, AudioTrack, TextTrack)) track) {
    TrackEventInit_track_Set(handle, !track.empty, track.value);
  }
  Optional!(SumType!(VideoTrack, AudioTrack, TextTrack)) track() {
    return TrackEventInit_track_Get(handle);
  }
}
struct ValidityState {
  JsHandle handle;
  alias handle this;
  bool valueMissing() {
    return ValidityState_valueMissing_Get(handle);
  }
  bool typeMismatch() {
    return ValidityState_typeMismatch_Get(handle);
  }
  bool patternMismatch() {
    return ValidityState_patternMismatch_Get(handle);
  }
  bool tooLong() {
    return ValidityState_tooLong_Get(handle);
  }
  bool tooShort() {
    return ValidityState_tooShort_Get(handle);
  }
  bool rangeUnderflow() {
    return ValidityState_rangeUnderflow_Get(handle);
  }
  bool rangeOverflow() {
    return ValidityState_rangeOverflow_Get(handle);
  }
  bool stepMismatch() {
    return ValidityState_stepMismatch_Get(handle);
  }
  bool badInput() {
    return ValidityState_badInput_Get(handle);
  }
  bool customError() {
    return ValidityState_customError_Get(handle);
  }
  bool valid() {
    return ValidityState_valid_Get(handle);
  }
}
struct VideoTrack {
  JsHandle handle;
  alias handle this;
  string id() {
    return VideoTrack_id_Get(handle);
  }
  string kind() {
    return VideoTrack_kind_Get(handle);
  }
  string label() {
    return VideoTrack_label_Get(handle);
  }
  string language() {
    return VideoTrack_language_Get(handle);
  }
  void selected(bool selected) {
    VideoTrack_selected_Set(handle, selected);
  }
  bool selected() {
    return VideoTrack_selected_Get(handle);
  }
}
struct VideoTrackList {
  EventTarget _parent;
  alias _parent this;
  uint length() {
    return VideoTrackList_length_Get(handle);
  }
  VideoTrack opIndex(uint index) {
    return VideoTrack(VideoTrackList_getter__uint(handle, index));
  }
  VideoTrack opDispatch(uint index)() {
    return VideoTrack(VideoTrackList_getter__uint(handle, index));
  }
  Optional!(VideoTrack) getTrackById(string id) {
    return VideoTrackList_getTrackById(handle, id);
  }
  int selectedIndex() {
    return VideoTrackList_selectedIndex_Get(handle);
  }
  void onchange(EventHandler onchange) {
    VideoTrackList_onchange_Set(handle, !onchange.empty, onchange.value);
  }
  EventHandler onchange() {
    return VideoTrackList_onchange_Get(handle);
  }
  void onaddtrack(EventHandler onaddtrack) {
    VideoTrackList_onaddtrack_Set(handle, !onaddtrack.empty, onaddtrack.value);
  }
  EventHandler onaddtrack() {
    return VideoTrackList_onaddtrack_Get(handle);
  }
  void onremovetrack(EventHandler onremovetrack) {
    VideoTrackList_onremovetrack_Set(handle, !onremovetrack.empty, onremovetrack.value);
  }
  EventHandler onremovetrack() {
    return VideoTrackList_onremovetrack_Get(handle);
  }
}
struct WebSocket {
  EventTarget _parent;
  alias _parent this;
  USVString url() {
    return USVString(WebSocket_url_Get(handle));
  }
  enum ushort CONNECTING = 0;
  enum ushort OPEN = 1;
  enum ushort CLOSING = 2;
  enum ushort CLOSED = 3;
  ushort readyState() {
    return WebSocket_readyState_Get(handle);
  }
  ulong bufferedAmount() {
    return WebSocket_bufferedAmount_Get(handle);
  }
  void onopen(EventHandler onopen) {
    WebSocket_onopen_Set(handle, !onopen.empty, onopen.value);
  }
  EventHandler onopen() {
    return WebSocket_onopen_Get(handle);
  }
  void onerror(EventHandler onerror) {
    WebSocket_onerror_Set(handle, !onerror.empty, onerror.value);
  }
  EventHandler onerror() {
    return WebSocket_onerror_Get(handle);
  }
  void onclose(EventHandler onclose) {
    WebSocket_onclose_Set(handle, !onclose.empty, onclose.value);
  }
  EventHandler onclose() {
    return WebSocket_onclose_Get(handle);
  }
  string extensions() {
    return WebSocket_extensions_Get(handle);
  }
  string protocol() {
    return WebSocket_protocol_Get(handle);
  }
  void close(ushort code, USVString reason) {
    WebSocket_close(handle, code, reason.handle);
  }
  void onmessage(EventHandler onmessage) {
    WebSocket_onmessage_Set(handle, !onmessage.empty, onmessage.value);
  }
  EventHandler onmessage() {
    return WebSocket_onmessage_Get(handle);
  }
  void binaryType(BinaryType binaryType) {
    WebSocket_binaryType_Set(handle, binaryType);
  }
  BinaryType binaryType() {
    return WebSocket_binaryType_Get(handle);
  }
  void send(USVString data) {
    WebSocket_send__string(handle, data.handle);
  }
  void send(Blob data) {
    WebSocket_send__JsHandle(handle, data.handle);
  }
  void send(ArrayBuffer data) {
    WebSocket_send__JsHandle(handle, data.handle);
  }
  void send(ArrayBufferView data) {
    WebSocket_send__ArrayBufferView(handle, data);
  }
}
struct Window {
  EventTarget _parent;
  alias _parent this;
  WindowProxy window() {
    return WindowProxy(Window_window_Get(handle));
  }
  WindowProxy self() {
    return WindowProxy(Window_self_Get(handle));
  }
  Document document() {
    return Document(Window_document_Get(handle));
  }
  void name(string name) {
    Window_name_Set(handle, name);
  }
  string name() {
    return Window_name_Get(handle);
  }
  Location location() {
    return Location(Window_location_Get(handle));
  }
  History history() {
    return History(Window_history_Get(handle));
  }
  CustomElementRegistry customElements() {
    return CustomElementRegistry(Window_customElements_Get(handle));
  }
  BarProp locationbar() {
    return BarProp(Window_locationbar_Get(handle));
  }
  BarProp menubar() {
    return BarProp(Window_menubar_Get(handle));
  }
  BarProp personalbar() {
    return BarProp(Window_personalbar_Get(handle));
  }
  BarProp scrollbars() {
    return BarProp(Window_scrollbars_Get(handle));
  }
  BarProp statusbar() {
    return BarProp(Window_statusbar_Get(handle));
  }
  BarProp toolbar() {
    return BarProp(Window_toolbar_Get(handle));
  }
  void status(string status) {
    Window_status_Set(handle, status);
  }
  string status() {
    return Window_status_Get(handle);
  }
  void close() {
    Window_close(handle);
  }
  bool closed() {
    return Window_closed_Get(handle);
  }
  void stop() {
    Window_stop(handle);
  }
  void focus() {
    Window_focus(handle);
  }
  void blur() {
    Window_blur(handle);
  }
  WindowProxy frames() {
    return WindowProxy(Window_frames_Get(handle));
  }
  uint length() {
    return Window_length_Get(handle);
  }
  Optional!(WindowProxy) top() {
    return Window_top_Get(handle);
  }
  void opener(Any opener) {
    Window_opener_Set(handle, opener.handle);
  }
  Any opener() {
    return Any(Window_opener_Get(handle));
  }
  Optional!(WindowProxy) parent() {
    return Window_parent_Get(handle);
  }
  Optional!(Element) frameElement() {
    return Window_frameElement_Get(handle);
  }
  Optional!(WindowProxy) open(USVString url = "about:blank", string target = "_blank", string features = "") {
    return Window_open(handle, url.handle, target, features);
  }
  Object opIndex(string name) {
    return Object(Window_getter__string(handle, name));
  }
  Object opDispatch(string name)() {
    return Object(Window_getter__string(handle, name));
  }
  Navigator navigator() {
    return Navigator(Window_navigator_Get(handle));
  }
  ApplicationCache applicationCache() {
    return ApplicationCache(Window_applicationCache_Get(handle));
  }
  void alert() {
    Window_alert__(handle);
  }
  void alert(string message) {
    Window_alert__string(handle, message);
  }
  bool confirm(string message = "") {
    return Window_confirm(handle, message);
  }
  Optional!(string) prompt(string message = "", string default_ = "") {
    return Window_prompt(handle, message, default_);
  }
  void print() {
    Window_print(handle);
  }
  void postMessage(Any message, USVString targetOrigin, Sequence!(Object) transfer = []) {
    Window_postMessage__any_string_sequence_object(handle, message.handle, targetOrigin.handle, transfer.handle);
  }
  void postMessage(Any message, WindowPostMessageOptions options) {
    Window_postMessage__any_JsHandle(handle, message.handle, options.handle);
  }
  Any event() {
    return Any(Window_event_Get(handle));
  }
  void captureEvents() {
    Window_captureEvents(handle);
  }
  void releaseEvents() {
    Window_releaseEvents(handle);
  }
  External external() {
    return External(Window_external_Get(handle));
  }
  short orientation() {
    return Window_orientation_Get(handle);
  }
  void onorientationchange(EventHandler onorientationchange) {
    Window_onorientationchange_Set(handle, !onorientationchange.empty, onorientationchange.value);
  }
  EventHandler onorientationchange() {
    return Window_onorientationchange_Get(handle);
  }
  Storage localStorage() {
    return Storage(WindowLocalStorage_localStorage_Get(handle));
  }
  Storage sessionStorage() {
    return Storage(WindowSessionStorage_sessionStorage_Get(handle));
  }
  uint requestAnimationFrame(FrameRequestCallback callback) {
    return AnimationFrameProvider_requestAnimationFrame(handle, callback);
  }
  void cancelAnimationFrame(uint handle) {
    AnimationFrameProvider_cancelAnimationFrame(handle, handle);
  }
  USVString origin() {
    return USVString(WindowOrWorkerGlobalScope_origin_Get(handle));
  }
  string btoa(string data) {
    return WindowOrWorkerGlobalScope_btoa(handle, data);
  }
  ByteString atob(string data) {
    return ByteString(WindowOrWorkerGlobalScope_atob(handle, data));
  }
  int setTimeout(TimerHandler handler, int timeout = 0, Any arguments) {
    return WindowOrWorkerGlobalScope_setTimeout(handle, handler, timeout, arguments.handle);
  }
  void clearTimeout(int handle = 0) {
    WindowOrWorkerGlobalScope_clearTimeout(handle, handle);
  }
  int setInterval(TimerHandler handler, int timeout = 0, Any arguments) {
    return WindowOrWorkerGlobalScope_setInterval(handle, handler, timeout, arguments.handle);
  }
  void clearInterval(int handle = 0) {
    WindowOrWorkerGlobalScope_clearInterval(handle, handle);
  }
  void queueMicrotask(VoidFunction callback) {
    WindowOrWorkerGlobalScope_queueMicrotask(handle, callback);
  }
  Promise!(ImageBitmap) createImageBitmap(ImageBitmapSource image, ImageBitmapOptions options) {
    return Promise!(ImageBitmap)(WindowOrWorkerGlobalScope_createImageBitmap(handle, image, options.handle));
  }
  Promise!(ImageBitmap) createImageBitmap(ImageBitmapSource image, int sx, int sy, int sw, int sh, ImageBitmapOptions options) {
    return Promise!(ImageBitmap)(WindowOrWorkerGlobalScope_createImageBitmap(handle, image, sx, sy, sw, sh, options.handle));
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
}
struct WindowPostMessageOptions {
  PostMessageOptions _parent;
  alias _parent this;
  void targetOrigin(USVString targetOrigin) {
    WindowPostMessageOptions_targetOrigin_Set(handle, targetOrigin.handle);
  }
  USVString targetOrigin() {
    return USVString(WindowPostMessageOptions_targetOrigin_Get(handle));
  }
}
struct Worker {
  EventTarget _parent;
  alias _parent this;
  void terminate() {
    Worker_terminate(handle);
  }
  void postMessage(Any message, Sequence!(Object) transfer) {
    Worker_postMessage__any_sequence_object(handle, message.handle, transfer.handle);
  }
  void postMessage(Any message, PostMessageOptions options) {
    Worker_postMessage__any_JsHandle(handle, message.handle, options.handle);
  }
  void onmessage(EventHandler onmessage) {
    Worker_onmessage_Set(handle, !onmessage.empty, onmessage.value);
  }
  EventHandler onmessage() {
    return Worker_onmessage_Get(handle);
  }
  void onmessageerror(EventHandler onmessageerror) {
    Worker_onmessageerror_Set(handle, !onmessageerror.empty, onmessageerror.value);
  }
  EventHandler onmessageerror() {
    return Worker_onmessageerror_Get(handle);
  }
}
struct WorkerGlobalScope {
  EventTarget _parent;
  alias _parent this;
  WorkerGlobalScope self() {
    return WorkerGlobalScope(WorkerGlobalScope_self_Get(handle));
  }
  WorkerLocation location() {
    return WorkerLocation(WorkerGlobalScope_location_Get(handle));
  }
  WorkerNavigator navigator() {
    return WorkerNavigator(WorkerGlobalScope_navigator_Get(handle));
  }
  void importScripts(USVString urls) {
    WorkerGlobalScope_importScripts(handle, urls.handle);
  }
  void onerror(OnErrorEventHandler onerror) {
    WorkerGlobalScope_onerror_Set(handle, !onerror.empty, onerror.value);
  }
  OnErrorEventHandler onerror() {
    return WorkerGlobalScope_onerror_Get(handle);
  }
  void onlanguagechange(EventHandler onlanguagechange) {
    WorkerGlobalScope_onlanguagechange_Set(handle, !onlanguagechange.empty, onlanguagechange.value);
  }
  EventHandler onlanguagechange() {
    return WorkerGlobalScope_onlanguagechange_Get(handle);
  }
  void onoffline(EventHandler onoffline) {
    WorkerGlobalScope_onoffline_Set(handle, !onoffline.empty, onoffline.value);
  }
  EventHandler onoffline() {
    return WorkerGlobalScope_onoffline_Get(handle);
  }
  void ononline(EventHandler ononline) {
    WorkerGlobalScope_ononline_Set(handle, !ononline.empty, ononline.value);
  }
  EventHandler ononline() {
    return WorkerGlobalScope_ononline_Get(handle);
  }
  void onrejectionhandled(EventHandler onrejectionhandled) {
    WorkerGlobalScope_onrejectionhandled_Set(handle, !onrejectionhandled.empty, onrejectionhandled.value);
  }
  EventHandler onrejectionhandled() {
    return WorkerGlobalScope_onrejectionhandled_Get(handle);
  }
  void onunhandledrejection(EventHandler onunhandledrejection) {
    WorkerGlobalScope_onunhandledrejection_Set(handle, !onunhandledrejection.empty, onunhandledrejection.value);
  }
  EventHandler onunhandledrejection() {
    return WorkerGlobalScope_onunhandledrejection_Get(handle);
  }
  USVString origin() {
    return USVString(WindowOrWorkerGlobalScope_origin_Get(handle));
  }
  string btoa(string data) {
    return WindowOrWorkerGlobalScope_btoa(handle, data);
  }
  ByteString atob(string data) {
    return ByteString(WindowOrWorkerGlobalScope_atob(handle, data));
  }
  int setTimeout(TimerHandler handler, int timeout = 0, Any arguments) {
    return WindowOrWorkerGlobalScope_setTimeout(handle, handler, timeout, arguments.handle);
  }
  void clearTimeout(int handle = 0) {
    WindowOrWorkerGlobalScope_clearTimeout(handle, handle);
  }
  int setInterval(TimerHandler handler, int timeout = 0, Any arguments) {
    return WindowOrWorkerGlobalScope_setInterval(handle, handler, timeout, arguments.handle);
  }
  void clearInterval(int handle = 0) {
    WindowOrWorkerGlobalScope_clearInterval(handle, handle);
  }
  void queueMicrotask(VoidFunction callback) {
    WindowOrWorkerGlobalScope_queueMicrotask(handle, callback);
  }
  Promise!(ImageBitmap) createImageBitmap(ImageBitmapSource image, ImageBitmapOptions options) {
    return Promise!(ImageBitmap)(WindowOrWorkerGlobalScope_createImageBitmap(handle, image, options.handle));
  }
  Promise!(ImageBitmap) createImageBitmap(ImageBitmapSource image, int sx, int sy, int sw, int sh, ImageBitmapOptions options) {
    return Promise!(ImageBitmap)(WindowOrWorkerGlobalScope_createImageBitmap(handle, image, sx, sy, sw, sh, options.handle));
  }
}
struct WorkerLocation {
  JsHandle handle;
  alias handle this;
  void href(USVString href) {
    WorkerLocation_href_Set(handle, href.handle);
  }
  USVString href() {
    return USVString(WorkerLocation_href_Get(handle));
  }
  USVString origin() {
    return USVString(WorkerLocation_origin_Get(handle));
  }
  USVString protocol() {
    return USVString(WorkerLocation_protocol_Get(handle));
  }
  USVString host() {
    return USVString(WorkerLocation_host_Get(handle));
  }
  USVString hostname() {
    return USVString(WorkerLocation_hostname_Get(handle));
  }
  USVString port() {
    return USVString(WorkerLocation_port_Get(handle));
  }
  USVString pathname() {
    return USVString(WorkerLocation_pathname_Get(handle));
  }
  USVString search() {
    return USVString(WorkerLocation_search_Get(handle));
  }
  USVString hash() {
    return USVString(WorkerLocation_hash_Get(handle));
  }
}
struct WorkerNavigator {
  JsHandle handle;
  alias handle this;
  ulong hardwareConcurrency() {
    return NavigatorConcurrentHardware_hardwareConcurrency_Get(handle);
  }
  bool onLine() {
    return NavigatorOnLine_onLine_Get(handle);
  }
  string language() {
    return NavigatorLanguage_language_Get(handle);
  }
  FrozenArray!(string) languages() {
    return FrozenArray!(string)(NavigatorLanguage_languages_Get(handle));
  }
  string appCodeName() {
    return NavigatorID_appCodeName_Get(handle);
  }
  string appName() {
    return NavigatorID_appName_Get(handle);
  }
  string appVersion() {
    return NavigatorID_appVersion_Get(handle);
  }
  string platform() {
    return NavigatorID_platform_Get(handle);
  }
  string product() {
    return NavigatorID_product_Get(handle);
  }
  string productSub() {
    return NavigatorID_productSub_Get(handle);
  }
  string userAgent() {
    return NavigatorID_userAgent_Get(handle);
  }
  string vendor() {
    return NavigatorID_vendor_Get(handle);
  }
  string vendorSub() {
    return NavigatorID_vendorSub_Get(handle);
  }
  bool taintEnabled() {
    return NavigatorID_taintEnabled(handle);
  }
  string oscpu() {
    return NavigatorID_oscpu_Get(handle);
  }
}
struct WorkerOptions {
  JsHandle handle;
  alias handle this;
  void type(WorkerType type) {
    WorkerOptions_type_Set(handle, type);
  }
  WorkerType type() {
    return WorkerOptions_type_Get(handle);
  }
  void credentials(RequestCredentials credentials) {
    WorkerOptions_credentials_Set(handle, credentials);
  }
  RequestCredentials credentials() {
    return WorkerOptions_credentials_Get(handle);
  }
  void name(string name) {
    WorkerOptions_name_Set(handle, name);
  }
  string name() {
    return WorkerOptions_name_Get(handle);
  }
}
enum WorkerType {
  classic,
  module_
}


extern (C) ushort ApplicationCache_status_Get(JsHandle);
extern (C) void ApplicationCache_update(JsHandle);
extern (C) void ApplicationCache_abort(JsHandle);
extern (C) void ApplicationCache_swapCache(JsHandle);
extern (C) void ApplicationCache_onchecking_Set(JsHandle, EventHandler);
extern (C) EventHandler ApplicationCache_onchecking_Get(JsHandle);
extern (C) void ApplicationCache_onerror_Set(JsHandle, EventHandler);
extern (C) EventHandler ApplicationCache_onerror_Get(JsHandle);
extern (C) void ApplicationCache_onnoupdate_Set(JsHandle, EventHandler);
extern (C) EventHandler ApplicationCache_onnoupdate_Get(JsHandle);
extern (C) void ApplicationCache_ondownloading_Set(JsHandle, EventHandler);
extern (C) EventHandler ApplicationCache_ondownloading_Get(JsHandle);
extern (C) void ApplicationCache_onprogress_Set(JsHandle, EventHandler);
extern (C) EventHandler ApplicationCache_onprogress_Get(JsHandle);
extern (C) void ApplicationCache_onupdateready_Set(JsHandle, EventHandler);
extern (C) EventHandler ApplicationCache_onupdateready_Get(JsHandle);
extern (C) void ApplicationCache_oncached_Set(JsHandle, EventHandler);
extern (C) EventHandler ApplicationCache_oncached_Get(JsHandle);
extern (C) void ApplicationCache_onobsolete_Set(JsHandle, EventHandler);
extern (C) EventHandler ApplicationCache_onobsolete_Get(JsHandle);
extern (C) void AssignedNodesOptions_flatten_Set(JsHandle, bool);
extern (C) bool AssignedNodesOptions_flatten_Get(JsHandle);
extern (C) string AudioTrack_id_Get(JsHandle);
extern (C) string AudioTrack_kind_Get(JsHandle);
extern (C) string AudioTrack_label_Get(JsHandle);
extern (C) string AudioTrack_language_Get(JsHandle);
extern (C) void AudioTrack_enabled_Set(JsHandle, bool);
extern (C) bool AudioTrack_enabled_Get(JsHandle);
extern (C) uint AudioTrackList_length_Get(JsHandle);
extern (C) JsHandle AudioTrackList_getter__uint(JsHandle, uint);
extern (C) Optional!(AudioTrack) AudioTrackList_getTrackById(JsHandle, string);
extern (C) void AudioTrackList_onchange_Set(JsHandle, EventHandler);
extern (C) EventHandler AudioTrackList_onchange_Get(JsHandle);
extern (C) void AudioTrackList_onaddtrack_Set(JsHandle, EventHandler);
extern (C) EventHandler AudioTrackList_onaddtrack_Get(JsHandle);
extern (C) void AudioTrackList_onremovetrack_Set(JsHandle, EventHandler);
extern (C) EventHandler AudioTrackList_onremovetrack_Get(JsHandle);
extern (C) bool BarProp_visible_Get(JsHandle);
extern (C) void BeforeUnloadEvent_returnValue_Set(JsHandle, string);
extern (C) string BeforeUnloadEvent_returnValue_Get(JsHandle);
extern (C) string BroadcastChannel_name_Get(JsHandle);
extern (C) void BroadcastChannel_postMessage(JsHandle, Any);
extern (C) void BroadcastChannel_close(JsHandle);
extern (C) void BroadcastChannel_onmessage_Set(JsHandle, EventHandler);
extern (C) EventHandler BroadcastChannel_onmessage_Get(JsHandle);
extern (C) void BroadcastChannel_onmessageerror_Set(JsHandle, EventHandler);
extern (C) EventHandler BroadcastChannel_onmessageerror_Get(JsHandle);
extern (C) void CanvasGradient_addColorStop(JsHandle, double, string);
extern (C) void CanvasPattern_setTransform(JsHandle, JsHandle);
extern (C) JsHandle CanvasRenderingContext2D_canvas_Get(JsHandle);
extern (C) void CanvasPath_closePath(JsHandle);
extern (C) void CanvasPath_moveTo(JsHandle, double, double);
extern (C) void CanvasPath_lineTo(JsHandle, double, double);
extern (C) void CanvasPath_quadraticCurveTo(JsHandle, double, double, double, double);
extern (C) void CanvasPath_bezierCurveTo(JsHandle, double, double, double, double, double, double);
extern (C) void CanvasPath_arcTo(JsHandle, double, double, double, double, double);
extern (C) void CanvasPath_rect(JsHandle, double, double, double, double);
extern (C) void CanvasPath_arc(JsHandle, double, double, double, double, double, bool);
extern (C) void CanvasPath_ellipse(JsHandle, double, double, double, double, double, double, double, bool);
extern (C) void CanvasPathDrawingStyles_setLineDash(JsHandle, JsHandle);
extern (C) JsHandle CanvasPathDrawingStyles_getLineDash(JsHandle);
extern (C) JsHandle CanvasImageData_createImageData(JsHandle, int, int);
extern (C) JsHandle CanvasImageData_createImageData(JsHandle, JsHandle);
extern (C) JsHandle CanvasImageData_getImageData(JsHandle, int, int, int, int);
extern (C) void CanvasImageData_putImageData(JsHandle, JsHandle, int, int);
extern (C) void CanvasImageData_putImageData(JsHandle, JsHandle, int, int, int, int, int, int);
extern (C) void CanvasDrawImage_drawImage(JsHandle, CanvasImageSource, double, double);
extern (C) void CanvasDrawImage_drawImage(JsHandle, CanvasImageSource, double, double, double, double);
extern (C) void CanvasDrawImage_drawImage(JsHandle, CanvasImageSource, double, double, double, double, double, double, double, double);
extern (C) void CanvasText_fillText(JsHandle, string, double, double, double);
extern (C) void CanvasText_strokeText(JsHandle, string, double, double, double);
extern (C) JsHandle CanvasText_measureText(JsHandle, string);
extern (C) void CanvasUserInterface_drawFocusIfNeeded(JsHandle, JsHandle);
extern (C) void CanvasUserInterface_drawFocusIfNeeded(JsHandle, JsHandle, JsHandle);
extern (C) void CanvasUserInterface_scrollPathIntoView(JsHandle);
extern (C) void CanvasUserInterface_scrollPathIntoView(JsHandle, JsHandle);
extern (C) void CanvasDrawPath_beginPath(JsHandle);
extern (C) void CanvasDrawPath_fill(JsHandle, CanvasFillRule);
extern (C) void CanvasDrawPath_fill(JsHandle, JsHandle, CanvasFillRule);
extern (C) void CanvasDrawPath_stroke(JsHandle);
extern (C) void CanvasDrawPath_stroke(JsHandle, JsHandle);
extern (C) void CanvasDrawPath_clip(JsHandle, CanvasFillRule);
extern (C) void CanvasDrawPath_clip(JsHandle, JsHandle, CanvasFillRule);
extern (C) bool CanvasDrawPath_isPointInPath(JsHandle, double, double, CanvasFillRule);
extern (C) bool CanvasDrawPath_isPointInPath(JsHandle, JsHandle, double, double, CanvasFillRule);
extern (C) bool CanvasDrawPath_isPointInStroke(JsHandle, double, double);
extern (C) bool CanvasDrawPath_isPointInStroke(JsHandle, JsHandle, double, double);
extern (C) void CanvasRect_clearRect(JsHandle, double, double, double, double);
extern (C) void CanvasRect_fillRect(JsHandle, double, double, double, double);
extern (C) void CanvasRect_strokeRect(JsHandle, double, double, double, double);
extern (C) JsHandle CanvasFillStrokeStyles_createLinearGradient(JsHandle, double, double, double, double);
extern (C) JsHandle CanvasFillStrokeStyles_createRadialGradient(JsHandle, double, double, double, double, double, double);
extern (C) Optional!(CanvasPattern) CanvasFillStrokeStyles_createPattern(JsHandle, CanvasImageSource, string);
extern (C) void CanvasTransform_scale(JsHandle, double, double);
extern (C) void CanvasTransform_rotate(JsHandle, double);
extern (C) void CanvasTransform_translate(JsHandle, double, double);
extern (C) void CanvasTransform_transform(JsHandle, double, double, double, double, double, double);
extern (C) JsHandle CanvasTransform_getTransform(JsHandle);
extern (C) void CanvasTransform_setTransform(JsHandle, double, double, double, double, double, double);
extern (C) void CanvasTransform_setTransform(JsHandle, JsHandle);
extern (C) void CanvasTransform_resetTransform(JsHandle);
extern (C) void CanvasState_save(JsHandle);
extern (C) void CanvasState_restore(JsHandle);
extern (C) void CanvasRenderingContext2DSettings_alpha_Set(JsHandle, bool);
extern (C) bool CanvasRenderingContext2DSettings_alpha_Get(JsHandle);
extern (C) bool CloseEvent_wasClean_Get(JsHandle);
extern (C) ushort CloseEvent_code_Get(JsHandle);
extern (C) JsHandle CloseEvent_reason_Get(JsHandle);
extern (C) void CloseEventInit_wasClean_Set(JsHandle, bool);
extern (C) bool CloseEventInit_wasClean_Get(JsHandle);
extern (C) void CloseEventInit_code_Set(JsHandle, ushort);
extern (C) ushort CloseEventInit_code_Get(JsHandle);
extern (C) void CloseEventInit_reason_Set(JsHandle, JsHandle);
extern (C) JsHandle CloseEventInit_reason_Get(JsHandle);
extern (C) void CustomElementRegistry_define(JsHandle, string, CustomElementConstructor, JsHandle);
extern (C) JsHandle CustomElementRegistry_get(JsHandle, string);
extern (C) JsHandle CustomElementRegistry_whenDefined(JsHandle, string);
extern (C) void CustomElementRegistry_upgrade(JsHandle, JsHandle);
extern (C) uint DOMStringList_length_Get(JsHandle);
extern (C) Optional!(string) DOMStringList_item_getter(JsHandle, uint);
extern (C) bool DOMStringList_contains(JsHandle, string);
extern (C) string DOMStringMap_getter__string(JsHandle, string);
extern (C) void DOMStringMap_setter__string_string(JsHandle, string, string);
extern (C) void DOMStringMap_deleter(JsHandle, string);
extern (C) void DataTransfer_dropEffect_Set(JsHandle, string);
extern (C) string DataTransfer_dropEffect_Get(JsHandle);
extern (C) void DataTransfer_effectAllowed_Set(JsHandle, string);
extern (C) string DataTransfer_effectAllowed_Get(JsHandle);
extern (C) JsHandle DataTransfer_items_Get(JsHandle);
extern (C) void DataTransfer_setDragImage(JsHandle, JsHandle, int, int);
extern (C) JsHandle DataTransfer_types_Get(JsHandle);
extern (C) string DataTransfer_getData(JsHandle, string);
extern (C) void DataTransfer_setData(JsHandle, string, string);
extern (C) void DataTransfer_clearData(JsHandle, string);
extern (C) JsHandle DataTransfer_files_Get(JsHandle);
extern (C) string DataTransferItem_kind_Get(JsHandle);
extern (C) string DataTransferItem_type_Get(JsHandle);
extern (C) void DataTransferItem_getAsString(JsHandle, bool, FunctionStringCallback);
extern (C) Optional!(File) DataTransferItem_getAsFile(JsHandle);
extern (C) uint DataTransferItemList_length_Get(JsHandle);
extern (C) JsHandle DataTransferItemList_getter__uint(JsHandle, uint);
extern (C) Optional!(DataTransferItem) DataTransferItemList_add__string_string(JsHandle, string, string);
extern (C) Optional!(DataTransferItem) DataTransferItemList_add__JsHandle(JsHandle, JsHandle);
extern (C) void DataTransferItemList_remove(JsHandle, uint);
extern (C) void DataTransferItemList_clear(JsHandle);
extern (C) string DedicatedWorkerGlobalScope_name_Get(JsHandle);
extern (C) void DedicatedWorkerGlobalScope_postMessage__any_sequence_object(JsHandle, Any, JsHandle);
extern (C) void DedicatedWorkerGlobalScope_postMessage__any_JsHandle(JsHandle, Any, JsHandle);
extern (C) void DedicatedWorkerGlobalScope_close(JsHandle);
extern (C) void DedicatedWorkerGlobalScope_onmessage_Set(JsHandle, EventHandler);
extern (C) EventHandler DedicatedWorkerGlobalScope_onmessage_Get(JsHandle);
extern (C) void DedicatedWorkerGlobalScope_onmessageerror_Set(JsHandle, EventHandler);
extern (C) EventHandler DedicatedWorkerGlobalScope_onmessageerror_Get(JsHandle);
extern (C) uint AnimationFrameProvider_requestAnimationFrame(JsHandle, FrameRequestCallback);
extern (C) void AnimationFrameProvider_cancelAnimationFrame(JsHandle, uint);
extern (C) Optional!(DataTransfer) DragEvent_dataTransfer_Get(JsHandle);
extern (C) void DragEventInit_dataTransfer_Set(JsHandle, bool, JsHandle);
extern (C) Optional!(DataTransfer) DragEventInit_dataTransfer_Get(JsHandle);
extern (C) void ElementDefinitionOptions_extends_Set(JsHandle, string);
extern (C) string ElementDefinitionOptions_extends_Get(JsHandle);
extern (C) string ErrorEvent_message_Get(JsHandle);
extern (C) JsHandle ErrorEvent_filename_Get(JsHandle);
extern (C) uint ErrorEvent_lineno_Get(JsHandle);
extern (C) uint ErrorEvent_colno_Get(JsHandle);
extern (C) JsHandle ErrorEvent_error_Get(JsHandle);
extern (C) void ErrorEventInit_message_Set(JsHandle, string);
extern (C) string ErrorEventInit_message_Get(JsHandle);
extern (C) void ErrorEventInit_filename_Set(JsHandle, JsHandle);
extern (C) JsHandle ErrorEventInit_filename_Get(JsHandle);
extern (C) void ErrorEventInit_lineno_Set(JsHandle, uint);
extern (C) uint ErrorEventInit_lineno_Get(JsHandle);
extern (C) void ErrorEventInit_colno_Set(JsHandle, uint);
extern (C) uint ErrorEventInit_colno_Get(JsHandle);
extern (C) void ErrorEventInit_error_Set(JsHandle, Any);
extern (C) JsHandle ErrorEventInit_error_Get(JsHandle);
extern (C) JsHandle EventSource_url_Get(JsHandle);
extern (C) bool EventSource_withCredentials_Get(JsHandle);
extern (C) ushort EventSource_readyState_Get(JsHandle);
extern (C) void EventSource_onopen_Set(JsHandle, EventHandler);
extern (C) EventHandler EventSource_onopen_Get(JsHandle);
extern (C) void EventSource_onmessage_Set(JsHandle, EventHandler);
extern (C) EventHandler EventSource_onmessage_Get(JsHandle);
extern (C) void EventSource_onerror_Set(JsHandle, EventHandler);
extern (C) EventHandler EventSource_onerror_Get(JsHandle);
extern (C) void EventSource_close(JsHandle);
extern (C) void EventSourceInit_withCredentials_Set(JsHandle, bool);
extern (C) bool EventSourceInit_withCredentials_Get(JsHandle);
extern (C) void External_AddSearchProvider(JsHandle);
extern (C) void External_IsSearchProviderInstalled(JsHandle);
extern (C) void FocusOptions_preventScroll_Set(JsHandle, bool);
extern (C) bool FocusOptions_preventScroll_Get(JsHandle);
extern (C) uint HTMLAllCollection_length_Get(JsHandle);
extern (C) JsHandle HTMLAllCollection_getter__uint(JsHandle, uint);
extern (C) Optional!(SumType!(HTMLCollection, Element)) HTMLAllCollection_namedItem_getter(JsHandle, string);
extern (C) Optional!(SumType!(HTMLCollection, Element)) HTMLAllCollection_item(JsHandle, string);
extern (C) void HTMLAnchorElement_target_Set(JsHandle, string);
extern (C) string HTMLAnchorElement_target_Get(JsHandle);
extern (C) void HTMLAnchorElement_download_Set(JsHandle, string);
extern (C) string HTMLAnchorElement_download_Get(JsHandle);
extern (C) void HTMLAnchorElement_ping_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLAnchorElement_ping_Get(JsHandle);
extern (C) void HTMLAnchorElement_rel_Set(JsHandle, string);
extern (C) string HTMLAnchorElement_rel_Get(JsHandle);
extern (C) JsHandle HTMLAnchorElement_relList_Get(JsHandle);
extern (C) void HTMLAnchorElement_hreflang_Set(JsHandle, string);
extern (C) string HTMLAnchorElement_hreflang_Get(JsHandle);
extern (C) void HTMLAnchorElement_type_Set(JsHandle, string);
extern (C) string HTMLAnchorElement_type_Get(JsHandle);
extern (C) void HTMLAnchorElement_text_Set(JsHandle, string);
extern (C) string HTMLAnchorElement_text_Get(JsHandle);
extern (C) void HTMLAnchorElement_referrerPolicy_Set(JsHandle, string);
extern (C) string HTMLAnchorElement_referrerPolicy_Get(JsHandle);
extern (C) void HTMLAnchorElement_coords_Set(JsHandle, string);
extern (C) string HTMLAnchorElement_coords_Get(JsHandle);
extern (C) void HTMLAnchorElement_charset_Set(JsHandle, string);
extern (C) string HTMLAnchorElement_charset_Get(JsHandle);
extern (C) void HTMLAnchorElement_name_Set(JsHandle, string);
extern (C) string HTMLAnchorElement_name_Get(JsHandle);
extern (C) void HTMLAnchorElement_rev_Set(JsHandle, string);
extern (C) string HTMLAnchorElement_rev_Get(JsHandle);
extern (C) void HTMLAnchorElement_shape_Set(JsHandle, string);
extern (C) string HTMLAnchorElement_shape_Get(JsHandle);
extern (C) void HTMLHyperlinkElementUtils_href_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLHyperlinkElementUtils_href_Get(JsHandle);
extern (C) JsHandle HTMLHyperlinkElementUtils_origin_Get(JsHandle);
extern (C) void HTMLAreaElement_alt_Set(JsHandle, string);
extern (C) string HTMLAreaElement_alt_Get(JsHandle);
extern (C) void HTMLAreaElement_coords_Set(JsHandle, string);
extern (C) string HTMLAreaElement_coords_Get(JsHandle);
extern (C) void HTMLAreaElement_shape_Set(JsHandle, string);
extern (C) string HTMLAreaElement_shape_Get(JsHandle);
extern (C) void HTMLAreaElement_target_Set(JsHandle, string);
extern (C) string HTMLAreaElement_target_Get(JsHandle);
extern (C) void HTMLAreaElement_download_Set(JsHandle, string);
extern (C) string HTMLAreaElement_download_Get(JsHandle);
extern (C) void HTMLAreaElement_ping_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLAreaElement_ping_Get(JsHandle);
extern (C) void HTMLAreaElement_rel_Set(JsHandle, string);
extern (C) string HTMLAreaElement_rel_Get(JsHandle);
extern (C) JsHandle HTMLAreaElement_relList_Get(JsHandle);
extern (C) void HTMLAreaElement_referrerPolicy_Set(JsHandle, string);
extern (C) string HTMLAreaElement_referrerPolicy_Get(JsHandle);
extern (C) void HTMLAreaElement_noHref_Set(JsHandle, bool);
extern (C) bool HTMLAreaElement_noHref_Get(JsHandle);
extern (C) void HTMLHyperlinkElementUtils_href_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLHyperlinkElementUtils_href_Get(JsHandle);
extern (C) JsHandle HTMLHyperlinkElementUtils_origin_Get(JsHandle);
extern (C) void HTMLBRElement_clear_Set(JsHandle, string);
extern (C) string HTMLBRElement_clear_Get(JsHandle);
extern (C) void HTMLBaseElement_href_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLBaseElement_href_Get(JsHandle);
extern (C) void HTMLBaseElement_target_Set(JsHandle, string);
extern (C) string HTMLBaseElement_target_Get(JsHandle);
extern (C) void HTMLBodyElement_text_Set(JsHandle, string);
extern (C) string HTMLBodyElement_text_Get(JsHandle);
extern (C) void HTMLBodyElement_link_Set(JsHandle, string);
extern (C) string HTMLBodyElement_link_Get(JsHandle);
extern (C) void HTMLBodyElement_vLink_Set(JsHandle, string);
extern (C) string HTMLBodyElement_vLink_Get(JsHandle);
extern (C) void HTMLBodyElement_aLink_Set(JsHandle, string);
extern (C) string HTMLBodyElement_aLink_Get(JsHandle);
extern (C) void HTMLBodyElement_bgColor_Set(JsHandle, string);
extern (C) string HTMLBodyElement_bgColor_Get(JsHandle);
extern (C) void HTMLBodyElement_background_Set(JsHandle, string);
extern (C) string HTMLBodyElement_background_Get(JsHandle);
extern (C) void HTMLBodyElement_onorientationchange_Set(JsHandle, EventHandler);
extern (C) EventHandler HTMLBodyElement_onorientationchange_Get(JsHandle);
extern (C) void HTMLButtonElement_autofocus_Set(JsHandle, bool);
extern (C) bool HTMLButtonElement_autofocus_Get(JsHandle);
extern (C) void HTMLButtonElement_disabled_Set(JsHandle, bool);
extern (C) bool HTMLButtonElement_disabled_Get(JsHandle);
extern (C) Optional!(HTMLFormElement) HTMLButtonElement_form_Get(JsHandle);
extern (C) void HTMLButtonElement_formAction_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLButtonElement_formAction_Get(JsHandle);
extern (C) void HTMLButtonElement_formEnctype_Set(JsHandle, string);
extern (C) string HTMLButtonElement_formEnctype_Get(JsHandle);
extern (C) void HTMLButtonElement_formMethod_Set(JsHandle, string);
extern (C) string HTMLButtonElement_formMethod_Get(JsHandle);
extern (C) void HTMLButtonElement_formNoValidate_Set(JsHandle, bool);
extern (C) bool HTMLButtonElement_formNoValidate_Get(JsHandle);
extern (C) void HTMLButtonElement_formTarget_Set(JsHandle, string);
extern (C) string HTMLButtonElement_formTarget_Get(JsHandle);
extern (C) void HTMLButtonElement_name_Set(JsHandle, string);
extern (C) string HTMLButtonElement_name_Get(JsHandle);
extern (C) void HTMLButtonElement_type_Set(JsHandle, string);
extern (C) string HTMLButtonElement_type_Get(JsHandle);
extern (C) void HTMLButtonElement_value_Set(JsHandle, string);
extern (C) string HTMLButtonElement_value_Get(JsHandle);
extern (C) bool HTMLButtonElement_willValidate_Get(JsHandle);
extern (C) JsHandle HTMLButtonElement_validity_Get(JsHandle);
extern (C) string HTMLButtonElement_validationMessage_Get(JsHandle);
extern (C) bool HTMLButtonElement_checkValidity(JsHandle);
extern (C) bool HTMLButtonElement_reportValidity(JsHandle);
extern (C) void HTMLButtonElement_setCustomValidity(JsHandle, string);
extern (C) JsHandle HTMLButtonElement_labels_Get(JsHandle);
extern (C) void HTMLCanvasElement_width_Set(JsHandle, uint);
extern (C) uint HTMLCanvasElement_width_Get(JsHandle);
extern (C) void HTMLCanvasElement_height_Set(JsHandle, uint);
extern (C) uint HTMLCanvasElement_height_Get(JsHandle);
extern (C) Optional!(RenderingContext) HTMLCanvasElement_getContext(JsHandle, string, Any);
extern (C) JsHandle HTMLCanvasElement_toDataURL(JsHandle, string, Any);
extern (C) void HTMLCanvasElement_toBlob(JsHandle, BlobCallback, string, Any);
extern (C) JsHandle HTMLCanvasElement_transferControlToOffscreen(JsHandle);
extern (C) void HTMLDListElement_compact_Set(JsHandle, bool);
extern (C) bool HTMLDListElement_compact_Get(JsHandle);
extern (C) void HTMLDataElement_value_Set(JsHandle, string);
extern (C) string HTMLDataElement_value_Get(JsHandle);
extern (C) JsHandle HTMLDataListElement_options_Get(JsHandle);
extern (C) void HTMLDetailsElement_open_Set(JsHandle, bool);
extern (C) bool HTMLDetailsElement_open_Get(JsHandle);
extern (C) void HTMLDialogElement_open_Set(JsHandle, bool);
extern (C) bool HTMLDialogElement_open_Get(JsHandle);
extern (C) void HTMLDialogElement_returnValue_Set(JsHandle, string);
extern (C) string HTMLDialogElement_returnValue_Get(JsHandle);
extern (C) void HTMLDialogElement_show(JsHandle);
extern (C) void HTMLDialogElement_showModal(JsHandle);
extern (C) void HTMLDialogElement_close(JsHandle, string);
extern (C) void HTMLDirectoryElement_compact_Set(JsHandle, bool);
extern (C) bool HTMLDirectoryElement_compact_Get(JsHandle);
extern (C) void HTMLDivElement_align_Set(JsHandle, string);
extern (C) string HTMLDivElement_align_Get(JsHandle);
extern (C) void HTMLElement_title_Set(JsHandle, string);
extern (C) string HTMLElement_title_Get(JsHandle);
extern (C) void HTMLElement_lang_Set(JsHandle, string);
extern (C) string HTMLElement_lang_Get(JsHandle);
extern (C) void HTMLElement_translate_Set(JsHandle, bool);
extern (C) bool HTMLElement_translate_Get(JsHandle);
extern (C) void HTMLElement_dir_Set(JsHandle, string);
extern (C) string HTMLElement_dir_Get(JsHandle);
extern (C) void HTMLElement_hidden_Set(JsHandle, bool);
extern (C) bool HTMLElement_hidden_Get(JsHandle);
extern (C) void HTMLElement_click(JsHandle);
extern (C) void HTMLElement_accessKey_Set(JsHandle, string);
extern (C) string HTMLElement_accessKey_Get(JsHandle);
extern (C) string HTMLElement_accessKeyLabel_Get(JsHandle);
extern (C) void HTMLElement_draggable_Set(JsHandle, bool);
extern (C) bool HTMLElement_draggable_Get(JsHandle);
extern (C) void HTMLElement_spellcheck_Set(JsHandle, bool);
extern (C) bool HTMLElement_spellcheck_Get(JsHandle);
extern (C) void HTMLElement_autocapitalize_Set(JsHandle, string);
extern (C) string HTMLElement_autocapitalize_Get(JsHandle);
extern (C) void HTMLElement_innerText_Set(JsHandle, string);
extern (C) string HTMLElement_innerText_Get(JsHandle);
extern (C) JsHandle HTMLOrSVGElement_dataset_Get(JsHandle);
extern (C) void HTMLOrSVGElement_focus(JsHandle, JsHandle);
extern (C) void HTMLOrSVGElement_blur(JsHandle);
extern (C) bool ElementContentEditable_isContentEditable_Get(JsHandle);
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
extern (C) void HTMLEmbedElement_src_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLEmbedElement_src_Get(JsHandle);
extern (C) void HTMLEmbedElement_type_Set(JsHandle, string);
extern (C) string HTMLEmbedElement_type_Get(JsHandle);
extern (C) void HTMLEmbedElement_width_Set(JsHandle, string);
extern (C) string HTMLEmbedElement_width_Get(JsHandle);
extern (C) void HTMLEmbedElement_height_Set(JsHandle, string);
extern (C) string HTMLEmbedElement_height_Get(JsHandle);
extern (C) Optional!(Document) HTMLEmbedElement_getSVGDocument(JsHandle);
extern (C) void HTMLEmbedElement_align_Set(JsHandle, string);
extern (C) string HTMLEmbedElement_align_Get(JsHandle);
extern (C) void HTMLEmbedElement_name_Set(JsHandle, string);
extern (C) string HTMLEmbedElement_name_Get(JsHandle);
extern (C) void HTMLFieldSetElement_disabled_Set(JsHandle, bool);
extern (C) bool HTMLFieldSetElement_disabled_Get(JsHandle);
extern (C) Optional!(HTMLFormElement) HTMLFieldSetElement_form_Get(JsHandle);
extern (C) void HTMLFieldSetElement_name_Set(JsHandle, string);
extern (C) string HTMLFieldSetElement_name_Get(JsHandle);
extern (C) string HTMLFieldSetElement_type_Get(JsHandle);
extern (C) JsHandle HTMLFieldSetElement_elements_Get(JsHandle);
extern (C) bool HTMLFieldSetElement_willValidate_Get(JsHandle);
extern (C) JsHandle HTMLFieldSetElement_validity_Get(JsHandle);
extern (C) string HTMLFieldSetElement_validationMessage_Get(JsHandle);
extern (C) bool HTMLFieldSetElement_checkValidity(JsHandle);
extern (C) bool HTMLFieldSetElement_reportValidity(JsHandle);
extern (C) void HTMLFieldSetElement_setCustomValidity(JsHandle, string);
extern (C) void HTMLFontElement_color_Set(JsHandle, string);
extern (C) string HTMLFontElement_color_Get(JsHandle);
extern (C) void HTMLFontElement_face_Set(JsHandle, string);
extern (C) string HTMLFontElement_face_Get(JsHandle);
extern (C) void HTMLFontElement_size_Set(JsHandle, string);
extern (C) string HTMLFontElement_size_Get(JsHandle);
extern (C) Optional!(SumType!(RadioNodeList, Element)) HTMLFormControlsCollection_namedItem_getter(JsHandle, string);
extern (C) void HTMLFormElement_acceptCharset_Set(JsHandle, string);
extern (C) string HTMLFormElement_acceptCharset_Get(JsHandle);
extern (C) void HTMLFormElement_action_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLFormElement_action_Get(JsHandle);
extern (C) void HTMLFormElement_autocomplete_Set(JsHandle, string);
extern (C) string HTMLFormElement_autocomplete_Get(JsHandle);
extern (C) void HTMLFormElement_enctype_Set(JsHandle, string);
extern (C) string HTMLFormElement_enctype_Get(JsHandle);
extern (C) void HTMLFormElement_encoding_Set(JsHandle, string);
extern (C) string HTMLFormElement_encoding_Get(JsHandle);
extern (C) void HTMLFormElement_method_Set(JsHandle, string);
extern (C) string HTMLFormElement_method_Get(JsHandle);
extern (C) void HTMLFormElement_name_Set(JsHandle, string);
extern (C) string HTMLFormElement_name_Get(JsHandle);
extern (C) void HTMLFormElement_noValidate_Set(JsHandle, bool);
extern (C) bool HTMLFormElement_noValidate_Get(JsHandle);
extern (C) void HTMLFormElement_target_Set(JsHandle, string);
extern (C) string HTMLFormElement_target_Get(JsHandle);
extern (C) JsHandle HTMLFormElement_elements_Get(JsHandle);
extern (C) uint HTMLFormElement_length_Get(JsHandle);
extern (C) JsHandle HTMLFormElement_getter__uint(JsHandle, uint);
extern (C) SumType!(RadioNodeList, Element) HTMLFormElement_getter__string(JsHandle, string);
extern (C) void HTMLFormElement_submit(JsHandle);
extern (C) void HTMLFormElement_reset(JsHandle);
extern (C) bool HTMLFormElement_checkValidity(JsHandle);
extern (C) bool HTMLFormElement_reportValidity(JsHandle);
extern (C) void HTMLFrameElement_name_Set(JsHandle, string);
extern (C) string HTMLFrameElement_name_Get(JsHandle);
extern (C) void HTMLFrameElement_scrolling_Set(JsHandle, string);
extern (C) string HTMLFrameElement_scrolling_Get(JsHandle);
extern (C) void HTMLFrameElement_src_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLFrameElement_src_Get(JsHandle);
extern (C) void HTMLFrameElement_frameBorder_Set(JsHandle, string);
extern (C) string HTMLFrameElement_frameBorder_Get(JsHandle);
extern (C) void HTMLFrameElement_longDesc_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLFrameElement_longDesc_Get(JsHandle);
extern (C) void HTMLFrameElement_noResize_Set(JsHandle, bool);
extern (C) bool HTMLFrameElement_noResize_Get(JsHandle);
extern (C) Optional!(Document) HTMLFrameElement_contentDocument_Get(JsHandle);
extern (C) Optional!(WindowProxy) HTMLFrameElement_contentWindow_Get(JsHandle);
extern (C) void HTMLFrameElement_marginHeight_Set(JsHandle, string);
extern (C) string HTMLFrameElement_marginHeight_Get(JsHandle);
extern (C) void HTMLFrameElement_marginWidth_Set(JsHandle, string);
extern (C) string HTMLFrameElement_marginWidth_Get(JsHandle);
extern (C) void HTMLFrameSetElement_cols_Set(JsHandle, string);
extern (C) string HTMLFrameSetElement_cols_Get(JsHandle);
extern (C) void HTMLFrameSetElement_rows_Set(JsHandle, string);
extern (C) string HTMLFrameSetElement_rows_Get(JsHandle);
extern (C) void HTMLHRElement_align_Set(JsHandle, string);
extern (C) string HTMLHRElement_align_Get(JsHandle);
extern (C) void HTMLHRElement_color_Set(JsHandle, string);
extern (C) string HTMLHRElement_color_Get(JsHandle);
extern (C) void HTMLHRElement_noShade_Set(JsHandle, bool);
extern (C) bool HTMLHRElement_noShade_Get(JsHandle);
extern (C) void HTMLHRElement_size_Set(JsHandle, string);
extern (C) string HTMLHRElement_size_Get(JsHandle);
extern (C) void HTMLHRElement_width_Set(JsHandle, string);
extern (C) string HTMLHRElement_width_Get(JsHandle);
extern (C) void HTMLHeadingElement_align_Set(JsHandle, string);
extern (C) string HTMLHeadingElement_align_Get(JsHandle);
extern (C) void HTMLHtmlElement_version_Set(JsHandle, string);
extern (C) string HTMLHtmlElement_version_Get(JsHandle);
extern (C) void HTMLIFrameElement_src_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLIFrameElement_src_Get(JsHandle);
extern (C) void HTMLIFrameElement_srcdoc_Set(JsHandle, string);
extern (C) string HTMLIFrameElement_srcdoc_Get(JsHandle);
extern (C) void HTMLIFrameElement_name_Set(JsHandle, string);
extern (C) string HTMLIFrameElement_name_Get(JsHandle);
extern (C) JsHandle HTMLIFrameElement_sandbox_Get(JsHandle);
extern (C) void HTMLIFrameElement_allow_Set(JsHandle, string);
extern (C) string HTMLIFrameElement_allow_Get(JsHandle);
extern (C) void HTMLIFrameElement_allowFullscreen_Set(JsHandle, bool);
extern (C) bool HTMLIFrameElement_allowFullscreen_Get(JsHandle);
extern (C) void HTMLIFrameElement_allowPaymentRequest_Set(JsHandle, bool);
extern (C) bool HTMLIFrameElement_allowPaymentRequest_Get(JsHandle);
extern (C) void HTMLIFrameElement_width_Set(JsHandle, string);
extern (C) string HTMLIFrameElement_width_Get(JsHandle);
extern (C) void HTMLIFrameElement_height_Set(JsHandle, string);
extern (C) string HTMLIFrameElement_height_Get(JsHandle);
extern (C) void HTMLIFrameElement_referrerPolicy_Set(JsHandle, string);
extern (C) string HTMLIFrameElement_referrerPolicy_Get(JsHandle);
extern (C) Optional!(Document) HTMLIFrameElement_contentDocument_Get(JsHandle);
extern (C) Optional!(WindowProxy) HTMLIFrameElement_contentWindow_Get(JsHandle);
extern (C) Optional!(Document) HTMLIFrameElement_getSVGDocument(JsHandle);
extern (C) void HTMLIFrameElement_align_Set(JsHandle, string);
extern (C) string HTMLIFrameElement_align_Get(JsHandle);
extern (C) void HTMLIFrameElement_scrolling_Set(JsHandle, string);
extern (C) string HTMLIFrameElement_scrolling_Get(JsHandle);
extern (C) void HTMLIFrameElement_frameBorder_Set(JsHandle, string);
extern (C) string HTMLIFrameElement_frameBorder_Get(JsHandle);
extern (C) void HTMLIFrameElement_longDesc_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLIFrameElement_longDesc_Get(JsHandle);
extern (C) void HTMLIFrameElement_marginHeight_Set(JsHandle, string);
extern (C) string HTMLIFrameElement_marginHeight_Get(JsHandle);
extern (C) void HTMLIFrameElement_marginWidth_Set(JsHandle, string);
extern (C) string HTMLIFrameElement_marginWidth_Get(JsHandle);
extern (C) void HTMLImageElement_alt_Set(JsHandle, string);
extern (C) string HTMLImageElement_alt_Get(JsHandle);
extern (C) void HTMLImageElement_src_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLImageElement_src_Get(JsHandle);
extern (C) void HTMLImageElement_srcset_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLImageElement_srcset_Get(JsHandle);
extern (C) void HTMLImageElement_sizes_Set(JsHandle, string);
extern (C) string HTMLImageElement_sizes_Get(JsHandle);
extern (C) void HTMLImageElement_crossOrigin_Set(JsHandle, bool, string);
extern (C) Optional!(string) HTMLImageElement_crossOrigin_Get(JsHandle);
extern (C) void HTMLImageElement_useMap_Set(JsHandle, string);
extern (C) string HTMLImageElement_useMap_Get(JsHandle);
extern (C) void HTMLImageElement_isMap_Set(JsHandle, bool);
extern (C) bool HTMLImageElement_isMap_Get(JsHandle);
extern (C) void HTMLImageElement_width_Set(JsHandle, uint);
extern (C) uint HTMLImageElement_width_Get(JsHandle);
extern (C) void HTMLImageElement_height_Set(JsHandle, uint);
extern (C) uint HTMLImageElement_height_Get(JsHandle);
extern (C) uint HTMLImageElement_naturalWidth_Get(JsHandle);
extern (C) uint HTMLImageElement_naturalHeight_Get(JsHandle);
extern (C) bool HTMLImageElement_complete_Get(JsHandle);
extern (C) JsHandle HTMLImageElement_currentSrc_Get(JsHandle);
extern (C) void HTMLImageElement_referrerPolicy_Set(JsHandle, string);
extern (C) string HTMLImageElement_referrerPolicy_Get(JsHandle);
extern (C) void HTMLImageElement_decoding_Set(JsHandle, string);
extern (C) string HTMLImageElement_decoding_Get(JsHandle);
extern (C) JsHandle HTMLImageElement_decode(JsHandle);
extern (C) void HTMLImageElement_name_Set(JsHandle, string);
extern (C) string HTMLImageElement_name_Get(JsHandle);
extern (C) void HTMLImageElement_lowsrc_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLImageElement_lowsrc_Get(JsHandle);
extern (C) void HTMLImageElement_align_Set(JsHandle, string);
extern (C) string HTMLImageElement_align_Get(JsHandle);
extern (C) void HTMLImageElement_hspace_Set(JsHandle, uint);
extern (C) uint HTMLImageElement_hspace_Get(JsHandle);
extern (C) void HTMLImageElement_vspace_Set(JsHandle, uint);
extern (C) uint HTMLImageElement_vspace_Get(JsHandle);
extern (C) void HTMLImageElement_longDesc_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLImageElement_longDesc_Get(JsHandle);
extern (C) void HTMLImageElement_border_Set(JsHandle, string);
extern (C) string HTMLImageElement_border_Get(JsHandle);
extern (C) void HTMLInputElement_accept_Set(JsHandle, string);
extern (C) string HTMLInputElement_accept_Get(JsHandle);
extern (C) void HTMLInputElement_alt_Set(JsHandle, string);
extern (C) string HTMLInputElement_alt_Get(JsHandle);
extern (C) void HTMLInputElement_autocomplete_Set(JsHandle, string);
extern (C) string HTMLInputElement_autocomplete_Get(JsHandle);
extern (C) void HTMLInputElement_autofocus_Set(JsHandle, bool);
extern (C) bool HTMLInputElement_autofocus_Get(JsHandle);
extern (C) void HTMLInputElement_defaultChecked_Set(JsHandle, bool);
extern (C) bool HTMLInputElement_defaultChecked_Get(JsHandle);
extern (C) void HTMLInputElement_checked_Set(JsHandle, bool);
extern (C) bool HTMLInputElement_checked_Get(JsHandle);
extern (C) void HTMLInputElement_dirName_Set(JsHandle, string);
extern (C) string HTMLInputElement_dirName_Get(JsHandle);
extern (C) void HTMLInputElement_disabled_Set(JsHandle, bool);
extern (C) bool HTMLInputElement_disabled_Get(JsHandle);
extern (C) Optional!(HTMLFormElement) HTMLInputElement_form_Get(JsHandle);
extern (C) void HTMLInputElement_files_Set(JsHandle, bool, JsHandle);
extern (C) Optional!(FileList) HTMLInputElement_files_Get(JsHandle);
extern (C) void HTMLInputElement_formAction_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLInputElement_formAction_Get(JsHandle);
extern (C) void HTMLInputElement_formEnctype_Set(JsHandle, string);
extern (C) string HTMLInputElement_formEnctype_Get(JsHandle);
extern (C) void HTMLInputElement_formMethod_Set(JsHandle, string);
extern (C) string HTMLInputElement_formMethod_Get(JsHandle);
extern (C) void HTMLInputElement_formNoValidate_Set(JsHandle, bool);
extern (C) bool HTMLInputElement_formNoValidate_Get(JsHandle);
extern (C) void HTMLInputElement_formTarget_Set(JsHandle, string);
extern (C) string HTMLInputElement_formTarget_Get(JsHandle);
extern (C) void HTMLInputElement_height_Set(JsHandle, uint);
extern (C) uint HTMLInputElement_height_Get(JsHandle);
extern (C) void HTMLInputElement_indeterminate_Set(JsHandle, bool);
extern (C) bool HTMLInputElement_indeterminate_Get(JsHandle);
extern (C) Optional!(HTMLElement) HTMLInputElement_list_Get(JsHandle);
extern (C) void HTMLInputElement_max_Set(JsHandle, string);
extern (C) string HTMLInputElement_max_Get(JsHandle);
extern (C) void HTMLInputElement_maxLength_Set(JsHandle, int);
extern (C) int HTMLInputElement_maxLength_Get(JsHandle);
extern (C) void HTMLInputElement_min_Set(JsHandle, string);
extern (C) string HTMLInputElement_min_Get(JsHandle);
extern (C) void HTMLInputElement_minLength_Set(JsHandle, int);
extern (C) int HTMLInputElement_minLength_Get(JsHandle);
extern (C) void HTMLInputElement_multiple_Set(JsHandle, bool);
extern (C) bool HTMLInputElement_multiple_Get(JsHandle);
extern (C) void HTMLInputElement_name_Set(JsHandle, string);
extern (C) string HTMLInputElement_name_Get(JsHandle);
extern (C) void HTMLInputElement_pattern_Set(JsHandle, string);
extern (C) string HTMLInputElement_pattern_Get(JsHandle);
extern (C) void HTMLInputElement_placeholder_Set(JsHandle, string);
extern (C) string HTMLInputElement_placeholder_Get(JsHandle);
extern (C) void HTMLInputElement_readOnly_Set(JsHandle, bool);
extern (C) bool HTMLInputElement_readOnly_Get(JsHandle);
extern (C) void HTMLInputElement_required_Set(JsHandle, bool);
extern (C) bool HTMLInputElement_required_Get(JsHandle);
extern (C) void HTMLInputElement_size_Set(JsHandle, uint);
extern (C) uint HTMLInputElement_size_Get(JsHandle);
extern (C) void HTMLInputElement_src_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLInputElement_src_Get(JsHandle);
extern (C) void HTMLInputElement_step_Set(JsHandle, string);
extern (C) string HTMLInputElement_step_Get(JsHandle);
extern (C) void HTMLInputElement_type_Set(JsHandle, string);
extern (C) string HTMLInputElement_type_Get(JsHandle);
extern (C) void HTMLInputElement_defaultValue_Set(JsHandle, string);
extern (C) string HTMLInputElement_defaultValue_Get(JsHandle);
extern (C) void HTMLInputElement_value_Set(JsHandle, string);
extern (C) string HTMLInputElement_value_Get(JsHandle);
extern (C) void HTMLInputElement_valueAsDate_Set(JsHandle, bool, JsHandle);
extern (C) Optional!(Object) HTMLInputElement_valueAsDate_Get(JsHandle);
extern (C) void HTMLInputElement_valueAsNumber_Set(JsHandle, double);
extern (C) double HTMLInputElement_valueAsNumber_Get(JsHandle);
extern (C) void HTMLInputElement_width_Set(JsHandle, uint);
extern (C) uint HTMLInputElement_width_Get(JsHandle);
extern (C) void HTMLInputElement_stepUp(JsHandle, int);
extern (C) void HTMLInputElement_stepDown(JsHandle, int);
extern (C) bool HTMLInputElement_willValidate_Get(JsHandle);
extern (C) JsHandle HTMLInputElement_validity_Get(JsHandle);
extern (C) string HTMLInputElement_validationMessage_Get(JsHandle);
extern (C) bool HTMLInputElement_checkValidity(JsHandle);
extern (C) bool HTMLInputElement_reportValidity(JsHandle);
extern (C) void HTMLInputElement_setCustomValidity(JsHandle, string);
extern (C) Optional!(NodeList) HTMLInputElement_labels_Get(JsHandle);
extern (C) void HTMLInputElement_select(JsHandle);
extern (C) void HTMLInputElement_selectionStart_Set(JsHandle, bool, uint);
extern (C) Optional!(uint) HTMLInputElement_selectionStart_Get(JsHandle);
extern (C) void HTMLInputElement_selectionEnd_Set(JsHandle, bool, uint);
extern (C) Optional!(uint) HTMLInputElement_selectionEnd_Get(JsHandle);
extern (C) void HTMLInputElement_selectionDirection_Set(JsHandle, bool, string);
extern (C) Optional!(string) HTMLInputElement_selectionDirection_Get(JsHandle);
extern (C) void HTMLInputElement_setRangeText__string(JsHandle, string);
extern (C) void HTMLInputElement_setRangeText__string_uint_uint_SelectionMode(JsHandle, string, uint, uint, SelectionMode);
extern (C) void HTMLInputElement_setSelectionRange(JsHandle, uint, uint, string);
extern (C) void HTMLInputElement_align_Set(JsHandle, string);
extern (C) string HTMLInputElement_align_Get(JsHandle);
extern (C) void HTMLInputElement_useMap_Set(JsHandle, string);
extern (C) string HTMLInputElement_useMap_Get(JsHandle);
extern (C) void HTMLLIElement_value_Set(JsHandle, int);
extern (C) int HTMLLIElement_value_Get(JsHandle);
extern (C) void HTMLLIElement_type_Set(JsHandle, string);
extern (C) string HTMLLIElement_type_Get(JsHandle);
extern (C) Optional!(HTMLFormElement) HTMLLabelElement_form_Get(JsHandle);
extern (C) void HTMLLabelElement_htmlFor_Set(JsHandle, string);
extern (C) string HTMLLabelElement_htmlFor_Get(JsHandle);
extern (C) Optional!(HTMLElement) HTMLLabelElement_control_Get(JsHandle);
extern (C) Optional!(HTMLFormElement) HTMLLegendElement_form_Get(JsHandle);
extern (C) void HTMLLegendElement_align_Set(JsHandle, string);
extern (C) string HTMLLegendElement_align_Get(JsHandle);
extern (C) void HTMLLinkElement_href_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLLinkElement_href_Get(JsHandle);
extern (C) void HTMLLinkElement_crossOrigin_Set(JsHandle, bool, string);
extern (C) Optional!(string) HTMLLinkElement_crossOrigin_Get(JsHandle);
extern (C) void HTMLLinkElement_rel_Set(JsHandle, string);
extern (C) string HTMLLinkElement_rel_Get(JsHandle);
extern (C) void HTMLLinkElement_as_Set(JsHandle, string);
extern (C) string HTMLLinkElement_as_Get(JsHandle);
extern (C) JsHandle HTMLLinkElement_relList_Get(JsHandle);
extern (C) void HTMLLinkElement_media_Set(JsHandle, string);
extern (C) string HTMLLinkElement_media_Get(JsHandle);
extern (C) void HTMLLinkElement_integrity_Set(JsHandle, string);
extern (C) string HTMLLinkElement_integrity_Get(JsHandle);
extern (C) void HTMLLinkElement_hreflang_Set(JsHandle, string);
extern (C) string HTMLLinkElement_hreflang_Get(JsHandle);
extern (C) void HTMLLinkElement_type_Set(JsHandle, string);
extern (C) string HTMLLinkElement_type_Get(JsHandle);
extern (C) JsHandle HTMLLinkElement_sizes_Get(JsHandle);
extern (C) void HTMLLinkElement_referrerPolicy_Set(JsHandle, string);
extern (C) string HTMLLinkElement_referrerPolicy_Get(JsHandle);
extern (C) void HTMLLinkElement_charset_Set(JsHandle, string);
extern (C) string HTMLLinkElement_charset_Get(JsHandle);
extern (C) void HTMLLinkElement_rev_Set(JsHandle, string);
extern (C) string HTMLLinkElement_rev_Get(JsHandle);
extern (C) void HTMLLinkElement_target_Set(JsHandle, string);
extern (C) string HTMLLinkElement_target_Get(JsHandle);
extern (C) Optional!(StyleSheet) LinkStyle_sheet_Get(JsHandle);
extern (C) void HTMLMapElement_name_Set(JsHandle, string);
extern (C) string HTMLMapElement_name_Get(JsHandle);
extern (C) JsHandle HTMLMapElement_areas_Get(JsHandle);
extern (C) void HTMLMarqueeElement_behavior_Set(JsHandle, string);
extern (C) string HTMLMarqueeElement_behavior_Get(JsHandle);
extern (C) void HTMLMarqueeElement_bgColor_Set(JsHandle, string);
extern (C) string HTMLMarqueeElement_bgColor_Get(JsHandle);
extern (C) void HTMLMarqueeElement_direction_Set(JsHandle, string);
extern (C) string HTMLMarqueeElement_direction_Get(JsHandle);
extern (C) void HTMLMarqueeElement_height_Set(JsHandle, string);
extern (C) string HTMLMarqueeElement_height_Get(JsHandle);
extern (C) void HTMLMarqueeElement_hspace_Set(JsHandle, uint);
extern (C) uint HTMLMarqueeElement_hspace_Get(JsHandle);
extern (C) void HTMLMarqueeElement_loop_Set(JsHandle, int);
extern (C) int HTMLMarqueeElement_loop_Get(JsHandle);
extern (C) void HTMLMarqueeElement_scrollAmount_Set(JsHandle, uint);
extern (C) uint HTMLMarqueeElement_scrollAmount_Get(JsHandle);
extern (C) void HTMLMarqueeElement_scrollDelay_Set(JsHandle, uint);
extern (C) uint HTMLMarqueeElement_scrollDelay_Get(JsHandle);
extern (C) void HTMLMarqueeElement_trueSpeed_Set(JsHandle, bool);
extern (C) bool HTMLMarqueeElement_trueSpeed_Get(JsHandle);
extern (C) void HTMLMarqueeElement_vspace_Set(JsHandle, uint);
extern (C) uint HTMLMarqueeElement_vspace_Get(JsHandle);
extern (C) void HTMLMarqueeElement_width_Set(JsHandle, string);
extern (C) string HTMLMarqueeElement_width_Get(JsHandle);
extern (C) void HTMLMarqueeElement_onbounce_Set(JsHandle, EventHandler);
extern (C) EventHandler HTMLMarqueeElement_onbounce_Get(JsHandle);
extern (C) void HTMLMarqueeElement_onfinish_Set(JsHandle, EventHandler);
extern (C) EventHandler HTMLMarqueeElement_onfinish_Get(JsHandle);
extern (C) void HTMLMarqueeElement_onstart_Set(JsHandle, EventHandler);
extern (C) EventHandler HTMLMarqueeElement_onstart_Get(JsHandle);
extern (C) void HTMLMarqueeElement_start(JsHandle);
extern (C) void HTMLMarqueeElement_stop(JsHandle);
extern (C) Optional!(MediaError) HTMLMediaElement_error_Get(JsHandle);
extern (C) void HTMLMediaElement_src_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLMediaElement_src_Get(JsHandle);
extern (C) void HTMLMediaElement_srcObject_Set(JsHandle, bool, MediaProvider);
extern (C) Optional!(MediaProvider) HTMLMediaElement_srcObject_Get(JsHandle);
extern (C) JsHandle HTMLMediaElement_currentSrc_Get(JsHandle);
extern (C) void HTMLMediaElement_crossOrigin_Set(JsHandle, bool, string);
extern (C) Optional!(string) HTMLMediaElement_crossOrigin_Get(JsHandle);
extern (C) ushort HTMLMediaElement_networkState_Get(JsHandle);
extern (C) void HTMLMediaElement_preload_Set(JsHandle, string);
extern (C) string HTMLMediaElement_preload_Get(JsHandle);
extern (C) JsHandle HTMLMediaElement_buffered_Get(JsHandle);
extern (C) void HTMLMediaElement_load(JsHandle);
extern (C) CanPlayTypeResult HTMLMediaElement_canPlayType(JsHandle, string);
extern (C) ushort HTMLMediaElement_readyState_Get(JsHandle);
extern (C) bool HTMLMediaElement_seeking_Get(JsHandle);
extern (C) void HTMLMediaElement_currentTime_Set(JsHandle, double);
extern (C) double HTMLMediaElement_currentTime_Get(JsHandle);
extern (C) void HTMLMediaElement_fastSeek(JsHandle, double);
extern (C) double HTMLMediaElement_duration_Get(JsHandle);
extern (C) JsHandle HTMLMediaElement_getStartDate(JsHandle);
extern (C) bool HTMLMediaElement_paused_Get(JsHandle);
extern (C) void HTMLMediaElement_defaultPlaybackRate_Set(JsHandle, double);
extern (C) double HTMLMediaElement_defaultPlaybackRate_Get(JsHandle);
extern (C) void HTMLMediaElement_playbackRate_Set(JsHandle, double);
extern (C) double HTMLMediaElement_playbackRate_Get(JsHandle);
extern (C) JsHandle HTMLMediaElement_played_Get(JsHandle);
extern (C) JsHandle HTMLMediaElement_seekable_Get(JsHandle);
extern (C) bool HTMLMediaElement_ended_Get(JsHandle);
extern (C) void HTMLMediaElement_autoplay_Set(JsHandle, bool);
extern (C) bool HTMLMediaElement_autoplay_Get(JsHandle);
extern (C) void HTMLMediaElement_loop_Set(JsHandle, bool);
extern (C) bool HTMLMediaElement_loop_Get(JsHandle);
extern (C) JsHandle HTMLMediaElement_play(JsHandle);
extern (C) void HTMLMediaElement_pause(JsHandle);
extern (C) void HTMLMediaElement_controls_Set(JsHandle, bool);
extern (C) bool HTMLMediaElement_controls_Get(JsHandle);
extern (C) void HTMLMediaElement_volume_Set(JsHandle, double);
extern (C) double HTMLMediaElement_volume_Get(JsHandle);
extern (C) void HTMLMediaElement_muted_Set(JsHandle, bool);
extern (C) bool HTMLMediaElement_muted_Get(JsHandle);
extern (C) void HTMLMediaElement_defaultMuted_Set(JsHandle, bool);
extern (C) bool HTMLMediaElement_defaultMuted_Get(JsHandle);
extern (C) JsHandle HTMLMediaElement_audioTracks_Get(JsHandle);
extern (C) JsHandle HTMLMediaElement_videoTracks_Get(JsHandle);
extern (C) JsHandle HTMLMediaElement_textTracks_Get(JsHandle);
extern (C) JsHandle HTMLMediaElement_addTextTrack(JsHandle, TextTrackKind, string, string);
extern (C) void HTMLMenuElement_compact_Set(JsHandle, bool);
extern (C) bool HTMLMenuElement_compact_Get(JsHandle);
extern (C) void HTMLMetaElement_name_Set(JsHandle, string);
extern (C) string HTMLMetaElement_name_Get(JsHandle);
extern (C) void HTMLMetaElement_httpEquiv_Set(JsHandle, string);
extern (C) string HTMLMetaElement_httpEquiv_Get(JsHandle);
extern (C) void HTMLMetaElement_content_Set(JsHandle, string);
extern (C) string HTMLMetaElement_content_Get(JsHandle);
extern (C) void HTMLMetaElement_scheme_Set(JsHandle, string);
extern (C) string HTMLMetaElement_scheme_Get(JsHandle);
extern (C) void HTMLMeterElement_value_Set(JsHandle, double);
extern (C) double HTMLMeterElement_value_Get(JsHandle);
extern (C) void HTMLMeterElement_min_Set(JsHandle, double);
extern (C) double HTMLMeterElement_min_Get(JsHandle);
extern (C) void HTMLMeterElement_max_Set(JsHandle, double);
extern (C) double HTMLMeterElement_max_Get(JsHandle);
extern (C) void HTMLMeterElement_low_Set(JsHandle, double);
extern (C) double HTMLMeterElement_low_Get(JsHandle);
extern (C) void HTMLMeterElement_high_Set(JsHandle, double);
extern (C) double HTMLMeterElement_high_Get(JsHandle);
extern (C) void HTMLMeterElement_optimum_Set(JsHandle, double);
extern (C) double HTMLMeterElement_optimum_Get(JsHandle);
extern (C) JsHandle HTMLMeterElement_labels_Get(JsHandle);
extern (C) void HTMLModElement_cite_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLModElement_cite_Get(JsHandle);
extern (C) void HTMLModElement_dateTime_Set(JsHandle, string);
extern (C) string HTMLModElement_dateTime_Get(JsHandle);
extern (C) void HTMLOListElement_reversed_Set(JsHandle, bool);
extern (C) bool HTMLOListElement_reversed_Get(JsHandle);
extern (C) void HTMLOListElement_start_Set(JsHandle, int);
extern (C) int HTMLOListElement_start_Get(JsHandle);
extern (C) void HTMLOListElement_type_Set(JsHandle, string);
extern (C) string HTMLOListElement_type_Get(JsHandle);
extern (C) void HTMLOListElement_compact_Set(JsHandle, bool);
extern (C) bool HTMLOListElement_compact_Get(JsHandle);
extern (C) void HTMLObjectElement_data_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLObjectElement_data_Get(JsHandle);
extern (C) void HTMLObjectElement_type_Set(JsHandle, string);
extern (C) string HTMLObjectElement_type_Get(JsHandle);
extern (C) void HTMLObjectElement_typeMustMatch_Set(JsHandle, bool);
extern (C) bool HTMLObjectElement_typeMustMatch_Get(JsHandle);
extern (C) void HTMLObjectElement_name_Set(JsHandle, string);
extern (C) string HTMLObjectElement_name_Get(JsHandle);
extern (C) void HTMLObjectElement_useMap_Set(JsHandle, string);
extern (C) string HTMLObjectElement_useMap_Get(JsHandle);
extern (C) Optional!(HTMLFormElement) HTMLObjectElement_form_Get(JsHandle);
extern (C) void HTMLObjectElement_width_Set(JsHandle, string);
extern (C) string HTMLObjectElement_width_Get(JsHandle);
extern (C) void HTMLObjectElement_height_Set(JsHandle, string);
extern (C) string HTMLObjectElement_height_Get(JsHandle);
extern (C) Optional!(Document) HTMLObjectElement_contentDocument_Get(JsHandle);
extern (C) Optional!(WindowProxy) HTMLObjectElement_contentWindow_Get(JsHandle);
extern (C) Optional!(Document) HTMLObjectElement_getSVGDocument(JsHandle);
extern (C) bool HTMLObjectElement_willValidate_Get(JsHandle);
extern (C) JsHandle HTMLObjectElement_validity_Get(JsHandle);
extern (C) string HTMLObjectElement_validationMessage_Get(JsHandle);
extern (C) bool HTMLObjectElement_checkValidity(JsHandle);
extern (C) bool HTMLObjectElement_reportValidity(JsHandle);
extern (C) void HTMLObjectElement_setCustomValidity(JsHandle, string);
extern (C) void HTMLObjectElement_align_Set(JsHandle, string);
extern (C) string HTMLObjectElement_align_Get(JsHandle);
extern (C) void HTMLObjectElement_archive_Set(JsHandle, string);
extern (C) string HTMLObjectElement_archive_Get(JsHandle);
extern (C) void HTMLObjectElement_code_Set(JsHandle, string);
extern (C) string HTMLObjectElement_code_Get(JsHandle);
extern (C) void HTMLObjectElement_declare_Set(JsHandle, bool);
extern (C) bool HTMLObjectElement_declare_Get(JsHandle);
extern (C) void HTMLObjectElement_hspace_Set(JsHandle, uint);
extern (C) uint HTMLObjectElement_hspace_Get(JsHandle);
extern (C) void HTMLObjectElement_standby_Set(JsHandle, string);
extern (C) string HTMLObjectElement_standby_Get(JsHandle);
extern (C) void HTMLObjectElement_vspace_Set(JsHandle, uint);
extern (C) uint HTMLObjectElement_vspace_Get(JsHandle);
extern (C) void HTMLObjectElement_codeBase_Set(JsHandle, string);
extern (C) string HTMLObjectElement_codeBase_Get(JsHandle);
extern (C) void HTMLObjectElement_codeType_Set(JsHandle, string);
extern (C) string HTMLObjectElement_codeType_Get(JsHandle);
extern (C) void HTMLObjectElement_border_Set(JsHandle, string);
extern (C) string HTMLObjectElement_border_Get(JsHandle);
extern (C) void HTMLOptGroupElement_disabled_Set(JsHandle, bool);
extern (C) bool HTMLOptGroupElement_disabled_Get(JsHandle);
extern (C) void HTMLOptGroupElement_label_Set(JsHandle, string);
extern (C) string HTMLOptGroupElement_label_Get(JsHandle);
extern (C) void HTMLOptionElement_disabled_Set(JsHandle, bool);
extern (C) bool HTMLOptionElement_disabled_Get(JsHandle);
extern (C) Optional!(HTMLFormElement) HTMLOptionElement_form_Get(JsHandle);
extern (C) void HTMLOptionElement_label_Set(JsHandle, string);
extern (C) string HTMLOptionElement_label_Get(JsHandle);
extern (C) void HTMLOptionElement_defaultSelected_Set(JsHandle, bool);
extern (C) bool HTMLOptionElement_defaultSelected_Get(JsHandle);
extern (C) void HTMLOptionElement_selected_Set(JsHandle, bool);
extern (C) bool HTMLOptionElement_selected_Get(JsHandle);
extern (C) void HTMLOptionElement_value_Set(JsHandle, string);
extern (C) string HTMLOptionElement_value_Get(JsHandle);
extern (C) void HTMLOptionElement_text_Set(JsHandle, string);
extern (C) string HTMLOptionElement_text_Get(JsHandle);
extern (C) int HTMLOptionElement_index_Get(JsHandle);
extern (C) void HTMLOptionsCollection_length_Set(JsHandle, uint);
extern (C) uint HTMLOptionsCollection_length_Get(JsHandle);
extern (C) void HTMLOptionsCollection_setter__uint_optional_JsHandle(JsHandle, uint, bool, JsHandle);
extern (C) void HTMLOptionsCollection_add(JsHandle, SumType!(HTMLOptionElement, HTMLOptGroupElement), bool, SumType!(HTMLElement, int));
extern (C) void HTMLOptionsCollection_remove(JsHandle, int);
extern (C) void HTMLOptionsCollection_selectedIndex_Set(JsHandle, int);
extern (C) int HTMLOptionsCollection_selectedIndex_Get(JsHandle);
extern (C) JsHandle HTMLOutputElement_htmlFor_Get(JsHandle);
extern (C) Optional!(HTMLFormElement) HTMLOutputElement_form_Get(JsHandle);
extern (C) void HTMLOutputElement_name_Set(JsHandle, string);
extern (C) string HTMLOutputElement_name_Get(JsHandle);
extern (C) string HTMLOutputElement_type_Get(JsHandle);
extern (C) void HTMLOutputElement_defaultValue_Set(JsHandle, string);
extern (C) string HTMLOutputElement_defaultValue_Get(JsHandle);
extern (C) void HTMLOutputElement_value_Set(JsHandle, string);
extern (C) string HTMLOutputElement_value_Get(JsHandle);
extern (C) bool HTMLOutputElement_willValidate_Get(JsHandle);
extern (C) JsHandle HTMLOutputElement_validity_Get(JsHandle);
extern (C) string HTMLOutputElement_validationMessage_Get(JsHandle);
extern (C) bool HTMLOutputElement_checkValidity(JsHandle);
extern (C) bool HTMLOutputElement_reportValidity(JsHandle);
extern (C) void HTMLOutputElement_setCustomValidity(JsHandle, string);
extern (C) JsHandle HTMLOutputElement_labels_Get(JsHandle);
extern (C) void HTMLParagraphElement_align_Set(JsHandle, string);
extern (C) string HTMLParagraphElement_align_Get(JsHandle);
extern (C) void HTMLParamElement_name_Set(JsHandle, string);
extern (C) string HTMLParamElement_name_Get(JsHandle);
extern (C) void HTMLParamElement_value_Set(JsHandle, string);
extern (C) string HTMLParamElement_value_Get(JsHandle);
extern (C) void HTMLParamElement_type_Set(JsHandle, string);
extern (C) string HTMLParamElement_type_Get(JsHandle);
extern (C) void HTMLParamElement_valueType_Set(JsHandle, string);
extern (C) string HTMLParamElement_valueType_Get(JsHandle);
extern (C) void HTMLPreElement_width_Set(JsHandle, int);
extern (C) int HTMLPreElement_width_Get(JsHandle);
extern (C) void HTMLProgressElement_value_Set(JsHandle, double);
extern (C) double HTMLProgressElement_value_Get(JsHandle);
extern (C) void HTMLProgressElement_max_Set(JsHandle, double);
extern (C) double HTMLProgressElement_max_Get(JsHandle);
extern (C) double HTMLProgressElement_position_Get(JsHandle);
extern (C) JsHandle HTMLProgressElement_labels_Get(JsHandle);
extern (C) void HTMLQuoteElement_cite_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLQuoteElement_cite_Get(JsHandle);
extern (C) void HTMLScriptElement_src_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLScriptElement_src_Get(JsHandle);
extern (C) void HTMLScriptElement_type_Set(JsHandle, string);
extern (C) string HTMLScriptElement_type_Get(JsHandle);
extern (C) void HTMLScriptElement_noModule_Set(JsHandle, bool);
extern (C) bool HTMLScriptElement_noModule_Get(JsHandle);
extern (C) void HTMLScriptElement_async_Set(JsHandle, bool);
extern (C) bool HTMLScriptElement_async_Get(JsHandle);
extern (C) void HTMLScriptElement_defer_Set(JsHandle, bool);
extern (C) bool HTMLScriptElement_defer_Get(JsHandle);
extern (C) void HTMLScriptElement_crossOrigin_Set(JsHandle, bool, string);
extern (C) Optional!(string) HTMLScriptElement_crossOrigin_Get(JsHandle);
extern (C) void HTMLScriptElement_text_Set(JsHandle, string);
extern (C) string HTMLScriptElement_text_Get(JsHandle);
extern (C) void HTMLScriptElement_integrity_Set(JsHandle, string);
extern (C) string HTMLScriptElement_integrity_Get(JsHandle);
extern (C) void HTMLScriptElement_referrerPolicy_Set(JsHandle, string);
extern (C) string HTMLScriptElement_referrerPolicy_Get(JsHandle);
extern (C) void HTMLScriptElement_charset_Set(JsHandle, string);
extern (C) string HTMLScriptElement_charset_Get(JsHandle);
extern (C) void HTMLScriptElement_event_Set(JsHandle, string);
extern (C) string HTMLScriptElement_event_Get(JsHandle);
extern (C) void HTMLScriptElement_htmlFor_Set(JsHandle, string);
extern (C) string HTMLScriptElement_htmlFor_Get(JsHandle);
extern (C) void HTMLSelectElement_autocomplete_Set(JsHandle, string);
extern (C) string HTMLSelectElement_autocomplete_Get(JsHandle);
extern (C) void HTMLSelectElement_autofocus_Set(JsHandle, bool);
extern (C) bool HTMLSelectElement_autofocus_Get(JsHandle);
extern (C) void HTMLSelectElement_disabled_Set(JsHandle, bool);
extern (C) bool HTMLSelectElement_disabled_Get(JsHandle);
extern (C) Optional!(HTMLFormElement) HTMLSelectElement_form_Get(JsHandle);
extern (C) void HTMLSelectElement_multiple_Set(JsHandle, bool);
extern (C) bool HTMLSelectElement_multiple_Get(JsHandle);
extern (C) void HTMLSelectElement_name_Set(JsHandle, string);
extern (C) string HTMLSelectElement_name_Get(JsHandle);
extern (C) void HTMLSelectElement_required_Set(JsHandle, bool);
extern (C) bool HTMLSelectElement_required_Get(JsHandle);
extern (C) void HTMLSelectElement_size_Set(JsHandle, uint);
extern (C) uint HTMLSelectElement_size_Get(JsHandle);
extern (C) string HTMLSelectElement_type_Get(JsHandle);
extern (C) JsHandle HTMLSelectElement_options_Get(JsHandle);
extern (C) void HTMLSelectElement_length_Set(JsHandle, uint);
extern (C) uint HTMLSelectElement_length_Get(JsHandle);
extern (C) Optional!(Element) HTMLSelectElement_item_getter(JsHandle, uint);
extern (C) Optional!(HTMLOptionElement) HTMLSelectElement_namedItem(JsHandle, string);
extern (C) void HTMLSelectElement_add(JsHandle, SumType!(HTMLOptionElement, HTMLOptGroupElement), bool, SumType!(HTMLElement, int));
extern (C) void HTMLSelectElement_remove__(JsHandle);
extern (C) void HTMLSelectElement_remove__int(JsHandle, int);
extern (C) void HTMLSelectElement_setter__uint_optional_JsHandle(JsHandle, uint, bool, JsHandle);
extern (C) JsHandle HTMLSelectElement_selectedOptions_Get(JsHandle);
extern (C) void HTMLSelectElement_selectedIndex_Set(JsHandle, int);
extern (C) int HTMLSelectElement_selectedIndex_Get(JsHandle);
extern (C) void HTMLSelectElement_value_Set(JsHandle, string);
extern (C) string HTMLSelectElement_value_Get(JsHandle);
extern (C) bool HTMLSelectElement_willValidate_Get(JsHandle);
extern (C) JsHandle HTMLSelectElement_validity_Get(JsHandle);
extern (C) string HTMLSelectElement_validationMessage_Get(JsHandle);
extern (C) bool HTMLSelectElement_checkValidity(JsHandle);
extern (C) bool HTMLSelectElement_reportValidity(JsHandle);
extern (C) void HTMLSelectElement_setCustomValidity(JsHandle, string);
extern (C) JsHandle HTMLSelectElement_labels_Get(JsHandle);
extern (C) void HTMLSlotElement_name_Set(JsHandle, string);
extern (C) string HTMLSlotElement_name_Get(JsHandle);
extern (C) JsHandle HTMLSlotElement_assignedNodes(JsHandle, JsHandle);
extern (C) JsHandle HTMLSlotElement_assignedElements(JsHandle, JsHandle);
extern (C) void HTMLSourceElement_src_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLSourceElement_src_Get(JsHandle);
extern (C) void HTMLSourceElement_type_Set(JsHandle, string);
extern (C) string HTMLSourceElement_type_Get(JsHandle);
extern (C) void HTMLSourceElement_srcset_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLSourceElement_srcset_Get(JsHandle);
extern (C) void HTMLSourceElement_sizes_Set(JsHandle, string);
extern (C) string HTMLSourceElement_sizes_Get(JsHandle);
extern (C) void HTMLSourceElement_media_Set(JsHandle, string);
extern (C) string HTMLSourceElement_media_Get(JsHandle);
extern (C) void HTMLStyleElement_media_Set(JsHandle, string);
extern (C) string HTMLStyleElement_media_Get(JsHandle);
extern (C) void HTMLStyleElement_type_Set(JsHandle, string);
extern (C) string HTMLStyleElement_type_Get(JsHandle);
extern (C) Optional!(StyleSheet) LinkStyle_sheet_Get(JsHandle);
extern (C) void HTMLTableCaptionElement_align_Set(JsHandle, string);
extern (C) string HTMLTableCaptionElement_align_Get(JsHandle);
extern (C) void HTMLTableCellElement_colSpan_Set(JsHandle, uint);
extern (C) uint HTMLTableCellElement_colSpan_Get(JsHandle);
extern (C) void HTMLTableCellElement_rowSpan_Set(JsHandle, uint);
extern (C) uint HTMLTableCellElement_rowSpan_Get(JsHandle);
extern (C) void HTMLTableCellElement_headers_Set(JsHandle, string);
extern (C) string HTMLTableCellElement_headers_Get(JsHandle);
extern (C) int HTMLTableCellElement_cellIndex_Get(JsHandle);
extern (C) void HTMLTableCellElement_scope_Set(JsHandle, string);
extern (C) string HTMLTableCellElement_scope_Get(JsHandle);
extern (C) void HTMLTableCellElement_abbr_Set(JsHandle, string);
extern (C) string HTMLTableCellElement_abbr_Get(JsHandle);
extern (C) void HTMLTableCellElement_align_Set(JsHandle, string);
extern (C) string HTMLTableCellElement_align_Get(JsHandle);
extern (C) void HTMLTableCellElement_axis_Set(JsHandle, string);
extern (C) string HTMLTableCellElement_axis_Get(JsHandle);
extern (C) void HTMLTableCellElement_height_Set(JsHandle, string);
extern (C) string HTMLTableCellElement_height_Get(JsHandle);
extern (C) void HTMLTableCellElement_width_Set(JsHandle, string);
extern (C) string HTMLTableCellElement_width_Get(JsHandle);
extern (C) void HTMLTableCellElement_ch_Set(JsHandle, string);
extern (C) string HTMLTableCellElement_ch_Get(JsHandle);
extern (C) void HTMLTableCellElement_chOff_Set(JsHandle, string);
extern (C) string HTMLTableCellElement_chOff_Get(JsHandle);
extern (C) void HTMLTableCellElement_noWrap_Set(JsHandle, bool);
extern (C) bool HTMLTableCellElement_noWrap_Get(JsHandle);
extern (C) void HTMLTableCellElement_vAlign_Set(JsHandle, string);
extern (C) string HTMLTableCellElement_vAlign_Get(JsHandle);
extern (C) void HTMLTableCellElement_bgColor_Set(JsHandle, string);
extern (C) string HTMLTableCellElement_bgColor_Get(JsHandle);
extern (C) void HTMLTableColElement_span_Set(JsHandle, uint);
extern (C) uint HTMLTableColElement_span_Get(JsHandle);
extern (C) void HTMLTableColElement_align_Set(JsHandle, string);
extern (C) string HTMLTableColElement_align_Get(JsHandle);
extern (C) void HTMLTableColElement_ch_Set(JsHandle, string);
extern (C) string HTMLTableColElement_ch_Get(JsHandle);
extern (C) void HTMLTableColElement_chOff_Set(JsHandle, string);
extern (C) string HTMLTableColElement_chOff_Get(JsHandle);
extern (C) void HTMLTableColElement_vAlign_Set(JsHandle, string);
extern (C) string HTMLTableColElement_vAlign_Get(JsHandle);
extern (C) void HTMLTableColElement_width_Set(JsHandle, string);
extern (C) string HTMLTableColElement_width_Get(JsHandle);
extern (C) void HTMLTableElement_caption_Set(JsHandle, bool, JsHandle);
extern (C) Optional!(HTMLTableCaptionElement) HTMLTableElement_caption_Get(JsHandle);
extern (C) JsHandle HTMLTableElement_createCaption(JsHandle);
extern (C) void HTMLTableElement_deleteCaption(JsHandle);
extern (C) void HTMLTableElement_tHead_Set(JsHandle, bool, JsHandle);
extern (C) Optional!(HTMLTableSectionElement) HTMLTableElement_tHead_Get(JsHandle);
extern (C) JsHandle HTMLTableElement_createTHead(JsHandle);
extern (C) void HTMLTableElement_deleteTHead(JsHandle);
extern (C) void HTMLTableElement_tFoot_Set(JsHandle, bool, JsHandle);
extern (C) Optional!(HTMLTableSectionElement) HTMLTableElement_tFoot_Get(JsHandle);
extern (C) JsHandle HTMLTableElement_createTFoot(JsHandle);
extern (C) void HTMLTableElement_deleteTFoot(JsHandle);
extern (C) JsHandle HTMLTableElement_tBodies_Get(JsHandle);
extern (C) JsHandle HTMLTableElement_createTBody(JsHandle);
extern (C) JsHandle HTMLTableElement_rows_Get(JsHandle);
extern (C) JsHandle HTMLTableElement_insertRow(JsHandle, int);
extern (C) void HTMLTableElement_deleteRow(JsHandle, int);
extern (C) void HTMLTableElement_align_Set(JsHandle, string);
extern (C) string HTMLTableElement_align_Get(JsHandle);
extern (C) void HTMLTableElement_border_Set(JsHandle, string);
extern (C) string HTMLTableElement_border_Get(JsHandle);
extern (C) void HTMLTableElement_frame_Set(JsHandle, string);
extern (C) string HTMLTableElement_frame_Get(JsHandle);
extern (C) void HTMLTableElement_rules_Set(JsHandle, string);
extern (C) string HTMLTableElement_rules_Get(JsHandle);
extern (C) void HTMLTableElement_summary_Set(JsHandle, string);
extern (C) string HTMLTableElement_summary_Get(JsHandle);
extern (C) void HTMLTableElement_width_Set(JsHandle, string);
extern (C) string HTMLTableElement_width_Get(JsHandle);
extern (C) void HTMLTableElement_bgColor_Set(JsHandle, string);
extern (C) string HTMLTableElement_bgColor_Get(JsHandle);
extern (C) void HTMLTableElement_cellPadding_Set(JsHandle, string);
extern (C) string HTMLTableElement_cellPadding_Get(JsHandle);
extern (C) void HTMLTableElement_cellSpacing_Set(JsHandle, string);
extern (C) string HTMLTableElement_cellSpacing_Get(JsHandle);
extern (C) int HTMLTableRowElement_rowIndex_Get(JsHandle);
extern (C) int HTMLTableRowElement_sectionRowIndex_Get(JsHandle);
extern (C) JsHandle HTMLTableRowElement_cells_Get(JsHandle);
extern (C) JsHandle HTMLTableRowElement_insertCell(JsHandle, int);
extern (C) void HTMLTableRowElement_deleteCell(JsHandle, int);
extern (C) void HTMLTableRowElement_align_Set(JsHandle, string);
extern (C) string HTMLTableRowElement_align_Get(JsHandle);
extern (C) void HTMLTableRowElement_ch_Set(JsHandle, string);
extern (C) string HTMLTableRowElement_ch_Get(JsHandle);
extern (C) void HTMLTableRowElement_chOff_Set(JsHandle, string);
extern (C) string HTMLTableRowElement_chOff_Get(JsHandle);
extern (C) void HTMLTableRowElement_vAlign_Set(JsHandle, string);
extern (C) string HTMLTableRowElement_vAlign_Get(JsHandle);
extern (C) void HTMLTableRowElement_bgColor_Set(JsHandle, string);
extern (C) string HTMLTableRowElement_bgColor_Get(JsHandle);
extern (C) JsHandle HTMLTableSectionElement_rows_Get(JsHandle);
extern (C) JsHandle HTMLTableSectionElement_insertRow(JsHandle, int);
extern (C) void HTMLTableSectionElement_deleteRow(JsHandle, int);
extern (C) void HTMLTableSectionElement_align_Set(JsHandle, string);
extern (C) string HTMLTableSectionElement_align_Get(JsHandle);
extern (C) void HTMLTableSectionElement_ch_Set(JsHandle, string);
extern (C) string HTMLTableSectionElement_ch_Get(JsHandle);
extern (C) void HTMLTableSectionElement_chOff_Set(JsHandle, string);
extern (C) string HTMLTableSectionElement_chOff_Get(JsHandle);
extern (C) void HTMLTableSectionElement_vAlign_Set(JsHandle, string);
extern (C) string HTMLTableSectionElement_vAlign_Get(JsHandle);
extern (C) JsHandle HTMLTemplateElement_content_Get(JsHandle);
extern (C) void HTMLTextAreaElement_autocomplete_Set(JsHandle, string);
extern (C) string HTMLTextAreaElement_autocomplete_Get(JsHandle);
extern (C) void HTMLTextAreaElement_autofocus_Set(JsHandle, bool);
extern (C) bool HTMLTextAreaElement_autofocus_Get(JsHandle);
extern (C) void HTMLTextAreaElement_cols_Set(JsHandle, uint);
extern (C) uint HTMLTextAreaElement_cols_Get(JsHandle);
extern (C) void HTMLTextAreaElement_dirName_Set(JsHandle, string);
extern (C) string HTMLTextAreaElement_dirName_Get(JsHandle);
extern (C) void HTMLTextAreaElement_disabled_Set(JsHandle, bool);
extern (C) bool HTMLTextAreaElement_disabled_Get(JsHandle);
extern (C) Optional!(HTMLFormElement) HTMLTextAreaElement_form_Get(JsHandle);
extern (C) void HTMLTextAreaElement_maxLength_Set(JsHandle, int);
extern (C) int HTMLTextAreaElement_maxLength_Get(JsHandle);
extern (C) void HTMLTextAreaElement_minLength_Set(JsHandle, int);
extern (C) int HTMLTextAreaElement_minLength_Get(JsHandle);
extern (C) void HTMLTextAreaElement_name_Set(JsHandle, string);
extern (C) string HTMLTextAreaElement_name_Get(JsHandle);
extern (C) void HTMLTextAreaElement_placeholder_Set(JsHandle, string);
extern (C) string HTMLTextAreaElement_placeholder_Get(JsHandle);
extern (C) void HTMLTextAreaElement_readOnly_Set(JsHandle, bool);
extern (C) bool HTMLTextAreaElement_readOnly_Get(JsHandle);
extern (C) void HTMLTextAreaElement_required_Set(JsHandle, bool);
extern (C) bool HTMLTextAreaElement_required_Get(JsHandle);
extern (C) void HTMLTextAreaElement_rows_Set(JsHandle, uint);
extern (C) uint HTMLTextAreaElement_rows_Get(JsHandle);
extern (C) void HTMLTextAreaElement_wrap_Set(JsHandle, string);
extern (C) string HTMLTextAreaElement_wrap_Get(JsHandle);
extern (C) string HTMLTextAreaElement_type_Get(JsHandle);
extern (C) void HTMLTextAreaElement_defaultValue_Set(JsHandle, string);
extern (C) string HTMLTextAreaElement_defaultValue_Get(JsHandle);
extern (C) void HTMLTextAreaElement_value_Set(JsHandle, string);
extern (C) string HTMLTextAreaElement_value_Get(JsHandle);
extern (C) uint HTMLTextAreaElement_textLength_Get(JsHandle);
extern (C) bool HTMLTextAreaElement_willValidate_Get(JsHandle);
extern (C) JsHandle HTMLTextAreaElement_validity_Get(JsHandle);
extern (C) string HTMLTextAreaElement_validationMessage_Get(JsHandle);
extern (C) bool HTMLTextAreaElement_checkValidity(JsHandle);
extern (C) bool HTMLTextAreaElement_reportValidity(JsHandle);
extern (C) void HTMLTextAreaElement_setCustomValidity(JsHandle, string);
extern (C) JsHandle HTMLTextAreaElement_labels_Get(JsHandle);
extern (C) void HTMLTextAreaElement_select(JsHandle);
extern (C) void HTMLTextAreaElement_selectionStart_Set(JsHandle, uint);
extern (C) uint HTMLTextAreaElement_selectionStart_Get(JsHandle);
extern (C) void HTMLTextAreaElement_selectionEnd_Set(JsHandle, uint);
extern (C) uint HTMLTextAreaElement_selectionEnd_Get(JsHandle);
extern (C) void HTMLTextAreaElement_selectionDirection_Set(JsHandle, string);
extern (C) string HTMLTextAreaElement_selectionDirection_Get(JsHandle);
extern (C) void HTMLTextAreaElement_setRangeText__string(JsHandle, string);
extern (C) void HTMLTextAreaElement_setRangeText__string_uint_uint_SelectionMode(JsHandle, string, uint, uint, SelectionMode);
extern (C) void HTMLTextAreaElement_setSelectionRange(JsHandle, uint, uint, string);
extern (C) void HTMLTimeElement_dateTime_Set(JsHandle, string);
extern (C) string HTMLTimeElement_dateTime_Get(JsHandle);
extern (C) void HTMLTitleElement_text_Set(JsHandle, string);
extern (C) string HTMLTitleElement_text_Get(JsHandle);
extern (C) void HTMLTrackElement_kind_Set(JsHandle, string);
extern (C) string HTMLTrackElement_kind_Get(JsHandle);
extern (C) void HTMLTrackElement_src_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLTrackElement_src_Get(JsHandle);
extern (C) void HTMLTrackElement_srclang_Set(JsHandle, string);
extern (C) string HTMLTrackElement_srclang_Get(JsHandle);
extern (C) void HTMLTrackElement_label_Set(JsHandle, string);
extern (C) string HTMLTrackElement_label_Get(JsHandle);
extern (C) void HTMLTrackElement_default_Set(JsHandle, bool);
extern (C) bool HTMLTrackElement_default_Get(JsHandle);
extern (C) ushort HTMLTrackElement_readyState_Get(JsHandle);
extern (C) JsHandle HTMLTrackElement_track_Get(JsHandle);
extern (C) void HTMLUListElement_compact_Set(JsHandle, bool);
extern (C) bool HTMLUListElement_compact_Get(JsHandle);
extern (C) void HTMLUListElement_type_Set(JsHandle, string);
extern (C) string HTMLUListElement_type_Get(JsHandle);
extern (C) void HTMLVideoElement_width_Set(JsHandle, uint);
extern (C) uint HTMLVideoElement_width_Get(JsHandle);
extern (C) void HTMLVideoElement_height_Set(JsHandle, uint);
extern (C) uint HTMLVideoElement_height_Get(JsHandle);
extern (C) uint HTMLVideoElement_videoWidth_Get(JsHandle);
extern (C) uint HTMLVideoElement_videoHeight_Get(JsHandle);
extern (C) void HTMLVideoElement_poster_Set(JsHandle, JsHandle);
extern (C) JsHandle HTMLVideoElement_poster_Get(JsHandle);
extern (C) void HTMLVideoElement_playsInline_Set(JsHandle, bool);
extern (C) bool HTMLVideoElement_playsInline_Get(JsHandle);
extern (C) JsHandle HashChangeEvent_oldURL_Get(JsHandle);
extern (C) JsHandle HashChangeEvent_newURL_Get(JsHandle);
extern (C) void HashChangeEventInit_oldURL_Set(JsHandle, JsHandle);
extern (C) JsHandle HashChangeEventInit_oldURL_Get(JsHandle);
extern (C) void HashChangeEventInit_newURL_Set(JsHandle, JsHandle);
extern (C) JsHandle HashChangeEventInit_newURL_Get(JsHandle);
extern (C) uint History_length_Get(JsHandle);
extern (C) void History_scrollRestoration_Set(JsHandle, ScrollRestoration);
extern (C) ScrollRestoration History_scrollRestoration_Get(JsHandle);
extern (C) JsHandle History_state_Get(JsHandle);
extern (C) void History_go(JsHandle, int);
extern (C) void History_back(JsHandle);
extern (C) void History_forward(JsHandle);
extern (C) void History_pushState(JsHandle, Any, string, bool, JsHandle);
extern (C) void History_replaceState(JsHandle, Any, string, bool, JsHandle);
extern (C) uint ImageBitmap_width_Get(JsHandle);
extern (C) uint ImageBitmap_height_Get(JsHandle);
extern (C) void ImageBitmap_close(JsHandle);
extern (C) void ImageBitmapOptions_imageOrientation_Set(JsHandle, ImageOrientation);
extern (C) ImageOrientation ImageBitmapOptions_imageOrientation_Get(JsHandle);
extern (C) void ImageBitmapOptions_premultiplyAlpha_Set(JsHandle, PremultiplyAlpha);
extern (C) PremultiplyAlpha ImageBitmapOptions_premultiplyAlpha_Get(JsHandle);
extern (C) void ImageBitmapOptions_colorSpaceConversion_Set(JsHandle, ColorSpaceConversion);
extern (C) ColorSpaceConversion ImageBitmapOptions_colorSpaceConversion_Get(JsHandle);
extern (C) void ImageBitmapOptions_resizeWidth_Set(JsHandle, uint);
extern (C) uint ImageBitmapOptions_resizeWidth_Get(JsHandle);
extern (C) void ImageBitmapOptions_resizeHeight_Set(JsHandle, uint);
extern (C) uint ImageBitmapOptions_resizeHeight_Get(JsHandle);
extern (C) void ImageBitmapOptions_resizeQuality_Set(JsHandle, ResizeQuality);
extern (C) ResizeQuality ImageBitmapOptions_resizeQuality_Get(JsHandle);
extern (C) JsHandle ImageBitmapRenderingContext_canvas_Get(JsHandle);
extern (C) void ImageBitmapRenderingContext_transferFromImageBitmap(JsHandle, bool, JsHandle);
extern (C) void ImageBitmapRenderingContextSettings_alpha_Set(JsHandle, bool);
extern (C) bool ImageBitmapRenderingContextSettings_alpha_Get(JsHandle);
extern (C) uint ImageData_width_Get(JsHandle);
extern (C) uint ImageData_height_Get(JsHandle);
extern (C) JsHandle ImageData_data_Get(JsHandle);
extern (C) void ImageEncodeOptions_type_Set(JsHandle, string);
extern (C) string ImageEncodeOptions_type_Get(JsHandle);
extern (C) void ImageEncodeOptions_quality_Set(JsHandle, double);
extern (C) double ImageEncodeOptions_quality_Get(JsHandle);
extern (C) void Location_href_Set(JsHandle, JsHandle);
extern (C) JsHandle Location_href_Get(JsHandle);
extern (C) JsHandle Location_origin_Get(JsHandle);
extern (C) void Location_protocol_Set(JsHandle, JsHandle);
extern (C) JsHandle Location_protocol_Get(JsHandle);
extern (C) void Location_host_Set(JsHandle, JsHandle);
extern (C) JsHandle Location_host_Get(JsHandle);
extern (C) void Location_hostname_Set(JsHandle, JsHandle);
extern (C) JsHandle Location_hostname_Get(JsHandle);
extern (C) void Location_port_Set(JsHandle, JsHandle);
extern (C) JsHandle Location_port_Get(JsHandle);
extern (C) void Location_pathname_Set(JsHandle, JsHandle);
extern (C) JsHandle Location_pathname_Get(JsHandle);
extern (C) void Location_search_Set(JsHandle, JsHandle);
extern (C) JsHandle Location_search_Get(JsHandle);
extern (C) void Location_hash_Set(JsHandle, JsHandle);
extern (C) JsHandle Location_hash_Get(JsHandle);
extern (C) void Location_assign(JsHandle, JsHandle);
extern (C) void Location_replace(JsHandle, JsHandle);
extern (C) void Location_reload(JsHandle);
extern (C) JsHandle Location_ancestorOrigins_Get(JsHandle);
extern (C) ushort MediaError_code_Get(JsHandle);
extern (C) string MediaError_message_Get(JsHandle);
extern (C) JsHandle MessageChannel_port1_Get(JsHandle);
extern (C) JsHandle MessageChannel_port2_Get(JsHandle);
extern (C) JsHandle MessageEvent_data_Get(JsHandle);
extern (C) JsHandle MessageEvent_origin_Get(JsHandle);
extern (C) string MessageEvent_lastEventId_Get(JsHandle);
extern (C) Optional!(MessageEventSource) MessageEvent_source_Get(JsHandle);
extern (C) JsHandle MessageEvent_ports_Get(JsHandle);
extern (C) void MessageEvent_initMessageEvent(JsHandle, string, bool, bool, Any, JsHandle, string, bool, MessageEventSource, JsHandle);
extern (C) void MessageEventInit_data_Set(JsHandle, Any);
extern (C) JsHandle MessageEventInit_data_Get(JsHandle);
extern (C) void MessageEventInit_origin_Set(JsHandle, JsHandle);
extern (C) JsHandle MessageEventInit_origin_Get(JsHandle);
extern (C) void MessageEventInit_lastEventId_Set(JsHandle, string);
extern (C) string MessageEventInit_lastEventId_Get(JsHandle);
extern (C) void MessageEventInit_source_Set(JsHandle, bool, MessageEventSource);
extern (C) Optional!(MessageEventSource) MessageEventInit_source_Get(JsHandle);
extern (C) void MessageEventInit_ports_Set(JsHandle, JsHandle);
extern (C) JsHandle MessageEventInit_ports_Get(JsHandle);
extern (C) void MessagePort_postMessage__any_sequence_object(JsHandle, Any, JsHandle);
extern (C) void MessagePort_postMessage__any_JsHandle(JsHandle, Any, JsHandle);
extern (C) void MessagePort_start(JsHandle);
extern (C) void MessagePort_close(JsHandle);
extern (C) void MessagePort_onmessage_Set(JsHandle, EventHandler);
extern (C) EventHandler MessagePort_onmessage_Get(JsHandle);
extern (C) void MessagePort_onmessageerror_Set(JsHandle, EventHandler);
extern (C) EventHandler MessagePort_onmessageerror_Get(JsHandle);
extern (C) string MimeType_type_Get(JsHandle);
extern (C) string MimeType_description_Get(JsHandle);
extern (C) string MimeType_suffixes_Get(JsHandle);
extern (C) JsHandle MimeType_enabledPlugin_Get(JsHandle);
extern (C) uint MimeTypeArray_length_Get(JsHandle);
extern (C) Optional!(MimeType) MimeTypeArray_item_getter(JsHandle, uint);
extern (C) Optional!(MimeType) MimeTypeArray_namedItem_getter(JsHandle, string);
extern (C) int Navigator_maxTouchPoints_Get(JsHandle);
extern (C) JsHandle Navigator_clipboard_Get(JsHandle);
extern (C) ulong NavigatorConcurrentHardware_hardwareConcurrency_Get(JsHandle);
extern (C) JsHandle NavigatorPlugins_plugins_Get(JsHandle);
extern (C) JsHandle NavigatorPlugins_mimeTypes_Get(JsHandle);
extern (C) bool NavigatorPlugins_javaEnabled(JsHandle);
extern (C) bool NavigatorCookies_cookieEnabled_Get(JsHandle);
extern (C) void NavigatorContentUtils_registerProtocolHandler(JsHandle, string, JsHandle, string);
extern (C) void NavigatorContentUtils_unregisterProtocolHandler(JsHandle, string, JsHandle);
extern (C) bool NavigatorOnLine_onLine_Get(JsHandle);
extern (C) string NavigatorLanguage_language_Get(JsHandle);
extern (C) JsHandle NavigatorLanguage_languages_Get(JsHandle);
extern (C) string NavigatorID_appCodeName_Get(JsHandle);
extern (C) string NavigatorID_appName_Get(JsHandle);
extern (C) string NavigatorID_appVersion_Get(JsHandle);
extern (C) string NavigatorID_platform_Get(JsHandle);
extern (C) string NavigatorID_product_Get(JsHandle);
extern (C) string NavigatorID_productSub_Get(JsHandle);
extern (C) string NavigatorID_userAgent_Get(JsHandle);
extern (C) string NavigatorID_vendor_Get(JsHandle);
extern (C) string NavigatorID_vendorSub_Get(JsHandle);
extern (C) bool NavigatorID_taintEnabled(JsHandle);
extern (C) string NavigatorID_oscpu_Get(JsHandle);
extern (C) void OffscreenCanvas_width_Set(JsHandle, ulong);
extern (C) ulong OffscreenCanvas_width_Get(JsHandle);
extern (C) void OffscreenCanvas_height_Set(JsHandle, ulong);
extern (C) ulong OffscreenCanvas_height_Get(JsHandle);
extern (C) Optional!(OffscreenRenderingContext) OffscreenCanvas_getContext(JsHandle, OffscreenRenderingContextId, Any);
extern (C) JsHandle OffscreenCanvas_transferToImageBitmap(JsHandle);
extern (C) JsHandle OffscreenCanvas_convertToBlob(JsHandle, JsHandle);
extern (C) void OffscreenCanvasRenderingContext2D_commit(JsHandle);
extern (C) JsHandle OffscreenCanvasRenderingContext2D_canvas_Get(JsHandle);
extern (C) void CanvasPath_closePath(JsHandle);
extern (C) void CanvasPath_moveTo(JsHandle, double, double);
extern (C) void CanvasPath_lineTo(JsHandle, double, double);
extern (C) void CanvasPath_quadraticCurveTo(JsHandle, double, double, double, double);
extern (C) void CanvasPath_bezierCurveTo(JsHandle, double, double, double, double, double, double);
extern (C) void CanvasPath_arcTo(JsHandle, double, double, double, double, double);
extern (C) void CanvasPath_rect(JsHandle, double, double, double, double);
extern (C) void CanvasPath_arc(JsHandle, double, double, double, double, double, bool);
extern (C) void CanvasPath_ellipse(JsHandle, double, double, double, double, double, double, double, bool);
extern (C) void CanvasPathDrawingStyles_setLineDash(JsHandle, JsHandle);
extern (C) JsHandle CanvasPathDrawingStyles_getLineDash(JsHandle);
extern (C) JsHandle CanvasImageData_createImageData(JsHandle, int, int);
extern (C) JsHandle CanvasImageData_createImageData(JsHandle, JsHandle);
extern (C) JsHandle CanvasImageData_getImageData(JsHandle, int, int, int, int);
extern (C) void CanvasImageData_putImageData(JsHandle, JsHandle, int, int);
extern (C) void CanvasImageData_putImageData(JsHandle, JsHandle, int, int, int, int, int, int);
extern (C) void CanvasDrawImage_drawImage(JsHandle, CanvasImageSource, double, double);
extern (C) void CanvasDrawImage_drawImage(JsHandle, CanvasImageSource, double, double, double, double);
extern (C) void CanvasDrawImage_drawImage(JsHandle, CanvasImageSource, double, double, double, double, double, double, double, double);
extern (C) void CanvasText_fillText(JsHandle, string, double, double, double);
extern (C) void CanvasText_strokeText(JsHandle, string, double, double, double);
extern (C) JsHandle CanvasText_measureText(JsHandle, string);
extern (C) void CanvasDrawPath_beginPath(JsHandle);
extern (C) void CanvasDrawPath_fill(JsHandle, CanvasFillRule);
extern (C) void CanvasDrawPath_fill(JsHandle, JsHandle, CanvasFillRule);
extern (C) void CanvasDrawPath_stroke(JsHandle);
extern (C) void CanvasDrawPath_stroke(JsHandle, JsHandle);
extern (C) void CanvasDrawPath_clip(JsHandle, CanvasFillRule);
extern (C) void CanvasDrawPath_clip(JsHandle, JsHandle, CanvasFillRule);
extern (C) bool CanvasDrawPath_isPointInPath(JsHandle, double, double, CanvasFillRule);
extern (C) bool CanvasDrawPath_isPointInPath(JsHandle, JsHandle, double, double, CanvasFillRule);
extern (C) bool CanvasDrawPath_isPointInStroke(JsHandle, double, double);
extern (C) bool CanvasDrawPath_isPointInStroke(JsHandle, JsHandle, double, double);
extern (C) void CanvasRect_clearRect(JsHandle, double, double, double, double);
extern (C) void CanvasRect_fillRect(JsHandle, double, double, double, double);
extern (C) void CanvasRect_strokeRect(JsHandle, double, double, double, double);
extern (C) JsHandle CanvasFillStrokeStyles_createLinearGradient(JsHandle, double, double, double, double);
extern (C) JsHandle CanvasFillStrokeStyles_createRadialGradient(JsHandle, double, double, double, double, double, double);
extern (C) Optional!(CanvasPattern) CanvasFillStrokeStyles_createPattern(JsHandle, CanvasImageSource, string);
extern (C) void CanvasTransform_scale(JsHandle, double, double);
extern (C) void CanvasTransform_rotate(JsHandle, double);
extern (C) void CanvasTransform_translate(JsHandle, double, double);
extern (C) void CanvasTransform_transform(JsHandle, double, double, double, double, double, double);
extern (C) JsHandle CanvasTransform_getTransform(JsHandle);
extern (C) void CanvasTransform_setTransform(JsHandle, double, double, double, double, double, double);
extern (C) void CanvasTransform_setTransform(JsHandle, JsHandle);
extern (C) void CanvasTransform_resetTransform(JsHandle);
extern (C) void CanvasState_save(JsHandle);
extern (C) void CanvasState_restore(JsHandle);
extern (C) bool PageTransitionEvent_persisted_Get(JsHandle);
extern (C) void PageTransitionEventInit_persisted_Set(JsHandle, bool);
extern (C) bool PageTransitionEventInit_persisted_Get(JsHandle);
extern (C) void Path2D_addPath(JsHandle, JsHandle, JsHandle);
extern (C) void CanvasPath_closePath(JsHandle);
extern (C) void CanvasPath_moveTo(JsHandle, double, double);
extern (C) void CanvasPath_lineTo(JsHandle, double, double);
extern (C) void CanvasPath_quadraticCurveTo(JsHandle, double, double, double, double);
extern (C) void CanvasPath_bezierCurveTo(JsHandle, double, double, double, double, double, double);
extern (C) void CanvasPath_arcTo(JsHandle, double, double, double, double, double);
extern (C) void CanvasPath_rect(JsHandle, double, double, double, double);
extern (C) void CanvasPath_arc(JsHandle, double, double, double, double, double, bool);
extern (C) void CanvasPath_ellipse(JsHandle, double, double, double, double, double, double, double, bool);
extern (C) string Plugin_name_Get(JsHandle);
extern (C) string Plugin_description_Get(JsHandle);
extern (C) string Plugin_filename_Get(JsHandle);
extern (C) uint Plugin_length_Get(JsHandle);
extern (C) Optional!(MimeType) Plugin_item_getter(JsHandle, uint);
extern (C) Optional!(MimeType) Plugin_namedItem_getter(JsHandle, string);
extern (C) void PluginArray_refresh(JsHandle, bool);
extern (C) uint PluginArray_length_Get(JsHandle);
extern (C) Optional!(Plugin) PluginArray_item_getter(JsHandle, uint);
extern (C) Optional!(Plugin) PluginArray_namedItem_getter(JsHandle, string);
extern (C) JsHandle PopStateEvent_state_Get(JsHandle);
extern (C) void PopStateEventInit_state_Set(JsHandle, Any);
extern (C) JsHandle PopStateEventInit_state_Get(JsHandle);
extern (C) void PostMessageOptions_transfer_Set(JsHandle, JsHandle);
extern (C) JsHandle PostMessageOptions_transfer_Get(JsHandle);
extern (C) JsHandle PromiseRejectionEvent_promise_Get(JsHandle);
extern (C) JsHandle PromiseRejectionEvent_reason_Get(JsHandle);
extern (C) void PromiseRejectionEventInit_promise_Set(JsHandle, JsHandle);
extern (C) JsHandle PromiseRejectionEventInit_promise_Get(JsHandle);
extern (C) void PromiseRejectionEventInit_reason_Set(JsHandle, Any);
extern (C) JsHandle PromiseRejectionEventInit_reason_Get(JsHandle);
extern (C) void RadioNodeList_value_Set(JsHandle, string);
extern (C) string RadioNodeList_value_Get(JsHandle);
extern (C) JsHandle SharedWorker_port_Get(JsHandle);
extern (C) string SharedWorkerGlobalScope_name_Get(JsHandle);
extern (C) void SharedWorkerGlobalScope_close(JsHandle);
extern (C) void SharedWorkerGlobalScope_onconnect_Set(JsHandle, EventHandler);
extern (C) EventHandler SharedWorkerGlobalScope_onconnect_Get(JsHandle);
extern (C) uint Storage_length_Get(JsHandle);
extern (C) Optional!(string) Storage_key(JsHandle, uint);
extern (C) Optional!(string) Storage_getItem_getter(JsHandle, string);
extern (C) void Storage_setItem_setter(JsHandle, string, string);
extern (C) void Storage_removeItem(JsHandle, string);
extern (C) void Storage_clear(JsHandle);
extern (C) Optional!(string) StorageEvent_key_Get(JsHandle);
extern (C) Optional!(string) StorageEvent_oldValue_Get(JsHandle);
extern (C) Optional!(string) StorageEvent_newValue_Get(JsHandle);
extern (C) JsHandle StorageEvent_url_Get(JsHandle);
extern (C) Optional!(Storage) StorageEvent_storageArea_Get(JsHandle);
extern (C) void StorageEvent_initStorageEvent(JsHandle, string, bool, bool, bool, string, bool, string, bool, string, JsHandle, bool, JsHandle);
extern (C) void StorageEventInit_key_Set(JsHandle, bool, string);
extern (C) Optional!(string) StorageEventInit_key_Get(JsHandle);
extern (C) void StorageEventInit_oldValue_Set(JsHandle, bool, string);
extern (C) Optional!(string) StorageEventInit_oldValue_Get(JsHandle);
extern (C) void StorageEventInit_newValue_Set(JsHandle, bool, string);
extern (C) Optional!(string) StorageEventInit_newValue_Get(JsHandle);
extern (C) void StorageEventInit_url_Set(JsHandle, JsHandle);
extern (C) JsHandle StorageEventInit_url_Get(JsHandle);
extern (C) void StorageEventInit_storageArea_Set(JsHandle, bool, JsHandle);
extern (C) Optional!(Storage) StorageEventInit_storageArea_Get(JsHandle);
extern (C) double TextMetrics_width_Get(JsHandle);
extern (C) double TextMetrics_actualBoundingBoxLeft_Get(JsHandle);
extern (C) double TextMetrics_actualBoundingBoxRight_Get(JsHandle);
extern (C) double TextMetrics_fontBoundingBoxAscent_Get(JsHandle);
extern (C) double TextMetrics_fontBoundingBoxDescent_Get(JsHandle);
extern (C) double TextMetrics_actualBoundingBoxAscent_Get(JsHandle);
extern (C) double TextMetrics_actualBoundingBoxDescent_Get(JsHandle);
extern (C) double TextMetrics_emHeightAscent_Get(JsHandle);
extern (C) double TextMetrics_emHeightDescent_Get(JsHandle);
extern (C) double TextMetrics_hangingBaseline_Get(JsHandle);
extern (C) double TextMetrics_alphabeticBaseline_Get(JsHandle);
extern (C) double TextMetrics_ideographicBaseline_Get(JsHandle);
extern (C) TextTrackKind TextTrack_kind_Get(JsHandle);
extern (C) string TextTrack_label_Get(JsHandle);
extern (C) string TextTrack_language_Get(JsHandle);
extern (C) string TextTrack_id_Get(JsHandle);
extern (C) string TextTrack_inBandMetadataTrackDispatchType_Get(JsHandle);
extern (C) void TextTrack_mode_Set(JsHandle, TextTrackMode);
extern (C) TextTrackMode TextTrack_mode_Get(JsHandle);
extern (C) Optional!(TextTrackCueList) TextTrack_cues_Get(JsHandle);
extern (C) Optional!(TextTrackCueList) TextTrack_activeCues_Get(JsHandle);
extern (C) void TextTrack_addCue(JsHandle, JsHandle);
extern (C) void TextTrack_removeCue(JsHandle, JsHandle);
extern (C) void TextTrack_oncuechange_Set(JsHandle, EventHandler);
extern (C) EventHandler TextTrack_oncuechange_Get(JsHandle);
extern (C) Optional!(TextTrack) TextTrackCue_track_Get(JsHandle);
extern (C) void TextTrackCue_id_Set(JsHandle, string);
extern (C) string TextTrackCue_id_Get(JsHandle);
extern (C) void TextTrackCue_startTime_Set(JsHandle, double);
extern (C) double TextTrackCue_startTime_Get(JsHandle);
extern (C) void TextTrackCue_endTime_Set(JsHandle, double);
extern (C) double TextTrackCue_endTime_Get(JsHandle);
extern (C) void TextTrackCue_pauseOnExit_Set(JsHandle, bool);
extern (C) bool TextTrackCue_pauseOnExit_Get(JsHandle);
extern (C) void TextTrackCue_onenter_Set(JsHandle, EventHandler);
extern (C) EventHandler TextTrackCue_onenter_Get(JsHandle);
extern (C) void TextTrackCue_onexit_Set(JsHandle, EventHandler);
extern (C) EventHandler TextTrackCue_onexit_Get(JsHandle);
extern (C) uint TextTrackCueList_length_Get(JsHandle);
extern (C) JsHandle TextTrackCueList_getter__uint(JsHandle, uint);
extern (C) Optional!(TextTrackCue) TextTrackCueList_getCueById(JsHandle, string);
extern (C) uint TextTrackList_length_Get(JsHandle);
extern (C) JsHandle TextTrackList_getter__uint(JsHandle, uint);
extern (C) Optional!(TextTrack) TextTrackList_getTrackById(JsHandle, string);
extern (C) void TextTrackList_onchange_Set(JsHandle, EventHandler);
extern (C) EventHandler TextTrackList_onchange_Get(JsHandle);
extern (C) void TextTrackList_onaddtrack_Set(JsHandle, EventHandler);
extern (C) EventHandler TextTrackList_onaddtrack_Get(JsHandle);
extern (C) void TextTrackList_onremovetrack_Set(JsHandle, EventHandler);
extern (C) EventHandler TextTrackList_onremovetrack_Get(JsHandle);
extern (C) uint TimeRanges_length_Get(JsHandle);
extern (C) double TimeRanges_start(JsHandle, uint);
extern (C) double TimeRanges_end(JsHandle, uint);
extern (C) Optional!(SumType!(VideoTrack, AudioTrack, TextTrack)) TrackEvent_track_Get(JsHandle);
extern (C) void TrackEventInit_track_Set(JsHandle, bool, SumType!(VideoTrack, AudioTrack, TextTrack));
extern (C) Optional!(SumType!(VideoTrack, AudioTrack, TextTrack)) TrackEventInit_track_Get(JsHandle);
extern (C) bool ValidityState_valueMissing_Get(JsHandle);
extern (C) bool ValidityState_typeMismatch_Get(JsHandle);
extern (C) bool ValidityState_patternMismatch_Get(JsHandle);
extern (C) bool ValidityState_tooLong_Get(JsHandle);
extern (C) bool ValidityState_tooShort_Get(JsHandle);
extern (C) bool ValidityState_rangeUnderflow_Get(JsHandle);
extern (C) bool ValidityState_rangeOverflow_Get(JsHandle);
extern (C) bool ValidityState_stepMismatch_Get(JsHandle);
extern (C) bool ValidityState_badInput_Get(JsHandle);
extern (C) bool ValidityState_customError_Get(JsHandle);
extern (C) bool ValidityState_valid_Get(JsHandle);
extern (C) string VideoTrack_id_Get(JsHandle);
extern (C) string VideoTrack_kind_Get(JsHandle);
extern (C) string VideoTrack_label_Get(JsHandle);
extern (C) string VideoTrack_language_Get(JsHandle);
extern (C) void VideoTrack_selected_Set(JsHandle, bool);
extern (C) bool VideoTrack_selected_Get(JsHandle);
extern (C) uint VideoTrackList_length_Get(JsHandle);
extern (C) JsHandle VideoTrackList_getter__uint(JsHandle, uint);
extern (C) Optional!(VideoTrack) VideoTrackList_getTrackById(JsHandle, string);
extern (C) int VideoTrackList_selectedIndex_Get(JsHandle);
extern (C) void VideoTrackList_onchange_Set(JsHandle, EventHandler);
extern (C) EventHandler VideoTrackList_onchange_Get(JsHandle);
extern (C) void VideoTrackList_onaddtrack_Set(JsHandle, EventHandler);
extern (C) EventHandler VideoTrackList_onaddtrack_Get(JsHandle);
extern (C) void VideoTrackList_onremovetrack_Set(JsHandle, EventHandler);
extern (C) EventHandler VideoTrackList_onremovetrack_Get(JsHandle);
extern (C) JsHandle WebSocket_url_Get(JsHandle);
extern (C) ushort WebSocket_readyState_Get(JsHandle);
extern (C) ulong WebSocket_bufferedAmount_Get(JsHandle);
extern (C) void WebSocket_onopen_Set(JsHandle, EventHandler);
extern (C) EventHandler WebSocket_onopen_Get(JsHandle);
extern (C) void WebSocket_onerror_Set(JsHandle, EventHandler);
extern (C) EventHandler WebSocket_onerror_Get(JsHandle);
extern (C) void WebSocket_onclose_Set(JsHandle, EventHandler);
extern (C) EventHandler WebSocket_onclose_Get(JsHandle);
extern (C) string WebSocket_extensions_Get(JsHandle);
extern (C) string WebSocket_protocol_Get(JsHandle);
extern (C) void WebSocket_close(JsHandle, ushort, JsHandle);
extern (C) void WebSocket_onmessage_Set(JsHandle, EventHandler);
extern (C) EventHandler WebSocket_onmessage_Get(JsHandle);
extern (C) void WebSocket_binaryType_Set(JsHandle, BinaryType);
extern (C) BinaryType WebSocket_binaryType_Get(JsHandle);
extern (C) void WebSocket_send__string(JsHandle, JsHandle);
extern (C) void WebSocket_send__JsHandle(JsHandle, JsHandle);
extern (C) void WebSocket_send__JsHandle(JsHandle, JsHandle);
extern (C) void WebSocket_send__ArrayBufferView(JsHandle, ArrayBufferView);
extern (C) JsHandle Window_window_Get(JsHandle);
extern (C) JsHandle Window_self_Get(JsHandle);
extern (C) JsHandle Window_document_Get(JsHandle);
extern (C) void Window_name_Set(JsHandle, string);
extern (C) string Window_name_Get(JsHandle);
extern (C) JsHandle Window_location_Get(JsHandle);
extern (C) JsHandle Window_history_Get(JsHandle);
extern (C) JsHandle Window_customElements_Get(JsHandle);
extern (C) JsHandle Window_locationbar_Get(JsHandle);
extern (C) JsHandle Window_menubar_Get(JsHandle);
extern (C) JsHandle Window_personalbar_Get(JsHandle);
extern (C) JsHandle Window_scrollbars_Get(JsHandle);
extern (C) JsHandle Window_statusbar_Get(JsHandle);
extern (C) JsHandle Window_toolbar_Get(JsHandle);
extern (C) void Window_status_Set(JsHandle, string);
extern (C) string Window_status_Get(JsHandle);
extern (C) void Window_close(JsHandle);
extern (C) bool Window_closed_Get(JsHandle);
extern (C) void Window_stop(JsHandle);
extern (C) void Window_focus(JsHandle);
extern (C) void Window_blur(JsHandle);
extern (C) JsHandle Window_frames_Get(JsHandle);
extern (C) uint Window_length_Get(JsHandle);
extern (C) Optional!(WindowProxy) Window_top_Get(JsHandle);
extern (C) void Window_opener_Set(JsHandle, Any);
extern (C) JsHandle Window_opener_Get(JsHandle);
extern (C) Optional!(WindowProxy) Window_parent_Get(JsHandle);
extern (C) Optional!(Element) Window_frameElement_Get(JsHandle);
extern (C) Optional!(WindowProxy) Window_open(JsHandle, JsHandle, string, string);
extern (C) JsHandle Window_getter__string(JsHandle, string);
extern (C) JsHandle Window_navigator_Get(JsHandle);
extern (C) JsHandle Window_applicationCache_Get(JsHandle);
extern (C) void Window_alert__(JsHandle);
extern (C) void Window_alert__string(JsHandle, string);
extern (C) bool Window_confirm(JsHandle, string);
extern (C) Optional!(string) Window_prompt(JsHandle, string, string);
extern (C) void Window_print(JsHandle);
extern (C) void Window_postMessage__any_string_sequence_object(JsHandle, Any, JsHandle, JsHandle);
extern (C) void Window_postMessage__any_JsHandle(JsHandle, Any, JsHandle);
extern (C) JsHandle Window_event_Get(JsHandle);
extern (C) void Window_captureEvents(JsHandle);
extern (C) void Window_releaseEvents(JsHandle);
extern (C) JsHandle Window_external_Get(JsHandle);
extern (C) short Window_orientation_Get(JsHandle);
extern (C) void Window_onorientationchange_Set(JsHandle, EventHandler);
extern (C) EventHandler Window_onorientationchange_Get(JsHandle);
extern (C) JsHandle WindowLocalStorage_localStorage_Get(JsHandle);
extern (C) JsHandle WindowSessionStorage_sessionStorage_Get(JsHandle);
extern (C) uint AnimationFrameProvider_requestAnimationFrame(JsHandle, FrameRequestCallback);
extern (C) void AnimationFrameProvider_cancelAnimationFrame(JsHandle, uint);
extern (C) JsHandle WindowOrWorkerGlobalScope_origin_Get(JsHandle);
extern (C) string WindowOrWorkerGlobalScope_btoa(JsHandle, string);
extern (C) JsHandle WindowOrWorkerGlobalScope_atob(JsHandle, string);
extern (C) int WindowOrWorkerGlobalScope_setTimeout(JsHandle, TimerHandler, int, Any);
extern (C) void WindowOrWorkerGlobalScope_clearTimeout(JsHandle, int);
extern (C) int WindowOrWorkerGlobalScope_setInterval(JsHandle, TimerHandler, int, Any);
extern (C) void WindowOrWorkerGlobalScope_clearInterval(JsHandle, int);
extern (C) void WindowOrWorkerGlobalScope_queueMicrotask(JsHandle, VoidFunction);
extern (C) JsHandle WindowOrWorkerGlobalScope_createImageBitmap(JsHandle, ImageBitmapSource, JsHandle);
extern (C) JsHandle WindowOrWorkerGlobalScope_createImageBitmap(JsHandle, ImageBitmapSource, int, int, int, int, JsHandle);
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
extern (C) void WindowPostMessageOptions_targetOrigin_Set(JsHandle, JsHandle);
extern (C) JsHandle WindowPostMessageOptions_targetOrigin_Get(JsHandle);
extern (C) void Worker_terminate(JsHandle);
extern (C) void Worker_postMessage__any_sequence_object(JsHandle, Any, JsHandle);
extern (C) void Worker_postMessage__any_JsHandle(JsHandle, Any, JsHandle);
extern (C) void Worker_onmessage_Set(JsHandle, EventHandler);
extern (C) EventHandler Worker_onmessage_Get(JsHandle);
extern (C) void Worker_onmessageerror_Set(JsHandle, EventHandler);
extern (C) EventHandler Worker_onmessageerror_Get(JsHandle);
extern (C) JsHandle WorkerGlobalScope_self_Get(JsHandle);
extern (C) JsHandle WorkerGlobalScope_location_Get(JsHandle);
extern (C) JsHandle WorkerGlobalScope_navigator_Get(JsHandle);
extern (C) void WorkerGlobalScope_importScripts(JsHandle, JsHandle);
extern (C) void WorkerGlobalScope_onerror_Set(JsHandle, OnErrorEventHandler);
extern (C) OnErrorEventHandler WorkerGlobalScope_onerror_Get(JsHandle);
extern (C) void WorkerGlobalScope_onlanguagechange_Set(JsHandle, EventHandler);
extern (C) EventHandler WorkerGlobalScope_onlanguagechange_Get(JsHandle);
extern (C) void WorkerGlobalScope_onoffline_Set(JsHandle, EventHandler);
extern (C) EventHandler WorkerGlobalScope_onoffline_Get(JsHandle);
extern (C) void WorkerGlobalScope_ononline_Set(JsHandle, EventHandler);
extern (C) EventHandler WorkerGlobalScope_ononline_Get(JsHandle);
extern (C) void WorkerGlobalScope_onrejectionhandled_Set(JsHandle, EventHandler);
extern (C) EventHandler WorkerGlobalScope_onrejectionhandled_Get(JsHandle);
extern (C) void WorkerGlobalScope_onunhandledrejection_Set(JsHandle, EventHandler);
extern (C) EventHandler WorkerGlobalScope_onunhandledrejection_Get(JsHandle);
extern (C) JsHandle WindowOrWorkerGlobalScope_origin_Get(JsHandle);
extern (C) string WindowOrWorkerGlobalScope_btoa(JsHandle, string);
extern (C) JsHandle WindowOrWorkerGlobalScope_atob(JsHandle, string);
extern (C) int WindowOrWorkerGlobalScope_setTimeout(JsHandle, TimerHandler, int, Any);
extern (C) void WindowOrWorkerGlobalScope_clearTimeout(JsHandle, int);
extern (C) int WindowOrWorkerGlobalScope_setInterval(JsHandle, TimerHandler, int, Any);
extern (C) void WindowOrWorkerGlobalScope_clearInterval(JsHandle, int);
extern (C) void WindowOrWorkerGlobalScope_queueMicrotask(JsHandle, VoidFunction);
extern (C) JsHandle WindowOrWorkerGlobalScope_createImageBitmap(JsHandle, ImageBitmapSource, JsHandle);
extern (C) JsHandle WindowOrWorkerGlobalScope_createImageBitmap(JsHandle, ImageBitmapSource, int, int, int, int, JsHandle);
extern (C) void WorkerLocation_href_Set(JsHandle, JsHandle);
extern (C) JsHandle WorkerLocation_href_Get(JsHandle);
extern (C) JsHandle WorkerLocation_origin_Get(JsHandle);
extern (C) JsHandle WorkerLocation_protocol_Get(JsHandle);
extern (C) JsHandle WorkerLocation_host_Get(JsHandle);
extern (C) JsHandle WorkerLocation_hostname_Get(JsHandle);
extern (C) JsHandle WorkerLocation_port_Get(JsHandle);
extern (C) JsHandle WorkerLocation_pathname_Get(JsHandle);
extern (C) JsHandle WorkerLocation_search_Get(JsHandle);
extern (C) JsHandle WorkerLocation_hash_Get(JsHandle);
extern (C) ulong NavigatorConcurrentHardware_hardwareConcurrency_Get(JsHandle);
extern (C) bool NavigatorOnLine_onLine_Get(JsHandle);
extern (C) string NavigatorLanguage_language_Get(JsHandle);
extern (C) JsHandle NavigatorLanguage_languages_Get(JsHandle);
extern (C) string NavigatorID_appCodeName_Get(JsHandle);
extern (C) string NavigatorID_appName_Get(JsHandle);
extern (C) string NavigatorID_appVersion_Get(JsHandle);
extern (C) string NavigatorID_platform_Get(JsHandle);
extern (C) string NavigatorID_product_Get(JsHandle);
extern (C) string NavigatorID_productSub_Get(JsHandle);
extern (C) string NavigatorID_userAgent_Get(JsHandle);
extern (C) string NavigatorID_vendor_Get(JsHandle);
extern (C) string NavigatorID_vendorSub_Get(JsHandle);
extern (C) bool NavigatorID_taintEnabled(JsHandle);
extern (C) string NavigatorID_oscpu_Get(JsHandle);
extern (C) void WorkerOptions_type_Set(JsHandle, WorkerType);
extern (C) WorkerType WorkerOptions_type_Get(JsHandle);
extern (C) void WorkerOptions_credentials_Set(JsHandle, RequestCredentials);
extern (C) RequestCredentials WorkerOptions_credentials_Get(JsHandle);
extern (C) void WorkerOptions_name_Set(JsHandle, string);
extern (C) string WorkerOptions_name_Get(JsHandle);