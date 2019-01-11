module spasm.bindings.cssom;

import spasm.types;
import spasm.bindings.dom;

alias CSSOMString = string;
struct MediaList {
  JsHandle handle;
  alias handle this;
  auto mediaText(string mediaText) {
    MediaList_mediaText_Set(this.handle, mediaText);
  }
  auto mediaText() {
    auto result = MediaList_mediaText_Get(this.handle);
    return result;
  }
  auto length() {
    auto result = MediaList_length_Get(this.handle);
    return result;
  }
  auto item(uint index) {
    auto result = MediaList_item_getter(this.handle, index);
    return result;
  }
  auto appendMedium(string medium) {
    MediaList_appendMedium(this.handle, medium);
  }
  auto deleteMedium(string medium) {
    MediaList_deleteMedium(this.handle, medium);
  }
}
struct StyleSheet {
  JsHandle handle;
  alias handle this;
  auto type() {
    auto result = StyleSheet_type_Get(this.handle);
    return result;
  }
  auto href() {
    auto result = StyleSheet_href_Get(this.handle);
    return result;
  }
  auto ownerNode() {
    auto result = StyleSheet_ownerNode_Get(this.handle);
    return result;
  }
  auto parentStyleSheet() {
    auto result = StyleSheet_parentStyleSheet_Get(this.handle);
    return result;
  }
  auto title() {
    auto result = StyleSheet_title_Get(this.handle);
    return result;
  }
  auto media() {
    auto result = MediaList(JsHandle(StyleSheet_media_Get(this.handle)));
    return result;
  }
  auto disabled(bool disabled) {
    StyleSheet_disabled_Set(this.handle, disabled);
  }
  auto disabled() {
    auto result = StyleSheet_disabled_Get(this.handle);
    return result;
  }
}


extern (C) void MediaList_mediaText_Set(Handle, string);
extern (C) string MediaList_mediaText_Get(Handle);
extern (C) uint MediaList_length_Get(Handle);
extern (C) Optional!(string) MediaList_item_getter(Handle, uint);
extern (C) void MediaList_appendMedium(Handle, string);
extern (C) void MediaList_deleteMedium(Handle, string);
extern (C) string StyleSheet_type_Get(Handle);
extern (C) Optional!(string) StyleSheet_href_Get(Handle);
extern (C) Optional!(SumType!(Element, ProcessingInstruction)) StyleSheet_ownerNode_Get(Handle);
extern (C) Optional!(StyleSheet) StyleSheet_parentStyleSheet_Get(Handle);
extern (C) Optional!(string) StyleSheet_title_Get(Handle);
extern (C) Handle StyleSheet_media_Get(Handle);
extern (C) void StyleSheet_disabled_Set(Handle, bool);
extern (C) bool StyleSheet_disabled_Get(Handle);