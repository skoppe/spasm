module spasm.bindings.xhr;

import spasm.types;
import spasm.bindings.dom;
import spasm.bindings.fetch;
import spasm.bindings.fileapi;
import spasm.bindings.html;

nothrow:
struct FormData {
  nothrow:
  JsHandle handle;
  alias handle this;
  void append(string name, string value) {
    FormData_append__string_string(this.handle, name, value);
  }
  void append(string name, Blob blobValue, string filename) {
    FormData_append__string_Handle_string(this.handle, name, blobValue.handle, filename);
  }
  void append(string name, Blob blobValue) {
    FormData_append_0(this.handle, name, blobValue.handle);
  }
  void delete_(string name) {
    FormData_delete(this.handle, name);
  }
  auto get(string name) {
    return FormData_get(this.handle, name);
  }
  auto getAll(string name) {
    return Sequence!(FormDataEntryValue)(JsHandle(FormData_getAll(this.handle, name)));
  }
  auto has(string name) {
    return FormData_has(this.handle, name);
  }
  void set(string name, string value) {
    FormData_set__string_string(this.handle, name, value);
  }
  void set(string name, Blob blobValue, string filename) {
    FormData_set__string_Handle_string(this.handle, name, blobValue.handle, filename);
  }
  void set(string name, Blob blobValue) {
    FormData_set_0(this.handle, name, blobValue.handle);
  }
}
alias FormDataEntryValue = SumType!(File, string);
struct ProgressEvent {
  nothrow:
  spasm.bindings.dom.Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .Event(h);
  }
  auto lengthComputable() {
    return ProgressEvent_lengthComputable_Get(this._parent);
  }
  auto loaded() {
    return ProgressEvent_loaded_Get(this._parent);
  }
  auto total() {
    return ProgressEvent_total_Get(this._parent);
  }
}
struct ProgressEventInit {
  nothrow:
  spasm.bindings.dom.EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .EventInit(h);
  }
  static auto create() {
    return ProgressEventInit(JsHandle(spasm_add__object()));
  }
  void lengthComputable(bool lengthComputable) {
    ProgressEventInit_lengthComputable_Set(this._parent, lengthComputable);
  }
  auto lengthComputable() {
    return ProgressEventInit_lengthComputable_Get(this._parent);
  }
  void loaded(ulong loaded) {
    ProgressEventInit_loaded_Set(this._parent, loaded);
  }
  auto loaded() {
    return ProgressEventInit_loaded_Get(this._parent);
  }
  void total(ulong total) {
    ProgressEventInit_total_Set(this._parent, total);
  }
  auto total() {
    return ProgressEventInit_total_Get(this._parent);
  }
}
struct XMLHttpRequest {
  nothrow:
  spasm.bindings.xhr.XMLHttpRequestEventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .XMLHttpRequestEventTarget(h);
  }
  void onreadystatechange(EventHandler onreadystatechange) {
    XMLHttpRequest_onreadystatechange_Set(this._parent, onreadystatechange);
  }
  auto onreadystatechange() {
    return XMLHttpRequest_onreadystatechange_Get(this._parent);
  }
  enum ushort UNSENT = 0;
  enum ushort OPENED = 1;
  enum ushort HEADERS_RECEIVED = 2;
  enum ushort LOADING = 3;
  enum ushort DONE = 4;
  auto readyState() {
    return XMLHttpRequest_readyState_Get(this._parent);
  }
  void open(string method, string url) {
    XMLHttpRequest_open__string_string(this._parent, method, url);
  }
  void open(string method, string url, bool async, Optional!(string) username /* = no!(string) */, Optional!(string) password /* = no!(string) */) {
    XMLHttpRequest_open__string_string_bool_optional_string_optional_string(this._parent, method, url, async, !username.empty, username.front, !password.empty, password.front);
  }
  void open(string method, string url, bool async, Optional!(string) username /* = no!(string) */) {
    XMLHttpRequest_open_0(this._parent, method, url, async, !username.empty, username.front);
  }
  void open(string method, string url, bool async) {
    XMLHttpRequest_open_1(this._parent, method, url, async);
  }
  void setRequestHeader(string name, string value) {
    XMLHttpRequest_setRequestHeader(this._parent, name, value);
  }
  void timeout(uint timeout) {
    XMLHttpRequest_timeout_Set(this._parent, timeout);
  }
  auto timeout() {
    return XMLHttpRequest_timeout_Get(this._parent);
  }
  void withCredentials(bool withCredentials) {
    XMLHttpRequest_withCredentials_Set(this._parent, withCredentials);
  }
  auto withCredentials() {
    return XMLHttpRequest_withCredentials_Get(this._parent);
  }
  auto upload() {
    return XMLHttpRequestUpload(JsHandle(XMLHttpRequest_upload_Get(this._parent)));
  }
  void send(Optional!(SumType!(Document, BodyInit)) body_ /* = no!(SumType!(Document, BodyInit)) */) {
    XMLHttpRequest_send(this._parent, !body_.empty, body_.front);
  }
  void send() {
    XMLHttpRequest_send_0(this._parent);
  }
  void abort() {
    XMLHttpRequest_abort(this._parent);
  }
  auto responseURL() {
    return XMLHttpRequest_responseURL_Get(this._parent);
  }
  auto status() {
    return XMLHttpRequest_status_Get(this._parent);
  }
  auto statusText() {
    return XMLHttpRequest_statusText_Get(this._parent);
  }
  auto getResponseHeader(string name) {
    return XMLHttpRequest_getResponseHeader(this._parent, name);
  }
  auto getAllResponseHeaders() {
    return XMLHttpRequest_getAllResponseHeaders(this._parent);
  }
  void overrideMimeType(string mime) {
    XMLHttpRequest_overrideMimeType(this._parent, mime);
  }
  void responseType(XMLHttpRequestResponseType responseType) {
    XMLHttpRequest_responseType_Set(this._parent, responseType);
  }
  auto responseType() {
    return XMLHttpRequest_responseType_Get(this._parent);
  }
  auto response() {
    return Any(JsHandle(XMLHttpRequest_response_Get(this._parent)));
  }
  auto responseText() {
    return XMLHttpRequest_responseText_Get(this._parent);
  }
  auto responseXML() {
    return XMLHttpRequest_responseXML_Get(this._parent);
  }
}
struct XMLHttpRequestEventTarget {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .EventTarget(h);
  }
  void onloadstart(EventHandler onloadstart) {
    XMLHttpRequestEventTarget_onloadstart_Set(this._parent, onloadstart);
  }
  auto onloadstart() {
    return XMLHttpRequestEventTarget_onloadstart_Get(this._parent);
  }
  void onprogress(EventHandler onprogress) {
    XMLHttpRequestEventTarget_onprogress_Set(this._parent, onprogress);
  }
  auto onprogress() {
    return XMLHttpRequestEventTarget_onprogress_Get(this._parent);
  }
  void onabort(EventHandler onabort) {
    XMLHttpRequestEventTarget_onabort_Set(this._parent, onabort);
  }
  auto onabort() {
    return XMLHttpRequestEventTarget_onabort_Get(this._parent);
  }
  void onerror(EventHandler onerror) {
    XMLHttpRequestEventTarget_onerror_Set(this._parent, onerror);
  }
  auto onerror() {
    return XMLHttpRequestEventTarget_onerror_Get(this._parent);
  }
  void onload(EventHandler onload) {
    XMLHttpRequestEventTarget_onload_Set(this._parent, onload);
  }
  auto onload() {
    return XMLHttpRequestEventTarget_onload_Get(this._parent);
  }
  void ontimeout(EventHandler ontimeout) {
    XMLHttpRequestEventTarget_ontimeout_Set(this._parent, ontimeout);
  }
  auto ontimeout() {
    return XMLHttpRequestEventTarget_ontimeout_Get(this._parent);
  }
  void onloadend(EventHandler onloadend) {
    XMLHttpRequestEventTarget_onloadend_Set(this._parent, onloadend);
  }
  auto onloadend() {
    return XMLHttpRequestEventTarget_onloadend_Get(this._parent);
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
  nothrow:
  spasm.bindings.xhr.XMLHttpRequestEventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .XMLHttpRequestEventTarget(h);
  }
}


extern (C) void FormData_append__string_string(Handle, string, string);
extern (C) void FormData_append__string_Handle_string(Handle, string, Handle, string);
extern (C) void FormData_append_0(Handle, string, Handle);
extern (C) void FormData_delete(Handle, string);
extern (C) Optional!(FormDataEntryValue) FormData_get(Handle, string);
extern (C) Handle FormData_getAll(Handle, string);
extern (C) bool FormData_has(Handle, string);
extern (C) void FormData_set__string_string(Handle, string, string);
extern (C) void FormData_set__string_Handle_string(Handle, string, Handle, string);
extern (C) void FormData_set_0(Handle, string, Handle);
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
extern (C) void XMLHttpRequest_open_0(Handle, string, string, bool, bool, string);
extern (C) void XMLHttpRequest_open_1(Handle, string, string, bool);
extern (C) void XMLHttpRequest_setRequestHeader(Handle, string, string);
extern (C) void XMLHttpRequest_timeout_Set(Handle, uint);
extern (C) uint XMLHttpRequest_timeout_Get(Handle);
extern (C) void XMLHttpRequest_withCredentials_Set(Handle, bool);
extern (C) bool XMLHttpRequest_withCredentials_Get(Handle);
extern (C) Handle XMLHttpRequest_upload_Get(Handle);
extern (C) void XMLHttpRequest_send(Handle, bool, SumType!(Document, BodyInit));
extern (C) void XMLHttpRequest_send_0(Handle);
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