module spasm.bindings.domparsing;

import spasm.types;
import spasm.bindings.dom;

nothrow:
struct DOMParser {
  nothrow:
  JsHandle handle;
  alias handle this;
  auto parseFromString(string str, SupportedType type) {
    return Document(JsHandle(DOMParser_parseFromString(this.handle, str, type)));
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
  auto serializeToString(Node root) {
    return XMLSerializer_serializeToString(this.handle, root._parent);
  }
}


extern (C) Handle DOMParser_parseFromString(Handle, string, SupportedType);
extern (C) string XMLSerializer_serializeToString(Handle, Handle);