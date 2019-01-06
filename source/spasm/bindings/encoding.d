module spasm.bindings.encoding;

import spasm.types;
import spasm.bindings.common;

struct TextDecodeOptions {
  JsHandle handle;
  alias handle this;
  auto stream(bool stream) {
    TextDecodeOptions_stream_Set(this.handle, stream);
  }
  auto stream() {
    return TextDecodeOptions_stream_Get(this.handle);
  }
}
struct TextDecoder {
  JsHandle handle;
  alias handle this;
  auto decode(BufferSource input, TextDecodeOptions options) {
    return TextDecoder_decode(this.handle, input, options.handle);
  }
  auto encoding() {
    return TextDecoderCommon_encoding_Get(this.handle);
  }
  auto fatal() {
    return TextDecoderCommon_fatal_Get(this.handle);
  }
  auto ignoreBOM() {
    return TextDecoderCommon_ignoreBOM_Get(this.handle);
  }
}
struct TextDecoderOptions {
  JsHandle handle;
  alias handle this;
  auto fatal(bool fatal) {
    TextDecoderOptions_fatal_Set(this.handle, fatal);
  }
  auto fatal() {
    return TextDecoderOptions_fatal_Get(this.handle);
  }
  auto ignoreBOM(bool ignoreBOM) {
    TextDecoderOptions_ignoreBOM_Set(this.handle, ignoreBOM);
  }
  auto ignoreBOM() {
    return TextDecoderOptions_ignoreBOM_Get(this.handle);
  }
}
struct TextDecoderStream {
  JsHandle handle;
  alias handle this;
  auto encoding() {
    return TextDecoderCommon_encoding_Get(this.handle);
  }
  auto fatal() {
    return TextDecoderCommon_fatal_Get(this.handle);
  }
  auto ignoreBOM() {
    return TextDecoderCommon_ignoreBOM_Get(this.handle);
  }
  auto readable() {
    return ReadableStream(GenericTransformStream_readable_Get(this.handle));
  }
  auto writable() {
    return WritableStream(GenericTransformStream_writable_Get(this.handle));
  }
}
struct TextEncoder {
  JsHandle handle;
  alias handle this;
  auto encode(string input /* = "" */) {
    return Uint8Array(TextEncoder_encode(this.handle, input));
  }
  auto encoding() {
    return TextEncoderCommon_encoding_Get(this.handle);
  }
}
struct TextEncoderStream {
  JsHandle handle;
  alias handle this;
  auto encoding() {
    return TextEncoderCommon_encoding_Get(this.handle);
  }
  auto readable() {
    return ReadableStream(GenericTransformStream_readable_Get(this.handle));
  }
  auto writable() {
    return WritableStream(GenericTransformStream_writable_Get(this.handle));
  }
}


extern (C) JsHandle GenericTransformStream_readable_Get(JsHandle);
extern (C) JsHandle GenericTransformStream_writable_Get(JsHandle);
extern (C) void TextDecodeOptions_stream_Set(JsHandle, bool);
extern (C) bool TextDecodeOptions_stream_Get(JsHandle);
extern (C) string TextDecoder_decode(JsHandle, BufferSource, JsHandle);
extern (C) string TextDecoderCommon_encoding_Get(JsHandle);
extern (C) bool TextDecoderCommon_fatal_Get(JsHandle);
extern (C) bool TextDecoderCommon_ignoreBOM_Get(JsHandle);
extern (C) void TextDecoderOptions_fatal_Set(JsHandle, bool);
extern (C) bool TextDecoderOptions_fatal_Get(JsHandle);
extern (C) void TextDecoderOptions_ignoreBOM_Set(JsHandle, bool);
extern (C) bool TextDecoderOptions_ignoreBOM_Get(JsHandle);
extern (C) JsHandle TextEncoder_encode(JsHandle, string);
extern (C) string TextEncoderCommon_encoding_Get(JsHandle);