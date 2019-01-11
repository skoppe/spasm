module spasm.bindings.clipboard;

import spasm.types;
import spasm.bindings.dom;
import spasm.bindings.html;
import spasm.bindings.permissions;

struct Clipboard {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto read() {
    auto result = Promise!(DataTransfer)(JsHandle(Clipboard_read(this._parent)));
    return result;
  }
  auto readText() {
    auto result = Promise!(string)(JsHandle(Clipboard_readText(this._parent)));
    return result;
  }
  auto write(DataTransfer data) {
    auto result = Promise!(void)(JsHandle(Clipboard_write(this._parent, data.handle)));
    return result;
  }
  auto writeText(string data) {
    auto result = Promise!(void)(JsHandle(Clipboard_writeText(this._parent, data)));
    return result;
  }
}
struct ClipboardEvent {
  Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Event(h);
  }
  auto clipboardData() {
    auto result = ClipboardEvent_clipboardData_Get(this._parent);
    return result;
  }
}
struct ClipboardEventInit {
  EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventInit(h);
  }
  auto clipboardData(Optional!(DataTransfer) clipboardData) {
    ClipboardEventInit_clipboardData_Set(this._parent, !clipboardData.empty, clipboardData.front.handle);
  }
  auto clipboardData() {
    auto result = ClipboardEventInit_clipboardData_Get(this._parent);
    return result;
  }
}
struct ClipboardPermissionDescriptor {
  PermissionDescriptor _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = PermissionDescriptor(h);
  }
  auto allowWithoutGesture(bool allowWithoutGesture) {
    ClipboardPermissionDescriptor_allowWithoutGesture_Set(this._parent, allowWithoutGesture);
  }
  auto allowWithoutGesture() {
    auto result = ClipboardPermissionDescriptor_allowWithoutGesture_Get(this._parent);
    return result;
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