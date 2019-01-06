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
    return Headers_get(this.handle, name);
  }
  auto has(string name) {
    return Headers_has(this.handle, name);
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
    return Request_method_Get(this.handle);
  }
  auto url() {
    return Request_url_Get(this.handle);
  }
  auto headers() {
    return Headers(Request_headers_Get(this.handle));
  }
  auto destination() {
    return Request_destination_Get(this.handle);
  }
  auto referrer() {
    return Request_referrer_Get(this.handle);
  }
  auto referrerPolicy() {
    return Request_referrerPolicy_Get(this.handle);
  }
  auto mode() {
    return Request_mode_Get(this.handle);
  }
  auto credentials() {
    return Request_credentials_Get(this.handle);
  }
  auto cache() {
    return Request_cache_Get(this.handle);
  }
  auto redirect() {
    return Request_redirect_Get(this.handle);
  }
  auto integrity() {
    return Request_integrity_Get(this.handle);
  }
  auto keepalive() {
    return Request_keepalive_Get(this.handle);
  }
  auto isReloadNavigation() {
    return Request_isReloadNavigation_Get(this.handle);
  }
  auto isHistoryNavigation() {
    return Request_isHistoryNavigation_Get(this.handle);
  }
  auto signal() {
    return AbortSignal(Request_signal_Get(this.handle));
  }
  auto clone() {
    return Request(Request_clone(this.handle));
  }
  auto body_() {
    return Body_body_Get(this.handle);
  }
  auto bodyUsed() {
    return Body_bodyUsed_Get(this.handle);
  }
  auto arrayBuffer() {
    return Promise!(ArrayBuffer)(Body_arrayBuffer(this.handle));
  }
  auto blob() {
    return Promise!(Blob)(Body_blob(this.handle));
  }
  auto formData() {
    return Promise!(FormData)(Body_formData(this.handle));
  }
  auto json() {
    return Promise!(Any)(Body_json(this.handle));
  }
  auto text() {
    return Promise!(string)(Body_text(this.handle));
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
  auto method(string method) {
    RequestInit_method_Set(this.handle, method);
  }
  auto method() {
    return RequestInit_method_Get(this.handle);
  }
  auto headers(HeadersInit headers) {
    RequestInit_headers_Set(this.handle, headers);
  }
  auto headers() {
    return RequestInit_headers_Get(this.handle);
  }
  auto body_(Optional!(BodyInit) body_) {
    RequestInit_body_Set(this.handle, !body_.empty, body_.front);
  }
  auto body_() {
    return RequestInit_body_Get(this.handle);
  }
  auto referrer(string referrer) {
    RequestInit_referrer_Set(this.handle, referrer);
  }
  auto referrer() {
    return RequestInit_referrer_Get(this.handle);
  }
  auto referrerPolicy(ReferrerPolicy referrerPolicy) {
    RequestInit_referrerPolicy_Set(this.handle, referrerPolicy);
  }
  auto referrerPolicy() {
    return RequestInit_referrerPolicy_Get(this.handle);
  }
  auto mode(RequestMode mode) {
    RequestInit_mode_Set(this.handle, mode);
  }
  auto mode() {
    return RequestInit_mode_Get(this.handle);
  }
  auto credentials(RequestCredentials credentials) {
    RequestInit_credentials_Set(this.handle, credentials);
  }
  auto credentials() {
    return RequestInit_credentials_Get(this.handle);
  }
  auto cache(RequestCache cache) {
    RequestInit_cache_Set(this.handle, cache);
  }
  auto cache() {
    return RequestInit_cache_Get(this.handle);
  }
  auto redirect(RequestRedirect redirect) {
    RequestInit_redirect_Set(this.handle, redirect);
  }
  auto redirect() {
    return RequestInit_redirect_Get(this.handle);
  }
  auto integrity(string integrity) {
    RequestInit_integrity_Set(this.handle, integrity);
  }
  auto integrity() {
    return RequestInit_integrity_Get(this.handle);
  }
  auto keepalive(bool keepalive) {
    RequestInit_keepalive_Set(this.handle, keepalive);
  }
  auto keepalive() {
    return RequestInit_keepalive_Get(this.handle);
  }
  auto signal(Optional!(AbortSignal) signal) {
    RequestInit_signal_Set(this.handle, !signal.empty, signal.front.handle);
  }
  auto signal() {
    return RequestInit_signal_Get(this.handle);
  }
  auto window(Any window) {
    RequestInit_window_Set(this.handle, window.handle);
  }
  auto window() {
    return Any(RequestInit_window_Get(this.handle));
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
    return Response(Response_error(this.handle));
  }
  auto redirect(string url, ushort status /* = 302 */) {
    return Response(Response_redirect(this.handle, url, status));
  }
  auto type() {
    return Response_type_Get(this.handle);
  }
  auto url() {
    return Response_url_Get(this.handle);
  }
  auto redirected() {
    return Response_redirected_Get(this.handle);
  }
  auto status() {
    return Response_status_Get(this.handle);
  }
  auto ok() {
    return Response_ok_Get(this.handle);
  }
  auto statusText() {
    return Response_statusText_Get(this.handle);
  }
  auto headers() {
    return Headers(Response_headers_Get(this.handle));
  }
  auto trailer() {
    return Promise!(Headers)(Response_trailer_Get(this.handle));
  }
  auto clone() {
    return Response(Response_clone(this.handle));
  }
  auto body_() {
    return Body_body_Get(this.handle);
  }
  auto bodyUsed() {
    return Body_bodyUsed_Get(this.handle);
  }
  auto arrayBuffer() {
    return Promise!(ArrayBuffer)(Body_arrayBuffer(this.handle));
  }
  auto blob() {
    return Promise!(Blob)(Body_blob(this.handle));
  }
  auto formData() {
    return Promise!(FormData)(Body_formData(this.handle));
  }
  auto json() {
    return Promise!(Any)(Body_json(this.handle));
  }
  auto text() {
    return Promise!(string)(Body_text(this.handle));
  }
}
struct ResponseInit {
  JsHandle handle;
  alias handle this;
  auto status(ushort status) {
    ResponseInit_status_Set(this.handle, status);
  }
  auto status() {
    return ResponseInit_status_Get(this.handle);
  }
  auto statusText(string statusText) {
    ResponseInit_statusText_Set(this.handle, statusText);
  }
  auto statusText() {
    return ResponseInit_statusText_Get(this.handle);
  }
  auto headers(HeadersInit headers) {
    ResponseInit_headers_Set(this.handle, headers);
  }
  auto headers() {
    return ResponseInit_headers_Get(this.handle);
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


extern (C) Optional!(ReadableStream) Body_body_Get(JsHandle);
extern (C) bool Body_bodyUsed_Get(JsHandle);
extern (C) JsHandle Body_arrayBuffer(JsHandle);
extern (C) JsHandle Body_blob(JsHandle);
extern (C) JsHandle Body_formData(JsHandle);
extern (C) JsHandle Body_json(JsHandle);
extern (C) JsHandle Body_text(JsHandle);
extern (C) void Headers_append(JsHandle, string, string);
extern (C) void Headers_delete(JsHandle, string);
extern (C) Optional!(string) Headers_get(JsHandle, string);
extern (C) bool Headers_has(JsHandle, string);
extern (C) void Headers_set(JsHandle, string, string);
extern (C) string Request_method_Get(JsHandle);
extern (C) string Request_url_Get(JsHandle);
extern (C) JsHandle Request_headers_Get(JsHandle);
extern (C) RequestDestination Request_destination_Get(JsHandle);
extern (C) string Request_referrer_Get(JsHandle);
extern (C) ReferrerPolicy Request_referrerPolicy_Get(JsHandle);
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
extern (C) void RequestInit_method_Set(JsHandle, string);
extern (C) string RequestInit_method_Get(JsHandle);
extern (C) void RequestInit_headers_Set(JsHandle, HeadersInit);
extern (C) HeadersInit RequestInit_headers_Get(JsHandle);
extern (C) void RequestInit_body_Set(JsHandle, bool, BodyInit);
extern (C) Optional!(BodyInit) RequestInit_body_Get(JsHandle);
extern (C) void RequestInit_referrer_Set(JsHandle, string);
extern (C) string RequestInit_referrer_Get(JsHandle);
extern (C) void RequestInit_referrerPolicy_Set(JsHandle, ReferrerPolicy);
extern (C) ReferrerPolicy RequestInit_referrerPolicy_Get(JsHandle);
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
extern (C) void RequestInit_window_Set(JsHandle, JsHandle);
extern (C) JsHandle RequestInit_window_Get(JsHandle);
extern (C) JsHandle Response_error(JsHandle);
extern (C) JsHandle Response_redirect(JsHandle, string, ushort);
extern (C) ResponseType Response_type_Get(JsHandle);
extern (C) string Response_url_Get(JsHandle);
extern (C) bool Response_redirected_Get(JsHandle);
extern (C) ushort Response_status_Get(JsHandle);
extern (C) bool Response_ok_Get(JsHandle);
extern (C) string Response_statusText_Get(JsHandle);
extern (C) JsHandle Response_headers_Get(JsHandle);
extern (C) JsHandle Response_trailer_Get(JsHandle);
extern (C) JsHandle Response_clone(JsHandle);
extern (C) void ResponseInit_status_Set(JsHandle, ushort);
extern (C) ushort ResponseInit_status_Get(JsHandle);
extern (C) void ResponseInit_statusText_Set(JsHandle, string);
extern (C) string ResponseInit_statusText_Get(JsHandle);
extern (C) void ResponseInit_headers_Set(JsHandle, HeadersInit);
extern (C) HeadersInit ResponseInit_headers_Get(JsHandle);