module spasm.bindings.fileapi;

import spasm.types;
import spasm.bindings.common;
import spasm.bindings.dom;
import spasm.bindings.html;

struct Blob {
  JsHandle handle;
  alias handle this;
  auto size() {
    return Blob_size_Get(this.handle);
  }
  auto type() {
    return Blob_type_Get(this.handle);
  }
  auto slice(long start, long end, string contentType) {
    return Blob(Blob_slice(this.handle, start, end, contentType));
  }
}
alias BlobPart = SumType!(BufferSource, Blob, string);
struct BlobPropertyBag {
  JsHandle handle;
  alias handle this;
  auto type(string type) {
    BlobPropertyBag_type_Set(this.handle, type);
  }
  auto type() {
    return BlobPropertyBag_type_Get(this.handle);
  }
  auto endings(EndingType endings) {
    BlobPropertyBag_endings_Set(this.handle, endings);
  }
  auto endings() {
    return BlobPropertyBag_endings_Get(this.handle);
  }
}
enum EndingType {
  transparent,
  native
}
struct File {
  Blob _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Blob(h);
  }
  auto name() {
    return File_name_Get(this._parent);
  }
  auto lastModified() {
    return File_lastModified_Get(this._parent);
  }
}
struct FileList {
  JsHandle handle;
  alias handle this;
  auto item(uint index) {
    return FileList_item_getter(this.handle, index);
  }
  auto length() {
    return FileList_length_Get(this.handle);
  }
}
struct FilePropertyBag {
  BlobPropertyBag _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = BlobPropertyBag(h);
  }
  auto lastModified(long lastModified) {
    FilePropertyBag_lastModified_Set(this._parent, lastModified);
  }
  auto lastModified() {
    return FilePropertyBag_lastModified_Get(this._parent);
  }
}
struct FileReader {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto readAsArrayBuffer(Blob blob) {
    FileReader_readAsArrayBuffer(this._parent, blob.handle);
  }
  auto readAsBinaryString(Blob blob) {
    FileReader_readAsBinaryString(this._parent, blob.handle);
  }
  auto readAsText(Blob blob, string encoding) {
    FileReader_readAsText(this._parent, blob.handle, encoding);
  }
  auto readAsDataURL(Blob blob) {
    FileReader_readAsDataURL(this._parent, blob.handle);
  }
  auto abort() {
    FileReader_abort(this._parent);
  }
  enum ushort EMPTY = 0;
  enum ushort LOADING = 1;
  enum ushort DONE = 2;
  auto readyState() {
    return FileReader_readyState_Get(this._parent);
  }
  auto result() {
    return FileReader_result_Get(this._parent);
  }
  auto error() {
    return FileReader_error_Get(this._parent);
  }
  auto onloadstart(EventHandler onloadstart) {
    FileReader_onloadstart_Set(this._parent, onloadstart);
  }
  auto onloadstart() {
    return FileReader_onloadstart_Get(this._parent);
  }
  auto onprogress(EventHandler onprogress) {
    FileReader_onprogress_Set(this._parent, onprogress);
  }
  auto onprogress() {
    return FileReader_onprogress_Get(this._parent);
  }
  auto onload(EventHandler onload) {
    FileReader_onload_Set(this._parent, onload);
  }
  auto onload() {
    return FileReader_onload_Get(this._parent);
  }
  auto onabort(EventHandler onabort) {
    FileReader_onabort_Set(this._parent, onabort);
  }
  auto onabort() {
    return FileReader_onabort_Get(this._parent);
  }
  auto onerror(EventHandler onerror) {
    FileReader_onerror_Set(this._parent, onerror);
  }
  auto onerror() {
    return FileReader_onerror_Get(this._parent);
  }
  auto onloadend(EventHandler onloadend) {
    FileReader_onloadend_Set(this._parent, onloadend);
  }
  auto onloadend() {
    return FileReader_onloadend_Get(this._parent);
  }
}
struct FileReaderSync {
  JsHandle handle;
  alias handle this;
  auto readAsArrayBuffer(Blob blob) {
    return ArrayBuffer(FileReaderSync_readAsArrayBuffer(this.handle, blob.handle));
  }
  auto readAsBinaryString(Blob blob) {
    return FileReaderSync_readAsBinaryString(this.handle, blob.handle);
  }
  auto readAsText(Blob blob, string encoding) {
    return FileReaderSync_readAsText(this.handle, blob.handle, encoding);
  }
  auto readAsDataURL(Blob blob) {
    return FileReaderSync_readAsDataURL(this.handle, blob.handle);
  }
}


extern (C) ulong Blob_size_Get(JsHandle);
extern (C) string Blob_type_Get(JsHandle);
extern (C) JsHandle Blob_slice(JsHandle, long, long, string);
extern (C) void BlobPropertyBag_type_Set(JsHandle, string);
extern (C) string BlobPropertyBag_type_Get(JsHandle);
extern (C) void BlobPropertyBag_endings_Set(JsHandle, EndingType);
extern (C) EndingType BlobPropertyBag_endings_Get(JsHandle);
extern (C) string File_name_Get(JsHandle);
extern (C) long File_lastModified_Get(JsHandle);
extern (C) Optional!(File) FileList_item_getter(JsHandle, uint);
extern (C) uint FileList_length_Get(JsHandle);
extern (C) void FilePropertyBag_lastModified_Set(JsHandle, long);
extern (C) long FilePropertyBag_lastModified_Get(JsHandle);
extern (C) void FileReader_readAsArrayBuffer(JsHandle, JsHandle);
extern (C) void FileReader_readAsBinaryString(JsHandle, JsHandle);
extern (C) void FileReader_readAsText(JsHandle, JsHandle, string);
extern (C) void FileReader_readAsDataURL(JsHandle, JsHandle);
extern (C) void FileReader_abort(JsHandle);
extern (C) ushort FileReader_readyState_Get(JsHandle);
extern (C) Optional!(SumType!(string, ArrayBuffer)) FileReader_result_Get(JsHandle);
extern (C) Optional!(DOMException) FileReader_error_Get(JsHandle);
extern (C) void FileReader_onloadstart_Set(JsHandle, EventHandler);
extern (C) EventHandler FileReader_onloadstart_Get(JsHandle);
extern (C) void FileReader_onprogress_Set(JsHandle, EventHandler);
extern (C) EventHandler FileReader_onprogress_Get(JsHandle);
extern (C) void FileReader_onload_Set(JsHandle, EventHandler);
extern (C) EventHandler FileReader_onload_Get(JsHandle);
extern (C) void FileReader_onabort_Set(JsHandle, EventHandler);
extern (C) EventHandler FileReader_onabort_Get(JsHandle);
extern (C) void FileReader_onerror_Set(JsHandle, EventHandler);
extern (C) EventHandler FileReader_onerror_Get(JsHandle);
extern (C) void FileReader_onloadend_Set(JsHandle, EventHandler);
extern (C) EventHandler FileReader_onloadend_Get(JsHandle);
extern (C) JsHandle FileReaderSync_readAsArrayBuffer(JsHandle, JsHandle);
extern (C) string FileReaderSync_readAsBinaryString(JsHandle, JsHandle);
extern (C) string FileReaderSync_readAsText(JsHandle, JsHandle, string);
extern (C) string FileReaderSync_readAsDataURL(JsHandle, JsHandle);