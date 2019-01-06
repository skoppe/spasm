module spasm.bindings.dom;

import spasm.types;
import spasm.bindings.domhighrestimestamp;
import spasm.bindings.fullscreen;
import spasm.bindings.html;
import spasm.bindings.pagevisibility;
import spasm.bindings.svg;

struct AbortController {
  JsHandle handle;
  alias handle this;
  auto signal() {
    return AbortSignal(AbortController_signal_Get(this.handle));
  }
  auto abort() {
    AbortController_abort(this.handle);
  }
}
struct AbortSignal {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto aborted() {
    return AbortSignal_aborted_Get(this._parent);
  }
  auto onabort(EventHandler onabort) {
    AbortSignal_onabort_Set(this._parent, onabort);
  }
  auto onabort() {
    return AbortSignal_onabort_Get(this._parent);
  }
}
struct AbstractRange {
  JsHandle handle;
  alias handle this;
  auto startContainer() {
    return Node(AbstractRange_startContainer_Get(this.handle));
  }
  auto startOffset() {
    return AbstractRange_startOffset_Get(this.handle);
  }
  auto endContainer() {
    return Node(AbstractRange_endContainer_Get(this.handle));
  }
  auto endOffset() {
    return AbstractRange_endOffset_Get(this.handle);
  }
  auto collapsed() {
    return AbstractRange_collapsed_Get(this.handle);
  }
}
struct AddEventListenerOptions {
  EventListenerOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventListenerOptions(h);
  }
  auto passive(bool passive) {
    AddEventListenerOptions_passive_Set(this._parent, passive);
  }
  auto passive() {
    return AddEventListenerOptions_passive_Get(this._parent);
  }
  auto once(bool once) {
    AddEventListenerOptions_once_Set(this._parent, once);
  }
  auto once() {
    return AddEventListenerOptions_once_Get(this._parent);
  }
}
struct Attr {
  Node _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Node(h);
  }
  auto namespaceURI() {
    return Attr_namespaceURI_Get(this._parent);
  }
  auto prefix() {
    return Attr_prefix_Get(this._parent);
  }
  auto localName() {
    return Attr_localName_Get(this._parent);
  }
  auto name() {
    return Attr_name_Get(this._parent);
  }
  auto value(string value) {
    Attr_value_Set(this._parent, value);
  }
  auto value() {
    return Attr_value_Get(this._parent);
  }
  auto ownerElement() {
    return Attr_ownerElement_Get(this._parent);
  }
  auto specified() {
    return Attr_specified_Get(this._parent);
  }
}
struct CDATASection {
  Text _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Text(h);
  }
}
struct CharacterData {
  Node _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Node(h);
  }
  auto data(string data) {
    CharacterData_data_Set(this._parent, data);
  }
  auto data() {
    return CharacterData_data_Get(this._parent);
  }
  auto length() {
    return CharacterData_length_Get(this._parent);
  }
  auto substringData(uint offset, uint count) {
    return CharacterData_substringData(this._parent, offset, count);
  }
  auto appendData(string data) {
    CharacterData_appendData(this._parent, data);
  }
  auto insertData(uint offset, string data) {
    CharacterData_insertData(this._parent, offset, data);
  }
  auto deleteData(uint offset, uint count) {
    CharacterData_deleteData(this._parent, offset, count);
  }
  auto replaceData(uint offset, uint count, string data) {
    CharacterData_replaceData(this._parent, offset, count, data);
  }
  auto previousElementSibling() {
    return NonDocumentTypeChildNode_previousElementSibling_Get(this.handle);
  }
  auto nextElementSibling() {
    return NonDocumentTypeChildNode_nextElementSibling_Get(this.handle);
  }
  auto before(SumType!(Node, string) nodes) {
    ChildNode_before(this.handle, nodes);
  }
  auto after(SumType!(Node, string) nodes) {
    ChildNode_after(this.handle, nodes);
  }
  auto replaceWith(SumType!(Node, string) nodes) {
    ChildNode_replaceWith(this.handle, nodes);
  }
  auto remove() {
    ChildNode_remove(this.handle);
  }
}
struct Comment {
  CharacterData _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = CharacterData(h);
  }
}
struct CustomEvent {
  Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Event(h);
  }
  auto detail() {
    return Any(CustomEvent_detail_Get(this._parent));
  }
  auto initCustomEvent(string type, bool bubbles /* = false */, bool cancelable /* = false */, Any detail /* = null */) {
    CustomEvent_initCustomEvent(this._parent, type, bubbles, cancelable, detail.handle);
  }
}
struct CustomEventInit {
  EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventInit(h);
  }
  auto detail(Any detail) {
    CustomEventInit_detail_Set(this._parent, detail.handle);
  }
  auto detail() {
    return Any(CustomEventInit_detail_Get(this._parent));
  }
}
struct DOMImplementation {
  JsHandle handle;
  alias handle this;
  auto createDocumentType(string qualifiedName, string publicId, string systemId) {
    return DocumentType(DOMImplementation_createDocumentType(this.handle, qualifiedName, publicId, systemId));
  }
  auto createDocument(Optional!(string) namespace, string qualifiedName, Optional!(DocumentType) doctype /* = no!(DocumentType) */) {
    return XMLDocument(DOMImplementation_createDocument(this.handle, !namespace.empty, namespace.front, qualifiedName, !doctype.empty, doctype.front.handle));
  }
  auto createHTMLDocument(string title) {
    return Document(DOMImplementation_createHTMLDocument(this.handle, title));
  }
  auto hasFeature() {
    return DOMImplementation_hasFeature(this.handle);
  }
}
struct DOMTokenList {
  JsHandle handle;
  alias handle this;
  auto length() {
    return DOMTokenList_length_Get(this.handle);
  }
  auto item(uint index) {
    return DOMTokenList_item_getter(this.handle, index);
  }
  auto contains(string token) {
    return DOMTokenList_contains(this.handle, token);
  }
  auto add(string tokens) {
    DOMTokenList_add(this.handle, tokens);
  }
  auto remove(string tokens) {
    DOMTokenList_remove(this.handle, tokens);
  }
  auto toggle(string token, bool force) {
    return DOMTokenList_toggle(this.handle, token, force);
  }
  auto replace(string token, string newToken) {
    return DOMTokenList_replace(this.handle, token, newToken);
  }
  auto supports(string token) {
    return DOMTokenList_supports(this.handle, token);
  }
  auto value(string value) {
    DOMTokenList_value_Set(this.handle, value);
  }
  auto value() {
    return DOMTokenList_value_Get(this.handle);
  }
}
struct Document {
  Node _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Node(h);
  }
  auto implementation() {
    return DOMImplementation(Document_implementation_Get(this._parent));
  }
  auto URL() {
    return Document_URL_Get(this._parent);
  }
  auto documentURI() {
    return Document_documentURI_Get(this._parent);
  }
  auto origin() {
    return Document_origin_Get(this._parent);
  }
  auto compatMode() {
    return Document_compatMode_Get(this._parent);
  }
  auto characterSet() {
    return Document_characterSet_Get(this._parent);
  }
  auto charset() {
    return Document_charset_Get(this._parent);
  }
  auto inputEncoding() {
    return Document_inputEncoding_Get(this._parent);
  }
  auto contentType() {
    return Document_contentType_Get(this._parent);
  }
  auto doctype() {
    return Document_doctype_Get(this._parent);
  }
  auto documentElement() {
    return Document_documentElement_Get(this._parent);
  }
  auto getElementsByTagName(string qualifiedName) {
    return HTMLCollection(Document_getElementsByTagName(this._parent, qualifiedName));
  }
  auto getElementsByTagNameNS(Optional!(string) namespace, string localName) {
    return HTMLCollection(Document_getElementsByTagNameNS(this._parent, !namespace.empty, namespace.front, localName));
  }
  auto getElementsByClassName(string classNames) {
    return HTMLCollection(Document_getElementsByClassName(this._parent, classNames));
  }
  auto createElement(string localName, SumType!(string, ElementCreationOptions) options) {
    return Element(Document_createElement(this._parent, localName, options));
  }
  auto createElementNS(Optional!(string) namespace, string qualifiedName, SumType!(string, ElementCreationOptions) options) {
    return Element(Document_createElementNS(this._parent, !namespace.empty, namespace.front, qualifiedName, options));
  }
  auto createDocumentFragment() {
    return DocumentFragment(Document_createDocumentFragment(this._parent));
  }
  auto createTextNode(string data) {
    return Text(Document_createTextNode(this._parent, data));
  }
  auto createCDATASection(string data) {
    return CDATASection(Document_createCDATASection(this._parent, data));
  }
  auto createComment(string data) {
    return Comment(Document_createComment(this._parent, data));
  }
  auto createProcessingInstruction(string target, string data) {
    return ProcessingInstruction(Document_createProcessingInstruction(this._parent, target, data));
  }
  auto importNode(Node node, bool deep /* = false */) {
    return Node(Document_importNode(this._parent, node.handle, deep));
  }
  auto adoptNode(Node node) {
    return Node(Document_adoptNode(this._parent, node.handle));
  }
  auto createAttribute(string localName) {
    return Attr(Document_createAttribute(this._parent, localName));
  }
  auto createAttributeNS(Optional!(string) namespace, string qualifiedName) {
    return Attr(Document_createAttributeNS(this._parent, !namespace.empty, namespace.front, qualifiedName));
  }
  auto createEvent(string interface_) {
    return Event(Document_createEvent(this._parent, interface_));
  }
  auto createRange() {
    return Range(Document_createRange(this._parent));
  }
  auto createNodeIterator(Node root, uint whatToShow /* = 0xFFFFFFFF */, Optional!(NodeFilter) filter /* = no!(NodeFilter) */) {
    return NodeIterator(Document_createNodeIterator(this._parent, root.handle, whatToShow, !filter.empty, filter.front.handle));
  }
  auto createTreeWalker(Node root, uint whatToShow /* = 0xFFFFFFFF */, Optional!(NodeFilter) filter /* = no!(NodeFilter) */) {
    return TreeWalker(Document_createTreeWalker(this._parent, root.handle, whatToShow, !filter.empty, filter.front.handle));
  }
  auto location() {
    return Document_location_Get(this._parent);
  }
  auto domain(string domain) {
    Document_domain_Set(this._parent, domain);
  }
  auto domain() {
    return Document_domain_Get(this._parent);
  }
  auto referrer() {
    return Document_referrer_Get(this._parent);
  }
  auto cookie(string cookie) {
    Document_cookie_Set(this._parent, cookie);
  }
  auto cookie() {
    return Document_cookie_Get(this._parent);
  }
  auto lastModified() {
    return Document_lastModified_Get(this._parent);
  }
  auto readyState() {
    return Document_readyState_Get(this._parent);
  }
  auto title(string title) {
    Document_title_Set(this._parent, title);
  }
  auto title() {
    return Document_title_Get(this._parent);
  }
  auto dir(string dir) {
    Document_dir_Set(this._parent, dir);
  }
  auto dir() {
    return Document_dir_Get(this._parent);
  }
  auto body_(Optional!(HTMLElement) body_) {
    Document_body_Set(this._parent, !body_.empty, body_.front.handle);
  }
  auto body_() {
    return Document_body_Get(this._parent);
  }
  auto head() {
    return Document_head_Get(this._parent);
  }
  auto images() {
    return HTMLCollection(Document_images_Get(this._parent));
  }
  auto embeds() {
    return HTMLCollection(Document_embeds_Get(this._parent));
  }
  auto plugins() {
    return HTMLCollection(Document_plugins_Get(this._parent));
  }
  auto links() {
    return HTMLCollection(Document_links_Get(this._parent));
  }
  auto forms() {
    return HTMLCollection(Document_forms_Get(this._parent));
  }
  auto scripts() {
    return HTMLCollection(Document_scripts_Get(this._parent));
  }
  auto getElementsByName(string elementName) {
    return NodeList(Document_getElementsByName(this._parent, elementName));
  }
  auto currentScript() {
    return Document_currentScript_Get(this._parent);
  }
  auto open(string unused1, string unused2) {
    return Document(Document_open__string_string(this._parent, unused1, unused2));
  }
  auto open(string url, string name, string features) {
    return Document_open__string_string_string(this._parent, url, name, features);
  }
  auto close() {
    Document_close(this._parent);
  }
  auto write(string text) {
    Document_write(this._parent, text);
  }
  auto writeln(string text) {
    Document_writeln(this._parent, text);
  }
  auto defaultView() {
    return Document_defaultView_Get(this._parent);
  }
  auto activeElement() {
    return Document_activeElement_Get(this._parent);
  }
  auto hasFocus() {
    return Document_hasFocus(this._parent);
  }
  auto designMode(string designMode) {
    Document_designMode_Set(this._parent, designMode);
  }
  auto designMode() {
    return Document_designMode_Get(this._parent);
  }
  auto execCommand(string commandId, bool showUI /* = false */, string value /* = "" */) {
    return Document_execCommand(this._parent, commandId, showUI, value);
  }
  auto queryCommandEnabled(string commandId) {
    return Document_queryCommandEnabled(this._parent, commandId);
  }
  auto queryCommandIndeterm(string commandId) {
    return Document_queryCommandIndeterm(this._parent, commandId);
  }
  auto queryCommandState(string commandId) {
    return Document_queryCommandState(this._parent, commandId);
  }
  auto queryCommandSupported(string commandId) {
    return Document_queryCommandSupported(this._parent, commandId);
  }
  auto queryCommandValue(string commandId) {
    return Document_queryCommandValue(this._parent, commandId);
  }
  auto onreadystatechange(EventHandler onreadystatechange) {
    Document_onreadystatechange_Set(this._parent, onreadystatechange);
  }
  auto onreadystatechange() {
    return Document_onreadystatechange_Get(this._parent);
  }
  auto fgColor(string fgColor) {
    Document_fgColor_Set(this._parent, fgColor);
  }
  auto fgColor() {
    return Document_fgColor_Get(this._parent);
  }
  auto linkColor(string linkColor) {
    Document_linkColor_Set(this._parent, linkColor);
  }
  auto linkColor() {
    return Document_linkColor_Get(this._parent);
  }
  auto vlinkColor(string vlinkColor) {
    Document_vlinkColor_Set(this._parent, vlinkColor);
  }
  auto vlinkColor() {
    return Document_vlinkColor_Get(this._parent);
  }
  auto alinkColor(string alinkColor) {
    Document_alinkColor_Set(this._parent, alinkColor);
  }
  auto alinkColor() {
    return Document_alinkColor_Get(this._parent);
  }
  auto bgColor(string bgColor) {
    Document_bgColor_Set(this._parent, bgColor);
  }
  auto bgColor() {
    return Document_bgColor_Get(this._parent);
  }
  auto anchors() {
    return HTMLCollection(Document_anchors_Get(this._parent));
  }
  auto applets() {
    return HTMLCollection(Document_applets_Get(this._parent));
  }
  auto clear() {
    Document_clear(this._parent);
  }
  auto captureEvents() {
    Document_captureEvents(this._parent);
  }
  auto releaseEvents() {
    Document_releaseEvents(this._parent);
  }
  auto all() {
    return HTMLAllCollection(Document_all_Get(this._parent));
  }
  auto hidden() {
    return Document_hidden_Get(this._parent);
  }
  auto visibilityState() {
    return Document_visibilityState_Get(this._parent);
  }
  auto onvisibilitychange(EventHandler onvisibilitychange) {
    Document_onvisibilitychange_Set(this._parent, onvisibilitychange);
  }
  auto onvisibilitychange() {
    return Document_onvisibilitychange_Get(this._parent);
  }
  auto fullscreenEnabled() {
    return Document_fullscreenEnabled_Get(this._parent);
  }
  auto fullscreen() {
    return Document_fullscreen_Get(this._parent);
  }
  auto exitFullscreen() {
    return Promise!(void)(Document_exitFullscreen(this._parent));
  }
  auto onfullscreenchange(EventHandler onfullscreenchange) {
    Document_onfullscreenchange_Set(this._parent, onfullscreenchange);
  }
  auto onfullscreenchange() {
    return Document_onfullscreenchange_Get(this._parent);
  }
  auto onfullscreenerror(EventHandler onfullscreenerror) {
    Document_onfullscreenerror_Set(this._parent, onfullscreenerror);
  }
  auto onfullscreenerror() {
    return Document_onfullscreenerror_Get(this._parent);
  }
  auto rootElement() {
    return Document_rootElement_Get(this._parent);
  }
  auto getElementById(string elementId) {
    return NonElementParentNode_getElementById(this.handle, elementId);
  }
  auto fullscreenElement() {
    return DocumentOrShadowRoot_fullscreenElement_Get(this.handle);
  }
  auto children() {
    return HTMLCollection(ParentNode_children_Get(this.handle));
  }
  auto firstElementChild() {
    return ParentNode_firstElementChild_Get(this.handle);
  }
  auto lastElementChild() {
    return ParentNode_lastElementChild_Get(this.handle);
  }
  auto childElementCount() {
    return ParentNode_childElementCount_Get(this.handle);
  }
  auto prepend(SumType!(Node, string) nodes) {
    ParentNode_prepend(this.handle, nodes);
  }
  auto append(SumType!(Node, string) nodes) {
    ParentNode_append(this.handle, nodes);
  }
  auto querySelector(string selectors) {
    return ParentNode_querySelector(this.handle, selectors);
  }
  auto querySelectorAll(string selectors) {
    return NodeList(ParentNode_querySelectorAll(this.handle, selectors));
  }
  auto ongotpointercapture(EventHandler ongotpointercapture) {
    GlobalEventHandlers_ongotpointercapture_Set(this.handle, ongotpointercapture);
  }
  auto ongotpointercapture() {
    return GlobalEventHandlers_ongotpointercapture_Get(this.handle);
  }
  auto onlostpointercapture(EventHandler onlostpointercapture) {
    GlobalEventHandlers_onlostpointercapture_Set(this.handle, onlostpointercapture);
  }
  auto onlostpointercapture() {
    return GlobalEventHandlers_onlostpointercapture_Get(this.handle);
  }
  auto onpointerdown(EventHandler onpointerdown) {
    GlobalEventHandlers_onpointerdown_Set(this.handle, onpointerdown);
  }
  auto onpointerdown() {
    return GlobalEventHandlers_onpointerdown_Get(this.handle);
  }
  auto onpointermove(EventHandler onpointermove) {
    GlobalEventHandlers_onpointermove_Set(this.handle, onpointermove);
  }
  auto onpointermove() {
    return GlobalEventHandlers_onpointermove_Get(this.handle);
  }
  auto onpointerup(EventHandler onpointerup) {
    GlobalEventHandlers_onpointerup_Set(this.handle, onpointerup);
  }
  auto onpointerup() {
    return GlobalEventHandlers_onpointerup_Get(this.handle);
  }
  auto onpointercancel(EventHandler onpointercancel) {
    GlobalEventHandlers_onpointercancel_Set(this.handle, onpointercancel);
  }
  auto onpointercancel() {
    return GlobalEventHandlers_onpointercancel_Get(this.handle);
  }
  auto onpointerover(EventHandler onpointerover) {
    GlobalEventHandlers_onpointerover_Set(this.handle, onpointerover);
  }
  auto onpointerover() {
    return GlobalEventHandlers_onpointerover_Get(this.handle);
  }
  auto onpointerout(EventHandler onpointerout) {
    GlobalEventHandlers_onpointerout_Set(this.handle, onpointerout);
  }
  auto onpointerout() {
    return GlobalEventHandlers_onpointerout_Get(this.handle);
  }
  auto onpointerenter(EventHandler onpointerenter) {
    GlobalEventHandlers_onpointerenter_Set(this.handle, onpointerenter);
  }
  auto onpointerenter() {
    return GlobalEventHandlers_onpointerenter_Get(this.handle);
  }
  auto onpointerleave(EventHandler onpointerleave) {
    GlobalEventHandlers_onpointerleave_Set(this.handle, onpointerleave);
  }
  auto onpointerleave() {
    return GlobalEventHandlers_onpointerleave_Get(this.handle);
  }
  auto ontouchstart(EventHandler ontouchstart) {
    GlobalEventHandlers_ontouchstart_Set(this.handle, ontouchstart);
  }
  auto ontouchstart() {
    return GlobalEventHandlers_ontouchstart_Get(this.handle);
  }
  auto ontouchend(EventHandler ontouchend) {
    GlobalEventHandlers_ontouchend_Set(this.handle, ontouchend);
  }
  auto ontouchend() {
    return GlobalEventHandlers_ontouchend_Get(this.handle);
  }
  auto ontouchmove(EventHandler ontouchmove) {
    GlobalEventHandlers_ontouchmove_Set(this.handle, ontouchmove);
  }
  auto ontouchmove() {
    return GlobalEventHandlers_ontouchmove_Get(this.handle);
  }
  auto ontouchcancel(EventHandler ontouchcancel) {
    GlobalEventHandlers_ontouchcancel_Set(this.handle, ontouchcancel);
  }
  auto ontouchcancel() {
    return GlobalEventHandlers_ontouchcancel_Get(this.handle);
  }
}
struct DocumentFragment {
  Node _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Node(h);
  }
  auto getElementById(string elementId) {
    return NonElementParentNode_getElementById(this.handle, elementId);
  }
  auto children() {
    return HTMLCollection(ParentNode_children_Get(this.handle));
  }
  auto firstElementChild() {
    return ParentNode_firstElementChild_Get(this.handle);
  }
  auto lastElementChild() {
    return ParentNode_lastElementChild_Get(this.handle);
  }
  auto childElementCount() {
    return ParentNode_childElementCount_Get(this.handle);
  }
  auto prepend(SumType!(Node, string) nodes) {
    ParentNode_prepend(this.handle, nodes);
  }
  auto append(SumType!(Node, string) nodes) {
    ParentNode_append(this.handle, nodes);
  }
  auto querySelector(string selectors) {
    return ParentNode_querySelector(this.handle, selectors);
  }
  auto querySelectorAll(string selectors) {
    return NodeList(ParentNode_querySelectorAll(this.handle, selectors));
  }
}
struct DocumentType {
  Node _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Node(h);
  }
  auto name() {
    return DocumentType_name_Get(this._parent);
  }
  auto publicId() {
    return DocumentType_publicId_Get(this._parent);
  }
  auto systemId() {
    return DocumentType_systemId_Get(this._parent);
  }
  auto before(SumType!(Node, string) nodes) {
    ChildNode_before(this.handle, nodes);
  }
  auto after(SumType!(Node, string) nodes) {
    ChildNode_after(this.handle, nodes);
  }
  auto replaceWith(SumType!(Node, string) nodes) {
    ChildNode_replaceWith(this.handle, nodes);
  }
  auto remove() {
    ChildNode_remove(this.handle);
  }
}
struct Element {
  Node _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Node(h);
  }
  auto namespaceURI() {
    return Element_namespaceURI_Get(this._parent);
  }
  auto prefix() {
    return Element_prefix_Get(this._parent);
  }
  auto localName() {
    return Element_localName_Get(this._parent);
  }
  auto tagName() {
    return Element_tagName_Get(this._parent);
  }
  auto id(string id) {
    Element_id_Set(this._parent, id);
  }
  auto id() {
    return Element_id_Get(this._parent);
  }
  auto className(string className) {
    Element_className_Set(this._parent, className);
  }
  auto className() {
    return Element_className_Get(this._parent);
  }
  auto classList() {
    return DOMTokenList(Element_classList_Get(this._parent));
  }
  auto slot(string slot) {
    Element_slot_Set(this._parent, slot);
  }
  auto slot() {
    return Element_slot_Get(this._parent);
  }
  auto hasAttributes() {
    return Element_hasAttributes(this._parent);
  }
  auto attributes() {
    return NamedNodeMap(Element_attributes_Get(this._parent));
  }
  auto getAttributeNames() {
    return Sequence!(string)(Element_getAttributeNames(this._parent));
  }
  auto getAttribute(string qualifiedName) {
    return Element_getAttribute(this._parent, qualifiedName);
  }
  auto getAttributeNS(Optional!(string) namespace, string localName) {
    return Element_getAttributeNS(this._parent, !namespace.empty, namespace.front, localName);
  }
  auto setAttribute(string qualifiedName, string value) {
    Element_setAttribute(this._parent, qualifiedName, value);
  }
  auto setAttributeNS(Optional!(string) namespace, string qualifiedName, string value) {
    Element_setAttributeNS(this._parent, !namespace.empty, namespace.front, qualifiedName, value);
  }
  auto removeAttribute(string qualifiedName) {
    Element_removeAttribute(this._parent, qualifiedName);
  }
  auto removeAttributeNS(Optional!(string) namespace, string localName) {
    Element_removeAttributeNS(this._parent, !namespace.empty, namespace.front, localName);
  }
  auto toggleAttribute(string qualifiedName, bool force) {
    return Element_toggleAttribute(this._parent, qualifiedName, force);
  }
  auto hasAttribute(string qualifiedName) {
    return Element_hasAttribute(this._parent, qualifiedName);
  }
  auto hasAttributeNS(Optional!(string) namespace, string localName) {
    return Element_hasAttributeNS(this._parent, !namespace.empty, namespace.front, localName);
  }
  auto getAttributeNode(string qualifiedName) {
    return Element_getAttributeNode(this._parent, qualifiedName);
  }
  auto getAttributeNodeNS(Optional!(string) namespace, string localName) {
    return Element_getAttributeNodeNS(this._parent, !namespace.empty, namespace.front, localName);
  }
  auto setAttributeNode(Attr attr) {
    return Element_setAttributeNode(this._parent, attr.handle);
  }
  auto setAttributeNodeNS(Attr attr) {
    return Element_setAttributeNodeNS(this._parent, attr.handle);
  }
  auto removeAttributeNode(Attr attr) {
    return Attr(Element_removeAttributeNode(this._parent, attr.handle));
  }
  auto attachShadow(ShadowRootInit init) {
    return ShadowRoot(Element_attachShadow(this._parent, init.handle));
  }
  auto shadowRoot() {
    return Element_shadowRoot_Get(this._parent);
  }
  auto closest(string selectors) {
    return Element_closest(this._parent, selectors);
  }
  auto matches(string selectors) {
    return Element_matches(this._parent, selectors);
  }
  auto webkitMatchesSelector(string selectors) {
    return Element_webkitMatchesSelector(this._parent, selectors);
  }
  auto getElementsByTagName(string qualifiedName) {
    return HTMLCollection(Element_getElementsByTagName(this._parent, qualifiedName));
  }
  auto getElementsByTagNameNS(Optional!(string) namespace, string localName) {
    return HTMLCollection(Element_getElementsByTagNameNS(this._parent, !namespace.empty, namespace.front, localName));
  }
  auto getElementsByClassName(string classNames) {
    return HTMLCollection(Element_getElementsByClassName(this._parent, classNames));
  }
  auto insertAdjacentElement(string where, Element element) {
    return Element_insertAdjacentElement(this._parent, where, element.handle);
  }
  auto insertAdjacentText(string where, string data) {
    Element_insertAdjacentText(this._parent, where, data);
  }
  auto setPointerCapture(int pointerId) {
    Element_setPointerCapture(this._parent, pointerId);
  }
  auto releasePointerCapture(int pointerId) {
    Element_releasePointerCapture(this._parent, pointerId);
  }
  auto hasPointerCapture(int pointerId) {
    return Element_hasPointerCapture(this._parent, pointerId);
  }
  auto requestFullscreen(FullscreenOptions options) {
    return Promise!(void)(Element_requestFullscreen(this._parent, options.handle));
  }
  auto onfullscreenchange(EventHandler onfullscreenchange) {
    Element_onfullscreenchange_Set(this._parent, onfullscreenchange);
  }
  auto onfullscreenchange() {
    return Element_onfullscreenchange_Get(this._parent);
  }
  auto onfullscreenerror(EventHandler onfullscreenerror) {
    Element_onfullscreenerror_Set(this._parent, onfullscreenerror);
  }
  auto onfullscreenerror() {
    return Element_onfullscreenerror_Get(this._parent);
  }
  auto children() {
    return HTMLCollection(ParentNode_children_Get(this.handle));
  }
  auto firstElementChild() {
    return ParentNode_firstElementChild_Get(this.handle);
  }
  auto lastElementChild() {
    return ParentNode_lastElementChild_Get(this.handle);
  }
  auto childElementCount() {
    return ParentNode_childElementCount_Get(this.handle);
  }
  auto prepend(SumType!(Node, string) nodes) {
    ParentNode_prepend(this.handle, nodes);
  }
  auto append(SumType!(Node, string) nodes) {
    ParentNode_append(this.handle, nodes);
  }
  auto querySelector(string selectors) {
    return ParentNode_querySelector(this.handle, selectors);
  }
  auto querySelectorAll(string selectors) {
    return NodeList(ParentNode_querySelectorAll(this.handle, selectors));
  }
  auto previousElementSibling() {
    return NonDocumentTypeChildNode_previousElementSibling_Get(this.handle);
  }
  auto nextElementSibling() {
    return NonDocumentTypeChildNode_nextElementSibling_Get(this.handle);
  }
  auto before(SumType!(Node, string) nodes) {
    ChildNode_before(this.handle, nodes);
  }
  auto after(SumType!(Node, string) nodes) {
    ChildNode_after(this.handle, nodes);
  }
  auto replaceWith(SumType!(Node, string) nodes) {
    ChildNode_replaceWith(this.handle, nodes);
  }
  auto remove() {
    ChildNode_remove(this.handle);
  }
  auto assignedSlot() {
    return Slotable_assignedSlot_Get(this.handle);
  }
}
struct ElementCreationOptions {
  JsHandle handle;
  alias handle this;
  auto is_(string is_) {
    ElementCreationOptions_is_Set(this.handle, is_);
  }
  auto is_() {
    return ElementCreationOptions_is_Get(this.handle);
  }
}
struct Event {
  JsHandle handle;
  alias handle this;
  auto type() {
    return Event_type_Get(this.handle);
  }
  auto target() {
    return Event_target_Get(this.handle);
  }
  auto srcElement() {
    return Event_srcElement_Get(this.handle);
  }
  auto currentTarget() {
    return Event_currentTarget_Get(this.handle);
  }
  auto composedPath() {
    return Sequence!(EventTarget)(Event_composedPath(this.handle));
  }
  enum ushort NONE = 0;
  enum ushort CAPTURING_PHASE = 1;
  enum ushort AT_TARGET = 2;
  enum ushort BUBBLING_PHASE = 3;
  auto eventPhase() {
    return Event_eventPhase_Get(this.handle);
  }
  auto stopPropagation() {
    Event_stopPropagation(this.handle);
  }
  auto cancelBubble(bool cancelBubble) {
    Event_cancelBubble_Set(this.handle, cancelBubble);
  }
  auto cancelBubble() {
    return Event_cancelBubble_Get(this.handle);
  }
  auto stopImmediatePropagation() {
    Event_stopImmediatePropagation(this.handle);
  }
  auto bubbles() {
    return Event_bubbles_Get(this.handle);
  }
  auto cancelable() {
    return Event_cancelable_Get(this.handle);
  }
  auto returnValue(bool returnValue) {
    Event_returnValue_Set(this.handle, returnValue);
  }
  auto returnValue() {
    return Event_returnValue_Get(this.handle);
  }
  auto preventDefault() {
    Event_preventDefault(this.handle);
  }
  auto defaultPrevented() {
    return Event_defaultPrevented_Get(this.handle);
  }
  auto composed() {
    return Event_composed_Get(this.handle);
  }
  auto isTrusted() {
    return Event_isTrusted_Get(this.handle);
  }
  auto timeStamp() {
    return Event_timeStamp_Get(this.handle);
  }
  auto initEvent(string type, bool bubbles /* = false */, bool cancelable /* = false */) {
    Event_initEvent(this.handle, type, bubbles, cancelable);
  }
}
struct EventInit {
  JsHandle handle;
  alias handle this;
  auto bubbles(bool bubbles) {
    EventInit_bubbles_Set(this.handle, bubbles);
  }
  auto bubbles() {
    return EventInit_bubbles_Get(this.handle);
  }
  auto cancelable(bool cancelable) {
    EventInit_cancelable_Set(this.handle, cancelable);
  }
  auto cancelable() {
    return EventInit_cancelable_Get(this.handle);
  }
  auto composed(bool composed) {
    EventInit_composed_Set(this.handle, composed);
  }
  auto composed() {
    return EventInit_composed_Get(this.handle);
  }
}
struct EventListener {
  JsHandle handle;
  alias handle this;
  auto handleEvent(Event event) {
    EventListener_handleEvent(this.handle, event.handle);
  }
}
struct EventListenerOptions {
  JsHandle handle;
  alias handle this;
  auto capture(bool capture) {
    EventListenerOptions_capture_Set(this.handle, capture);
  }
  auto capture() {
    return EventListenerOptions_capture_Get(this.handle);
  }
}
struct EventTarget {
  JsHandle handle;
  alias handle this;
  auto addEventListener(string type, Optional!(EventListener) callback, SumType!(AddEventListenerOptions, bool) options) {
    EventTarget_addEventListener(this.handle, type, !callback.empty, callback.front.handle, options);
  }
  auto removeEventListener(string type, Optional!(EventListener) callback, SumType!(EventListenerOptions, bool) options) {
    EventTarget_removeEventListener(this.handle, type, !callback.empty, callback.front.handle, options);
  }
  auto dispatchEvent(Event event) {
    return EventTarget_dispatchEvent(this.handle, event.handle);
  }
}
struct GetRootNodeOptions {
  JsHandle handle;
  alias handle this;
  auto composed(bool composed) {
    GetRootNodeOptions_composed_Set(this.handle, composed);
  }
  auto composed() {
    return GetRootNodeOptions_composed_Get(this.handle);
  }
}
struct HTMLCollection {
  JsHandle handle;
  alias handle this;
  auto length() {
    return HTMLCollection_length_Get(this.handle);
  }
  auto item(uint index) {
    return HTMLCollection_item_getter(this.handle, index);
  }
  auto namedItem(string name) {
    return HTMLCollection_namedItem_getter(this.handle, name);
  }
}
alias MutationCallback = void delegate(Sequence!(MutationRecord), MutationObserver);
struct MutationObserver {
  JsHandle handle;
  alias handle this;
  auto observe(Node target, MutationObserverInit options) {
    MutationObserver_observe(this.handle, target.handle, options.handle);
  }
  auto disconnect() {
    MutationObserver_disconnect(this.handle);
  }
  auto takeRecords() {
    return Sequence!(MutationRecord)(MutationObserver_takeRecords(this.handle));
  }
}
struct MutationObserverInit {
  JsHandle handle;
  alias handle this;
  auto childList(bool childList) {
    MutationObserverInit_childList_Set(this.handle, childList);
  }
  auto childList() {
    return MutationObserverInit_childList_Get(this.handle);
  }
  auto attributes(bool attributes) {
    MutationObserverInit_attributes_Set(this.handle, attributes);
  }
  auto attributes() {
    return MutationObserverInit_attributes_Get(this.handle);
  }
  auto characterData(bool characterData) {
    MutationObserverInit_characterData_Set(this.handle, characterData);
  }
  auto characterData() {
    return MutationObserverInit_characterData_Get(this.handle);
  }
  auto subtree(bool subtree) {
    MutationObserverInit_subtree_Set(this.handle, subtree);
  }
  auto subtree() {
    return MutationObserverInit_subtree_Get(this.handle);
  }
  auto attributeOldValue(bool attributeOldValue) {
    MutationObserverInit_attributeOldValue_Set(this.handle, attributeOldValue);
  }
  auto attributeOldValue() {
    return MutationObserverInit_attributeOldValue_Get(this.handle);
  }
  auto characterDataOldValue(bool characterDataOldValue) {
    MutationObserverInit_characterDataOldValue_Set(this.handle, characterDataOldValue);
  }
  auto characterDataOldValue() {
    return MutationObserverInit_characterDataOldValue_Get(this.handle);
  }
  auto attributeFilter(Sequence!(string) attributeFilter) {
    MutationObserverInit_attributeFilter_Set(this.handle, attributeFilter.handle);
  }
  auto attributeFilter() {
    return Sequence!(string)(MutationObserverInit_attributeFilter_Get(this.handle));
  }
}
struct MutationRecord {
  JsHandle handle;
  alias handle this;
  auto type() {
    return MutationRecord_type_Get(this.handle);
  }
  auto target() {
    return Node(MutationRecord_target_Get(this.handle));
  }
  auto addedNodes() {
    return NodeList(MutationRecord_addedNodes_Get(this.handle));
  }
  auto removedNodes() {
    return NodeList(MutationRecord_removedNodes_Get(this.handle));
  }
  auto previousSibling() {
    return MutationRecord_previousSibling_Get(this.handle);
  }
  auto nextSibling() {
    return MutationRecord_nextSibling_Get(this.handle);
  }
  auto attributeName() {
    return MutationRecord_attributeName_Get(this.handle);
  }
  auto attributeNamespace() {
    return MutationRecord_attributeNamespace_Get(this.handle);
  }
  auto oldValue() {
    return MutationRecord_oldValue_Get(this.handle);
  }
}
struct NamedNodeMap {
  JsHandle handle;
  alias handle this;
  auto length() {
    return NamedNodeMap_length_Get(this.handle);
  }
  auto item(uint index) {
    return NamedNodeMap_item_getter(this.handle, index);
  }
  auto getNamedItem(string qualifiedName) {
    return NamedNodeMap_getNamedItem_getter(this.handle, qualifiedName);
  }
  auto getNamedItemNS(Optional!(string) namespace, string localName) {
    return NamedNodeMap_getNamedItemNS(this.handle, !namespace.empty, namespace.front, localName);
  }
  auto setNamedItem(Attr attr) {
    return NamedNodeMap_setNamedItem(this.handle, attr.handle);
  }
  auto setNamedItemNS(Attr attr) {
    return NamedNodeMap_setNamedItemNS(this.handle, attr.handle);
  }
  auto removeNamedItem(string qualifiedName) {
    return Attr(NamedNodeMap_removeNamedItem(this.handle, qualifiedName));
  }
  auto removeNamedItemNS(Optional!(string) namespace, string localName) {
    return Attr(NamedNodeMap_removeNamedItemNS(this.handle, !namespace.empty, namespace.front, localName));
  }
}
struct Node {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  enum ushort ELEMENT_NODE = 1;
  enum ushort ATTRIBUTE_NODE = 2;
  enum ushort TEXT_NODE = 3;
  enum ushort CDATA_SECTION_NODE = 4;
  enum ushort ENTITY_REFERENCE_NODE = 5;
  enum ushort ENTITY_NODE = 6;
  enum ushort PROCESSING_INSTRUCTION_NODE = 7;
  enum ushort COMMENT_NODE = 8;
  enum ushort DOCUMENT_NODE = 9;
  enum ushort DOCUMENT_TYPE_NODE = 10;
  enum ushort DOCUMENT_FRAGMENT_NODE = 11;
  enum ushort NOTATION_NODE = 12;
  auto nodeType() {
    return Node_nodeType_Get(this._parent);
  }
  auto nodeName() {
    return Node_nodeName_Get(this._parent);
  }
  auto baseURI() {
    return Node_baseURI_Get(this._parent);
  }
  auto isConnected() {
    return Node_isConnected_Get(this._parent);
  }
  auto ownerDocument() {
    return Node_ownerDocument_Get(this._parent);
  }
  auto getRootNode(GetRootNodeOptions options) {
    return Node(Node_getRootNode(this._parent, options.handle));
  }
  auto parentNode() {
    return Node_parentNode_Get(this._parent);
  }
  auto parentElement() {
    return Node_parentElement_Get(this._parent);
  }
  auto hasChildNodes() {
    return Node_hasChildNodes(this._parent);
  }
  auto childNodes() {
    return NodeList(Node_childNodes_Get(this._parent));
  }
  auto firstChild() {
    return Node_firstChild_Get(this._parent);
  }
  auto lastChild() {
    return Node_lastChild_Get(this._parent);
  }
  auto previousSibling() {
    return Node_previousSibling_Get(this._parent);
  }
  auto nextSibling() {
    return Node_nextSibling_Get(this._parent);
  }
  auto nodeValue(Optional!(string) nodeValue) {
    Node_nodeValue_Set(this._parent, !nodeValue.empty, nodeValue.front);
  }
  auto nodeValue() {
    return Node_nodeValue_Get(this._parent);
  }
  auto textContent(Optional!(string) textContent) {
    Node_textContent_Set(this._parent, !textContent.empty, textContent.front);
  }
  auto textContent() {
    return Node_textContent_Get(this._parent);
  }
  auto normalize() {
    Node_normalize(this._parent);
  }
  auto cloneNode(bool deep /* = false */) {
    return Node(Node_cloneNode(this._parent, deep));
  }
  auto isEqualNode(Optional!(Node) otherNode) {
    return Node_isEqualNode(this._parent, !otherNode.empty, otherNode.front.handle);
  }
  auto isSameNode(Optional!(Node) otherNode) {
    return Node_isSameNode(this._parent, !otherNode.empty, otherNode.front.handle);
  }
  enum ushort DOCUMENT_POSITION_DISCONNECTED = 0x01;
  enum ushort DOCUMENT_POSITION_PRECEDING = 0x02;
  enum ushort DOCUMENT_POSITION_FOLLOWING = 0x04;
  enum ushort DOCUMENT_POSITION_CONTAINS = 0x08;
  enum ushort DOCUMENT_POSITION_CONTAINED_BY = 0x10;
  enum ushort DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC = 0x20;
  auto compareDocumentPosition(Node other) {
    return Node_compareDocumentPosition(this._parent, other.handle);
  }
  auto contains(Optional!(Node) other) {
    return Node_contains(this._parent, !other.empty, other.front.handle);
  }
  auto lookupPrefix(Optional!(string) namespace) {
    return Node_lookupPrefix(this._parent, !namespace.empty, namespace.front);
  }
  auto lookupNamespaceURI(Optional!(string) prefix) {
    return Node_lookupNamespaceURI(this._parent, !prefix.empty, prefix.front);
  }
  auto isDefaultNamespace(Optional!(string) namespace) {
    return Node_isDefaultNamespace(this._parent, !namespace.empty, namespace.front);
  }
  auto insertBefore(Node node, Optional!(Node) child) {
    return Node(Node_insertBefore(this._parent, node.handle, !child.empty, child.front.handle));
  }
  auto appendChild(Node node) {
    return Node(Node_appendChild(this._parent, node.handle));
  }
  auto replaceChild(Node node, Node child) {
    return Node(Node_replaceChild(this._parent, node.handle, child.handle));
  }
  auto removeChild(Node child) {
    return Node(Node_removeChild(this._parent, child.handle));
  }
}
struct NodeFilter {
  JsHandle handle;
  alias handle this;
  enum ushort FILTER_ACCEPT = 1;
  enum ushort FILTER_REJECT = 2;
  enum ushort FILTER_SKIP = 3;
  enum uint SHOW_ALL = 0xFFFFFFFF;
  enum uint SHOW_ELEMENT = 0x1;
  enum uint SHOW_ATTRIBUTE = 0x2;
  enum uint SHOW_TEXT = 0x4;
  enum uint SHOW_CDATA_SECTION = 0x8;
  enum uint SHOW_ENTITY_REFERENCE = 0x10;
  enum uint SHOW_ENTITY = 0x20;
  enum uint SHOW_PROCESSING_INSTRUCTION = 0x40;
  enum uint SHOW_COMMENT = 0x80;
  enum uint SHOW_DOCUMENT = 0x100;
  enum uint SHOW_DOCUMENT_TYPE = 0x200;
  enum uint SHOW_DOCUMENT_FRAGMENT = 0x400;
  enum uint SHOW_NOTATION = 0x800;
  auto acceptNode(Node node) {
    return NodeFilter_acceptNode(this.handle, node.handle);
  }
}
struct NodeIterator {
  JsHandle handle;
  alias handle this;
  auto root() {
    return Node(NodeIterator_root_Get(this.handle));
  }
  auto referenceNode() {
    return Node(NodeIterator_referenceNode_Get(this.handle));
  }
  auto pointerBeforeReferenceNode() {
    return NodeIterator_pointerBeforeReferenceNode_Get(this.handle);
  }
  auto whatToShow() {
    return NodeIterator_whatToShow_Get(this.handle);
  }
  auto filter() {
    return NodeIterator_filter_Get(this.handle);
  }
  auto nextNode() {
    return NodeIterator_nextNode(this.handle);
  }
  auto previousNode() {
    return NodeIterator_previousNode(this.handle);
  }
  auto detach() {
    NodeIterator_detach(this.handle);
  }
}
struct NodeList {
  JsHandle handle;
  alias handle this;
  auto item(uint index) {
    return NodeList_item_getter(this.handle, index);
  }
  auto length() {
    return NodeList_length_Get(this.handle);
  }
}
struct ProcessingInstruction {
  CharacterData _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = CharacterData(h);
  }
  auto target() {
    return ProcessingInstruction_target_Get(this._parent);
  }
}
struct Range {
  AbstractRange _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AbstractRange(h);
  }
  auto commonAncestorContainer() {
    return Node(Range_commonAncestorContainer_Get(this._parent));
  }
  auto setStart(Node node, uint offset) {
    Range_setStart(this._parent, node.handle, offset);
  }
  auto setEnd(Node node, uint offset) {
    Range_setEnd(this._parent, node.handle, offset);
  }
  auto setStartBefore(Node node) {
    Range_setStartBefore(this._parent, node.handle);
  }
  auto setStartAfter(Node node) {
    Range_setStartAfter(this._parent, node.handle);
  }
  auto setEndBefore(Node node) {
    Range_setEndBefore(this._parent, node.handle);
  }
  auto setEndAfter(Node node) {
    Range_setEndAfter(this._parent, node.handle);
  }
  auto collapse(bool toStart /* = false */) {
    Range_collapse(this._parent, toStart);
  }
  auto selectNode(Node node) {
    Range_selectNode(this._parent, node.handle);
  }
  auto selectNodeContents(Node node) {
    Range_selectNodeContents(this._parent, node.handle);
  }
  enum ushort START_TO_START = 0;
  enum ushort START_TO_END = 1;
  enum ushort END_TO_END = 2;
  enum ushort END_TO_START = 3;
  auto compareBoundaryPoints(ushort how, Range sourceRange) {
    return Range_compareBoundaryPoints(this._parent, how, sourceRange.handle);
  }
  auto deleteContents() {
    Range_deleteContents(this._parent);
  }
  auto extractContents() {
    return DocumentFragment(Range_extractContents(this._parent));
  }
  auto cloneContents() {
    return DocumentFragment(Range_cloneContents(this._parent));
  }
  auto insertNode(Node node) {
    Range_insertNode(this._parent, node.handle);
  }
  auto surroundContents(Node newParent) {
    Range_surroundContents(this._parent, newParent.handle);
  }
  auto cloneRange() {
    return Range(Range_cloneRange(this._parent));
  }
  auto detach() {
    Range_detach(this._parent);
  }
  auto isPointInRange(Node node, uint offset) {
    return Range_isPointInRange(this._parent, node.handle, offset);
  }
  auto comparePoint(Node node, uint offset) {
    return Range_comparePoint(this._parent, node.handle, offset);
  }
  auto intersectsNode(Node node) {
    return Range_intersectsNode(this._parent, node.handle);
  }
}
struct ShadowRoot {
  DocumentFragment _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = DocumentFragment(h);
  }
  auto mode() {
    return ShadowRoot_mode_Get(this._parent);
  }
  auto host() {
    return Element(ShadowRoot_host_Get(this._parent));
  }
  auto fullscreenElement() {
    return DocumentOrShadowRoot_fullscreenElement_Get(this.handle);
  }
}
struct ShadowRootInit {
  JsHandle handle;
  alias handle this;
  auto mode(ShadowRootMode mode) {
    ShadowRootInit_mode_Set(this.handle, mode);
  }
  auto mode() {
    return ShadowRootInit_mode_Get(this.handle);
  }
}
enum ShadowRootMode {
  open,
  closed
}
struct StaticRange {
  AbstractRange _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AbstractRange(h);
  }
}
struct Text {
  CharacterData _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = CharacterData(h);
  }
  auto splitText(uint offset) {
    return Text(Text_splitText(this._parent, offset));
  }
  auto wholeText() {
    return Text_wholeText_Get(this._parent);
  }
  auto assignedSlot() {
    return Slotable_assignedSlot_Get(this.handle);
  }
}
struct TreeWalker {
  JsHandle handle;
  alias handle this;
  auto root() {
    return Node(TreeWalker_root_Get(this.handle));
  }
  auto whatToShow() {
    return TreeWalker_whatToShow_Get(this.handle);
  }
  auto filter() {
    return TreeWalker_filter_Get(this.handle);
  }
  auto currentNode(Node currentNode) {
    TreeWalker_currentNode_Set(this.handle, currentNode.handle);
  }
  auto currentNode() {
    return Node(TreeWalker_currentNode_Get(this.handle));
  }
  auto parentNode() {
    return TreeWalker_parentNode(this.handle);
  }
  auto firstChild() {
    return TreeWalker_firstChild(this.handle);
  }
  auto lastChild() {
    return TreeWalker_lastChild(this.handle);
  }
  auto previousSibling() {
    return TreeWalker_previousSibling(this.handle);
  }
  auto nextSibling() {
    return TreeWalker_nextSibling(this.handle);
  }
  auto previousNode() {
    return TreeWalker_previousNode(this.handle);
  }
  auto nextNode() {
    return TreeWalker_nextNode(this.handle);
  }
}
struct XMLDocument {
  Document _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Document(h);
  }
}


extern (C) JsHandle AbortController_signal_Get(JsHandle);
extern (C) void AbortController_abort(JsHandle);
extern (C) bool AbortSignal_aborted_Get(JsHandle);
extern (C) void AbortSignal_onabort_Set(JsHandle, EventHandler);
extern (C) EventHandler AbortSignal_onabort_Get(JsHandle);
extern (C) JsHandle AbstractRange_startContainer_Get(JsHandle);
extern (C) uint AbstractRange_startOffset_Get(JsHandle);
extern (C) JsHandle AbstractRange_endContainer_Get(JsHandle);
extern (C) uint AbstractRange_endOffset_Get(JsHandle);
extern (C) bool AbstractRange_collapsed_Get(JsHandle);
extern (C) void AddEventListenerOptions_passive_Set(JsHandle, bool);
extern (C) bool AddEventListenerOptions_passive_Get(JsHandle);
extern (C) void AddEventListenerOptions_once_Set(JsHandle, bool);
extern (C) bool AddEventListenerOptions_once_Get(JsHandle);
extern (C) Optional!(string) Attr_namespaceURI_Get(JsHandle);
extern (C) Optional!(string) Attr_prefix_Get(JsHandle);
extern (C) string Attr_localName_Get(JsHandle);
extern (C) string Attr_name_Get(JsHandle);
extern (C) void Attr_value_Set(JsHandle, string);
extern (C) string Attr_value_Get(JsHandle);
extern (C) Optional!(Element) Attr_ownerElement_Get(JsHandle);
extern (C) bool Attr_specified_Get(JsHandle);
extern (C) void CharacterData_data_Set(JsHandle, string);
extern (C) string CharacterData_data_Get(JsHandle);
extern (C) uint CharacterData_length_Get(JsHandle);
extern (C) string CharacterData_substringData(JsHandle, uint, uint);
extern (C) void CharacterData_appendData(JsHandle, string);
extern (C) void CharacterData_insertData(JsHandle, uint, string);
extern (C) void CharacterData_deleteData(JsHandle, uint, uint);
extern (C) void CharacterData_replaceData(JsHandle, uint, uint, string);
extern (C) void ChildNode_before(JsHandle, SumType!(Node, string));
extern (C) void ChildNode_after(JsHandle, SumType!(Node, string));
extern (C) void ChildNode_replaceWith(JsHandle, SumType!(Node, string));
extern (C) void ChildNode_remove(JsHandle);
extern (C) JsHandle CustomEvent_detail_Get(JsHandle);
extern (C) void CustomEvent_initCustomEvent(JsHandle, string, bool, bool, JsHandle);
extern (C) void CustomEventInit_detail_Set(JsHandle, JsHandle);
extern (C) JsHandle CustomEventInit_detail_Get(JsHandle);
extern (C) JsHandle DOMImplementation_createDocumentType(JsHandle, string, string, string);
extern (C) JsHandle DOMImplementation_createDocument(JsHandle, bool, string, string, bool, JsHandle);
extern (C) JsHandle DOMImplementation_createHTMLDocument(JsHandle, string);
extern (C) bool DOMImplementation_hasFeature(JsHandle);
extern (C) uint DOMTokenList_length_Get(JsHandle);
extern (C) Optional!(string) DOMTokenList_item_getter(JsHandle, uint);
extern (C) bool DOMTokenList_contains(JsHandle, string);
extern (C) void DOMTokenList_add(JsHandle, string);
extern (C) void DOMTokenList_remove(JsHandle, string);
extern (C) bool DOMTokenList_toggle(JsHandle, string, bool);
extern (C) bool DOMTokenList_replace(JsHandle, string, string);
extern (C) bool DOMTokenList_supports(JsHandle, string);
extern (C) void DOMTokenList_value_Set(JsHandle, string);
extern (C) string DOMTokenList_value_Get(JsHandle);
extern (C) JsHandle Document_implementation_Get(JsHandle);
extern (C) string Document_URL_Get(JsHandle);
extern (C) string Document_documentURI_Get(JsHandle);
extern (C) string Document_origin_Get(JsHandle);
extern (C) string Document_compatMode_Get(JsHandle);
extern (C) string Document_characterSet_Get(JsHandle);
extern (C) string Document_charset_Get(JsHandle);
extern (C) string Document_inputEncoding_Get(JsHandle);
extern (C) string Document_contentType_Get(JsHandle);
extern (C) Optional!(DocumentType) Document_doctype_Get(JsHandle);
extern (C) Optional!(Element) Document_documentElement_Get(JsHandle);
extern (C) JsHandle Document_getElementsByTagName(JsHandle, string);
extern (C) JsHandle Document_getElementsByTagNameNS(JsHandle, bool, string, string);
extern (C) JsHandle Document_getElementsByClassName(JsHandle, string);
extern (C) JsHandle Document_createElement(JsHandle, string, SumType!(string, ElementCreationOptions));
extern (C) JsHandle Document_createElementNS(JsHandle, bool, string, string, SumType!(string, ElementCreationOptions));
extern (C) JsHandle Document_createDocumentFragment(JsHandle);
extern (C) JsHandle Document_createTextNode(JsHandle, string);
extern (C) JsHandle Document_createCDATASection(JsHandle, string);
extern (C) JsHandle Document_createComment(JsHandle, string);
extern (C) JsHandle Document_createProcessingInstruction(JsHandle, string, string);
extern (C) JsHandle Document_importNode(JsHandle, JsHandle, bool);
extern (C) JsHandle Document_adoptNode(JsHandle, JsHandle);
extern (C) JsHandle Document_createAttribute(JsHandle, string);
extern (C) JsHandle Document_createAttributeNS(JsHandle, bool, string, string);
extern (C) JsHandle Document_createEvent(JsHandle, string);
extern (C) JsHandle Document_createRange(JsHandle);
extern (C) JsHandle Document_createNodeIterator(JsHandle, JsHandle, uint, bool, JsHandle);
extern (C) JsHandle Document_createTreeWalker(JsHandle, JsHandle, uint, bool, JsHandle);
extern (C) Optional!(Location) Document_location_Get(JsHandle);
extern (C) void Document_domain_Set(JsHandle, string);
extern (C) string Document_domain_Get(JsHandle);
extern (C) string Document_referrer_Get(JsHandle);
extern (C) void Document_cookie_Set(JsHandle, string);
extern (C) string Document_cookie_Get(JsHandle);
extern (C) string Document_lastModified_Get(JsHandle);
extern (C) DocumentReadyState Document_readyState_Get(JsHandle);
extern (C) void Document_title_Set(JsHandle, string);
extern (C) string Document_title_Get(JsHandle);
extern (C) void Document_dir_Set(JsHandle, string);
extern (C) string Document_dir_Get(JsHandle);
extern (C) void Document_body_Set(JsHandle, bool, JsHandle);
extern (C) Optional!(HTMLElement) Document_body_Get(JsHandle);
extern (C) Optional!(HTMLHeadElement) Document_head_Get(JsHandle);
extern (C) JsHandle Document_images_Get(JsHandle);
extern (C) JsHandle Document_embeds_Get(JsHandle);
extern (C) JsHandle Document_plugins_Get(JsHandle);
extern (C) JsHandle Document_links_Get(JsHandle);
extern (C) JsHandle Document_forms_Get(JsHandle);
extern (C) JsHandle Document_scripts_Get(JsHandle);
extern (C) JsHandle Document_getElementsByName(JsHandle, string);
extern (C) Optional!(HTMLOrSVGScriptElement) Document_currentScript_Get(JsHandle);
extern (C) JsHandle Document_open__string_string(JsHandle, string, string);
extern (C) Optional!(Window) Document_open__string_string_string(JsHandle, string, string, string);
extern (C) void Document_close(JsHandle);
extern (C) void Document_write(JsHandle, string);
extern (C) void Document_writeln(JsHandle, string);
extern (C) Optional!(Window) Document_defaultView_Get(JsHandle);
extern (C) Optional!(Element) Document_activeElement_Get(JsHandle);
extern (C) bool Document_hasFocus(JsHandle);
extern (C) void Document_designMode_Set(JsHandle, string);
extern (C) string Document_designMode_Get(JsHandle);
extern (C) bool Document_execCommand(JsHandle, string, bool, string);
extern (C) bool Document_queryCommandEnabled(JsHandle, string);
extern (C) bool Document_queryCommandIndeterm(JsHandle, string);
extern (C) bool Document_queryCommandState(JsHandle, string);
extern (C) bool Document_queryCommandSupported(JsHandle, string);
extern (C) string Document_queryCommandValue(JsHandle, string);
extern (C) void Document_onreadystatechange_Set(JsHandle, EventHandler);
extern (C) EventHandler Document_onreadystatechange_Get(JsHandle);
extern (C) void Document_fgColor_Set(JsHandle, string);
extern (C) string Document_fgColor_Get(JsHandle);
extern (C) void Document_linkColor_Set(JsHandle, string);
extern (C) string Document_linkColor_Get(JsHandle);
extern (C) void Document_vlinkColor_Set(JsHandle, string);
extern (C) string Document_vlinkColor_Get(JsHandle);
extern (C) void Document_alinkColor_Set(JsHandle, string);
extern (C) string Document_alinkColor_Get(JsHandle);
extern (C) void Document_bgColor_Set(JsHandle, string);
extern (C) string Document_bgColor_Get(JsHandle);
extern (C) JsHandle Document_anchors_Get(JsHandle);
extern (C) JsHandle Document_applets_Get(JsHandle);
extern (C) void Document_clear(JsHandle);
extern (C) void Document_captureEvents(JsHandle);
extern (C) void Document_releaseEvents(JsHandle);
extern (C) JsHandle Document_all_Get(JsHandle);
extern (C) bool Document_hidden_Get(JsHandle);
extern (C) VisibilityState Document_visibilityState_Get(JsHandle);
extern (C) void Document_onvisibilitychange_Set(JsHandle, EventHandler);
extern (C) EventHandler Document_onvisibilitychange_Get(JsHandle);
extern (C) bool Document_fullscreenEnabled_Get(JsHandle);
extern (C) bool Document_fullscreen_Get(JsHandle);
extern (C) JsHandle Document_exitFullscreen(JsHandle);
extern (C) void Document_onfullscreenchange_Set(JsHandle, EventHandler);
extern (C) EventHandler Document_onfullscreenchange_Get(JsHandle);
extern (C) void Document_onfullscreenerror_Set(JsHandle, EventHandler);
extern (C) EventHandler Document_onfullscreenerror_Get(JsHandle);
extern (C) Optional!(SVGSVGElement) Document_rootElement_Get(JsHandle);
extern (C) Optional!(Element) DocumentOrShadowRoot_fullscreenElement_Get(JsHandle);
extern (C) string DocumentType_name_Get(JsHandle);
extern (C) string DocumentType_publicId_Get(JsHandle);
extern (C) string DocumentType_systemId_Get(JsHandle);
extern (C) Optional!(string) Element_namespaceURI_Get(JsHandle);
extern (C) Optional!(string) Element_prefix_Get(JsHandle);
extern (C) string Element_localName_Get(JsHandle);
extern (C) string Element_tagName_Get(JsHandle);
extern (C) void Element_id_Set(JsHandle, string);
extern (C) string Element_id_Get(JsHandle);
extern (C) void Element_className_Set(JsHandle, string);
extern (C) string Element_className_Get(JsHandle);
extern (C) JsHandle Element_classList_Get(JsHandle);
extern (C) void Element_slot_Set(JsHandle, string);
extern (C) string Element_slot_Get(JsHandle);
extern (C) bool Element_hasAttributes(JsHandle);
extern (C) JsHandle Element_attributes_Get(JsHandle);
extern (C) JsHandle Element_getAttributeNames(JsHandle);
extern (C) Optional!(string) Element_getAttribute(JsHandle, string);
extern (C) Optional!(string) Element_getAttributeNS(JsHandle, bool, string, string);
extern (C) void Element_setAttribute(JsHandle, string, string);
extern (C) void Element_setAttributeNS(JsHandle, bool, string, string, string);
extern (C) void Element_removeAttribute(JsHandle, string);
extern (C) void Element_removeAttributeNS(JsHandle, bool, string, string);
extern (C) bool Element_toggleAttribute(JsHandle, string, bool);
extern (C) bool Element_hasAttribute(JsHandle, string);
extern (C) bool Element_hasAttributeNS(JsHandle, bool, string, string);
extern (C) Optional!(Attr) Element_getAttributeNode(JsHandle, string);
extern (C) Optional!(Attr) Element_getAttributeNodeNS(JsHandle, bool, string, string);
extern (C) Optional!(Attr) Element_setAttributeNode(JsHandle, JsHandle);
extern (C) Optional!(Attr) Element_setAttributeNodeNS(JsHandle, JsHandle);
extern (C) JsHandle Element_removeAttributeNode(JsHandle, JsHandle);
extern (C) JsHandle Element_attachShadow(JsHandle, JsHandle);
extern (C) Optional!(ShadowRoot) Element_shadowRoot_Get(JsHandle);
extern (C) Optional!(Element) Element_closest(JsHandle, string);
extern (C) bool Element_matches(JsHandle, string);
extern (C) bool Element_webkitMatchesSelector(JsHandle, string);
extern (C) JsHandle Element_getElementsByTagName(JsHandle, string);
extern (C) JsHandle Element_getElementsByTagNameNS(JsHandle, bool, string, string);
extern (C) JsHandle Element_getElementsByClassName(JsHandle, string);
extern (C) Optional!(Element) Element_insertAdjacentElement(JsHandle, string, JsHandle);
extern (C) void Element_insertAdjacentText(JsHandle, string, string);
extern (C) void Element_setPointerCapture(JsHandle, int);
extern (C) void Element_releasePointerCapture(JsHandle, int);
extern (C) bool Element_hasPointerCapture(JsHandle, int);
extern (C) JsHandle Element_requestFullscreen(JsHandle, JsHandle);
extern (C) void Element_onfullscreenchange_Set(JsHandle, EventHandler);
extern (C) EventHandler Element_onfullscreenchange_Get(JsHandle);
extern (C) void Element_onfullscreenerror_Set(JsHandle, EventHandler);
extern (C) EventHandler Element_onfullscreenerror_Get(JsHandle);
extern (C) void ElementCreationOptions_is_Set(JsHandle, string);
extern (C) string ElementCreationOptions_is_Get(JsHandle);
extern (C) string Event_type_Get(JsHandle);
extern (C) Optional!(EventTarget) Event_target_Get(JsHandle);
extern (C) Optional!(EventTarget) Event_srcElement_Get(JsHandle);
extern (C) Optional!(EventTarget) Event_currentTarget_Get(JsHandle);
extern (C) JsHandle Event_composedPath(JsHandle);
extern (C) ushort Event_eventPhase_Get(JsHandle);
extern (C) void Event_stopPropagation(JsHandle);
extern (C) void Event_cancelBubble_Set(JsHandle, bool);
extern (C) bool Event_cancelBubble_Get(JsHandle);
extern (C) void Event_stopImmediatePropagation(JsHandle);
extern (C) bool Event_bubbles_Get(JsHandle);
extern (C) bool Event_cancelable_Get(JsHandle);
extern (C) void Event_returnValue_Set(JsHandle, bool);
extern (C) bool Event_returnValue_Get(JsHandle);
extern (C) void Event_preventDefault(JsHandle);
extern (C) bool Event_defaultPrevented_Get(JsHandle);
extern (C) bool Event_composed_Get(JsHandle);
extern (C) bool Event_isTrusted_Get(JsHandle);
extern (C) double Event_timeStamp_Get(JsHandle);
extern (C) void Event_initEvent(JsHandle, string, bool, bool);
extern (C) void EventInit_bubbles_Set(JsHandle, bool);
extern (C) bool EventInit_bubbles_Get(JsHandle);
extern (C) void EventInit_cancelable_Set(JsHandle, bool);
extern (C) bool EventInit_cancelable_Get(JsHandle);
extern (C) void EventInit_composed_Set(JsHandle, bool);
extern (C) bool EventInit_composed_Get(JsHandle);
extern (C) void EventListener_handleEvent(JsHandle, JsHandle);
extern (C) void EventListenerOptions_capture_Set(JsHandle, bool);
extern (C) bool EventListenerOptions_capture_Get(JsHandle);
extern (C) void EventTarget_addEventListener(JsHandle, string, bool, JsHandle, SumType!(AddEventListenerOptions, bool));
extern (C) void EventTarget_removeEventListener(JsHandle, string, bool, JsHandle, SumType!(EventListenerOptions, bool));
extern (C) bool EventTarget_dispatchEvent(JsHandle, JsHandle);
extern (C) void GetRootNodeOptions_composed_Set(JsHandle, bool);
extern (C) bool GetRootNodeOptions_composed_Get(JsHandle);
extern (C) uint HTMLCollection_length_Get(JsHandle);
extern (C) Optional!(Element) HTMLCollection_item_getter(JsHandle, uint);
extern (C) Optional!(Element) HTMLCollection_namedItem_getter(JsHandle, string);
extern (C) void MutationObserver_observe(JsHandle, JsHandle, JsHandle);
extern (C) void MutationObserver_disconnect(JsHandle);
extern (C) JsHandle MutationObserver_takeRecords(JsHandle);
extern (C) void MutationObserverInit_childList_Set(JsHandle, bool);
extern (C) bool MutationObserverInit_childList_Get(JsHandle);
extern (C) void MutationObserverInit_attributes_Set(JsHandle, bool);
extern (C) bool MutationObserverInit_attributes_Get(JsHandle);
extern (C) void MutationObserverInit_characterData_Set(JsHandle, bool);
extern (C) bool MutationObserverInit_characterData_Get(JsHandle);
extern (C) void MutationObserverInit_subtree_Set(JsHandle, bool);
extern (C) bool MutationObserverInit_subtree_Get(JsHandle);
extern (C) void MutationObserverInit_attributeOldValue_Set(JsHandle, bool);
extern (C) bool MutationObserverInit_attributeOldValue_Get(JsHandle);
extern (C) void MutationObserverInit_characterDataOldValue_Set(JsHandle, bool);
extern (C) bool MutationObserverInit_characterDataOldValue_Get(JsHandle);
extern (C) void MutationObserverInit_attributeFilter_Set(JsHandle, JsHandle);
extern (C) JsHandle MutationObserverInit_attributeFilter_Get(JsHandle);
extern (C) string MutationRecord_type_Get(JsHandle);
extern (C) JsHandle MutationRecord_target_Get(JsHandle);
extern (C) JsHandle MutationRecord_addedNodes_Get(JsHandle);
extern (C) JsHandle MutationRecord_removedNodes_Get(JsHandle);
extern (C) Optional!(Node) MutationRecord_previousSibling_Get(JsHandle);
extern (C) Optional!(Node) MutationRecord_nextSibling_Get(JsHandle);
extern (C) Optional!(string) MutationRecord_attributeName_Get(JsHandle);
extern (C) Optional!(string) MutationRecord_attributeNamespace_Get(JsHandle);
extern (C) Optional!(string) MutationRecord_oldValue_Get(JsHandle);
extern (C) uint NamedNodeMap_length_Get(JsHandle);
extern (C) Optional!(Attr) NamedNodeMap_item_getter(JsHandle, uint);
extern (C) Optional!(Attr) NamedNodeMap_getNamedItem_getter(JsHandle, string);
extern (C) Optional!(Attr) NamedNodeMap_getNamedItemNS(JsHandle, bool, string, string);
extern (C) Optional!(Attr) NamedNodeMap_setNamedItem(JsHandle, JsHandle);
extern (C) Optional!(Attr) NamedNodeMap_setNamedItemNS(JsHandle, JsHandle);
extern (C) JsHandle NamedNodeMap_removeNamedItem(JsHandle, string);
extern (C) JsHandle NamedNodeMap_removeNamedItemNS(JsHandle, bool, string, string);
extern (C) ushort Node_nodeType_Get(JsHandle);
extern (C) string Node_nodeName_Get(JsHandle);
extern (C) string Node_baseURI_Get(JsHandle);
extern (C) bool Node_isConnected_Get(JsHandle);
extern (C) Optional!(Document) Node_ownerDocument_Get(JsHandle);
extern (C) JsHandle Node_getRootNode(JsHandle, JsHandle);
extern (C) Optional!(Node) Node_parentNode_Get(JsHandle);
extern (C) Optional!(Element) Node_parentElement_Get(JsHandle);
extern (C) bool Node_hasChildNodes(JsHandle);
extern (C) JsHandle Node_childNodes_Get(JsHandle);
extern (C) Optional!(Node) Node_firstChild_Get(JsHandle);
extern (C) Optional!(Node) Node_lastChild_Get(JsHandle);
extern (C) Optional!(Node) Node_previousSibling_Get(JsHandle);
extern (C) Optional!(Node) Node_nextSibling_Get(JsHandle);
extern (C) void Node_nodeValue_Set(JsHandle, bool, string);
extern (C) Optional!(string) Node_nodeValue_Get(JsHandle);
extern (C) void Node_textContent_Set(JsHandle, bool, string);
extern (C) Optional!(string) Node_textContent_Get(JsHandle);
extern (C) void Node_normalize(JsHandle);
extern (C) JsHandle Node_cloneNode(JsHandle, bool);
extern (C) bool Node_isEqualNode(JsHandle, bool, JsHandle);
extern (C) bool Node_isSameNode(JsHandle, bool, JsHandle);
extern (C) ushort Node_compareDocumentPosition(JsHandle, JsHandle);
extern (C) bool Node_contains(JsHandle, bool, JsHandle);
extern (C) Optional!(string) Node_lookupPrefix(JsHandle, bool, string);
extern (C) Optional!(string) Node_lookupNamespaceURI(JsHandle, bool, string);
extern (C) bool Node_isDefaultNamespace(JsHandle, bool, string);
extern (C) JsHandle Node_insertBefore(JsHandle, JsHandle, bool, JsHandle);
extern (C) JsHandle Node_appendChild(JsHandle, JsHandle);
extern (C) JsHandle Node_replaceChild(JsHandle, JsHandle, JsHandle);
extern (C) JsHandle Node_removeChild(JsHandle, JsHandle);
extern (C) ushort NodeFilter_acceptNode(JsHandle, JsHandle);
extern (C) JsHandle NodeIterator_root_Get(JsHandle);
extern (C) JsHandle NodeIterator_referenceNode_Get(JsHandle);
extern (C) bool NodeIterator_pointerBeforeReferenceNode_Get(JsHandle);
extern (C) uint NodeIterator_whatToShow_Get(JsHandle);
extern (C) Optional!(NodeFilter) NodeIterator_filter_Get(JsHandle);
extern (C) Optional!(Node) NodeIterator_nextNode(JsHandle);
extern (C) Optional!(Node) NodeIterator_previousNode(JsHandle);
extern (C) void NodeIterator_detach(JsHandle);
extern (C) Optional!(Node) NodeList_item_getter(JsHandle, uint);
extern (C) uint NodeList_length_Get(JsHandle);
extern (C) Optional!(Element) NonDocumentTypeChildNode_previousElementSibling_Get(JsHandle);
extern (C) Optional!(Element) NonDocumentTypeChildNode_nextElementSibling_Get(JsHandle);
extern (C) Optional!(Element) NonElementParentNode_getElementById(JsHandle, string);
extern (C) JsHandle ParentNode_children_Get(JsHandle);
extern (C) Optional!(Element) ParentNode_firstElementChild_Get(JsHandle);
extern (C) Optional!(Element) ParentNode_lastElementChild_Get(JsHandle);
extern (C) uint ParentNode_childElementCount_Get(JsHandle);
extern (C) void ParentNode_prepend(JsHandle, SumType!(Node, string));
extern (C) void ParentNode_append(JsHandle, SumType!(Node, string));
extern (C) Optional!(Element) ParentNode_querySelector(JsHandle, string);
extern (C) JsHandle ParentNode_querySelectorAll(JsHandle, string);
extern (C) string ProcessingInstruction_target_Get(JsHandle);
extern (C) JsHandle Range_commonAncestorContainer_Get(JsHandle);
extern (C) void Range_setStart(JsHandle, JsHandle, uint);
extern (C) void Range_setEnd(JsHandle, JsHandle, uint);
extern (C) void Range_setStartBefore(JsHandle, JsHandle);
extern (C) void Range_setStartAfter(JsHandle, JsHandle);
extern (C) void Range_setEndBefore(JsHandle, JsHandle);
extern (C) void Range_setEndAfter(JsHandle, JsHandle);
extern (C) void Range_collapse(JsHandle, bool);
extern (C) void Range_selectNode(JsHandle, JsHandle);
extern (C) void Range_selectNodeContents(JsHandle, JsHandle);
extern (C) short Range_compareBoundaryPoints(JsHandle, ushort, JsHandle);
extern (C) void Range_deleteContents(JsHandle);
extern (C) JsHandle Range_extractContents(JsHandle);
extern (C) JsHandle Range_cloneContents(JsHandle);
extern (C) void Range_insertNode(JsHandle, JsHandle);
extern (C) void Range_surroundContents(JsHandle, JsHandle);
extern (C) JsHandle Range_cloneRange(JsHandle);
extern (C) void Range_detach(JsHandle);
extern (C) bool Range_isPointInRange(JsHandle, JsHandle, uint);
extern (C) short Range_comparePoint(JsHandle, JsHandle, uint);
extern (C) bool Range_intersectsNode(JsHandle, JsHandle);
extern (C) ShadowRootMode ShadowRoot_mode_Get(JsHandle);
extern (C) JsHandle ShadowRoot_host_Get(JsHandle);
extern (C) void ShadowRootInit_mode_Set(JsHandle, ShadowRootMode);
extern (C) ShadowRootMode ShadowRootInit_mode_Get(JsHandle);
extern (C) Optional!(HTMLSlotElement) Slotable_assignedSlot_Get(JsHandle);
extern (C) JsHandle Text_splitText(JsHandle, uint);
extern (C) string Text_wholeText_Get(JsHandle);
extern (C) JsHandle TreeWalker_root_Get(JsHandle);
extern (C) uint TreeWalker_whatToShow_Get(JsHandle);
extern (C) Optional!(NodeFilter) TreeWalker_filter_Get(JsHandle);
extern (C) void TreeWalker_currentNode_Set(JsHandle, JsHandle);
extern (C) JsHandle TreeWalker_currentNode_Get(JsHandle);
extern (C) Optional!(Node) TreeWalker_parentNode(JsHandle);
extern (C) Optional!(Node) TreeWalker_firstChild(JsHandle);
extern (C) Optional!(Node) TreeWalker_lastChild(JsHandle);
extern (C) Optional!(Node) TreeWalker_previousSibling(JsHandle);
extern (C) Optional!(Node) TreeWalker_nextSibling(JsHandle);
extern (C) Optional!(Node) TreeWalker_previousNode(JsHandle);
extern (C) Optional!(Node) TreeWalker_nextNode(JsHandle);