module spasm.bindings.fileapi;

import spasm.types;
import spasm.bindings.common;
import spasm.bindings.dom;
import spasm.bindings.html;

nothrow:
struct Blob {
  nothrow:
  JsHandle handle;
  alias handle this;
  auto size() {
    return Blob_size_Get(this.handle);
  }
  auto type() {
    return Blob_type_Get(this.handle);
  }
  auto slice(long start, long end, string contentType) {
    return Blob(JsHandle(Blob_slice(this.handle, start, end, contentType)));
  }
  auto slice(long start, long end) {
    return Blob(JsHandle(Blob_slice_0(this.handle, start, end)));
  }
  auto slice(long start) {
    return Blob(JsHandle(Blob_slice_1(this.handle, start)));
  }
  auto slice() {
    return Blob(JsHandle(Blob_slice_2(this.handle)));
  }
}
alias BlobPart = SumType!(BufferSource, Blob, string);
struct BlobPropertyBag {
  nothrow:
  JsHandle handle;
  alias handle this;
  static auto create() {
    return BlobPropertyBag(JsHandle(spasm_add__object()));
  }
  void type(string type) {
    BlobPropertyBag_type_Set(this.handle, type);
  }
  auto type() {
    return BlobPropertyBag_type_Get(this.handle);
  }
  void endings(EndingType endings) {
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
  nothrow:
  spasm.bindings.fileapi.Blob _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .Blob(h);
  }
  auto name() {
    return File_name_Get(this._parent);
  }
  auto lastModified() {
    return File_lastModified_Get(this._parent);
  }
}
struct FileList {
  nothrow:
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
  nothrow:
  spasm.bindings.fileapi.BlobPropertyBag _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .BlobPropertyBag(h);
  }
  static auto create() {
    return FilePropertyBag(JsHandle(spasm_add__object()));
  }
  void lastModified(long lastModified) {
    FilePropertyBag_lastModified_Set(this._parent, lastModified);
  }
  auto lastModified() {
    return FilePropertyBag_lastModified_Get(this._parent);
  }
}
struct FileReader {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .EventTarget(h);
  }
  void readAsArrayBuffer(Blob blob) {
    FileReader_readAsArrayBuffer(this._parent, blob.handle);
  }
  void readAsBinaryString(Blob blob) {
    FileReader_readAsBinaryString(this._parent, blob.handle);
  }
  void readAsText(Blob blob, string encoding) {
    FileReader_readAsText(this._parent, blob.handle, encoding);
  }
  void readAsText(Blob blob) {
    FileReader_readAsText_0(this._parent, blob.handle);
  }
  void readAsDataURL(Blob blob) {
    FileReader_readAsDataURL(this._parent, blob.handle);
  }
  void abort() {
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
  void onloadstart(EventHandler onloadstart) {
    FileReader_onloadstart_Set(this._parent, onloadstart);
  }
  auto onloadstart() {
    return FileReader_onloadstart_Get(this._parent);
  }
  void onprogress(EventHandler onprogress) {
    FileReader_onprogress_Set(this._parent, onprogress);
  }
  auto onprogress() {
    return FileReader_onprogress_Get(this._parent);
  }
  void onload(EventHandler onload) {
    FileReader_onload_Set(this._parent, onload);
  }
  auto onload() {
    return FileReader_onload_Get(this._parent);
  }
  void onabort(EventHandler onabort) {
    FileReader_onabort_Set(this._parent, onabort);
  }
  auto onabort() {
    return FileReader_onabort_Get(this._parent);
  }
  void onerror(EventHandler onerror) {
    FileReader_onerror_Set(this._parent, onerror);
  }
  auto onerror() {
    return FileReader_onerror_Get(this._parent);
  }
  void onloadend(EventHandler onloadend) {
    FileReader_onloadend_Set(this._parent, onloadend);
  }
  auto onloadend() {
    return FileReader_onloadend_Get(this._parent);
  }
}
struct FileReaderSync {
  nothrow:
  JsHandle handle;
  alias handle this;
  auto readAsArrayBuffer(Blob blob) {
    return ArrayBuffer(JsHandle(FileReaderSync_readAsArrayBuffer(this.handle, blob.handle)));
  }
  auto readAsBinaryString(Blob blob) {
    return FileReaderSync_readAsBinaryString(this.handle, blob.handle);
  }
  auto readAsText(Blob blob, string encoding) {
    return FileReaderSync_readAsText(this.handle, blob.handle, encoding);
  }
  auto readAsText(Blob blob) {
    return FileReaderSync_readAsText_0(this.handle, blob.handle);
  }
  auto readAsDataURL(Blob blob) {
    return FileReaderSync_readAsDataURL(this.handle, blob.handle);
  }
}


extern (C) ulong Blob_size_Get(Handle);
extern (C) string Blob_type_Get(Handle);
extern (C) Handle Blob_slice(Handle, long, long, string);
extern (C) Handle Blob_slice_0(Handle, long, long);
extern (C) Handle Blob_slice_1(Handle, long);
extern (C) Handle Blob_slice_2(Handle);
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
extern (C) void FileReader_readAsText_0(Handle, Handle);
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
extern (C) string FileReaderSync_readAsText_0(Handle, Handle);
extern (C) string FileReaderSync_readAsDataURL(Handle, Handle);