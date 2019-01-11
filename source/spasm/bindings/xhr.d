module spasm.bindings.xhr;

import spasm.types;
import spasm.bindings.dom;
import spasm.bindings.fetch;
import spasm.bindings.fileapi;
import spasm.bindings.html;

struct FormData {
  JsHandle handle;
  alias handle this;
  auto append(string name, string value) {
    FormData_append__string_string(this.handle, name, value);
  }
  auto append(string name, Blob blobValue, string filename) {
    FormData_append__string_Handle_string(this.handle, name, blobValue.handle, filename);
  }
  auto delete_(string name) {
    FormData_delete(this.handle, name);
  }
  auto get(string name) {
    auto result = FormData_get(this.handle, name);
    return result;
  }
  auto getAll(string name) {
    auto result = Sequence!(FormDataEntryValue)(JsHandle(FormData_getAll(this.handle, name)));
    return result;
  }
  auto has(string name) {
    auto result = FormData_has(this.handle, name);
    return result;
  }
  auto set(string name, string value) {
    FormData_set__string_string(this.handle, name, value);
  }
  auto set(string name, Blob blobValue, string filename) {
    FormData_set__string_Handle_string(this.handle, name, blobValue.handle, filename);
  }
}
alias FormDataEntryValue = SumType!(File, string);
struct ProgressEvent {
  Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Event(h);
  }
  auto lengthComputable() {
    auto result = ProgressEvent_lengthComputable_Get(this._parent);
    return result;
  }
  auto loaded() {
    auto result = ProgressEvent_loaded_Get(this._parent);
    return result;
  }
  auto total() {
    auto result = ProgressEvent_total_Get(this._parent);
    return result;
  }
}
struct ProgressEventInit {
  EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventInit(h);
  }
  auto lengthComputable(bool lengthComputable) {
    ProgressEventInit_lengthComputable_Set(this._parent, lengthComputable);
  }
  auto lengthComputable() {
    auto result = ProgressEventInit_lengthComputable_Get(this._parent);
    return result;
  }
  auto loaded(ulong loaded) {
    ProgressEventInit_loaded_Set(this._parent, loaded);
  }
  auto loaded() {
    auto result = ProgressEventInit_loaded_Get(this._parent);
    return result;
  }
  auto total(ulong total) {
    ProgressEventInit_total_Set(this._parent, total);
  }
  auto total() {
    auto result = ProgressEventInit_total_Get(this._parent);
    return result;
  }
}
struct XMLHttpRequest {
  XMLHttpRequestEventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = XMLHttpRequestEventTarget(h);
  }
  auto onreadystatechange(EventHandler onreadystatechange) {
    XMLHttpRequest_onreadystatechange_Set(this._parent, onreadystatechange);
  }
  auto onreadystatechange() {
    auto result = XMLHttpRequest_onreadystatechange_Get(this._parent);
    return result;
  }
  enum ushort UNSENT = 0;
  enum ushort OPENED = 1;
  enum ushort HEADERS_RECEIVED = 2;
  enum ushort LOADING = 3;
  enum ushort DONE = 4;
  auto readyState() {
    auto result = XMLHttpRequest_readyState_Get(this._parent);
    return result;
  }
  auto open(string method, string url) {
    XMLHttpRequest_open__string_string(this._parent, method, url);
  }
  auto open(string method, string url, bool async, Optional!(string) username /* = no!(string) */, Optional!(string) password /* = no!(string) */) {
    XMLHttpRequest_open__string_string_bool_optional_string_optional_string(this._parent, method, url, async, !username.empty, username.front, !password.empty, password.front);
  }
  auto setRequestHeader(string name, string value) {
    XMLHttpRequest_setRequestHeader(this._parent, name, value);
  }
  auto timeout(uint timeout) {
    XMLHttpRequest_timeout_Set(this._parent, timeout);
  }
  auto timeout() {
    auto result = XMLHttpRequest_timeout_Get(this._parent);
    return result;
  }
  auto withCredentials(bool withCredentials) {
    XMLHttpRequest_withCredentials_Set(this._parent, withCredentials);
  }
  auto withCredentials() {
    auto result = XMLHttpRequest_withCredentials_Get(this._parent);
    return result;
  }
  auto upload() {
    auto result = XMLHttpRequestUpload(JsHandle(XMLHttpRequest_upload_Get(this._parent)));
    return result;
  }
  auto send(Optional!(SumType!(Document, BodyInit)) body_ /* = no!(SumType!(Document, BodyInit)) */) {
    XMLHttpRequest_send(this._parent, !body_.empty, body_.front);
  }
  auto abort() {
    XMLHttpRequest_abort(this._parent);
  }
  auto responseURL() {
    auto result = XMLHttpRequest_responseURL_Get(this._parent);
    return result;
  }
  auto status() {
    auto result = XMLHttpRequest_status_Get(this._parent);
    return result;
  }
  auto statusText() {
    auto result = XMLHttpRequest_statusText_Get(this._parent);
    return result;
  }
  auto getResponseHeader(string name) {
    auto result = XMLHttpRequest_getResponseHeader(this._parent, name);
    return result;
  }
  auto getAllResponseHeaders() {
    auto result = XMLHttpRequest_getAllResponseHeaders(this._parent);
    return result;
  }
  auto overrideMimeType(string mime) {
    XMLHttpRequest_overrideMimeType(this._parent, mime);
  }
  auto responseType(XMLHttpRequestResponseType responseType) {
    XMLHttpRequest_responseType_Set(this._parent, responseType);
  }
  auto responseType() {
    auto result = XMLHttpRequest_responseType_Get(this._parent);
    return result;
  }
  auto response() {
    auto result = Any(JsHandle(XMLHttpRequest_response_Get(this._parent)));
    return result;
  }
  auto responseText() {
    auto result = XMLHttpRequest_responseText_Get(this._parent);
    return result;
  }
  auto responseXML() {
    auto result = XMLHttpRequest_responseXML_Get(this._parent);
    return result;
  }
}
struct XMLHttpRequestEventTarget {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto onloadstart(EventHandler onloadstart) {
    XMLHttpRequestEventTarget_onloadstart_Set(this._parent, onloadstart);
  }
  auto onloadstart() {
    auto result = XMLHttpRequestEventTarget_onloadstart_Get(this._parent);
    return result;
  }
  auto onprogress(EventHandler onprogress) {
    XMLHttpRequestEventTarget_onprogress_Set(this._parent, onprogress);
  }
  auto onprogress() {
    auto result = XMLHttpRequestEventTarget_onprogress_Get(this._parent);
    return result;
  }
  auto onabort(EventHandler onabort) {
    XMLHttpRequestEventTarget_onabort_Set(this._parent, onabort);
  }
  auto onabort() {
    auto result = XMLHttpRequestEventTarget_onabort_Get(this._parent);
    return result;
  }
  auto onerror(EventHandler onerror) {
    XMLHttpRequestEventTarget_onerror_Set(this._parent, onerror);
  }
  auto onerror() {
    auto result = XMLHttpRequestEventTarget_onerror_Get(this._parent);
    return result;
  }
  auto onload(EventHandler onload) {
    XMLHttpRequestEventTarget_onload_Set(this._parent, onload);
  }
  auto onload() {
    auto result = XMLHttpRequestEventTarget_onload_Get(this._parent);
    return result;
  }
  auto ontimeout(EventHandler ontimeout) {
    XMLHttpRequestEventTarget_ontimeout_Set(this._parent, ontimeout);
  }
  auto ontimeout() {
    auto result = XMLHttpRequestEventTarget_ontimeout_Get(this._parent);
    return result;
  }
  auto onloadend(EventHandler onloadend) {
    XMLHttpRequestEventTarget_onloadend_Set(this._parent, onloadend);
  }
  auto onloadend() {
    auto result = XMLHttpRequestEventTarget_onloadend_Get(this._parent);
    return result;
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
  this(JsHandle h) {
    _parent = XMLHttpRequestEventTarget(h);
  }
}


extern (C) void FormData_append__string_string(Handle, string, string);
extern (C) void FormData_append__string_Handle_string(Handle, string, Handle, string);
extern (C) void FormData_delete(Handle, string);
extern (C) Optional!(FormDataEntryValue) FormData_get(Handle, string);
extern (C) Handle FormData_getAll(Handle, string);
extern (C) bool FormData_has(Handle, string);
extern (C) void FormData_set__string_string(Handle, string, string);
extern (C) void FormData_set__string_Handle_string(Handle, string, Handle, string);
extern (C) bool ProgressEvent_lengthComputable_Get(Handle);
extern (C) ulong ProgressEvent_loaded_Get(Handle);
extern (C) ulong ProgressEvent_total_Get(Handle);
extern (C) void ProgressEventInit_lengthComputable_Set(Handle, bool);
extern (C) bool ProgressEventInit_lengthComputable_Get(Handle);
extern (C) void ProgressEventInit_loaded_Set(Handle, ulong);
extern (C) ulong ProgressEventInit_loaded_Get(Handle);
extern (C) void ProgressEventInit_total_Set(Handle, ulong);
extern (C) ulong ProgressEventInit_total_Get(Handle);
extern (C) void XMLHttpRequest_onreadystatechange_Set(Handle, EventHandler);
extern (C) EventHandler XMLHttpRequest_onreadystatechange_Get(Handle);
extern (C) ushort XMLHttpRequest_readyState_Get(Handle);
extern (C) void XMLHttpRequest_open__string_string(Handle, string, string);
extern (C) void XMLHttpRequest_open__string_string_bool_optional_string_optional_string(Handle, string, string, bool, bool, string, bool, string);
extern (C) void XMLHttpRequest_setRequestHeader(Handle, string, string);
extern (C) void XMLHttpRequest_timeout_Set(Handle, uint);
extern (C) uint XMLHttpRequest_timeout_Get(Handle);
extern (C) void XMLHttpRequest_withCredentials_Set(Handle, bool);
extern (C) bool XMLHttpRequest_withCredentials_Get(Handle);
extern (C) Handle XMLHttpRequest_upload_Get(Handle);
extern (C) void XMLHttpRequest_send(Handle, bool, SumType!(Document, BodyInit));
extern (C) void XMLHttpRequest_abort(Handle);
extern (C) string XMLHttpRequest_responseURL_Get(Handle);
extern (C) ushort XMLHttpRequest_status_Get(Handle);
extern (C) string XMLHttpRequest_statusText_Get(Handle);
extern (C) Optional!(string) XMLHttpRequest_getResponseHeader(Handle, string);
extern (C) string XMLHttpRequest_getAllResponseHeaders(Handle);
extern (C) void XMLHttpRequest_overrideMimeType(Handle, string);
extern (C) void XMLHttpRequest_responseType_Set(Handle, XMLHttpRequestResponseType);
extern (C) XMLHttpRequestResponseType XMLHttpRequest_responseType_Get(Handle);
extern (C) Handle XMLHttpRequest_response_Get(Handle);
extern (C) string XMLHttpRequest_responseText_Get(Handle);
extern (C) Optional!(Document) XMLHttpRequest_responseXML_Get(Handle);
extern (C) void XMLHttpRequestEventTarget_onloadstart_Set(Handle, EventHandler);
extern (C) EventHandler XMLHttpRequestEventTarget_onloadstart_Get(Handle);
extern (C) void XMLHttpRequestEventTarget_onprogress_Set(Handle, EventHandler);
extern (C) EventHandler XMLHttpRequestEventTarget_onprogress_Get(Handle);
extern (C) void XMLHttpRequestEventTarget_onabort_Set(Handle, EventHandler);
extern (C) EventHandler XMLHttpRequestEventTarget_onabort_Get(Handle);
extern (C) void XMLHttpRequestEventTarget_onerror_Set(Handle, EventHandler);
extern (C) EventHandler XMLHttpRequestEventTarget_onerror_Get(Handle);
extern (C) void XMLHttpRequestEventTarget_onload_Set(Handle, EventHandler);
extern (C) EventHandler XMLHttpRequestEventTarget_onload_Get(Handle);
extern (C) void XMLHttpRequestEventTarget_ontimeout_Set(Handle, EventHandler);
extern (C) EventHandler XMLHttpRequestEventTarget_ontimeout_Get(Handle);
extern (C) void XMLHttpRequestEventTarget_onloadend_Set(Handle, EventHandler);
extern (C) EventHandler XMLHttpRequestEventTarget_onloadend_Get(Handle);