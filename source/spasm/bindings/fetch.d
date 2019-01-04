module spasm.bindings.fetch;

import spasm.types;
import spasm.bindings.dom : AbortSignal;
import spasm.bindings.fileapi : Blob;
import spasm.bindings.common : BufferSource;
import spasm.bindings.xhr : FormData;
import spasm.bindings.url : URLSearchParams;

alias BodyInit = SumType!(Blob, BufferSource, FormData, URLSearchParams, ReadableStream, USVString);
struct Headers {
  JsHandle handle;
  alias handle this;
  void append(ByteString name, ByteString value) {
    Headers_append(handle, name.handle, value.handle);
  }
  void delete_(ByteString name) {
    Headers_delete(handle, name.handle);
  }
  Optional!(ByteString) get(ByteString name) {
    return Headers_get(handle, name.handle);
  }
  bool has(ByteString name) {
    return Headers_has(handle, name.handle);
  }
  void set(ByteString name, ByteString value) {
    Headers_set(handle, name.handle, value.handle);
  }
}
alias HeadersInit = SumType!(Sequence!(Sequence!(ByteString)), Record!(ByteString, ByteString));
struct Request {
  JsHandle handle;
  alias handle this;
  ByteString method() {
    return ByteString(Request_method_Get(handle));
  }
  USVString url() {
    return USVString(Request_url_Get(handle));
  }
  Headers headers() {
    return Headers(Request_headers_Get(handle));
  }
  RequestDestination destination() {
    return Request_destination_Get(handle);
  }
  USVString referrer() {
    return USVString(Request_referrer_Get(handle));
  }
  ReferrerPolicy referrerPolicy() {
    return ReferrerPolicy(Request_referrerPolicy_Get(handle));
  }
  RequestMode mode() {
    return Request_mode_Get(handle);
  }
  RequestCredentials credentials() {
    return Request_credentials_Get(handle);
  }
  RequestCache cache() {
    return Request_cache_Get(handle);
  }
  RequestRedirect redirect() {
    return Request_redirect_Get(handle);
  }
  string integrity() {
    return Request_integrity_Get(handle);
  }
  bool keepalive() {
    return Request_keepalive_Get(handle);
  }
  bool isReloadNavigation() {
    return Request_isReloadNavigation_Get(handle);
  }
  bool isHistoryNavigation() {
    return Request_isHistoryNavigation_Get(handle);
  }
  AbortSignal signal() {
    return AbortSignal(Request_signal_Get(handle));
  }
  Request clone() {
    return Request(Request_clone(handle));
  }
  Optional!(ReadableStream) body_() {
    return Body_body_Get(handle);
  }
  bool bodyUsed() {
    return Body_bodyUsed_Get(handle);
  }
  Promise!(ArrayBuffer) arrayBuffer() {
    return Promise!(ArrayBuffer)(Body_arrayBuffer(handle));
  }
  Promise!(Blob) blob() {
    return Promise!(Blob)(Body_blob(handle));
  }
  Promise!(FormData) formData() {
    return Promise!(FormData)(Body_formData(handle));
  }
  Promise!(Any) json() {
    return Promise!(Any)(Body_json(handle));
  }
  Promise!(USVString) text() {
    return Promise!(USVString)(Body_text(handle));
  }
}
enum RequestCache {
  default_,
  no_store,
  reload,
  no_cache,
  force_cache,
  only_if_cached
}
enum RequestCredentials {
  omit,
  same_origin,
  include
}
enum RequestDestination {
  none,
  audio,
  audioworklet,
  document,
  embed,
  font,
  image,
  manifest,
  object,
  paintworklet,
  report,
  script,
  sharedworker,
  style,
  track,
  video,
  worker,
  xslt
}
alias RequestInfo = SumType!(Request, USVString);
struct RequestInit {
  JsHandle handle;
  alias handle this;
  void method(ByteString method) {
    RequestInit_method_Set(handle, method.handle);
  }
  ByteString method() {
    return ByteString(RequestInit_method_Get(handle));
  }
  void headers(HeadersInit headers) {
    RequestInit_headers_Set(handle, headers);
  }
  HeadersInit headers() {
    return RequestInit_headers_Get(handle);
  }
  void body_(Optional!(BodyInit) body_) {
    RequestInit_body_Set(handle, !body_.empty, body_.value);
  }
  Optional!(BodyInit) body_() {
    return RequestInit_body_Get(handle);
  }
  void referrer(USVString referrer) {
    RequestInit_referrer_Set(handle, referrer.handle);
  }
  USVString referrer() {
    return USVString(RequestInit_referrer_Get(handle));
  }
  void referrerPolicy(ReferrerPolicy referrerPolicy) {
    RequestInit_referrerPolicy_Set(handle, referrerPolicy.handle);
  }
  ReferrerPolicy referrerPolicy() {
    return ReferrerPolicy(RequestInit_referrerPolicy_Get(handle));
  }
  void mode(RequestMode mode) {
    RequestInit_mode_Set(handle, mode);
  }
  RequestMode mode() {
    return RequestInit_mode_Get(handle);
  }
  void credentials(RequestCredentials credentials) {
    RequestInit_credentials_Set(handle, credentials);
  }
  RequestCredentials credentials() {
    return RequestInit_credentials_Get(handle);
  }
  void cache(RequestCache cache) {
    RequestInit_cache_Set(handle, cache);
  }
  RequestCache cache() {
    return RequestInit_cache_Get(handle);
  }
  void redirect(RequestRedirect redirect) {
    RequestInit_redirect_Set(handle, redirect);
  }
  RequestRedirect redirect() {
    return RequestInit_redirect_Get(handle);
  }
  void integrity(string integrity) {
    RequestInit_integrity_Set(handle, integrity);
  }
  string integrity() {
    return RequestInit_integrity_Get(handle);
  }
  void keepalive(bool keepalive) {
    RequestInit_keepalive_Set(handle, keepalive);
  }
  bool keepalive() {
    return RequestInit_keepalive_Get(handle);
  }
  void signal(Optional!(AbortSignal) signal) {
    RequestInit_signal_Set(handle, !signal.empty, signal.value.handle);
  }
  Optional!(AbortSignal) signal() {
    return RequestInit_signal_Get(handle);
  }
  void window(Any window) {
    RequestInit_window_Set(handle, window.handle);
  }
  Any window() {
    return Any(RequestInit_window_Get(handle));
  }
}
enum RequestMode {
  navigate,
  same_origin,
  no_cors,
  cors
}
enum RequestRedirect {
  follow,
  error,
  manual
}
struct Response {
  JsHandle handle;
  alias handle this;
  Response error() {
    return Response(Response_error(handle));
  }
  Response redirect(USVString url, ushort status /* = 302 */) {
    return Response(Response_redirect(handle, url.handle, status));
  }
  ResponseType type() {
    return Response_type_Get(handle);
  }
  USVString url() {
    return USVString(Response_url_Get(handle));
  }
  bool redirected() {
    return Response_redirected_Get(handle);
  }
  ushort status() {
    return Response_status_Get(handle);
  }
  bool ok() {
    return Response_ok_Get(handle);
  }
  ByteString statusText() {
    return ByteString(Response_statusText_Get(handle));
  }
  Headers headers() {
    return Headers(Response_headers_Get(handle));
  }
  Promise!(Headers) trailer() {
    return Promise!(Headers)(Response_trailer_Get(handle));
  }
  Response clone() {
    return Response(Response_clone(handle));
  }
  Optional!(ReadableStream) body_() {
    return Body_body_Get(handle);
  }
  bool bodyUsed() {
    return Body_bodyUsed_Get(handle);
  }
  Promise!(ArrayBuffer) arrayBuffer() {
    return Promise!(ArrayBuffer)(Body_arrayBuffer(handle));
  }
  Promise!(Blob) blob() {
    return Promise!(Blob)(Body_blob(handle));
  }
  Promise!(FormData) formData() {
    return Promise!(FormData)(Body_formData(handle));
  }
  Promise!(Any) json() {
    return Promise!(Any)(Body_json(handle));
  }
  Promise!(USVString) text() {
    return Promise!(USVString)(Body_text(handle));
  }
}
struct ResponseInit {
  JsHandle handle;
  alias handle this;
  void status(ushort status) {
    ResponseInit_status_Set(handle, status);
  }
  ushort status() {
    return ResponseInit_status_Get(handle);
  }
  void statusText(ByteString statusText) {
    ResponseInit_statusText_Set(handle, statusText.handle);
  }
  ByteString statusText() {
    return ByteString(ResponseInit_statusText_Get(handle));
  }
  void headers(HeadersInit headers) {
    ResponseInit_headers_Set(handle, headers);
  }
  HeadersInit headers() {
    return ResponseInit_headers_Get(handle);
  }
}
enum ResponseType {
  basic,
  cors,
  default_,
  error,
  opaque,
  opaqueredirect
}


extern (C) void Headers_append(JsHandle, JsHandle, JsHandle);
extern (C) void Headers_delete(JsHandle, JsHandle);
extern (C) Optional!(ByteString) Headers_get(JsHandle, JsHandle);
extern (C) bool Headers_has(JsHandle, JsHandle);
extern (C) void Headers_set(JsHandle, JsHandle, JsHandle);
extern (C) JsHandle Request_method_Get(JsHandle);
extern (C) JsHandle Request_url_Get(JsHandle);
extern (C) JsHandle Request_headers_Get(JsHandle);
extern (C) RequestDestination Request_destination_Get(JsHandle);
extern (C) JsHandle Request_referrer_Get(JsHandle);
extern (C) JsHandle Request_referrerPolicy_Get(JsHandle);
extern (C) RequestMode Request_mode_Get(JsHandle);
extern (C) RequestCredentials Request_credentials_Get(JsHandle);
extern (C) RequestCache Request_cache_Get(JsHandle);
extern (C) RequestRedirect Request_redirect_Get(JsHandle);
extern (C) string Request_integrity_Get(JsHandle);
extern (C) bool Request_keepalive_Get(JsHandle);
extern (C) bool Request_isReloadNavigation_Get(JsHandle);
extern (C) bool Request_isHistoryNavigation_Get(JsHandle);
extern (C) JsHandle Request_signal_Get(JsHandle);
extern (C) JsHandle Request_clone(JsHandle);
extern (C) Optional!(ReadableStream) Body_body_Get(JsHandle);
extern (C) bool Body_bodyUsed_Get(JsHandle);
extern (C) JsHandle Body_arrayBuffer(JsHandle);
extern (C) JsHandle Body_blob(JsHandle);
extern (C) JsHandle Body_formData(JsHandle);
extern (C) JsHandle Body_json(JsHandle);
extern (C) JsHandle Body_text(JsHandle);
extern (C) void RequestInit_method_Set(JsHandle, JsHandle);
extern (C) JsHandle RequestInit_method_Get(JsHandle);
extern (C) void RequestInit_headers_Set(JsHandle, HeadersInit);
extern (C) HeadersInit RequestInit_headers_Get(JsHandle);
extern (C) void RequestInit_body_Set(JsHandle, bool, BodyInit);
extern (C) Optional!(BodyInit) RequestInit_body_Get(JsHandle);
extern (C) void RequestInit_referrer_Set(JsHandle, JsHandle);
extern (C) JsHandle RequestInit_referrer_Get(JsHandle);
extern (C) void RequestInit_referrerPolicy_Set(JsHandle, JsHandle);
extern (C) JsHandle RequestInit_referrerPolicy_Get(JsHandle);
extern (C) void RequestInit_mode_Set(JsHandle, RequestMode);
extern (C) RequestMode RequestInit_mode_Get(JsHandle);
extern (C) void RequestInit_credentials_Set(JsHandle, RequestCredentials);
extern (C) RequestCredentials RequestInit_credentials_Get(JsHandle);
extern (C) void RequestInit_cache_Set(JsHandle, RequestCache);
extern (C) RequestCache RequestInit_cache_Get(JsHandle);
extern (C) void RequestInit_redirect_Set(JsHandle, RequestRedirect);
extern (C) RequestRedirect RequestInit_redirect_Get(JsHandle);
extern (C) void RequestInit_integrity_Set(JsHandle, string);
extern (C) string RequestInit_integrity_Get(JsHandle);
extern (C) void RequestInit_keepalive_Set(JsHandle, bool);
extern (C) bool RequestInit_keepalive_Get(JsHandle);
extern (C) void RequestInit_signal_Set(JsHandle, bool, JsHandle);
extern (C) Optional!(AbortSignal) RequestInit_signal_Get(JsHandle);
extern (C) void RequestInit_window_Set(JsHandle, Any);
extern (C) JsHandle RequestInit_window_Get(JsHandle);
extern (C) JsHandle Response_error(JsHandle);
extern (C) JsHandle Response_redirect(JsHandle, JsHandle, ushort);
extern (C) ResponseType Response_type_Get(JsHandle);
extern (C) JsHandle Response_url_Get(JsHandle);
extern (C) bool Response_redirected_Get(JsHandle);
extern (C) ushort Response_status_Get(JsHandle);
extern (C) bool Response_ok_Get(JsHandle);
extern (C) JsHandle Response_statusText_Get(JsHandle);
extern (C) JsHandle Response_headers_Get(JsHandle);
extern (C) JsHandle Response_trailer_Get(JsHandle);
extern (C) JsHandle Response_clone(JsHandle);
extern (C) Optional!(ReadableStream) Body_body_Get(JsHandle);
extern (C) bool Body_bodyUsed_Get(JsHandle);
extern (C) JsHandle Body_arrayBuffer(JsHandle);
extern (C) JsHandle Body_blob(JsHandle);
extern (C) JsHandle Body_formData(JsHandle);
extern (C) JsHandle Body_json(JsHandle);
extern (C) JsHandle Body_text(JsHandle);
extern (C) void ResponseInit_status_Set(JsHandle, ushort);
extern (C) ushort ResponseInit_status_Get(JsHandle);
extern (C) void ResponseInit_statusText_Set(JsHandle, JsHandle);
extern (C) JsHandle ResponseInit_statusText_Get(JsHandle);
extern (C) void ResponseInit_headers_Set(JsHandle, HeadersInit);
extern (C) HeadersInit ResponseInit_headers_Get(JsHandle);