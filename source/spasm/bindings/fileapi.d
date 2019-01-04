module spasm.bindings.fileapi;

import spasm.types;
import spasm.bindings.common : BufferSource;
import spasm.bindings.common : DOMException;
import spasm.bindings.html : EventHandler;

struct Blob {
  JsHandle handle;
  alias handle this;
  ulong size() {
    return Blob_size_Get(handle);
  }
  string type() {
    return Blob_type_Get(handle);
  }
  Blob slice(long start, long end, string contentType) {
    return Blob(Blob_slice(handle, start, end, contentType));
  }
}
alias BlobPart = SumType!(BufferSource, Blob, USVString);
struct BlobPropertyBag {
  JsHandle handle;
  alias handle this;
  void type(string type) {
    BlobPropertyBag_type_Set(handle, type);
  }
  string type() {
    return BlobPropertyBag_type_Get(handle);
  }
  void endings(EndingType endings) {
    BlobPropertyBag_endings_Set(handle, endings);
  }
  EndingType endings() {
    return BlobPropertyBag_endings_Get(handle);
  }
}
enum EndingType {
  transparent,
  native
}
struct File {
  Blob _parent;
  alias _parent this;
  string name() {
    return File_name_Get(handle);
  }
  long lastModified() {
    return File_lastModified_Get(handle);
  }
}
struct FileList {
  JsHandle handle;
  alias handle this;
  Optional!(File) item(uint index) {
    return FileList_item_getter(handle, index);
  }
  uint length() {
    return FileList_length_Get(handle);
  }
}
struct FilePropertyBag {
  BlobPropertyBag _parent;
  alias _parent this;
  void lastModified(long lastModified) {
    FilePropertyBag_lastModified_Set(handle, lastModified);
  }
  long lastModified() {
    return FilePropertyBag_lastModified_Get(handle);
  }
}
struct FileReader {
  EventTarget _parent;
  alias _parent this;
  void readAsArrayBuffer(Blob blob) {
    FileReader_readAsArrayBuffer(handle, blob.handle);
  }
  void readAsBinaryString(Blob blob) {
    FileReader_readAsBinaryString(handle, blob.handle);
  }
  void readAsText(Blob blob, string encoding) {
    FileReader_readAsText(handle, blob.handle, encoding);
  }
  void readAsDataURL(Blob blob) {
    FileReader_readAsDataURL(handle, blob.handle);
  }
  void abort() {
    FileReader_abort(handle);
  }
  enum ushort EMPTY = 0;
  enum ushort LOADING = 1;
  enum ushort DONE = 2;
  ushort readyState() {
    return FileReader_readyState_Get(handle);
  }
  Optional!(SumType!(string, ArrayBuffer)) result() {
    return FileReader_result_Get(handle);
  }
  Optional!(DOMException) error() {
    return FileReader_error_Get(handle);
  }
  void onloadstart(EventHandler onloadstart) {
    FileReader_onloadstart_Set(handle, !onloadstart.empty, onloadstart.value);
  }
  EventHandler onloadstart() {
    return FileReader_onloadstart_Get(handle);
  }
  void onprogress(EventHandler onprogress) {
    FileReader_onprogress_Set(handle, !onprogress.empty, onprogress.value);
  }
  EventHandler onprogress() {
    return FileReader_onprogress_Get(handle);
  }
  void onload(EventHandler onload) {
    FileReader_onload_Set(handle, !onload.empty, onload.value);
  }
  EventHandler onload() {
    return FileReader_onload_Get(handle);
  }
  void onabort(EventHandler onabort) {
    FileReader_onabort_Set(handle, !onabort.empty, onabort.value);
  }
  EventHandler onabort() {
    return FileReader_onabort_Get(handle);
  }
  void onerror(EventHandler onerror) {
    FileReader_onerror_Set(handle, !onerror.empty, onerror.value);
  }
  EventHandler onerror() {
    return FileReader_onerror_Get(handle);
  }
  void onloadend(EventHandler onloadend) {
    FileReader_onloadend_Set(handle, !onloadend.empty, onloadend.value);
  }
  EventHandler onloadend() {
    return FileReader_onloadend_Get(handle);
  }
}
struct FileReaderSync {
  JsHandle handle;
  alias handle this;
  ArrayBuffer readAsArrayBuffer(Blob blob) {
    return ArrayBuffer(FileReaderSync_readAsArrayBuffer(handle, blob.handle));
  }
  string readAsBinaryString(Blob blob) {
    return FileReaderSync_readAsBinaryString(handle, blob.handle);
  }
  string readAsText(Blob blob, string encoding) {
    return FileReaderSync_readAsText(handle, blob.handle, encoding);
  }
  string readAsDataURL(Blob blob) {
    return FileReaderSync_readAsDataURL(handle, blob.handle);
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