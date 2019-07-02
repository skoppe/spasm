module spasm.bindings.cssomview;

import spasm.types;
import spasm.bindings.csspseudo;
import spasm.bindings.dom;
import spasm.bindings.geometry;
import spasm.bindings.html;

@safe:
nothrow:

struct BoxQuadOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return BoxQuadOptions(spasm_add__object());
  }
  void box(CSSBoxType box) {
    BoxQuadOptions_box_Set(this.handle, box);
  }
  auto box() {
    return BoxQuadOptions_box_Get(this.handle);
  }
  void relativeTo(scope ref GeometryNode relativeTo) {
    BoxQuadOptions_relativeTo_Set(this.handle, relativeTo);
  }
  auto relativeTo() {
    return BoxQuadOptions_relativeTo_Get(this.handle);
  }
}
enum CSSBoxType {
  margin,
  border,
  padding,
  content
}
struct CaretPosition {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto offsetNode() {
    return Node(CaretPosition_offsetNode_Get(this.handle));
  }
  auto offset() {
    return CaretPosition_offset_Get(this.handle);
  }
  auto getClientRect() {
    return CaretPosition_getClientRect(this.handle);
  }
}
struct ConvertCoordinateOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return ConvertCoordinateOptions(spasm_add__object());
  }
  void fromBox(CSSBoxType fromBox) {
    ConvertCoordinateOptions_fromBox_Set(this.handle, fromBox);
  }
  auto fromBox() {
    return ConvertCoordinateOptions_fromBox_Get(this.handle);
  }
  void toBox(CSSBoxType toBox) {
    ConvertCoordinateOptions_toBox_Set(this.handle, toBox);
  }
  auto toBox() {
    return ConvertCoordinateOptions_toBox_Get(this.handle);
  }
}
alias GeometryNode = SumType!(Text, Element, CSSPseudoElement, Document);
struct MediaQueryList {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
  }
  auto media() {
    return MediaQueryList_media_Get(this._parent);
  }
  auto matches() {
    return MediaQueryList_matches_Get(this._parent);
  }
  void addListener(scope ref Optional!(EventListener) listener) {
    MediaQueryList_addListener(this._parent, !listener.empty, listener.front);
  }
  void removeListener(scope ref Optional!(EventListener) listener) {
    MediaQueryList_removeListener(this._parent, !listener.empty, listener.front);
  }
  void onchange(EventHandler onchange) {
    MediaQueryList_onchange_Set(this._parent, onchange);
  }
  auto onchange() {
    return MediaQueryList_onchange_Get(this._parent);
  }
}
struct MediaQueryListEvent {
  nothrow:
  spasm.bindings.dom.Event _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Event(h);
  }
  auto media() {
    return MediaQueryListEvent_media_Get(this._parent);
  }
  auto matches() {
    return MediaQueryListEvent_matches_Get(this._parent);
  }
}
struct MediaQueryListEventInit {
  nothrow:
  spasm.bindings.dom.EventInit _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventInit(h);
  }
  static auto create() {
    return MediaQueryListEventInit(spasm_add__object());
  }
  void media(string media) {
    MediaQueryListEventInit_media_Set(this._parent, media);
  }
  auto media() {
    return MediaQueryListEventInit_media_Get(this._parent);
  }
  void matches(bool matches) {
    MediaQueryListEventInit_matches_Set(this._parent, matches);
  }
  auto matches() {
    return MediaQueryListEventInit_matches_Get(this._parent);
  }
}
struct Screen {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto availWidth() {
    return Screen_availWidth_Get(this.handle);
  }
  auto availHeight() {
    return Screen_availHeight_Get(this.handle);
  }
  auto width() {
    return Screen_width_Get(this.handle);
  }
  auto height() {
    return Screen_height_Get(this.handle);
  }
  auto colorDepth() {
    return Screen_colorDepth_Get(this.handle);
  }
  auto pixelDepth() {
    return Screen_pixelDepth_Get(this.handle);
  }
}
enum ScrollBehavior {
  auto_,
  smooth
}
struct ScrollIntoViewOptions {
  nothrow:
  spasm.bindings.cssomview.ScrollOptions _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .ScrollOptions(h);
  }
  static auto create() {
    return ScrollIntoViewOptions(spasm_add__object());
  }
  void block(ScrollLogicalPosition block) {
    ScrollIntoViewOptions_block_Set(this._parent, block);
  }
  auto block() {
    return ScrollIntoViewOptions_block_Get(this._parent);
  }
  void inline(ScrollLogicalPosition inline) {
    ScrollIntoViewOptions_inline_Set(this._parent, inline);
  }
  auto inline() {
    return ScrollIntoViewOptions_inline_Get(this._parent);
  }
}
enum ScrollLogicalPosition {
  start,
  center,
  end,
  nearest
}
struct ScrollOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return ScrollOptions(spasm_add__object());
  }
  void behavior(ScrollBehavior behavior) {
    ScrollOptions_behavior_Set(this.handle, behavior);
  }
  auto behavior() {
    return ScrollOptions_behavior_Get(this.handle);
  }
}
struct ScrollToOptions {
  nothrow:
  spasm.bindings.cssomview.ScrollOptions _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .ScrollOptions(h);
  }
  static auto create() {
    return ScrollToOptions(spasm_add__object());
  }
  void left(double left) {
    ScrollToOptions_left_Set(this._parent, left);
  }
  auto left() {
    return ScrollToOptions_left_Get(this._parent);
  }
  void top(double top) {
    ScrollToOptions_top_Set(this._parent, top);
  }
  auto top() {
    return ScrollToOptions_top_Get(this._parent);
  }
}


extern (C) void BoxQuadOptions_box_Set(Handle, CSSBoxType);
extern (C) CSSBoxType BoxQuadOptions_box_Get(Handle);
extern (C) void BoxQuadOptions_relativeTo_Set(Handle, scope ref GeometryNode);
extern (C) GeometryNode BoxQuadOptions_relativeTo_Get(Handle);
extern (C) Handle CaretPosition_offsetNode_Get(Handle);
extern (C) uint CaretPosition_offset_Get(Handle);
extern (C) Optional!(DOMRect) CaretPosition_getClientRect(Handle);
extern (C) void ConvertCoordinateOptions_fromBox_Set(Handle, CSSBoxType);
extern (C) CSSBoxType ConvertCoordinateOptions_fromBox_Get(Handle);
extern (C) void ConvertCoordinateOptions_toBox_Set(Handle, CSSBoxType);
extern (C) CSSBoxType ConvertCoordinateOptions_toBox_Get(Handle);
extern (C) Handle GeometryUtils_getBoxQuads(Handle, Handle);
extern (C) Handle GeometryUtils_getBoxQuads_0(Handle);
extern (C) Handle GeometryUtils_convertQuadFromNode(Handle, Handle, scope ref GeometryNode, Handle);
extern (C) Handle GeometryUtils_convertQuadFromNode_0(Handle, Handle, scope ref GeometryNode);
extern (C) Handle GeometryUtils_convertRectFromNode(Handle, Handle, scope ref GeometryNode, Handle);
extern (C) Handle GeometryUtils_convertRectFromNode_0(Handle, Handle, scope ref GeometryNode);
extern (C) Handle GeometryUtils_convertPointFromNode(Handle, Handle, scope ref GeometryNode, Handle);
extern (C) Handle GeometryUtils_convertPointFromNode_0(Handle, Handle, scope ref GeometryNode);
extern (C) string MediaQueryList_media_Get(Handle);
extern (C) bool MediaQueryList_matches_Get(Handle);
extern (C) void MediaQueryList_addListener(Handle, bool, EventListener);
extern (C) void MediaQueryList_removeListener(Handle, bool, EventListener);
extern (C) void MediaQueryList_onchange_Set(Handle, EventHandler);
extern (C) EventHandler MediaQueryList_onchange_Get(Handle);
extern (C) string MediaQueryListEvent_media_Get(Handle);
extern (C) bool MediaQueryListEvent_matches_Get(Handle);
extern (C) void MediaQueryListEventInit_media_Set(Handle, string);
extern (C) string MediaQueryListEventInit_media_Get(Handle);
extern (C) void MediaQueryListEventInit_matches_Set(Handle, bool);
extern (C) bool MediaQueryListEventInit_matches_Get(Handle);
extern (C) int Screen_availWidth_Get(Handle);
extern (C) int Screen_availHeight_Get(Handle);
extern (C) int Screen_width_Get(Handle);
extern (C) int Screen_height_Get(Handle);
extern (C) uint Screen_colorDepth_Get(Handle);
extern (C) uint Screen_pixelDepth_Get(Handle);
extern (C) void ScrollIntoViewOptions_block_Set(Handle, ScrollLogicalPosition);
extern (C) ScrollLogicalPosition ScrollIntoViewOptions_block_Get(Handle);
extern (C) void ScrollIntoViewOptions_inline_Set(Handle, ScrollLogicalPosition);
extern (C) ScrollLogicalPosition ScrollIntoViewOptions_inline_Get(Handle);
extern (C) void ScrollOptions_behavior_Set(Handle, ScrollBehavior);
extern (C) ScrollBehavior ScrollOptions_behavior_Get(Handle);
extern (C) void ScrollToOptions_left_Set(Handle, double);
extern (C) double ScrollToOptions_left_Get(Handle);
extern (C) void ScrollToOptions_top_Set(Handle, double);
extern (C) double ScrollToOptions_top_Get(Handle);