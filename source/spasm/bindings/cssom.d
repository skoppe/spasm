module spasm.bindings.cssom;

import spasm.types;
import spasm.bindings.dom : Element;
import spasm.bindings.dom : ProcessingInstruction;

alias CSSOMString = string;
struct MediaList {
  JsHandle handle;
  alias handle this;
  void mediaText(string mediaText) {
    MediaList_mediaText_Set(handle, mediaText);
  }
  string mediaText() {
    return MediaList_mediaText_Get(handle);
  }
  uint length() {
    return MediaList_length_Get(handle);
  }
  Optional!(string) item(uint index) {
    return MediaList_item_getter(handle, index);
  }
  void appendMedium(string medium) {
    MediaList_appendMedium(handle, medium);
  }
  void deleteMedium(string medium) {
    MediaList_deleteMedium(handle, medium);
  }
}
struct StyleSheet {
  JsHandle handle;
  alias handle this;
  string type() {
    return StyleSheet_type_Get(handle);
  }
  Optional!(USVString) href() {
    return StyleSheet_href_Get(handle);
  }
  Optional!(SumType!(Element, ProcessingInstruction)) ownerNode() {
    return StyleSheet_ownerNode_Get(handle);
  }
  Optional!(StyleSheet) parentStyleSheet() {
    return StyleSheet_parentStyleSheet_Get(handle);
  }
  Optional!(string) title() {
    return StyleSheet_title_Get(handle);
  }
  MediaList media() {
    return MediaList(StyleSheet_media_Get(handle));
  }
  void disabled(bool disabled) {
    StyleSheet_disabled_Set(handle, disabled);
  }
  bool disabled() {
    return StyleSheet_disabled_Get(handle);
  }
}


extern (C) void MediaList_mediaText_Set(JsHandle, string);
extern (C) string MediaList_mediaText_Get(JsHandle);
extern (C) uint MediaList_length_Get(JsHandle);
extern (C) Optional!(string) MediaList_item_getter(JsHandle, uint);
extern (C) void MediaList_appendMedium(JsHandle, string);
extern (C) void MediaList_deleteMedium(JsHandle, string);
extern (C) string StyleSheet_type_Get(JsHandle);
extern (C) Optional!(USVString) StyleSheet_href_Get(JsHandle);
extern (C) Optional!(SumType!(Element, ProcessingInstruction)) StyleSheet_ownerNode_Get(JsHandle);
extern (C) Optional!(StyleSheet) StyleSheet_parentStyleSheet_Get(JsHandle);
extern (C) Optional!(string) StyleSheet_title_Get(JsHandle);
extern (C) JsHandle StyleSheet_media_Get(JsHandle);
extern (C) void StyleSheet_disabled_Set(JsHandle, bool);
extern (C) bool StyleSheet_disabled_Get(JsHandle);