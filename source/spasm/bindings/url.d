module spasm.bindings.url;

import spasm.types;
import spasm.bindings.fileapi;
import spasm.bindings.mediasource;

struct URL {
  JsHandle handle;
  alias handle this;
  auto href(string href) {
    URL_href_Set(this.handle, href);
  }
  auto href() {
    return URL_href_Get(this.handle);
  }
  auto origin() {
    return URL_origin_Get(this.handle);
  }
  auto protocol(string protocol) {
    URL_protocol_Set(this.handle, protocol);
  }
  auto protocol() {
    return URL_protocol_Get(this.handle);
  }
  auto username(string username) {
    URL_username_Set(this.handle, username);
  }
  auto username() {
    return URL_username_Get(this.handle);
  }
  auto password(string password) {
    URL_password_Set(this.handle, password);
  }
  auto password() {
    return URL_password_Get(this.handle);
  }
  auto host(string host) {
    URL_host_Set(this.handle, host);
  }
  auto host() {
    return URL_host_Get(this.handle);
  }
  auto hostname(string hostname) {
    URL_hostname_Set(this.handle, hostname);
  }
  auto hostname() {
    return URL_hostname_Get(this.handle);
  }
  auto port(string port) {
    URL_port_Set(this.handle, port);
  }
  auto port() {
    return URL_port_Get(this.handle);
  }
  auto pathname(string pathname) {
    URL_pathname_Set(this.handle, pathname);
  }
  auto pathname() {
    return URL_pathname_Get(this.handle);
  }
  auto search(string search) {
    URL_search_Set(this.handle, search);
  }
  auto search() {
    return URL_search_Get(this.handle);
  }
  auto searchParams() {
    return URLSearchParams(URL_searchParams_Get(this.handle));
  }
  auto hash(string hash) {
    URL_hash_Set(this.handle, hash);
  }
  auto hash() {
    return URL_hash_Get(this.handle);
  }
  auto toJSON() {
    return URL_toJSON(this.handle);
  }
  auto createObjectURL(Blob blob) {
    return URL_createObjectURL__JsHandle(this.handle, blob.handle);
  }
  auto revokeObjectURL(string url) {
    URL_revokeObjectURL(this.handle, url);
  }
  auto createObjectURL(MediaSource mediaSource) {
    return URL_createObjectURL__JsHandle(this.handle, mediaSource.handle);
  }
}
struct URLSearchParams {
  JsHandle handle;
  alias handle this;
  auto append(string name, string value) {
    URLSearchParams_append(this.handle, name, value);
  }
  auto delete_(string name) {
    URLSearchParams_delete(this.handle, name);
  }
  auto get(string name) {
    return URLSearchParams_get(this.handle, name);
  }
  auto getAll(string name) {
    return Sequence!(string)(URLSearchParams_getAll(this.handle, name));
  }
  auto has(string name) {
    return URLSearchParams_has(this.handle, name);
  }
  auto set(string name, string value) {
    URLSearchParams_set(this.handle, name, value);
  }
  auto sort() {
    URLSearchParams_sort(this.handle);
  }
}


extern (C) void URL_href_Set(JsHandle, string);
extern (C) string URL_href_Get(JsHandle);
extern (C) string URL_origin_Get(JsHandle);
extern (C) void URL_protocol_Set(JsHandle, string);
extern (C) string URL_protocol_Get(JsHandle);
extern (C) void URL_username_Set(JsHandle, string);
extern (C) string URL_username_Get(JsHandle);
extern (C) void URL_password_Set(JsHandle, string);
extern (C) string URL_password_Get(JsHandle);
extern (C) void URL_host_Set(JsHandle, string);
extern (C) string URL_host_Get(JsHandle);
extern (C) void URL_hostname_Set(JsHandle, string);
extern (C) string URL_hostname_Get(JsHandle);
extern (C) void URL_port_Set(JsHandle, string);
extern (C) string URL_port_Get(JsHandle);
extern (C) void URL_pathname_Set(JsHandle, string);
extern (C) string URL_pathname_Get(JsHandle);
extern (C) void URL_search_Set(JsHandle, string);
extern (C) string URL_search_Get(JsHandle);
extern (C) JsHandle URL_searchParams_Get(JsHandle);
extern (C) void URL_hash_Set(JsHandle, string);
extern (C) string URL_hash_Get(JsHandle);
extern (C) string URL_toJSON(JsHandle);
extern (C) string URL_createObjectURL__JsHandle(JsHandle, JsHandle);
extern (C) void URL_revokeObjectURL(JsHandle, string);
extern (C) void URLSearchParams_append(JsHandle, string, string);
extern (C) void URLSearchParams_delete(JsHandle, string);
extern (C) Optional!(string) URLSearchParams_get(JsHandle, string);
extern (C) JsHandle URLSearchParams_getAll(JsHandle, string);
extern (C) bool URLSearchParams_has(JsHandle, string);
extern (C) void URLSearchParams_set(JsHandle, string, string);
extern (C) void URLSearchParams_sort(JsHandle);