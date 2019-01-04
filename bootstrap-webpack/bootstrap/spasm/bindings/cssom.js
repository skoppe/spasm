import spasm from './spasm.js';
export default {
  jsExports: {
    MediaList_mediaText_Set: function(ctx, mediaTextLen, mediaTextPtr) {
      spasm.objects[ctx].mediaText = spasm.decode_string(mediaTextLen, mediaTextPtr);
    },
    MediaList_mediaText_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].mediaText);
    },
    MediaList_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    MediaList_item_getter: function(rawResult, ctx, index) {
      spasm.encode_optional_string(rawResult, spasm.objects[ctx].item(index));
    },
    MediaList_appendMedium: function(ctx, mediumLen, mediumPtr) {
      spasm.objects[ctx].appendMedium(spasm.decode_string(mediumLen, mediumPtr));
    },
    MediaList_deleteMedium: function(ctx, mediumLen, mediumPtr) {
      spasm.objects[ctx].deleteMedium(spasm.decode_string(mediumLen, mediumPtr));
    },
    StyleSheet_type_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].type);
    },
    StyleSheet_href_Get: function(rawResult, ctx) {
      spasm.encode_optional_string(rawResult, spasm.objects[ctx].href);
    },
    StyleSheet_ownerNode_Get: function(rawResult, ctx) {
      spasm.encode_optional_union2_Element_ProcessingInstruction(rawResult, spasm.objects[ctx].ownerNode);
    },
    StyleSheet_parentStyleSheet_Get: function(rawResult, ctx) {
      spasm.encode_optional_JsHandle(rawResult, spasm.objects[ctx].parentStyleSheet);
    },
    StyleSheet_title_Get: function(rawResult, ctx) {
      spasm.encode_optional_string(rawResult, spasm.objects[ctx].title);
    },
    StyleSheet_media_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].media);
    },
    StyleSheet_disabled_Set: function(ctx, disabled) {
      spasm.objects[ctx].disabled = disabled;
    },
    StyleSheet_disabled_Get: function(ctx) {
      return spasm.objects[ctx].disabled;
    },
  }
}