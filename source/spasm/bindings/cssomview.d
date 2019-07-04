module spasm.bindings.cssomview;

import spasm.types;
import spasm.bindings.dom;
import spasm.bindings.geometry;
import spasm.bindings.html;

@safe:
nothrow:

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


extern (C) Handle CaretPosition_offsetNode_Get(Handle);
extern (C) uint CaretPosition_offset_Get(Handle);
extern (C) Optional!(DOMRect) CaretPosition_getClientRect(Handle);
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