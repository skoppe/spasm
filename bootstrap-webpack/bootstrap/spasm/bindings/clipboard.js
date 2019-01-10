import spasm from './spasm.js';
export default {
  jsExports: {
    Clipboard_read: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].read());
    },
    Clipboard_readText: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].readText());
    },
    Clipboard_write: function(ctx, data) {
      return spasm.addObject(spasm.objects[ctx].write(spasm.objects[data]));
    },
    Clipboard_writeText: function(ctx, dataLen, dataPtr) {
      return spasm.addObject(spasm.objects[ctx].writeText(spasm.decode_string(dataLen, dataPtr)));
    },
    ClipboardEvent_clipboardData_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].clipboardData);
    },
    ClipboardEventInit_clipboardData_Set: function(ctx, clipboardDataDefined, clipboardData) {
      spasm.objects[ctx].clipboardData = clipboardDataDefined ? spasm.objects[clipboardData] : undefined;
    },
    ClipboardEventInit_clipboardData_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].clipboardData);
    },
    ClipboardPermissionDescriptor_allowWithoutGesture_Set: function(ctx, allowWithoutGesture) {
      spasm.objects[ctx].allowWithoutGesture = allowWithoutGesture;
    },
    ClipboardPermissionDescriptor_allowWithoutGesture_Get: function(ctx) {
      return spasm.objects[ctx].allowWithoutGesture;
    },
  }
}