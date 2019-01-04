module spasm.bindings.console;

import spasm.types;
struct console {
  static:
  void assert_(bool condition /* = false */, Any data) {
    console_assert(condition, data.handle);
  }
  void clear() {
    console_clear();
  }
  void debug_(Any data) {
    console_debug(data.handle);
  }
  void error(Any data) {
    console_error(data.handle);
  }
  void info(Any data) {
    console_info(data.handle);
  }
  void log(Any data) {
    console_log(data.handle);
  }
  void table(Any tabularData, Sequence!(string) properties) {
    console_table(tabularData.handle, properties.handle);
  }
  void trace(Any data) {
    console_trace(data.handle);
  }
  void warn(Any data) {
    console_warn(data.handle);
  }
  void dir(Any item, Optional!(Object) options) {
    console_dir(item.handle, !options.empty, options.value.handle);
  }
  void dirxml(Any data) {
    console_dirxml(data.handle);
  }
  void count(string label /* = "default" */) {
    console_count(label);
  }
  void countReset(string label /* = "default" */) {
    console_countReset(label);
  }
  void group(Any data) {
    console_group(data.handle);
  }
  void groupCollapsed(Any data) {
    console_groupCollapsed(data.handle);
  }
  void groupEnd() {
    console_groupEnd();
  }
  void time(string label /* = "default" */) {
    console_time(label);
  }
  void timeLog(string label /* = "default" */, Any data) {
    console_timeLog(label, data.handle);
  }
  void timeEnd(string label /* = "default" */) {
    console_timeEnd(label);
  }
}


extern (C) void console_assert(bool, Any);
extern (C) void console_clear();
extern (C) void console_debug(Any);
extern (C) void console_error(Any);
extern (C) void console_info(Any);
extern (C) void console_log(Any);
extern (C) void console_table(Any, JsHandle);
extern (C) void console_trace(Any);
extern (C) void console_warn(Any);
extern (C) void console_dir(Any, bool, JsHandle);
extern (C) void console_dirxml(Any);
extern (C) void console_count(string);
extern (C) void console_countReset(string);
extern (C) void console_group(Any);
extern (C) void console_groupCollapsed(Any);
extern (C) void console_groupEnd();
extern (C) void console_time(string);
extern (C) void console_timeLog(string, Any);
extern (C) void console_timeEnd(string);