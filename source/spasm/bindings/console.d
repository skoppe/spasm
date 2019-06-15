module spasm.bindings.console;

import spasm.types;
@safe:
nothrow:

struct console {
  nothrow:
  static:
  void assert_(T1)(bool condition /* = false */, scope auto ref T1 data) {
    Handle _handle_data = getOrCreateHandle(data);
    console_assert(condition, _handle_data);
    dropHandle!(T1)(_handle_data);
  }
  void clear() {
    console_clear();
  }
  void debug_(T0)(scope auto ref T0 data) {
    Handle _handle_data = getOrCreateHandle(data);
    console_debug(_handle_data);
    dropHandle!(T0)(_handle_data);
  }
  void error(T0)(scope auto ref T0 data) {
    Handle _handle_data = getOrCreateHandle(data);
    console_error(_handle_data);
    dropHandle!(T0)(_handle_data);
  }
  void info(T0)(scope auto ref T0 data) {
    Handle _handle_data = getOrCreateHandle(data);
    console_info(_handle_data);
    dropHandle!(T0)(_handle_data);
  }
  void log(T0)(scope auto ref T0 data) {
    Handle _handle_data = getOrCreateHandle(data);
    console_log(_handle_data);
    dropHandle!(T0)(_handle_data);
  }
  void table(T0)(scope auto ref T0 tabularData, scope ref Sequence!(string) properties) {
    Handle _handle_tabularData = getOrCreateHandle(tabularData);
    console_table(_handle_tabularData, properties.handle);
    dropHandle!(T0)(_handle_tabularData);
  }
  void table(T0)(scope auto ref T0 tabularData) {
    Handle _handle_tabularData = getOrCreateHandle(tabularData);
    console_table_0(_handle_tabularData);
    dropHandle!(T0)(_handle_tabularData);
  }
  void trace(T0)(scope auto ref T0 data) {
    Handle _handle_data = getOrCreateHandle(data);
    console_trace(_handle_data);
    dropHandle!(T0)(_handle_data);
  }
  void warn(T0)(scope auto ref T0 data) {
    Handle _handle_data = getOrCreateHandle(data);
    console_warn(_handle_data);
    dropHandle!(T0)(_handle_data);
  }
  void dir(T0)(scope auto ref T0 item, scope ref Optional!(JsObject) options) {
    Handle _handle_item = getOrCreateHandle(item);
    console_dir(_handle_item, !options.empty, options.front.handle);
    dropHandle!(T0)(_handle_item);
  }
  void dir(T0)(scope auto ref T0 item) {
    Handle _handle_item = getOrCreateHandle(item);
    console_dir_0(_handle_item);
    dropHandle!(T0)(_handle_item);
  }
  void dirxml(T0)(scope auto ref T0 data) {
    Handle _handle_data = getOrCreateHandle(data);
    console_dirxml(_handle_data);
    dropHandle!(T0)(_handle_data);
  }
  void count(string label /* = "default" */) {
    console_count(label);
  }
  void count() {
    console_count_0();
  }
  void countReset(string label /* = "default" */) {
    console_countReset(label);
  }
  void countReset() {
    console_countReset_0();
  }
  void group(T0)(scope auto ref T0 data) {
    Handle _handle_data = getOrCreateHandle(data);
    console_group(_handle_data);
    dropHandle!(T0)(_handle_data);
  }
  void groupCollapsed(T0)(scope auto ref T0 data) {
    Handle _handle_data = getOrCreateHandle(data);
    console_groupCollapsed(_handle_data);
    dropHandle!(T0)(_handle_data);
  }
  void groupEnd() {
    console_groupEnd();
  }
  void time(string label /* = "default" */) {
    console_time(label);
  }
  void time() {
    console_time_0();
  }
  void timeLog(T1)(string label /* = "default" */, scope auto ref T1 data) {
    Handle _handle_data = getOrCreateHandle(data);
    console_timeLog(label, _handle_data);
    dropHandle!(T1)(_handle_data);
  }
  void timeEnd(string label /* = "default" */) {
    console_timeEnd(label);
  }
  void timeEnd() {
    console_timeEnd_0();
  }
}


extern (C) void console_assert(bool, Handle);
extern (C) void console_clear();
extern (C) void console_debug(Handle);
extern (C) void console_error(Handle);
extern (C) void console_info(Handle);
extern (C) void console_log(Handle);
extern (C) void console_table(Handle, Handle);
extern (C) void console_table_0(Handle);
extern (C) void console_trace(Handle);
extern (C) void console_warn(Handle);
extern (C) void console_dir(Handle, bool, Handle);
extern (C) void console_dir_0(Handle);
extern (C) void console_dirxml(Handle);
extern (C) void console_count(string);
extern (C) void console_count_0();
extern (C) void console_countReset(string);
extern (C) void console_countReset_0();
extern (C) void console_group(Handle);
extern (C) void console_groupCollapsed(Handle);
extern (C) void console_groupEnd();
extern (C) void console_time(string);
extern (C) void console_time_0();
extern (C) void console_timeLog(string, Handle);
extern (C) void console_timeEnd(string);
extern (C) void console_timeEnd_0();