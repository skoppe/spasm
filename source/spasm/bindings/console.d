module spasm.bindings.console;

import spasm.types;
struct console {
  static:
  auto assert_(T1)(bool condition /* = false */, T1 data) {
    Handle _handle_data = getOrCreateHandle(data);
    console_assert(condition, _handle_data);
    dropHandle!(T1)(_handle_data);
  }
  auto clear() {
    console_clear();
  }
  auto debug_(T0)(T0 data) {
    Handle _handle_data = getOrCreateHandle(data);
    console_debug(_handle_data);
    dropHandle!(T0)(_handle_data);
  }
  auto error(T0)(T0 data) {
    Handle _handle_data = getOrCreateHandle(data);
    console_error(_handle_data);
    dropHandle!(T0)(_handle_data);
  }
  auto info(T0)(T0 data) {
    Handle _handle_data = getOrCreateHandle(data);
    console_info(_handle_data);
    dropHandle!(T0)(_handle_data);
  }
  auto log(T0)(T0 data) {
    Handle _handle_data = getOrCreateHandle(data);
    console_log(_handle_data);
    dropHandle!(T0)(_handle_data);
  }
  auto table(T0)(T0 tabularData, Sequence!(string) properties) {
    Handle _handle_tabularData = getOrCreateHandle(tabularData);
    console_table(_handle_tabularData, properties.handle);
    dropHandle!(T0)(_handle_tabularData);
  }
  auto trace(T0)(T0 data) {
    Handle _handle_data = getOrCreateHandle(data);
    console_trace(_handle_data);
    dropHandle!(T0)(_handle_data);
  }
  auto warn(T0)(T0 data) {
    Handle _handle_data = getOrCreateHandle(data);
    console_warn(_handle_data);
    dropHandle!(T0)(_handle_data);
  }
  auto dir(T0)(T0 item, Optional!(JsObject) options) {
    Handle _handle_item = getOrCreateHandle(item);
    console_dir(_handle_item, !options.empty, options.front.handle);
    dropHandle!(T0)(_handle_item);
  }
  auto dirxml(T0)(T0 data) {
    Handle _handle_data = getOrCreateHandle(data);
    console_dirxml(_handle_data);
    dropHandle!(T0)(_handle_data);
  }
  auto count(string label /* = "default" */) {
    console_count(label);
  }
  auto countReset(string label /* = "default" */) {
    console_countReset(label);
  }
  auto group(T0)(T0 data) {
    Handle _handle_data = getOrCreateHandle(data);
    console_group(_handle_data);
    dropHandle!(T0)(_handle_data);
  }
  auto groupCollapsed(T0)(T0 data) {
    Handle _handle_data = getOrCreateHandle(data);
    console_groupCollapsed(_handle_data);
    dropHandle!(T0)(_handle_data);
  }
  auto groupEnd() {
    console_groupEnd();
  }
  auto time(string label /* = "default" */) {
    console_time(label);
  }
  auto timeLog(T1)(string label /* = "default" */, T1 data) {
    Handle _handle_data = getOrCreateHandle(data);
    console_timeLog(label, _handle_data);
    dropHandle!(T1)(_handle_data);
  }
  auto timeEnd(string label /* = "default" */) {
    console_timeEnd(label);
  }
}


extern (C) void console_assert(bool, Handle);
extern (C) void console_clear();
extern (C) void console_debug(Handle);
extern (C) void console_error(Handle);
extern (C) void console_info(Handle);
extern (C) void console_log(Handle);
extern (C) void console_table(Handle, Handle);
extern (C) void console_trace(Handle);
extern (C) void console_warn(Handle);
extern (C) void console_dir(Handle, bool, Handle);
extern (C) void console_dirxml(Handle);
extern (C) void console_count(string);
extern (C) void console_countReset(string);
extern (C) void console_group(Handle);
extern (C) void console_groupCollapsed(Handle);
extern (C) void console_groupEnd();
extern (C) void console_time(string);
extern (C) void console_timeLog(string, Handle);
extern (C) void console_timeEnd(string);