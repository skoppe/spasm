import spasm from './spasm.js';
export default {
  jsExports: {
    DOMException_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    DOMException_message_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].message);
    },
    DOMException_code_Get: function(ctx) {
      return spasm.objects[ctx].code;
    },
  }
}