module spasm.bindings.domparsing;

import spasm.types;
import spasm.bindings.dom;

@safe:
nothrow:

struct DOMParser {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto parseFromString(string str, SupportedType type) {
    return Document(DOMParser_parseFromString(this.handle, str, type));
  }
}
enum SupportedType {
  text_html,
  text_xml,
  application_xml,
  application_xhtml_xml,
  image_svg_xml
}
struct XMLSerializer {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto serializeToString(scope ref Node root) {
    return XMLSerializer_serializeToString(this.handle, root._parent);
  }
}


extern (C) Handle DOMParser_parseFromString(Handle, string, SupportedType);
extern (C) string XMLSerializer_serializeToString(Handle, Handle);