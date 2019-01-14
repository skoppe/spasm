module spasm.bindings.fetch;

import spasm.types;
import spasm.bindings.common;
import spasm.bindings.dom;
import spasm.bindings.fileapi;
import spasm.bindings.url;
import spasm.bindings.webappsec;
import spasm.bindings.xhr;

alias BodyInit = SumType!(Blob, BufferSource, FormData, URLSearchParams, ReadableStream, string);
struct Headers {
  JsHandle handle;
  alias handle this;
  auto append(string name, string value) {
    Headers_append(this.handle, name, value);
  }
  auto delete_(string name) {
    Headers_delete(this.handle, name);
  }
  auto get(string name) {
    auto result = Headers_get(this.handle, name);
    return result;
  }
  auto has(string name) {
    auto result = Headers_has(this.handle, name);
    return result;
  }
  auto set(string name, string value) {
    Headers_set(this.handle, name, value);
  }
}
alias HeadersInit = SumType!(Sequence!(Sequence!(string)), Record!(string, string));
struct Request {
  JsHandle handle;
  alias handle this;
  auto method() {
    auto result = Request_method_Get(this.handle);
    return result;
  }
  auto url() {
    auto result = Request_url_Get(this.handle);
    return result;
  }
  auto headers() {
    auto result = Headers(JsHandle(Request_headers_Get(this.handle)));
    return result;
  }
  auto destination() {
    auto result = Request_destination_Get(this.handle);
    return result;
  }
  auto referrer() {
    auto result = Request_referrer_Get(this.handle);
    return result;
  }
  auto referrerPolicy() {
    auto result = Request_referrerPolicy_Get(this.handle);
    return result;
  }
  auto mode() {
    auto result = Request_mode_Get(this.handle);
    return result;
  }
  auto credentials() {
    auto result = Request_credentials_Get(this.handle);
    return result;
  }
  auto cache() {
    auto result = Request_cache_Get(this.handle);
    return result;
  }
  auto redirect() {
    auto result = Request_redirect_Get(this.handle);
    return result;
  }
  auto integrity() {
    auto result = Request_integrity_Get(this.handle);
    return result;
  }
  auto keepalive() {
    auto result = Request_keepalive_Get(this.handle);
    return result;
  }
  auto isReloadNavigation() {
    auto result = Request_isReloadNavigation_Get(this.handle);
    return result;
  }
  auto isHistoryNavigation() {
    auto result = Request_isHistoryNavigation_Get(this.handle);
    return result;
  }
  auto signal() {
    auto result = AbortSignal(JsHandle(Request_signal_Get(this.handle)));
    return result;
  }
  auto clone() {
    auto result = Request(JsHandle(Request_clone(this.handle)));
    return result;
  }
  auto body_() {
    auto result = Body_body_Get(this.handle);
    return result;
  }
  auto bodyUsed() {
    auto result = Body_bodyUsed_Get(this.handle);
    return result;
  }
  auto arrayBuffer() {
    auto result = Promise!(ArrayBuffer)(JsHandle(Body_arrayBuffer(this.handle)));
    return result;
  }
  auto blob() {
    auto result = Promise!(Blob)(JsHandle(Body_blob(this.handle)));
    return result;
  }
  auto formData() {
    auto result = Promise!(FormData)(JsHandle(Body_formData(this.handle)));
    return result;
  }
  auto json() {
    auto result = Promise!(Any)(JsHandle(Body_json(this.handle)));
    return result;
  }
  auto text() {
    auto result = Promise!(string)(JsHandle(Body_text(this.handle)));
    return result;
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
alias RequestInfo = SumType!(Request, string);
struct RequestInit {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return RequestInit(JsHandle(spasm_add__object()));
  }
  auto method(string method) {
    RequestInit_method_Set(this.handle, method);
  }
  auto method() {
    auto result = RequestInit_method_Get(this.handle);
    return result;
  }
  auto headers(HeadersInit headers) {
    RequestInit_headers_Set(this.handle, headers);
  }
  auto headers() {
    auto result = RequestInit_headers_Get(this.handle);
    return result;
  }
  auto body_(Optional!(BodyInit) body_) {
    RequestInit_body_Set(this.handle, !body_.empty, body_.front);
  }
  auto body_() {
    auto result = RequestInit_body_Get(this.handle);
    return result;
  }
  auto referrer(string referrer) {
    RequestInit_referrer_Set(this.handle, referrer);
  }
  auto referrer() {
    auto result = RequestInit_referrer_Get(this.handle);
    return result;
  }
  auto referrerPolicy(ReferrerPolicy referrerPolicy) {
    RequestInit_referrerPolicy_Set(this.handle, referrerPolicy);
  }
  auto referrerPolicy() {
    auto result = RequestInit_referrerPolicy_Get(this.handle);
    return result;
  }
  auto mode(RequestMode mode) {
    RequestInit_mode_Set(this.handle, mode);
  }
  auto mode() {
    auto result = RequestInit_mode_Get(this.handle);
    return result;
  }
  auto credentials(RequestCredentials credentials) {
    RequestInit_credentials_Set(this.handle, credentials);
  }
  auto credentials() {
    auto result = RequestInit_credentials_Get(this.handle);
    return result;
  }
  auto cache(RequestCache cache) {
    RequestInit_cache_Set(this.handle, cache);
  }
  auto cache() {
    auto result = RequestInit_cache_Get(this.handle);
    return result;
  }
  auto redirect(RequestRedirect redirect) {
    RequestInit_redirect_Set(this.handle, redirect);
  }
  auto redirect() {
    auto result = RequestInit_redirect_Get(this.handle);
    return result;
  }
  auto integrity(string integrity) {
    RequestInit_integrity_Set(this.handle, integrity);
  }
  auto integrity() {
    auto result = RequestInit_integrity_Get(this.handle);
    return result;
  }
  auto keepalive(bool keepalive) {
    RequestInit_keepalive_Set(this.handle, keepalive);
  }
  auto keepalive() {
    auto result = RequestInit_keepalive_Get(this.handle);
    return result;
  }
  auto signal(Optional!(AbortSignal) signal) {
    RequestInit_signal_Set(this.handle, !signal.empty, signal.front.handle);
  }
  auto signal() {
    auto result = RequestInit_signal_Get(this.handle);
    return result;
  }
  auto window(T0)(T0 window) {
    Handle _handle_window = getOrCreateHandle(window);
    RequestInit_window_Set(this.handle, _handle_window);
    dropHandle!(T0)(_handle_window);
  }
  auto window() {
    auto result = Any(JsHandle(RequestInit_window_Get(this.handle)));
    return result;
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
  auto error() {
    auto result = Response(JsHandle(Response_error(this.handle)));
    return result;
  }
  auto redirect(string url, ushort status /* = 302 */) {
    auto result = Response(JsHandle(Response_redirect(this.handle, url, status)));
    return result;
  }
  auto type() {
    auto result = Response_type_Get(this.handle);
    return result;
  }
  auto url() {
    auto result = Response_url_Get(this.handle);
    return result;
  }
  auto redirected() {
    auto result = Response_redirected_Get(this.handle);
    return result;
  }
  auto status() {
    auto result = Response_status_Get(this.handle);
    return result;
  }
  auto ok() {
    auto result = Response_ok_Get(this.handle);
    return result;
  }
  auto statusText() {
    auto result = Response_statusText_Get(this.handle);
    return result;
  }
  auto headers() {
    auto result = Headers(JsHandle(Response_headers_Get(this.handle)));
    return result;
  }
  auto trailer() {
    auto result = Promise!(Headers)(JsHandle(Response_trailer_Get(this.handle)));
    return result;
  }
  auto clone() {
    auto result = Response(JsHandle(Response_clone(this.handle)));
    return result;
  }
  auto body_() {
    auto result = Body_body_Get(this.handle);
    return result;
  }
  auto bodyUsed() {
    auto result = Body_bodyUsed_Get(this.handle);
    return result;
  }
  auto arrayBuffer() {
    auto result = Promise!(ArrayBuffer)(JsHandle(Body_arrayBuffer(this.handle)));
    return result;
  }
  auto blob() {
    auto result = Promise!(Blob)(JsHandle(Body_blob(this.handle)));
    return result;
  }
  auto formData() {
    auto result = Promise!(FormData)(JsHandle(Body_formData(this.handle)));
    return result;
  }
  auto json() {
    auto result = Promise!(Any)(JsHandle(Body_json(this.handle)));
    return result;
  }
  auto text() {
    auto result = Promise!(string)(JsHandle(Body_text(this.handle)));
    return result;
  }
}
struct ResponseInit {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return ResponseInit(JsHandle(spasm_add__object()));
  }
  auto status(ushort status) {
    ResponseInit_status_Set(this.handle, status);
  }
  auto status() {
    auto result = ResponseInit_status_Get(this.handle);
    return result;
  }
  auto statusText(string statusText) {
    ResponseInit_statusText_Set(this.handle, statusText);
  }
  auto statusText() {
    auto result = ResponseInit_statusText_Get(this.handle);
    return result;
  }
  auto headers(HeadersInit headers) {
    ResponseInit_headers_Set(this.handle, headers);
  }
  auto headers() {
    auto result = ResponseInit_headers_Get(this.handle);
    return result;
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


extern (C) Optional!(ReadableStream) Body_body_Get(Handle);
extern (C) bool Body_bodyUsed_Get(Handle);
extern (C) Handle Body_arrayBuffer(Handle);
extern (C) Handle Body_blob(Handle);
extern (C) Handle Body_formData(Handle);
extern (C) Handle Body_json(Handle);
extern (C) Handle Body_text(Handle);
extern (C) void Headers_append(Handle, string, string);
extern (C) void Headers_delete(Handle, string);
extern (C) Optional!(string) Headers_get(Handle, string);
extern (C) bool Headers_has(Handle, string);
extern (C) void Headers_set(Handle, string, string);
extern (C) string Request_method_Get(Handle);
extern (C) string Request_url_Get(Handle);
extern (C) Handle Request_headers_Get(Handle);
extern (C) RequestDestination Request_destination_Get(Handle);
extern (C) string Request_referrer_Get(Handle);
extern (C) ReferrerPolicy Request_referrerPolicy_Get(Handle);
extern (C) RequestMode Request_mode_Get(Handle);
extern (C) RequestCredentials Request_credentials_Get(Handle);
extern (C) RequestCache Request_cache_Get(Handle);
extern (C) RequestRedirect Request_redirect_Get(Handle);
extern (C) string Request_integrity_Get(Handle);
extern (C) bool Request_keepalive_Get(Handle);
extern (C) bool Request_isReloadNavigation_Get(Handle);
extern (C) bool Request_isHistoryNavigation_Get(Handle);
extern (C) Handle Request_signal_Get(Handle);
extern (C) Handle Request_clone(Handle);
extern (C) void RequestInit_create(Handle);
extern (C) void RequestInit_method_Set(Handle, string);
extern (C) string RequestInit_method_Get(Handle);
extern (C) void RequestInit_headers_Set(Handle, HeadersInit);
extern (C) HeadersInit RequestInit_headers_Get(Handle);
extern (C) void RequestInit_body_Set(Handle, bool, BodyInit);
extern (C) Optional!(BodyInit) RequestInit_body_Get(Handle);
extern (C) void RequestInit_referrer_Set(Handle, string);
extern (C) string RequestInit_referrer_Get(Handle);
extern (C) void RequestInit_referrerPolicy_Set(Handle, ReferrerPolicy);
extern (C) ReferrerPolicy RequestInit_referrerPolicy_Get(Handle);
extern (C) void RequestInit_mode_Set(Handle, RequestMode);
extern (C) RequestMode RequestInit_mode_Get(Handle);
extern (C) void RequestInit_credentials_Set(Handle, RequestCredentials);
extern (C) RequestCredentials RequestInit_credentials_Get(Handle);
extern (C) void RequestInit_cache_Set(Handle, RequestCache);
extern (C) RequestCache RequestInit_cache_Get(Handle);
extern (C) void RequestInit_redirect_Set(Handle, RequestRedirect);
extern (C) RequestRedirect RequestInit_redirect_Get(Handle);
extern (C) void RequestInit_integrity_Set(Handle, string);
extern (C) string RequestInit_integrity_Get(Handle);
extern (C) void RequestInit_keepalive_Set(Handle, bool);
extern (C) bool RequestInit_keepalive_Get(Handle);
extern (C) void RequestInit_signal_Set(Handle, bool, Handle);
extern (C) Optional!(AbortSignal) RequestInit_signal_Get(Handle);
extern (C) void RequestInit_window_Set(Handle, Handle);
extern (C) Handle RequestInit_window_Get(Handle);
extern (C) Handle Response_error(Handle);
extern (C) Handle Response_redirect(Handle, string, ushort);
extern (C) ResponseType Response_type_Get(Handle);
extern (C) string Response_url_Get(Handle);
extern (C) bool Response_redirected_Get(Handle);
extern (C) ushort Response_status_Get(Handle);
extern (C) bool Response_ok_Get(Handle);
extern (C) string Response_statusText_Get(Handle);
extern (C) Handle Response_headers_Get(Handle);
extern (C) Handle Response_trailer_Get(Handle);
extern (C) Handle Response_clone(Handle);
extern (C) void ResponseInit_create(Handle);
extern (C) void ResponseInit_status_Set(Handle, ushort);
extern (C) ushort ResponseInit_status_Get(Handle);
extern (C) void ResponseInit_statusText_Set(Handle, string);
extern (C) string ResponseInit_statusText_Get(Handle);
extern (C) void ResponseInit_headers_Set(Handle, HeadersInit);
extern (C) HeadersInit ResponseInit_headers_Get(Handle);