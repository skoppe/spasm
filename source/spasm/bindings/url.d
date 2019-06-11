module spasm.bindings.url;

import spasm.types;
import spasm.bindings.fileapi;
import spasm.bindings.mediasource;

nothrow:
struct URL {
  nothrow:
  JsHandle handle;
  alias handle this;
  void href(string href) {
    URL_href_Set(this.handle, href);
  }
  auto href() {
    return URL_href_Get(this.handle);
  }
  auto origin() {
    return URL_origin_Get(this.handle);
  }
  void protocol(string protocol) {
    URL_protocol_Set(this.handle, protocol);
  }
  auto protocol() {
    return URL_protocol_Get(this.handle);
  }
  void username(string username) {
    URL_username_Set(this.handle, username);
  }
  auto username() {
    return URL_username_Get(this.handle);
  }
  void password(string password) {
    URL_password_Set(this.handle, password);
  }
  auto password() {
    return URL_password_Get(this.handle);
  }
  void host(string host) {
    URL_host_Set(this.handle, host);
  }
  auto host() {
    return URL_host_Get(this.handle);
  }
  void hostname(string hostname) {
    URL_hostname_Set(this.handle, hostname);
  }
  auto hostname() {
    return URL_hostname_Get(this.handle);
  }
  void port(string port) {
    URL_port_Set(this.handle, port);
  }
  auto port() {
    return URL_port_Get(this.handle);
  }
  void pathname(string pathname) {
    URL_pathname_Set(this.handle, pathname);
  }
  auto pathname() {
    return URL_pathname_Get(this.handle);
  }
  void search(string search) {
    URL_search_Set(this.handle, search);
  }
  auto search() {
    return URL_search_Get(this.handle);
  }
  auto searchParams() {
    return URLSearchParams(JsHandle(URL_searchParams_Get(this.handle)));
  }
  void hash(string hash) {
    URL_hash_Set(this.handle, hash);
  }
  auto hash() {
    return URL_hash_Get(this.handle);
  }
  auto toJSON() {
    return URL_toJSON(this.handle);
  }
  auto createObjectURL(Blob blob) {
    return URL_createObjectURL__Handle(this.handle, blob.handle);
  }
  void revokeObjectURL(string url) {
    URL_revokeObjectURL(this.handle, url);
  }
  auto createObjectURL(MediaSource mediaSource) {
    return URL_createObjectURL__Handle(this.handle, mediaSource._parent);
  }
}
struct URLSearchParams {
  nothrow:
  JsHandle handle;
  alias handle this;
  void append(string name, string value) {
    URLSearchParams_append(this.handle, name, value);
  }
  void delete_(string name) {
    URLSearchParams_delete(this.handle, name);
  }
  auto get(string name) {
    return URLSearchParams_get(this.handle, name);
  }
  auto getAll(string name) {
    return Sequence!(string)(JsHandle(URLSearchParams_getAll(this.handle, name)));
  }
  auto has(string name) {
    return URLSearchParams_has(this.handle, name);
  }
  void set(string name, string value) {
    URLSearchParams_set(this.handle, name, value);
  }
  void sort() {
    URLSearchParams_sort(this.handle);
  }
}


extern (C) void URL_href_Set(Handle, string);
extern (C) string URL_href_Get(Handle);
extern (C) string URL_origin_Get(Handle);
extern (C) void URL_protocol_Set(Handle, string);
extern (C) string URL_protocol_Get(Handle);
extern (C) void URL_username_Set(Handle, string);
extern (C) string URL_username_Get(Handle);
extern (C) void URL_password_Set(Handle, string);
extern (C) string URL_password_Get(Handle);
extern (C) void URL_host_Set(Handle, string);
extern (C) string URL_host_Get(Handle);
extern (C) void URL_hostname_Set(Handle, string);
extern (C) string URL_hostname_Get(Handle);
extern (C) void URL_port_Set(Handle, string);
extern (C) string URL_port_Get(Handle);
extern (C) void URL_pathname_Set(Handle, string);
extern (C) string URL_pathname_Get(Handle);
extern (C) void URL_search_Set(Handle, string);
extern (C) string URL_search_Get(Handle);
extern (C) Handle URL_searchParams_Get(Handle);
extern (C) void URL_hash_Set(Handle, string);
extern (C) string URL_hash_Get(Handle);
extern (C) string URL_toJSON(Handle);
extern (C) string URL_createObjectURL__Handle(Handle, Handle);
extern (C) void URL_revokeObjectURL(Handle, string);
extern (C) void URLSearchParams_append(Handle, string, string);
extern (C) void URLSearchParams_delete(Handle, string);
extern (C) Optional!(string) URLSearchParams_get(Handle, string);
extern (C) Handle URLSearchParams_getAll(Handle, string);
extern (C) bool URLSearchParams_has(Handle, string);
extern (C) void URLSearchParams_set(Handle, string, string);
extern (C) void URLSearchParams_sort(Handle);