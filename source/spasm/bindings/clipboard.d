module spasm.bindings.clipboard;

import spasm.types;
import spasm.bindings.dom;
import spasm.bindings.html;
import spasm.bindings.permissions;

nothrow:
struct Clipboard {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .EventTarget(h);
  }
  auto read() {
    return Promise!(DataTransfer)(JsHandle(Clipboard_read(this._parent)));
  }
  auto readText() {
    return Promise!(string)(JsHandle(Clipboard_readText(this._parent)));
  }
  auto write(DataTransfer data) {
    return Promise!(void)(JsHandle(Clipboard_write(this._parent, data.handle)));
  }
  auto writeText(string data) {
    return Promise!(void)(JsHandle(Clipboard_writeText(this._parent, data)));
  }
}
struct ClipboardEvent {
  nothrow:
  spasm.bindings.dom.Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .Event(h);
  }
  auto clipboardData() {
    return ClipboardEvent_clipboardData_Get(this._parent);
  }
}
struct ClipboardEventInit {
  nothrow:
  spasm.bindings.dom.EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .EventInit(h);
  }
  static auto create() {
    return ClipboardEventInit(JsHandle(spasm_add__object()));
  }
  void clipboardData(Optional!(DataTransfer) clipboardData) {
    ClipboardEventInit_clipboardData_Set(this._parent, !clipboardData.empty, clipboardData.front.handle);
  }
  auto clipboardData() {
    return ClipboardEventInit_clipboardData_Get(this._parent);
  }
}
struct ClipboardPermissionDescriptor {
  nothrow:
  spasm.bindings.permissions.PermissionDescriptor _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .PermissionDescriptor(h);
  }
  static auto create() {
    return ClipboardPermissionDescriptor(JsHandle(spasm_add__object()));
  }
  void allowWithoutGesture(bool allowWithoutGesture) {
    ClipboardPermissionDescriptor_allowWithoutGesture_Set(this._parent, allowWithoutGesture);
  }
  auto allowWithoutGesture() {
    return ClipboardPermissionDescriptor_allowWithoutGesture_Get(this._parent);
  }
}


extern (C) Handle Clipboard_read(Handle);
extern (C) Handle Clipboard_readText(Handle);
extern (C) Handle Clipboard_write(Handle, Handle);
extern (C) Handle Clipboard_writeText(Handle, string);
extern (C) Optional!(DataTransfer) ClipboardEvent_clipboardData_Get(Handle);
extern (C) void ClipboardEventInit_clipboardData_Set(Handle, bool, Handle);
extern (C) Optional!(DataTransfer) ClipboardEventInit_clipboardData_Get(Handle);
extern (C) void ClipboardPermissionDescriptor_allowWithoutGesture_Set(Handle, bool);
extern (C) bool ClipboardPermissionDescriptor_allowWithoutGesture_Get(Handle);