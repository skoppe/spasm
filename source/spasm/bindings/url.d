module spasm.bindings.url;

import spasm.types;
struct URL {
  JsHandle handle;
  alias handle this;
  void href(USVString href) {
    URL_href_Set(handle, href.handle);
  }
  USVString href() {
    return USVString(URL_href_Get(handle));
  }
  USVString origin() {
    return USVString(URL_origin_Get(handle));
  }
  void protocol(USVString protocol) {
    URL_protocol_Set(handle, protocol.handle);
  }
  USVString protocol() {
    return USVString(URL_protocol_Get(handle));
  }
  void username(USVString username) {
    URL_username_Set(handle, username.handle);
  }
  USVString username() {
    return USVString(URL_username_Get(handle));
  }
  void password(USVString password) {
    URL_password_Set(handle, password.handle);
  }
  USVString password() {
    return USVString(URL_password_Get(handle));
  }
  void host(USVString host) {
    URL_host_Set(handle, host.handle);
  }
  USVString host() {
    return USVString(URL_host_Get(handle));
  }
  void hostname(USVString hostname) {
    URL_hostname_Set(handle, hostname.handle);
  }
  USVString hostname() {
    return USVString(URL_hostname_Get(handle));
  }
  void port(USVString port) {
    URL_port_Set(handle, port.handle);
  }
  USVString port() {
    return USVString(URL_port_Get(handle));
  }
  void pathname(USVString pathname) {
    URL_pathname_Set(handle, pathname.handle);
  }
  USVString pathname() {
    return USVString(URL_pathname_Get(handle));
  }
  void search(USVString search) {
    URL_search_Set(handle, search.handle);
  }
  USVString search() {
    return USVString(URL_search_Get(handle));
  }
  URLSearchParams searchParams() {
    return URLSearchParams(URL_searchParams_Get(handle));
  }
  void hash(USVString hash) {
    URL_hash_Set(handle, hash.handle);
  }
  USVString hash() {
    return USVString(URL_hash_Get(handle));
  }
  USVString toJSON() {
    return USVString(URL_toJSON(handle));
  }
  string createObjectURL(Blob blob) {
    return URL_createObjectURL(handle, blob.handle);
  }
  void revokeObjectURL(string url) {
    URL_revokeObjectURL(handle, url);
  }
}
struct URLSearchParams {
  JsHandle handle;
  alias handle this;
  void append(USVString name, USVString value) {
    URLSearchParams_append(handle, name.handle, value.handle);
  }
  void delete_(USVString name) {
    URLSearchParams_delete(handle, name.handle);
  }
  Optional!(USVString) get(USVString name) {
    return URLSearchParams_get(handle, name.handle);
  }
  Sequence!(USVString) getAll(USVString name) {
    return Sequence!(USVString)(URLSearchParams_getAll(handle, name.handle));
  }
  bool has(USVString name) {
    return URLSearchParams_has(handle, name.handle);
  }
  void set(USVString name, USVString value) {
    URLSearchParams_set(handle, name.handle, value.handle);
  }
  void sort() {
    URLSearchParams_sort(handle);
  }
}


extern (C) void URL_href_Set(JsHandle, JsHandle);
extern (C) JsHandle URL_href_Get(JsHandle);
extern (C) JsHandle URL_origin_Get(JsHandle);
extern (C) void URL_protocol_Set(JsHandle, JsHandle);
extern (C) JsHandle URL_protocol_Get(JsHandle);
extern (C) void URL_username_Set(JsHandle, JsHandle);
extern (C) JsHandle URL_username_Get(JsHandle);
extern (C) void URL_password_Set(JsHandle, JsHandle);
extern (C) JsHandle URL_password_Get(JsHandle);
extern (C) void URL_host_Set(JsHandle, JsHandle);
extern (C) JsHandle URL_host_Get(JsHandle);
extern (C) void URL_hostname_Set(JsHandle, JsHandle);
extern (C) JsHandle URL_hostname_Get(JsHandle);
extern (C) void URL_port_Set(JsHandle, JsHandle);
extern (C) JsHandle URL_port_Get(JsHandle);
extern (C) void URL_pathname_Set(JsHandle, JsHandle);
extern (C) JsHandle URL_pathname_Get(JsHandle);
extern (C) void URL_search_Set(JsHandle, JsHandle);
extern (C) JsHandle URL_search_Get(JsHandle);
extern (C) JsHandle URL_searchParams_Get(JsHandle);
extern (C) void URL_hash_Set(JsHandle, JsHandle);
extern (C) JsHandle URL_hash_Get(JsHandle);
extern (C) JsHandle URL_toJSON(JsHandle);
extern (C) string URL_createObjectURL(JsHandle, JsHandle);
extern (C) void URL_revokeObjectURL(JsHandle, string);
extern (C) void URLSearchParams_append(JsHandle, JsHandle, JsHandle);
extern (C) void URLSearchParams_delete(JsHandle, JsHandle);
extern (C) Optional!(USVString) URLSearchParams_get(JsHandle, JsHandle);
extern (C) JsHandle URLSearchParams_getAll(JsHandle, JsHandle);
extern (C) bool URLSearchParams_has(JsHandle, JsHandle);
extern (C) void URLSearchParams_set(JsHandle, JsHandle, JsHandle);
extern (C) void URLSearchParams_sort(JsHandle);