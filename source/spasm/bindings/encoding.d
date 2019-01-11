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
    auto result = TextDecodeOptions_stream_Get(this.handle);
    return result;
  }
}
struct TextDecoder {
  JsHandle handle;
  alias handle this;
  auto decode(BufferSource input, TextDecodeOptions options) {
    auto result = TextDecoder_decode(this.handle, input, options.handle);
    return result;
  }
  auto encoding() {
    auto result = TextDecoderCommon_encoding_Get(this.handle);
    return result;
  }
  auto fatal() {
    auto result = TextDecoderCommon_fatal_Get(this.handle);
    return result;
  }
  auto ignoreBOM() {
    auto result = TextDecoderCommon_ignoreBOM_Get(this.handle);
    return result;
  }
}
struct TextDecoderOptions {
  JsHandle handle;
  alias handle this;
  auto fatal(bool fatal) {
    TextDecoderOptions_fatal_Set(this.handle, fatal);
  }
  auto fatal() {
    auto result = TextDecoderOptions_fatal_Get(this.handle);
    return result;
  }
  auto ignoreBOM(bool ignoreBOM) {
    TextDecoderOptions_ignoreBOM_Set(this.handle, ignoreBOM);
  }
  auto ignoreBOM() {
    auto result = TextDecoderOptions_ignoreBOM_Get(this.handle);
    return result;
  }
}
struct TextDecoderStream {
  JsHandle handle;
  alias handle this;
  auto encoding() {
    auto result = TextDecoderCommon_encoding_Get(this.handle);
    return result;
  }
  auto fatal() {
    auto result = TextDecoderCommon_fatal_Get(this.handle);
    return result;
  }
  auto ignoreBOM() {
    auto result = TextDecoderCommon_ignoreBOM_Get(this.handle);
    return result;
  }
  auto readable() {
    auto result = ReadableStream(JsHandle(GenericTransformStream_readable_Get(this.handle)));
    return result;
  }
  auto writable() {
    auto result = WritableStream(JsHandle(GenericTransformStream_writable_Get(this.handle)));
    return result;
  }
}
struct TextEncoder {
  JsHandle handle;
  alias handle this;
  auto encode(string input /* = "" */) {
    auto result = Uint8Array(JsHandle(TextEncoder_encode(this.handle, input)));
    return result;
  }
  auto encoding() {
    auto result = TextEncoderCommon_encoding_Get(this.handle);
    return result;
  }
}
struct TextEncoderStream {
  JsHandle handle;
  alias handle this;
  auto encoding() {
    auto result = TextEncoderCommon_encoding_Get(this.handle);
    return result;
  }
  auto readable() {
    auto result = ReadableStream(JsHandle(GenericTransformStream_readable_Get(this.handle)));
    return result;
  }
  auto writable() {
    auto result = WritableStream(JsHandle(GenericTransformStream_writable_Get(this.handle)));
    return result;
  }
}


extern (C) Handle GenericTransformStream_readable_Get(Handle);
extern (C) Handle GenericTransformStream_writable_Get(Handle);
extern (C) void TextDecodeOptions_stream_Set(Handle, bool);
extern (C) bool TextDecodeOptions_stream_Get(Handle);
extern (C) string TextDecoder_decode(Handle, BufferSource, Handle);
extern (C) string TextDecoderCommon_encoding_Get(Handle);
extern (C) bool TextDecoderCommon_fatal_Get(Handle);
extern (C) bool TextDecoderCommon_ignoreBOM_Get(Handle);
extern (C) void TextDecoderOptions_fatal_Set(Handle, bool);
extern (C) bool TextDecoderOptions_fatal_Get(Handle);
extern (C) void TextDecoderOptions_ignoreBOM_Set(Handle, bool);
extern (C) bool TextDecoderOptions_ignoreBOM_Get(Handle);
extern (C) Handle TextEncoder_encode(Handle, string);
extern (C) string TextEncoderCommon_encoding_Get(Handle);