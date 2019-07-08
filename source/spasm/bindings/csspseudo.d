module spasm.bindings.csspseudo;

import spasm.types;
import spasm.bindings.dom;

@safe:
nothrow:

struct CSSPseudoElement {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
  }
  auto type()() {
    return CSSPseudoElement_type_Get(this._parent);
  }
  auto element()() {
    return Element(CSSPseudoElement_element_Get(this._parent));
  }
}


extern (C) string CSSPseudoElement_type_Get(Handle);
extern (C) Handle CSSPseudoElement_element_Get(Handle);