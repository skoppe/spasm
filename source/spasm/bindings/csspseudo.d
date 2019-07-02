module spasm.bindings.csspseudo;

import spasm.types;
import spasm.bindings.cssomview;
import spasm.bindings.dom;
import spasm.bindings.geometry;

@safe:
nothrow:

struct CSSPseudoElement {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
  }
  auto type() {
    return CSSPseudoElement_type_Get(this._parent);
  }
  auto element() {
    return Element(CSSPseudoElement_element_Get(this._parent));
  }
  auto getBoxQuads(scope ref BoxQuadOptions options) {
    return Sequence!(DOMQuad)(GeometryUtils_getBoxQuads(this._parent, options.handle));
  }
  auto getBoxQuads() {
    return Sequence!(DOMQuad)(GeometryUtils_getBoxQuads_0(this._parent));
  }
  auto convertQuadFromNode(scope ref DOMQuadInit quad, scope ref GeometryNode from, scope ref ConvertCoordinateOptions options) {
    return DOMQuad(GeometryUtils_convertQuadFromNode(this._parent, quad.handle, from, options.handle));
  }
  auto convertQuadFromNode(scope ref DOMQuadInit quad, scope ref GeometryNode from) {
    return DOMQuad(GeometryUtils_convertQuadFromNode_0(this._parent, quad.handle, from));
  }
  auto convertRectFromNode(scope ref DOMRectReadOnly rect, scope ref GeometryNode from, scope ref ConvertCoordinateOptions options) {
    return DOMQuad(GeometryUtils_convertRectFromNode(this._parent, rect.handle, from, options.handle));
  }
  auto convertRectFromNode(scope ref DOMRectReadOnly rect, scope ref GeometryNode from) {
    return DOMQuad(GeometryUtils_convertRectFromNode_0(this._parent, rect.handle, from));
  }
  auto convertPointFromNode(scope ref DOMPointInit point, scope ref GeometryNode from, scope ref ConvertCoordinateOptions options) {
    return DOMPoint(GeometryUtils_convertPointFromNode(this._parent, point.handle, from, options.handle));
  }
  auto convertPointFromNode(scope ref DOMPointInit point, scope ref GeometryNode from) {
    return DOMPoint(GeometryUtils_convertPointFromNode_0(this._parent, point.handle, from));
  }
}


extern (C) string CSSPseudoElement_type_Get(Handle);
extern (C) Handle CSSPseudoElement_element_Get(Handle);