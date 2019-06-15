module spasm.bindings.encoding;

import spasm.types;
import spasm.bindings.common;
import spasm.bindings.streams;

@safe:
nothrow:

struct TextDecodeOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return TextDecodeOptions(spasm_add__object());
  }
  void stream(bool stream) {
    TextDecodeOptions_stream_Set(this.handle, stream);
  }
  auto stream() {
    return TextDecodeOptions_stream_Get(this.handle);
  }
}
struct TextDecoder {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto decode(scope ref BufferSource input, scope ref TextDecodeOptions options) {
    return TextDecoder_decode(this.handle, input, options.handle);
  }
  auto decode(scope ref BufferSource input) {
    return TextDecoder_decode_0(this.handle, input);
  }
  auto decode() {
    return TextDecoder_decode_1(this.handle);
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
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return TextDecoderOptions(spasm_add__object());
  }
  void fatal(bool fatal) {
    TextDecoderOptions_fatal_Set(this.handle, fatal);
  }
  auto fatal() {
    return TextDecoderOptions_fatal_Get(this.handle);
  }
  void ignoreBOM(bool ignoreBOM) {
    TextDecoderOptions_ignoreBOM_Set(this.handle, ignoreBOM);
  }
  auto ignoreBOM() {
    return TextDecoderOptions_ignoreBOM_Get(this.handle);
  }
}
struct TextDecoderStream {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
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
  auto readable() {
    return ReadableStream(GenericTransformStream_readable_Get(this.handle));
  }
  auto writable() {
    return WritableStream(GenericTransformStream_writable_Get(this.handle));
  }
}
struct TextEncoder {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto encode(string input /* = "" */) {
    return Uint8Array(TextEncoder_encode(this.handle, input));
  }
  auto encode() {
    return Uint8Array(TextEncoder_encode_0(this.handle));
  }
  auto encoding() {
    return TextEncoderCommon_encoding_Get(this.handle);
  }
}
struct TextEncoderStream {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
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


extern (C) Handle GenericTransformStream_readable_Get(Handle);
extern (C) Handle GenericTransformStream_writable_Get(Handle);
extern (C) void TextDecodeOptions_stream_Set(Handle, bool);
extern (C) bool TextDecodeOptions_stream_Get(Handle);
extern (C) string TextDecoder_decode(Handle, scope ref BufferSource, Handle);
extern (C) string TextDecoder_decode_0(Handle, scope ref BufferSource);
extern (C) string TextDecoder_decode_1(Handle);
extern (C) string TextDecoderCommon_encoding_Get(Handle);
extern (C) bool TextDecoderCommon_fatal_Get(Handle);
extern (C) bool TextDecoderCommon_ignoreBOM_Get(Handle);
extern (C) void TextDecoderOptions_fatal_Set(Handle, bool);
extern (C) bool TextDecoderOptions_fatal_Get(Handle);
extern (C) void TextDecoderOptions_ignoreBOM_Set(Handle, bool);
extern (C) bool TextDecoderOptions_ignoreBOM_Get(Handle);
extern (C) Handle TextEncoder_encode(Handle, string);
extern (C) Handle TextEncoder_encode_0(Handle);
extern (C) string TextEncoderCommon_encoding_Get(Handle);