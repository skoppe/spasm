module spasm.bindings.xhr;

import spasm.types;
import spasm.bindings.fileapi : Blob;
import spasm.bindings.fetch : BodyInit;
import spasm.bindings.dom : Document;
import spasm.bindings.html : EventHandler;
import spasm.bindings.fileapi : File;

struct FormData {
  JsHandle handle;
  alias handle this;
  void append(USVString name, USVString value) {
    FormData_append__string_string(handle, name.handle, value.handle);
  }
  void append(USVString name, Blob blobValue, USVString filename) {
    FormData_append__string_JsHandle_string(handle, name.handle, blobValue.handle, filename.handle);
  }
  void delete_(USVString name) {
    FormData_delete(handle, name.handle);
  }
  Optional!(FormDataEntryValue) get(USVString name) {
    return FormData_get(handle, name.handle);
  }
  Sequence!(FormDataEntryValue) getAll(USVString name) {
    return Sequence!(FormDataEntryValue)(FormData_getAll(handle, name.handle));
  }
  bool has(USVString name) {
    return FormData_has(handle, name.handle);
  }
  void set(USVString name, USVString value) {
    FormData_set__string_string(handle, name.handle, value.handle);
  }
  void set(USVString name, Blob blobValue, USVString filename) {
    FormData_set__string_JsHandle_string(handle, name.handle, blobValue.handle, filename.handle);
  }
}
alias FormDataEntryValue = SumType!(File, USVString);
struct ProgressEvent {
  Event _parent;
  alias _parent this;
  bool lengthComputable() {
    return ProgressEvent_lengthComputable_Get(handle);
  }
  ulong loaded() {
    return ProgressEvent_loaded_Get(handle);
  }
  ulong total() {
    return ProgressEvent_total_Get(handle);
  }
}
struct ProgressEventInit {
  EventInit _parent;
  alias _parent this;
  void lengthComputable(bool lengthComputable) {
    ProgressEventInit_lengthComputable_Set(handle, lengthComputable);
  }
  bool lengthComputable() {
    return ProgressEventInit_lengthComputable_Get(handle);
  }
  void loaded(ulong loaded) {
    ProgressEventInit_loaded_Set(handle, loaded);
  }
  ulong loaded() {
    return ProgressEventInit_loaded_Get(handle);
  }
  void total(ulong total) {
    ProgressEventInit_total_Set(handle, total);
  }
  ulong total() {
    return ProgressEventInit_total_Get(handle);
  }
}
struct XMLHttpRequest {
  XMLHttpRequestEventTarget _parent;
  alias _parent this;
  void onreadystatechange(EventHandler onreadystatechange) {
    XMLHttpRequest_onreadystatechange_Set(handle, !onreadystatechange.empty, onreadystatechange.value);
  }
  EventHandler onreadystatechange() {
    return XMLHttpRequest_onreadystatechange_Get(handle);
  }
  enum ushort UNSENT = 0;
  enum ushort OPENED = 1;
  enum ushort HEADERS_RECEIVED = 2;
  enum ushort LOADING = 3;
  enum ushort DONE = 4;
  ushort readyState() {
    return XMLHttpRequest_readyState_Get(handle);
  }
  void open(ByteString method, USVString url) {
    XMLHttpRequest_open__string_string(handle, method.handle, url.handle);
  }
  void open(ByteString method, USVString url, bool async, Optional!(USVString) username = no!(USVString), Optional!(USVString) password = no!(USVString)) {
    XMLHttpRequest_open__string_string_bool_optional_string_optional_string(handle, method.handle, url.handle, async, !username.empty, username.value.handle, !password.empty, password.value.handle);
  }
  void setRequestHeader(ByteString name, ByteString value) {
    XMLHttpRequest_setRequestHeader(handle, name.handle, value.handle);
  }
  void timeout(uint timeout) {
    XMLHttpRequest_timeout_Set(handle, timeout);
  }
  uint timeout() {
    return XMLHttpRequest_timeout_Get(handle);
  }
  void withCredentials(bool withCredentials) {
    XMLHttpRequest_withCredentials_Set(handle, withCredentials);
  }
  bool withCredentials() {
    return XMLHttpRequest_withCredentials_Get(handle);
  }
  XMLHttpRequestUpload upload() {
    return XMLHttpRequestUpload(XMLHttpRequest_upload_Get(handle));
  }
  void send(Optional!(SumType!(Document, BodyInit)) body_ = no!(SumType!(Document, BodyInit))) {
    XMLHttpRequest_send(handle, !body_.empty, body_.value);
  }
  void abort() {
    XMLHttpRequest_abort(handle);
  }
  USVString responseURL() {
    return USVString(XMLHttpRequest_responseURL_Get(handle));
  }
  ushort status() {
    return XMLHttpRequest_status_Get(handle);
  }
  ByteString statusText() {
    return ByteString(XMLHttpRequest_statusText_Get(handle));
  }
  Optional!(ByteString) getResponseHeader(ByteString name) {
    return XMLHttpRequest_getResponseHeader(handle, name.handle);
  }
  ByteString getAllResponseHeaders() {
    return ByteString(XMLHttpRequest_getAllResponseHeaders(handle));
  }
  void overrideMimeType(string mime) {
    XMLHttpRequest_overrideMimeType(handle, mime);
  }
  void responseType(XMLHttpRequestResponseType responseType) {
    XMLHttpRequest_responseType_Set(handle, responseType);
  }
  XMLHttpRequestResponseType responseType() {
    return XMLHttpRequest_responseType_Get(handle);
  }
  Any response() {
    return Any(XMLHttpRequest_response_Get(handle));
  }
  USVString responseText() {
    return USVString(XMLHttpRequest_responseText_Get(handle));
  }
  Optional!(Document) responseXML() {
    return XMLHttpRequest_responseXML_Get(handle);
  }
}
struct XMLHttpRequestEventTarget {
  EventTarget _parent;
  alias _parent this;
  void onloadstart(EventHandler onloadstart) {
    XMLHttpRequestEventTarget_onloadstart_Set(handle, !onloadstart.empty, onloadstart.value);
  }
  EventHandler onloadstart() {
    return XMLHttpRequestEventTarget_onloadstart_Get(handle);
  }
  void onprogress(EventHandler onprogress) {
    XMLHttpRequestEventTarget_onprogress_Set(handle, !onprogress.empty, onprogress.value);
  }
  EventHandler onprogress() {
    return XMLHttpRequestEventTarget_onprogress_Get(handle);
  }
  void onabort(EventHandler onabort) {
    XMLHttpRequestEventTarget_onabort_Set(handle, !onabort.empty, onabort.value);
  }
  EventHandler onabort() {
    return XMLHttpRequestEventTarget_onabort_Get(handle);
  }
  void onerror(EventHandler onerror) {
    XMLHttpRequestEventTarget_onerror_Set(handle, !onerror.empty, onerror.value);
  }
  EventHandler onerror() {
    return XMLHttpRequestEventTarget_onerror_Get(handle);
  }
  void onload(EventHandler onload) {
    XMLHttpRequestEventTarget_onload_Set(handle, !onload.empty, onload.value);
  }
  EventHandler onload() {
    return XMLHttpRequestEventTarget_onload_Get(handle);
  }
  void ontimeout(EventHandler ontimeout) {
    XMLHttpRequestEventTarget_ontimeout_Set(handle, !ontimeout.empty, ontimeout.value);
  }
  EventHandler ontimeout() {
    return XMLHttpRequestEventTarget_ontimeout_Get(handle);
  }
  void onloadend(EventHandler onloadend) {
    XMLHttpRequestEventTarget_onloadend_Set(handle, !onloadend.empty, onloadend.value);
  }
  EventHandler onloadend() {
    return XMLHttpRequestEventTarget_onloadend_Get(handle);
  }
}
enum XMLHttpRequestResponseType {
  none,
  arraybuffer,
  blob,
  document,
  json,
  text
}
struct XMLHttpRequestUpload {
  XMLHttpRequestEventTarget _parent;
  alias _parent this;
}


extern (C) void FormData_append__string_string(JsHandle, JsHandle, JsHandle);
extern (C) void FormData_append__string_JsHandle_string(JsHandle, JsHandle, JsHandle, JsHandle);
extern (C) void FormData_delete(JsHandle, JsHandle);
extern (C) Optional!(FormDataEntryValue) FormData_get(JsHandle, JsHandle);
extern (C) JsHandle FormData_getAll(JsHandle, JsHandle);
extern (C) bool FormData_has(JsHandle, JsHandle);
extern (C) void FormData_set__string_string(JsHandle, JsHandle, JsHandle);
extern (C) void FormData_set__string_JsHandle_string(JsHandle, JsHandle, JsHandle, JsHandle);
extern (C) bool ProgressEvent_lengthComputable_Get(JsHandle);
extern (C) ulong ProgressEvent_loaded_Get(JsHandle);
extern (C) ulong ProgressEvent_total_Get(JsHandle);
extern (C) void ProgressEventInit_lengthComputable_Set(JsHandle, bool);
extern (C) bool ProgressEventInit_lengthComputable_Get(JsHandle);
extern (C) void ProgressEventInit_loaded_Set(JsHandle, ulong);
extern (C) ulong ProgressEventInit_loaded_Get(JsHandle);
extern (C) void ProgressEventInit_total_Set(JsHandle, ulong);
extern (C) ulong ProgressEventInit_total_Get(JsHandle);
extern (C) void XMLHttpRequest_onreadystatechange_Set(JsHandle, EventHandler);
extern (C) EventHandler XMLHttpRequest_onreadystatechange_Get(JsHandle);
extern (C) ushort XMLHttpRequest_readyState_Get(JsHandle);
extern (C) void XMLHttpRequest_open__string_string(JsHandle, JsHandle, JsHandle);
extern (C) void XMLHttpRequest_open__string_string_bool_optional_string_optional_string(JsHandle, JsHandle, JsHandle, bool, bool, JsHandle, bool, JsHandle);
extern (C) void XMLHttpRequest_setRequestHeader(JsHandle, JsHandle, JsHandle);
extern (C) void XMLHttpRequest_timeout_Set(JsHandle, uint);
extern (C) uint XMLHttpRequest_timeout_Get(JsHandle);
extern (C) void XMLHttpRequest_withCredentials_Set(JsHandle, bool);
extern (C) bool XMLHttpRequest_withCredentials_Get(JsHandle);
extern (C) JsHandle XMLHttpRequest_upload_Get(JsHandle);
extern (C) void XMLHttpRequest_send(JsHandle, bool, SumType!(Document, SumType!()));
extern (C) void XMLHttpRequest_abort(JsHandle);
extern (C) JsHandle XMLHttpRequest_responseURL_Get(JsHandle);
extern (C) ushort XMLHttpRequest_status_Get(JsHandle);
extern (C) JsHandle XMLHttpRequest_statusText_Get(JsHandle);
extern (C) Optional!(ByteString) XMLHttpRequest_getResponseHeader(JsHandle, JsHandle);
extern (C) JsHandle XMLHttpRequest_getAllResponseHeaders(JsHandle);
extern (C) void XMLHttpRequest_overrideMimeType(JsHandle, string);
extern (C) void XMLHttpRequest_responseType_Set(JsHandle, XMLHttpRequestResponseType);
extern (C) XMLHttpRequestResponseType XMLHttpRequest_responseType_Get(JsHandle);
extern (C) JsHandle XMLHttpRequest_response_Get(JsHandle);
extern (C) JsHandle XMLHttpRequest_responseText_Get(JsHandle);
extern (C) Optional!(Document) XMLHttpRequest_responseXML_Get(JsHandle);
extern (C) void XMLHttpRequestEventTarget_onloadstart_Set(JsHandle, EventHandler);
extern (C) EventHandler XMLHttpRequestEventTarget_onloadstart_Get(JsHandle);
extern (C) void XMLHttpRequestEventTarget_onprogress_Set(JsHandle, EventHandler);
extern (C) EventHandler XMLHttpRequestEventTarget_onprogress_Get(JsHandle);
extern (C) void XMLHttpRequestEventTarget_onabort_Set(JsHandle, EventHandler);
extern (C) EventHandler XMLHttpRequestEventTarget_onabort_Get(JsHandle);
extern (C) void XMLHttpRequestEventTarget_onerror_Set(JsHandle, EventHandler);
extern (C) EventHandler XMLHttpRequestEventTarget_onerror_Get(JsHandle);
extern (C) void XMLHttpRequestEventTarget_onload_Set(JsHandle, EventHandler);
extern (C) EventHandler XMLHttpRequestEventTarget_onload_Get(JsHandle);
extern (C) void XMLHttpRequestEventTarget_ontimeout_Set(JsHandle, EventHandler);
extern (C) EventHandler XMLHttpRequestEventTarget_ontimeout_Get(JsHandle);
extern (C) void XMLHttpRequestEventTarget_onloadend_Set(JsHandle, EventHandler);
extern (C) EventHandler XMLHttpRequestEventTarget_onloadend_Get(JsHandle);