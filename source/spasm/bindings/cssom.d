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
    return MediaList_mediaText_Get(this.handle);
  }
  auto length() {
    return MediaList_length_Get(this.handle);
  }
  auto item(uint index) {
    return MediaList_item_getter(this.handle, index);
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
    return MediaList(StyleSheet_media_Get(this.handle));
  }
  auto disabled(bool disabled) {
    StyleSheet_disabled_Set(this.handle, disabled);
  }
  auto disabled() {
    return StyleSheet_disabled_Get(this.handle);
  }
}


extern (C) void MediaList_mediaText_Set(JsHandle, string);
extern (C) string MediaList_mediaText_Get(JsHandle);
extern (C) uint MediaList_length_Get(JsHandle);
extern (C) Optional!(string) MediaList_item_getter(JsHandle, uint);
extern (C) void MediaList_appendMedium(JsHandle, string);
extern (C) void MediaList_deleteMedium(JsHandle, string);
extern (C) string StyleSheet_type_Get(JsHandle);
extern (C) Optional!(string) StyleSheet_href_Get(JsHandle);
extern (C) Optional!(SumType!(Element, ProcessingInstruction)) StyleSheet_ownerNode_Get(JsHandle);
extern (C) Optional!(StyleSheet) StyleSheet_parentStyleSheet_Get(JsHandle);
extern (C) Optional!(string) StyleSheet_title_Get(JsHandle);
extern (C) JsHandle StyleSheet_media_Get(JsHandle);
extern (C) void StyleSheet_disabled_Set(JsHandle, bool);
extern (C) bool StyleSheet_disabled_Get(JsHandle);