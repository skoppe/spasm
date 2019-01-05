module spasm.bindings.encoding;

import spasm.types;
import spasm.bindings.common : BufferSource;

struct TextDecodeOptions {
  JsHandle handle;
  alias handle this;
  void stream(bool stream) {
    TextDecodeOptions_stream_Set(handle, stream);
  }
  bool stream() {
    return TextDecodeOptions_stream_Get(handle);
  }
}
struct TextDecoder {
  JsHandle handle;
  alias handle this;
  string decode(BufferSource input, TextDecodeOptions options) {
    return string(TextDecoder_decode(handle, input, options.handle));
  }
  string encoding() {
    return TextDecoderCommon_encoding_Get(handle);
  }
  bool fatal() {
    return TextDecoderCommon_fatal_Get(handle);
  }
  bool ignoreBOM() {
    return TextDecoderCommon_ignoreBOM_Get(handle);
  }
}
struct TextDecoderOptions {
  JsHandle handle;
  alias handle this;
  void fatal(bool fatal) {
    TextDecoderOptions_fatal_Set(handle, fatal);
  }
  bool fatal() {
    return TextDecoderOptions_fatal_Get(handle);
  }
  void ignoreBOM(bool ignoreBOM) {
    TextDecoderOptions_ignoreBOM_Set(handle, ignoreBOM);
  }
  bool ignoreBOM() {
    return TextDecoderOptions_ignoreBOM_Get(handle);
  }
}
struct TextDecoderStream {
  JsHandle handle;
  alias handle this;
  string encoding() {
    return TextDecoderCommon_encoding_Get(handle);
  }
  bool fatal() {
    return TextDecoderCommon_fatal_Get(handle);
  }
  bool ignoreBOM() {
    return TextDecoderCommon_ignoreBOM_Get(handle);
  }
  ReadableStream readable() {
    return ReadableStream(GenericTransformStream_readable_Get(handle));
  }
  WritableStream writable() {
    return WritableStream(GenericTransformStream_writable_Get(handle));
  }
}
struct TextEncoder {
  JsHandle handle;
  alias handle this;
  Uint8Array encode(string input /* = "" */) {
    return Uint8Array(TextEncoder_encode(handle, input.handle));
  }
  string encoding() {
    return TextEncoderCommon_encoding_Get(handle);
  }
}
struct TextEncoderStream {
  JsHandle handle;
  alias handle this;
  string encoding() {
    return TextEncoderCommon_encoding_Get(handle);
  }
  ReadableStream readable() {
    return ReadableStream(GenericTransformStream_readable_Get(handle));
  }
  WritableStream writable() {
    return WritableStream(GenericTransformStream_writable_Get(handle));
  }
}


extern (C) void TextDecodeOptions_stream_Set(JsHandle, bool);
extern (C) bool TextDecodeOptions_stream_Get(JsHandle);
extern (C) JsHandle TextDecoder_decode(JsHandle, BufferSource, JsHandle);
extern (C) string TextDecoderCommon_encoding_Get(JsHandle);
extern (C) bool TextDecoderCommon_fatal_Get(JsHandle);
extern (C) bool TextDecoderCommon_ignoreBOM_Get(JsHandle);
extern (C) void TextDecoderOptions_fatal_Set(JsHandle, bool);
extern (C) bool TextDecoderOptions_fatal_Get(JsHandle);
extern (C) void TextDecoderOptions_ignoreBOM_Set(JsHandle, bool);
extern (C) bool TextDecoderOptions_ignoreBOM_Get(JsHandle);
extern (C) string TextDecoderCommon_encoding_Get(JsHandle);
extern (C) bool TextDecoderCommon_fatal_Get(JsHandle);
extern (C) bool TextDecoderCommon_ignoreBOM_Get(JsHandle);
extern (C) JsHandle GenericTransformStream_readable_Get(JsHandle);
extern (C) JsHandle GenericTransformStream_writable_Get(JsHandle);
extern (C) JsHandle TextEncoder_encode(JsHandle, JsHandle);
extern (C) string TextEncoderCommon_encoding_Get(JsHandle);
extern (C) string TextEncoderCommon_encoding_Get(JsHandle);
extern (C) JsHandle GenericTransformStream_readable_Get(JsHandle);
extern (C) JsHandle GenericTransformStream_writable_Get(JsHandle);