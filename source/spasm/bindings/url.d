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
    auto result = URL_href_Get(this.handle);
    return result;
  }
  auto origin() {
    auto result = URL_origin_Get(this.handle);
    return result;
  }
  auto protocol(string protocol) {
    URL_protocol_Set(this.handle, protocol);
  }
  auto protocol() {
    auto result = URL_protocol_Get(this.handle);
    return result;
  }
  auto username(string username) {
    URL_username_Set(this.handle, username);
  }
  auto username() {
    auto result = URL_username_Get(this.handle);
    return result;
  }
  auto password(string password) {
    URL_password_Set(this.handle, password);
  }
  auto password() {
    auto result = URL_password_Get(this.handle);
    return result;
  }
  auto host(string host) {
    URL_host_Set(this.handle, host);
  }
  auto host() {
    auto result = URL_host_Get(this.handle);
    return result;
  }
  auto hostname(string hostname) {
    URL_hostname_Set(this.handle, hostname);
  }
  auto hostname() {
    auto result = URL_hostname_Get(this.handle);
    return result;
  }
  auto port(string port) {
    URL_port_Set(this.handle, port);
  }
  auto port() {
    auto result = URL_port_Get(this.handle);
    return result;
  }
  auto pathname(string pathname) {
    URL_pathname_Set(this.handle, pathname);
  }
  auto pathname() {
    auto result = URL_pathname_Get(this.handle);
    return result;
  }
  auto search(string search) {
    URL_search_Set(this.handle, search);
  }
  auto search() {
    auto result = URL_search_Get(this.handle);
    return result;
  }
  auto searchParams() {
    auto result = URLSearchParams(JsHandle(URL_searchParams_Get(this.handle)));
    return result;
  }
  auto hash(string hash) {
    URL_hash_Set(this.handle, hash);
  }
  auto hash() {
    auto result = URL_hash_Get(this.handle);
    return result;
  }
  auto toJSON() {
    auto result = URL_toJSON(this.handle);
    return result;
  }
  auto createObjectURL(Blob blob) {
    auto result = URL_createObjectURL__Handle(this.handle, blob.handle);
    return result;
  }
  auto revokeObjectURL(string url) {
    URL_revokeObjectURL(this.handle, url);
  }
  auto createObjectURL(MediaSource mediaSource) {
    auto result = URL_createObjectURL__Handle(this.handle, mediaSource.handle);
    return result;
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
    auto result = URLSearchParams_get(this.handle, name);
    return result;
  }
  auto getAll(string name) {
    auto result = Sequence!(string)(JsHandle(URLSearchParams_getAll(this.handle, name)));
    return result;
  }
  auto has(string name) {
    auto result = URLSearchParams_has(this.handle, name);
    return result;
  }
  auto set(string name, string value) {
    URLSearchParams_set(this.handle, name, value);
  }
  auto sort() {
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