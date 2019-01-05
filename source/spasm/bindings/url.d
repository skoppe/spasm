module spasm.bindings.url;

import spasm.types;
struct URL {
  JsHandle handle;
  alias handle this;
  void href(string href) {
    URL_href_Set(handle, href.handle);
  }
  string href() {
    return string(URL_href_Get(handle));
  }
  string origin() {
    return string(URL_origin_Get(handle));
  }
  void protocol(string protocol) {
    URL_protocol_Set(handle, protocol.handle);
  }
  string protocol() {
    return string(URL_protocol_Get(handle));
  }
  void username(string username) {
    URL_username_Set(handle, username.handle);
  }
  string username() {
    return string(URL_username_Get(handle));
  }
  void password(string password) {
    URL_password_Set(handle, password.handle);
  }
  string password() {
    return string(URL_password_Get(handle));
  }
  void host(string host) {
    URL_host_Set(handle, host.handle);
  }
  string host() {
    return string(URL_host_Get(handle));
  }
  void hostname(string hostname) {
    URL_hostname_Set(handle, hostname.handle);
  }
  string hostname() {
    return string(URL_hostname_Get(handle));
  }
  void port(string port) {
    URL_port_Set(handle, port.handle);
  }
  string port() {
    return string(URL_port_Get(handle));
  }
  void pathname(string pathname) {
    URL_pathname_Set(handle, pathname.handle);
  }
  string pathname() {
    return string(URL_pathname_Get(handle));
  }
  void search(string search) {
    URL_search_Set(handle, search.handle);
  }
  string search() {
    return string(URL_search_Get(handle));
  }
  URLSearchParams searchParams() {
    return URLSearchParams(URL_searchParams_Get(handle));
  }
  void hash(string hash) {
    URL_hash_Set(handle, hash.handle);
  }
  string hash() {
    return string(URL_hash_Get(handle));
  }
  string toJSON() {
    return string(URL_toJSON(handle));
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
  void append(string name, string value) {
    URLSearchParams_append(handle, name.handle, value.handle);
  }
  void delete_(string name) {
    URLSearchParams_delete(handle, name.handle);
  }
  Optional!(string) get(string name) {
    return URLSearchParams_get(handle, name.handle);
  }
  Sequence!(string) getAll(string name) {
    return Sequence!(string)(URLSearchParams_getAll(handle, name.handle));
  }
  bool has(string name) {
    return URLSearchParams_has(handle, name.handle);
  }
  void set(string name, string value) {
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
extern (C) Optional!(string) URLSearchParams_get(JsHandle, JsHandle);
extern (C) JsHandle URLSearchParams_getAll(JsHandle, JsHandle);
extern (C) bool URLSearchParams_has(JsHandle, JsHandle);
extern (C) void URLSearchParams_set(JsHandle, JsHandle, JsHandle);
extern (C) void URLSearchParams_sort(JsHandle);