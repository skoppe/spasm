module spasm.bindings.fileapi;

import spasm.types;
import spasm.bindings.common;
import spasm.bindings.dom;
import spasm.bindings.html;

struct Blob {
  JsHandle handle;
  alias handle this;
  auto size() {
    auto result = Blob_size_Get(this.handle);
    return result;
  }
  auto type() {
    auto result = Blob_type_Get(this.handle);
    return result;
  }
  auto slice(long start, long end, string contentType) {
    auto result = Blob(JsHandle(Blob_slice(this.handle, start, end, contentType)));
    return result;
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
    auto result = BlobPropertyBag_type_Get(this.handle);
    return result;
  }
  auto endings(EndingType endings) {
    BlobPropertyBag_endings_Set(this.handle, endings);
  }
  auto endings() {
    auto result = BlobPropertyBag_endings_Get(this.handle);
    return result;
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
    auto result = File_name_Get(this._parent);
    return result;
  }
  auto lastModified() {
    auto result = File_lastModified_Get(this._parent);
    return result;
  }
}
struct FileList {
  JsHandle handle;
  alias handle this;
  auto item(uint index) {
    auto result = FileList_item_getter(this.handle, index);
    return result;
  }
  auto length() {
    auto result = FileList_length_Get(this.handle);
    return result;
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
    auto result = FilePropertyBag_lastModified_Get(this._parent);
    return result;
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
    auto result = FileReader_readyState_Get(this._parent);
    return result;
  }
  auto result() {
    auto result = FileReader_result_Get(this._parent);
    return result;
  }
  auto error() {
    auto result = FileReader_error_Get(this._parent);
    return result;
  }
  auto onloadstart(EventHandler onloadstart) {
    FileReader_onloadstart_Set(this._parent, onloadstart);
  }
  auto onloadstart() {
    auto result = FileReader_onloadstart_Get(this._parent);
    return result;
  }
  auto onprogress(EventHandler onprogress) {
    FileReader_onprogress_Set(this._parent, onprogress);
  }
  auto onprogress() {
    auto result = FileReader_onprogress_Get(this._parent);
    return result;
  }
  auto onload(EventHandler onload) {
    FileReader_onload_Set(this._parent, onload);
  }
  auto onload() {
    auto result = FileReader_onload_Get(this._parent);
    return result;
  }
  auto onabort(EventHandler onabort) {
    FileReader_onabort_Set(this._parent, onabort);
  }
  auto onabort() {
    auto result = FileReader_onabort_Get(this._parent);
    return result;
  }
  auto onerror(EventHandler onerror) {
    FileReader_onerror_Set(this._parent, onerror);
  }
  auto onerror() {
    auto result = FileReader_onerror_Get(this._parent);
    return result;
  }
  auto onloadend(EventHandler onloadend) {
    FileReader_onloadend_Set(this._parent, onloadend);
  }
  auto onloadend() {
    auto result = FileReader_onloadend_Get(this._parent);
    return result;
  }
}
struct FileReaderSync {
  JsHandle handle;
  alias handle this;
  auto readAsArrayBuffer(Blob blob) {
    auto result = ArrayBuffer(JsHandle(FileReaderSync_readAsArrayBuffer(this.handle, blob.handle)));
    return result;
  }
  auto readAsBinaryString(Blob blob) {
    auto result = FileReaderSync_readAsBinaryString(this.handle, blob.handle);
    return result;
  }
  auto readAsText(Blob blob, string encoding) {
    auto result = FileReaderSync_readAsText(this.handle, blob.handle, encoding);
    return result;
  }
  auto readAsDataURL(Blob blob) {
    auto result = FileReaderSync_readAsDataURL(this.handle, blob.handle);
    return result;
  }
}


extern (C) ulong Blob_size_Get(Handle);
extern (C) string Blob_type_Get(Handle);
extern (C) Handle Blob_slice(Handle, long, long, string);
extern (C) void BlobPropertyBag_type_Set(Handle, string);
extern (C) string BlobPropertyBag_type_Get(Handle);
extern (C) void BlobPropertyBag_endings_Set(Handle, EndingType);
extern (C) EndingType BlobPropertyBag_endings_Get(Handle);
extern (C) string File_name_Get(Handle);
extern (C) long File_lastModified_Get(Handle);
extern (C) Optional!(File) FileList_item_getter(Handle, uint);
extern (C) uint FileList_length_Get(Handle);
extern (C) void FilePropertyBag_lastModified_Set(Handle, long);
extern (C) long FilePropertyBag_lastModified_Get(Handle);
extern (C) void FileReader_readAsArrayBuffer(Handle, Handle);
extern (C) void FileReader_readAsBinaryString(Handle, Handle);
extern (C) void FileReader_readAsText(Handle, Handle, string);
extern (C) void FileReader_readAsDataURL(Handle, Handle);
extern (C) void FileReader_abort(Handle);
extern (C) ushort FileReader_readyState_Get(Handle);
extern (C) Optional!(SumType!(string, ArrayBuffer)) FileReader_result_Get(Handle);
extern (C) Optional!(DOMException) FileReader_error_Get(Handle);
extern (C) void FileReader_onloadstart_Set(Handle, EventHandler);
extern (C) EventHandler FileReader_onloadstart_Get(Handle);
extern (C) void FileReader_onprogress_Set(Handle, EventHandler);
extern (C) EventHandler FileReader_onprogress_Get(Handle);
extern (C) void FileReader_onload_Set(Handle, EventHandler);
extern (C) EventHandler FileReader_onload_Get(Handle);
extern (C) void FileReader_onabort_Set(Handle, EventHandler);
extern (C) EventHandler FileReader_onabort_Get(Handle);
extern (C) void FileReader_onerror_Set(Handle, EventHandler);
extern (C) EventHandler FileReader_onerror_Get(Handle);
extern (C) void FileReader_onloadend_Set(Handle, EventHandler);
extern (C) EventHandler FileReader_onloadend_Get(Handle);
extern (C) Handle FileReaderSync_readAsArrayBuffer(Handle, Handle);
extern (C) string FileReaderSync_readAsBinaryString(Handle, Handle);
extern (C) string FileReaderSync_readAsText(Handle, Handle, string);
extern (C) string FileReaderSync_readAsDataURL(Handle, Handle);