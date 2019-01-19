module spasm.bindings.cssom;

import spasm.types;
import spasm.bindings.dom;

alias CSSOMString = string;
struct MediaList {
  JsHandle handle;
  alias handle this;
  void mediaText(string mediaText) {
    MediaList_mediaText_Set(this.handle, mediaText);
  }
  auto mediaText() {
    return MediaList_mediaText_Get(this.handle);
  }
  auto length() {
    return MediaList_length_Get(this.handle);
  }
  auto item(uint index) {
    return MediaList_item_getter(this.handle, index);
  }
  void appendMedium(string medium) {
    MediaList_appendMedium(this.handle, medium);
  }
  void deleteMedium(string medium) {
    MediaList_deleteMedium(this.handle, medium);
  }
}
struct StyleSheet {
  JsHandle handle;
  alias handle this;
  auto type() {
    return StyleSheet_type_Get(this.handle);
  }
  auto href() {
    return StyleSheet_href_Get(this.handle);
  }
  auto ownerNode() {
    return StyleSheet_ownerNode_Get(this.handle);
  }
  auto parentStyleSheet() {
    return StyleSheet_parentStyleSheet_Get(this.handle);
  }
  auto title() {
    return StyleSheet_title_Get(this.handle);
  }
  auto media() {
    return MediaList(JsHandle(StyleSheet_media_Get(this.handle)));
  }
  void disabled(bool disabled) {
    StyleSheet_disabled_Set(this.handle, disabled);
  }
  auto disabled() {
    return StyleSheet_disabled_Get(this.handle);
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