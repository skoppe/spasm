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
    return Promise!(DataTransfer)(Clipboard_read(this._parent));
  }
  auto readText() {
    return Promise!(string)(Clipboard_readText(this._parent));
  }
  auto write(DataTransfer data) {
    return Promise!(void)(Clipboard_write(this._parent, data.handle));
  }
  auto writeText(string data) {
    return Promise!(void)(Clipboard_writeText(this._parent, data));
  }
}
struct ClipboardEvent {
  Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Event(h);
  }
  auto clipboardData() {
    return ClipboardEvent_clipboardData_Get(this._parent);
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
    return ClipboardEventInit_clipboardData_Get(this._parent);
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
    return ClipboardPermissionDescriptor_allowWithoutGesture_Get(this._parent);
  }
}


extern (C) JsHandle Clipboard_read(JsHandle);
extern (C) JsHandle Clipboard_readText(JsHandle);
extern (C) JsHandle Clipboard_write(JsHandle, JsHandle);
extern (C) JsHandle Clipboard_writeText(JsHandle, string);
extern (C) Optional!(DataTransfer) ClipboardEvent_clipboardData_Get(JsHandle);
extern (C) void ClipboardEventInit_clipboardData_Set(JsHandle, bool, JsHandle);
extern (C) Optional!(DataTransfer) ClipboardEventInit_clipboardData_Get(JsHandle);
extern (C) void ClipboardPermissionDescriptor_allowWithoutGesture_Set(JsHandle, bool);
extern (C) bool ClipboardPermissionDescriptor_allowWithoutGesture_Get(JsHandle);