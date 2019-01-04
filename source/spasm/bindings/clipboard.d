module spasm.bindings.clipboard;

import spasm.types;
import spasm.bindings.html : DataTransfer;

struct Clipboard {
  EventTarget _parent;
  alias _parent this;
  Promise!(DataTransfer) read() {
    return Promise!(DataTransfer)(Clipboard_read(handle));
  }
  Promise!(string) readText() {
    return Promise!(string)(Clipboard_readText(handle));
  }
  Promise!(void) write(DataTransfer data) {
    return Promise!(void)(Clipboard_write(handle, data.handle));
  }
  Promise!(void) writeText(string data) {
    return Promise!(void)(Clipboard_writeText(handle, data));
  }
}
struct ClipboardEvent {
  Event _parent;
  alias _parent this;
  Optional!(DataTransfer) clipboardData() {
    return ClipboardEvent_clipboardData_Get(handle);
  }
}
struct ClipboardEventInit {
  EventInit _parent;
  alias _parent this;
  void clipboardData(Optional!(DataTransfer) clipboardData) {
    ClipboardEventInit_clipboardData_Set(handle, !clipboardData.empty, clipboardData.value.handle);
  }
  Optional!(DataTransfer) clipboardData() {
    return ClipboardEventInit_clipboardData_Get(handle);
  }
}
struct ClipboardPermissionDescriptor {
  PermissionDescriptor _parent;
  alias _parent this;
  void allowWithoutGesture(bool allowWithoutGesture) {
    ClipboardPermissionDescriptor_allowWithoutGesture_Set(handle, allowWithoutGesture);
  }
  bool allowWithoutGesture() {
    return ClipboardPermissionDescriptor_allowWithoutGesture_Get(handle);
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