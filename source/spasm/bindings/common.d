module spasm.bindings.common;

import spasm.types;
nothrow:
alias ArrayBufferView = SumType!(Int8Array, Int16Array, Int32Array, Uint8Array, Uint16Array, Uint32Array, Uint8ClampedArray, Float32Array, Float64Array, DataView);
alias BufferSource = SumType!(ArrayBufferView, ArrayBuffer);
struct DOMException {
  nothrow:
  JsHandle handle;
  alias handle this;
  auto name() {
    return DOMException_name_Get(this.handle);
  }
  auto message() {
    return DOMException_message_Get(this.handle);
  }
  auto code() {
    return DOMException_code_Get(this.handle);
  }
  enum ushort INDEX_SIZE_ERR = 1;
  enum ushort DOMSTRING_SIZE_ERR = 2;
  enum ushort HIERARCHY_REQUEST_ERR = 3;
  enum ushort WRONG_DOCUMENT_ERR = 4;
  enum ushort INVALID_CHARACTER_ERR = 5;
  enum ushort NO_DATA_ALLOWED_ERR = 6;
  enum ushort NO_MODIFICATION_ALLOWED_ERR = 7;
  enum ushort NOT_FOUND_ERR = 8;
  enum ushort NOT_SUPPORTED_ERR = 9;
  enum ushort INUSE_ATTRIBUTE_ERR = 10;
  enum ushort INVALID_STATE_ERR = 11;
  enum ushort SYNTAX_ERR = 12;
  enum ushort INVALID_MODIFICATION_ERR = 13;
  enum ushort NAMESPACE_ERR = 14;
  enum ushort INVALID_ACCESS_ERR = 15;
  enum ushort VALIDATION_ERR = 16;
  enum ushort TYPE_MISMATCH_ERR = 17;
  enum ushort SECURITY_ERR = 18;
  enum ushort NETWORK_ERR = 19;
  enum ushort ABORT_ERR = 20;
  enum ushort URL_MISMATCH_ERR = 21;
  enum ushort QUOTA_EXCEEDED_ERR = 22;
  enum ushort TIMEOUT_ERR = 23;
  enum ushort INVALID_NODE_TYPE_ERR = 24;
  enum ushort DATA_CLONE_ERR = 25;
}
alias DOMTimeStamp = ulong;
alias Function = Any delegate(Any);
alias VoidFunction = void delegate();


extern (C) string DOMException_name_Get(Handle);
extern (C) string DOMException_message_Get(Handle);
extern (C) ushort DOMException_code_Get(Handle);