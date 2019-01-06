module spasm.bindings.console;

import spasm.types;
struct console {
  static:
  auto assert_(bool condition /* = false */, Any data) {
    console_assert(condition, data.handle);
  }
  auto clear() {
    console_clear();
  }
  auto debug_(Any data) {
    console_debug(data.handle);
  }
  auto error(Any data) {
    console_error(data.handle);
  }
  auto info(Any data) {
    console_info(data.handle);
  }
  auto log(Any data) {
    console_log(data.handle);
  }
  auto table(Any tabularData, Sequence!(string) properties) {
    console_table(tabularData.handle, properties.handle);
  }
  auto trace(Any data) {
    console_trace(data.handle);
  }
  auto warn(Any data) {
    console_warn(data.handle);
  }
  auto dir(Any item, Optional!(JsObject) options) {
    console_dir(item.handle, !options.empty, options.front.handle);
  }
  auto dirxml(Any data) {
    console_dirxml(data.handle);
  }
  auto count(string label /* = "default" */) {
    console_count(label);
  }
  auto countReset(string label /* = "default" */) {
    console_countReset(label);
  }
  auto group(Any data) {
    console_group(data.handle);
  }
  auto groupCollapsed(Any data) {
    console_groupCollapsed(data.handle);
  }
  auto groupEnd() {
    console_groupEnd();
  }
  auto time(string label /* = "default" */) {
    console_time(label);
  }
  auto timeLog(string label /* = "default" */, Any data) {
    console_timeLog(label, data.handle);
  }
  auto timeEnd(string label /* = "default" */) {
    console_timeEnd(label);
  }
}


extern (C) void console_assert(bool, JsHandle);
extern (C) void console_clear();
extern (C) void console_debug(JsHandle);
extern (C) void console_error(JsHandle);
extern (C) void console_info(JsHandle);
extern (C) void console_log(JsHandle);
extern (C) void console_table(JsHandle, JsHandle);
extern (C) void console_trace(JsHandle);
extern (C) void console_warn(JsHandle);
extern (C) void console_dir(JsHandle, bool, JsHandle);
extern (C) void console_dirxml(JsHandle);
extern (C) void console_count(string);
extern (C) void console_countReset(string);
extern (C) void console_group(JsHandle);
extern (C) void console_groupCollapsed(JsHandle);
extern (C) void console_groupEnd();
extern (C) void console_time(string);
extern (C) void console_timeLog(string, JsHandle);
extern (C) void console_timeEnd(string);