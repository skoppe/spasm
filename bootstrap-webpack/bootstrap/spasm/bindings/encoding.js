import spasm from '../modules/spasm.js';
export default {
  jsExports: {
    TextDecodeOptions_stream_Set: function(ctx, stream) {
      spasm.objects[ctx].stream = stream;
    },
    TextDecodeOptions_stream_Get: function(ctx) {
      return spasm.objects[ctx].stream;
    },
    TextDecoder_decode: function(rawResult, ctx, input, options) {
      spasm.encode.string(rawResult, spasm.objects[ctx].decode(spasm.decode_BufferSource(input), spasm.objects[options]));
    },
    TextDecoderCommon_encoding_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].encoding);
    },
    TextDecoderCommon_fatal_Get: function(ctx) {
      return spasm.objects[ctx].fatal;
    },
    TextDecoderCommon_ignoreBOM_Get: function(ctx) {
      return spasm.objects[ctx].ignoreBOM;
    },
    TextDecoderOptions_fatal_Set: function(ctx, fatal) {
      spasm.objects[ctx].fatal = fatal;
    },
    TextDecoderOptions_fatal_Get: function(ctx) {
      return spasm.objects[ctx].fatal;
    },
    TextDecoderOptions_ignoreBOM_Set: function(ctx, ignoreBOM) {
      spasm.objects[ctx].ignoreBOM = ignoreBOM;
    },
    TextDecoderOptions_ignoreBOM_Get: function(ctx) {
      return spasm.objects[ctx].ignoreBOM;
    },
    TextDecoderCommon_encoding_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].encoding);
    },
    TextDecoderCommon_fatal_Get: function(ctx) {
      return spasm.objects[ctx].fatal;
    },
    TextDecoderCommon_ignoreBOM_Get: function(ctx) {
      return spasm.objects[ctx].ignoreBOM;
    },
    GenericTransformStream_readable_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].readable);
    },
    GenericTransformStream_writable_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].writable);
    },
    TextEncoder_encode: function(ctx, inputLen, inputPtr) {
      return spasm.addObject(spasm.objects[ctx].encode(spasm.decode_string(inputLen, inputPtr)));
    },
    TextEncoderCommon_encoding_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].encoding);
    },
    TextEncoderCommon_encoding_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].encoding);
    },
    GenericTransformStream_readable_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].readable);
    },
    GenericTransformStream_writable_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].writable);
    },
  }
}