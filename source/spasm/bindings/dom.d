module spasm.bindings.dom;

import spasm.types;
import spasm.bindings.domhighrestimestamp : DOMHighResTimeStamp;
import spasm.bindings.html : DocumentReadyState;
import spasm.bindings.html : EventHandler;
import spasm.bindings.fullscreen : FullscreenOptions;
import spasm.bindings.html : HTMLAllCollection;
import spasm.bindings.html : HTMLElement;
import spasm.bindings.html : HTMLHeadElement;
import spasm.bindings.html : HTMLOrSVGScriptElement;
import spasm.bindings.html : HTMLSlotElement;
import spasm.bindings.html : Location;
import spasm.bindings.svg : SVGSVGElement;

struct AbortController {
  JsHandle handle;
  alias handle this;
  AbortSignal signal() {
    return AbortSignal(AbortController_signal_Get(handle));
  }
  void abort() {
    AbortController_abort(handle);
  }
}
struct AbortSignal {
  EventTarget _parent;
  alias _parent this;
  bool aborted() {
    return AbortSignal_aborted_Get(handle);
  }
  void onabort(EventHandler onabort) {
    AbortSignal_onabort_Set(handle, !onabort.empty, onabort.value);
  }
  EventHandler onabort() {
    return AbortSignal_onabort_Get(handle);
  }
}
struct AbstractRange {
  JsHandle handle;
  alias handle this;
  Node startContainer() {
    return Node(AbstractRange_startContainer_Get(handle));
  }
  uint startOffset() {
    return AbstractRange_startOffset_Get(handle);
  }
  Node endContainer() {
    return Node(AbstractRange_endContainer_Get(handle));
  }
  uint endOffset() {
    return AbstractRange_endOffset_Get(handle);
  }
  bool collapsed() {
    return AbstractRange_collapsed_Get(handle);
  }
}
struct AddEventListenerOptions {
  EventListenerOptions _parent;
  alias _parent this;
  void passive(bool passive) {
    AddEventListenerOptions_passive_Set(handle, passive);
  }
  bool passive() {
    return AddEventListenerOptions_passive_Get(handle);
  }
  void once(bool once) {
    AddEventListenerOptions_once_Set(handle, once);
  }
  bool once() {
    return AddEventListenerOptions_once_Get(handle);
  }
}
struct Attr {
  Node _parent;
  alias _parent this;
  Optional!(string) namespaceURI() {
    return Attr_namespaceURI_Get(handle);
  }
  Optional!(string) prefix() {
    return Attr_prefix_Get(handle);
  }
  string localName() {
    return Attr_localName_Get(handle);
  }
  string name() {
    return Attr_name_Get(handle);
  }
  void value(string value) {
    Attr_value_Set(handle, value);
  }
  string value() {
    return Attr_value_Get(handle);
  }
  Optional!(Element) ownerElement() {
    return Attr_ownerElement_Get(handle);
  }
  bool specified() {
    return Attr_specified_Get(handle);
  }
}
struct CDATASection {
  Text _parent;
  alias _parent this;
}
struct CharacterData {
  Node _parent;
  alias _parent this;
  void data(string data) {
    CharacterData_data_Set(handle, data);
  }
  string data() {
    return CharacterData_data_Get(handle);
  }
  uint length() {
    return CharacterData_length_Get(handle);
  }
  string substringData(uint offset, uint count) {
    return CharacterData_substringData(handle, offset, count);
  }
  void appendData(string data) {
    CharacterData_appendData(handle, data);
  }
  void insertData(uint offset, string data) {
    CharacterData_insertData(handle, offset, data);
  }
  void deleteData(uint offset, uint count) {
    CharacterData_deleteData(handle, offset, count);
  }
  void replaceData(uint offset, uint count, string data) {
    CharacterData_replaceData(handle, offset, count, data);
  }
  Optional!(Element) previousElementSibling() {
    return NonDocumentTypeChildNode_previousElementSibling_Get(handle);
  }
  Optional!(Element) nextElementSibling() {
    return NonDocumentTypeChildNode_nextElementSibling_Get(handle);
  }
  void before(SumType!(Node, string) nodes) {
    ChildNode_before(handle, nodes);
  }
  void after(SumType!(Node, string) nodes) {
    ChildNode_after(handle, nodes);
  }
  void replaceWith(SumType!(Node, string) nodes) {
    ChildNode_replaceWith(handle, nodes);
  }
  void remove() {
    ChildNode_remove(handle);
  }
}
struct Comment {
  CharacterData _parent;
  alias _parent this;
}
struct CustomEvent {
  Event _parent;
  alias _parent this;
  Any detail() {
    return Any(CustomEvent_detail_Get(handle));
  }
  void initCustomEvent(string type, bool bubbles /* = false */, bool cancelable /* = false */, Any detail /* = null */) {
    CustomEvent_initCustomEvent(handle, type, bubbles, cancelable, detail.handle);
  }
}
struct CustomEventInit {
  EventInit _parent;
  alias _parent this;
  void detail(Any detail) {
    CustomEventInit_detail_Set(handle, detail.handle);
  }
  Any detail() {
    return Any(CustomEventInit_detail_Get(handle));
  }
}
struct DOMImplementation {
  JsHandle handle;
  alias handle this;
  DocumentType createDocumentType(string qualifiedName, string publicId, string systemId) {
    return DocumentType(DOMImplementation_createDocumentType(handle, qualifiedName, publicId, systemId));
  }
  XMLDocument createDocument(Optional!(string) namespace, string qualifiedName, Optional!(DocumentType) doctype /* = no!(DocumentType) */) {
    return XMLDocument(DOMImplementation_createDocument(handle, !namespace.empty, namespace.value, qualifiedName, !doctype.empty, doctype.value.handle));
  }
  Document createHTMLDocument(string title) {
    return Document(DOMImplementation_createHTMLDocument(handle, title));
  }
  bool hasFeature() {
    return DOMImplementation_hasFeature(handle);
  }
}
struct DOMTokenList {
  JsHandle handle;
  alias handle this;
  uint length() {
    return DOMTokenList_length_Get(handle);
  }
  Optional!(string) item(uint index) {
    return DOMTokenList_item_getter(handle, index);
  }
  bool contains(string token) {
    return DOMTokenList_contains(handle, token);
  }
  void add(string tokens) {
    DOMTokenList_add(handle, tokens);
  }
  void remove(string tokens) {
    DOMTokenList_remove(handle, tokens);
  }
  bool toggle(string token, bool force) {
    return DOMTokenList_toggle(handle, token, force);
  }
  bool replace(string token, string newToken) {
    return DOMTokenList_replace(handle, token, newToken);
  }
  bool supports(string token) {
    return DOMTokenList_supports(handle, token);
  }
  void value(string value) {
    DOMTokenList_value_Set(handle, value);
  }
  string value() {
    return DOMTokenList_value_Get(handle);
  }
}
struct Document {
  Node _parent;
  alias _parent this;
  DOMImplementation implementation() {
    return DOMImplementation(Document_implementation_Get(handle));
  }
  string URL() {
    return string(Document_URL_Get(handle));
  }
  string documentURI() {
    return string(Document_documentURI_Get(handle));
  }
  string origin() {
    return string(Document_origin_Get(handle));
  }
  string compatMode() {
    return Document_compatMode_Get(handle);
  }
  string characterSet() {
    return Document_characterSet_Get(handle);
  }
  string charset() {
    return Document_charset_Get(handle);
  }
  string inputEncoding() {
    return Document_inputEncoding_Get(handle);
  }
  string contentType() {
    return Document_contentType_Get(handle);
  }
  Optional!(DocumentType) doctype() {
    return Document_doctype_Get(handle);
  }
  Optional!(Element) documentElement() {
    return Document_documentElement_Get(handle);
  }
  HTMLCollection getElementsByTagName(string qualifiedName) {
    return HTMLCollection(Document_getElementsByTagName(handle, qualifiedName));
  }
  HTMLCollection getElementsByTagNameNS(Optional!(string) namespace, string localName) {
    return HTMLCollection(Document_getElementsByTagNameNS(handle, !namespace.empty, namespace.value, localName));
  }
  HTMLCollection getElementsByClassName(string classNames) {
    return HTMLCollection(Document_getElementsByClassName(handle, classNames));
  }
  Element createElement(string localName, SumType!(string, ElementCreationOptions) options) {
    return Element(Document_createElement(handle, localName, options));
  }
  Element createElementNS(Optional!(string) namespace, string qualifiedName, SumType!(string, ElementCreationOptions) options) {
    return Element(Document_createElementNS(handle, !namespace.empty, namespace.value, qualifiedName, options));
  }
  DocumentFragment createDocumentFragment() {
    return DocumentFragment(Document_createDocumentFragment(handle));
  }
  Text createTextNode(string data) {
    return Text(Document_createTextNode(handle, data));
  }
  CDATASection createCDATASection(string data) {
    return CDATASection(Document_createCDATASection(handle, data));
  }
  Comment createComment(string data) {
    return Comment(Document_createComment(handle, data));
  }
  ProcessingInstruction createProcessingInstruction(string target, string data) {
    return ProcessingInstruction(Document_createProcessingInstruction(handle, target, data));
  }
  Node importNode(Node node, bool deep /* = false */) {
    return Node(Document_importNode(handle, node.handle, deep));
  }
  Node adoptNode(Node node) {
    return Node(Document_adoptNode(handle, node.handle));
  }
  Attr createAttribute(string localName) {
    return Attr(Document_createAttribute(handle, localName));
  }
  Attr createAttributeNS(Optional!(string) namespace, string qualifiedName) {
    return Attr(Document_createAttributeNS(handle, !namespace.empty, namespace.value, qualifiedName));
  }
  Event createEvent(string interface_) {
    return Event(Document_createEvent(handle, interface_));
  }
  Range createRange() {
    return Range(Document_createRange(handle));
  }
  NodeIterator createNodeIterator(Node root, uint whatToShow /* = 0xFFFFFFFF */, Optional!(NodeFilter) filter /* = no!(NodeFilter) */) {
    return NodeIterator(Document_createNodeIterator(handle, root.handle, whatToShow, !filter.empty, filter.value.handle));
  }
  TreeWalker createTreeWalker(Node root, uint whatToShow /* = 0xFFFFFFFF */, Optional!(NodeFilter) filter /* = no!(NodeFilter) */) {
    return TreeWalker(Document_createTreeWalker(handle, root.handle, whatToShow, !filter.empty, filter.value.handle));
  }
  Optional!(Location) location() {
    return Document_location_Get(handle);
  }
  void domain(string domain) {
    Document_domain_Set(handle, domain.handle);
  }
  string domain() {
    return string(Document_domain_Get(handle));
  }
  string referrer() {
    return string(Document_referrer_Get(handle));
  }
  void cookie(string cookie) {
    Document_cookie_Set(handle, cookie.handle);
  }
  string cookie() {
    return string(Document_cookie_Get(handle));
  }
  string lastModified() {
    return Document_lastModified_Get(handle);
  }
  DocumentReadyState readyState() {
    return Document_readyState_Get(handle);
  }
  void title(string title) {
    Document_title_Set(handle, title);
  }
  string title() {
    return Document_title_Get(handle);
  }
  void dir(string dir) {
    Document_dir_Set(handle, dir);
  }
  string dir() {
    return Document_dir_Get(handle);
  }
  void body_(Optional!(HTMLElement) body_) {
    Document_body_Set(handle, !body_.empty, body_.value.handle);
  }
  Optional!(HTMLElement) body_() {
    return Document_body_Get(handle);
  }
  Optional!(HTMLHeadElement) head() {
    return Document_head_Get(handle);
  }
  HTMLCollection images() {
    return HTMLCollection(Document_images_Get(handle));
  }
  HTMLCollection embeds() {
    return HTMLCollection(Document_embeds_Get(handle));
  }
  HTMLCollection plugins() {
    return HTMLCollection(Document_plugins_Get(handle));
  }
  HTMLCollection links() {
    return HTMLCollection(Document_links_Get(handle));
  }
  HTMLCollection forms() {
    return HTMLCollection(Document_forms_Get(handle));
  }
  HTMLCollection scripts() {
    return HTMLCollection(Document_scripts_Get(handle));
  }
  NodeList getElementsByName(string elementName) {
    return NodeList(Document_getElementsByName(handle, elementName));
  }
  Optional!(HTMLOrSVGScriptElement) currentScript() {
    return Document_currentScript_Get(handle);
  }
  Document open(string unused1, string unused2) {
    return Document(Document_open__string_string(handle, unused1, unused2));
  }
  Optional!(WindowProxy) open(string url, string name, string features) {
    return Document_open__string_string_string(handle, url.handle, name, features);
  }
  void close() {
    Document_close(handle);
  }
  void write(string text) {
    Document_write(handle, text);
  }
  void writeln(string text) {
    Document_writeln(handle, text);
  }
  Optional!(WindowProxy) defaultView() {
    return Document_defaultView_Get(handle);
  }
  Optional!(Element) activeElement() {
    return Document_activeElement_Get(handle);
  }
  bool hasFocus() {
    return Document_hasFocus(handle);
  }
  void designMode(string designMode) {
    Document_designMode_Set(handle, designMode);
  }
  string designMode() {
    return Document_designMode_Get(handle);
  }
  bool execCommand(string commandId, bool showUI /* = false */, string value /* = "" */) {
    return Document_execCommand(handle, commandId, showUI, value);
  }
  bool queryCommandEnabled(string commandId) {
    return Document_queryCommandEnabled(handle, commandId);
  }
  bool queryCommandIndeterm(string commandId) {
    return Document_queryCommandIndeterm(handle, commandId);
  }
  bool queryCommandState(string commandId) {
    return Document_queryCommandState(handle, commandId);
  }
  bool queryCommandSupported(string commandId) {
    return Document_queryCommandSupported(handle, commandId);
  }
  string queryCommandValue(string commandId) {
    return Document_queryCommandValue(handle, commandId);
  }
  void onreadystatechange(EventHandler onreadystatechange) {
    Document_onreadystatechange_Set(handle, !onreadystatechange.empty, onreadystatechange.value);
  }
  EventHandler onreadystatechange() {
    return Document_onreadystatechange_Get(handle);
  }
  void fgColor(string fgColor) {
    Document_fgColor_Set(handle, fgColor);
  }
  string fgColor() {
    return Document_fgColor_Get(handle);
  }
  void linkColor(string linkColor) {
    Document_linkColor_Set(handle, linkColor);
  }
  string linkColor() {
    return Document_linkColor_Get(handle);
  }
  void vlinkColor(string vlinkColor) {
    Document_vlinkColor_Set(handle, vlinkColor);
  }
  string vlinkColor() {
    return Document_vlinkColor_Get(handle);
  }
  void alinkColor(string alinkColor) {
    Document_alinkColor_Set(handle, alinkColor);
  }
  string alinkColor() {
    return Document_alinkColor_Get(handle);
  }
  void bgColor(string bgColor) {
    Document_bgColor_Set(handle, bgColor);
  }
  string bgColor() {
    return Document_bgColor_Get(handle);
  }
  HTMLCollection anchors() {
    return HTMLCollection(Document_anchors_Get(handle));
  }
  HTMLCollection applets() {
    return HTMLCollection(Document_applets_Get(handle));
  }
  void clear() {
    Document_clear(handle);
  }
  void captureEvents() {
    Document_captureEvents(handle);
  }
  void releaseEvents() {
    Document_releaseEvents(handle);
  }
  HTMLAllCollection all() {
    return HTMLAllCollection(Document_all_Get(handle));
  }
  bool fullscreenEnabled() {
    return Document_fullscreenEnabled_Get(handle);
  }
  bool fullscreen() {
    return Document_fullscreen_Get(handle);
  }
  Promise!(void) exitFullscreen() {
    return Promise!(void)(Document_exitFullscreen(handle));
  }
  void onfullscreenchange(EventHandler onfullscreenchange) {
    Document_onfullscreenchange_Set(handle, !onfullscreenchange.empty, onfullscreenchange.value);
  }
  EventHandler onfullscreenchange() {
    return Document_onfullscreenchange_Get(handle);
  }
  void onfullscreenerror(EventHandler onfullscreenerror) {
    Document_onfullscreenerror_Set(handle, !onfullscreenerror.empty, onfullscreenerror.value);
  }
  EventHandler onfullscreenerror() {
    return Document_onfullscreenerror_Get(handle);
  }
  Optional!(SVGSVGElement) rootElement() {
    return Document_rootElement_Get(handle);
  }
  Optional!(Element) getElementById(string elementId) {
    return NonElementParentNode_getElementById(handle, elementId);
  }
  HTMLCollection children() {
    return HTMLCollection(ParentNode_children_Get(handle));
  }
  Optional!(Element) firstElementChild() {
    return ParentNode_firstElementChild_Get(handle);
  }
  Optional!(Element) lastElementChild() {
    return ParentNode_lastElementChild_Get(handle);
  }
  uint childElementCount() {
    return ParentNode_childElementCount_Get(handle);
  }
  void prepend(SumType!(Node, string) nodes) {
    ParentNode_prepend(handle, nodes);
  }
  void append(SumType!(Node, string) nodes) {
    ParentNode_append(handle, nodes);
  }
  Optional!(Element) querySelector(string selectors) {
    return ParentNode_querySelector(handle, selectors);
  }
  NodeList querySelectorAll(string selectors) {
    return NodeList(ParentNode_querySelectorAll(handle, selectors));
  }
  void ongotpointercapture(EventHandler ongotpointercapture) {
    GlobalEventHandlers_ongotpointercapture_Set(handle, !ongotpointercapture.empty, ongotpointercapture.value);
  }
  EventHandler ongotpointercapture() {
    return GlobalEventHandlers_ongotpointercapture_Get(handle);
  }
  void onlostpointercapture(EventHandler onlostpointercapture) {
    GlobalEventHandlers_onlostpointercapture_Set(handle, !onlostpointercapture.empty, onlostpointercapture.value);
  }
  EventHandler onlostpointercapture() {
    return GlobalEventHandlers_onlostpointercapture_Get(handle);
  }
  void onpointerdown(EventHandler onpointerdown) {
    GlobalEventHandlers_onpointerdown_Set(handle, !onpointerdown.empty, onpointerdown.value);
  }
  EventHandler onpointerdown() {
    return GlobalEventHandlers_onpointerdown_Get(handle);
  }
  void onpointermove(EventHandler onpointermove) {
    GlobalEventHandlers_onpointermove_Set(handle, !onpointermove.empty, onpointermove.value);
  }
  EventHandler onpointermove() {
    return GlobalEventHandlers_onpointermove_Get(handle);
  }
  void onpointerup(EventHandler onpointerup) {
    GlobalEventHandlers_onpointerup_Set(handle, !onpointerup.empty, onpointerup.value);
  }
  EventHandler onpointerup() {
    return GlobalEventHandlers_onpointerup_Get(handle);
  }
  void onpointercancel(EventHandler onpointercancel) {
    GlobalEventHandlers_onpointercancel_Set(handle, !onpointercancel.empty, onpointercancel.value);
  }
  EventHandler onpointercancel() {
    return GlobalEventHandlers_onpointercancel_Get(handle);
  }
  void onpointerover(EventHandler onpointerover) {
    GlobalEventHandlers_onpointerover_Set(handle, !onpointerover.empty, onpointerover.value);
  }
  EventHandler onpointerover() {
    return GlobalEventHandlers_onpointerover_Get(handle);
  }
  void onpointerout(EventHandler onpointerout) {
    GlobalEventHandlers_onpointerout_Set(handle, !onpointerout.empty, onpointerout.value);
  }
  EventHandler onpointerout() {
    return GlobalEventHandlers_onpointerout_Get(handle);
  }
  void onpointerenter(EventHandler onpointerenter) {
    GlobalEventHandlers_onpointerenter_Set(handle, !onpointerenter.empty, onpointerenter.value);
  }
  EventHandler onpointerenter() {
    return GlobalEventHandlers_onpointerenter_Get(handle);
  }
  void onpointerleave(EventHandler onpointerleave) {
    GlobalEventHandlers_onpointerleave_Set(handle, !onpointerleave.empty, onpointerleave.value);
  }
  EventHandler onpointerleave() {
    return GlobalEventHandlers_onpointerleave_Get(handle);
  }
  void ontouchstart(EventHandler ontouchstart) {
    GlobalEventHandlers_ontouchstart_Set(handle, !ontouchstart.empty, ontouchstart.value);
  }
  EventHandler ontouchstart() {
    return GlobalEventHandlers_ontouchstart_Get(handle);
  }
  void ontouchend(EventHandler ontouchend) {
    GlobalEventHandlers_ontouchend_Set(handle, !ontouchend.empty, ontouchend.value);
  }
  EventHandler ontouchend() {
    return GlobalEventHandlers_ontouchend_Get(handle);
  }
  void ontouchmove(EventHandler ontouchmove) {
    GlobalEventHandlers_ontouchmove_Set(handle, !ontouchmove.empty, ontouchmove.value);
  }
  EventHandler ontouchmove() {
    return GlobalEventHandlers_ontouchmove_Get(handle);
  }
  void ontouchcancel(EventHandler ontouchcancel) {
    GlobalEventHandlers_ontouchcancel_Set(handle, !ontouchcancel.empty, ontouchcancel.value);
  }
  EventHandler ontouchcancel() {
    return GlobalEventHandlers_ontouchcancel_Get(handle);
  }
}
struct DocumentFragment {
  Node _parent;
  alias _parent this;
  Optional!(Element) getElementById(string elementId) {
    return NonElementParentNode_getElementById(handle, elementId);
  }
  HTMLCollection children() {
    return HTMLCollection(ParentNode_children_Get(handle));
  }
  Optional!(Element) firstElementChild() {
    return ParentNode_firstElementChild_Get(handle);
  }
  Optional!(Element) lastElementChild() {
    return ParentNode_lastElementChild_Get(handle);
  }
  uint childElementCount() {
    return ParentNode_childElementCount_Get(handle);
  }
  void prepend(SumType!(Node, string) nodes) {
    ParentNode_prepend(handle, nodes);
  }
  void append(SumType!(Node, string) nodes) {
    ParentNode_append(handle, nodes);
  }
  Optional!(Element) querySelector(string selectors) {
    return ParentNode_querySelector(handle, selectors);
  }
  NodeList querySelectorAll(string selectors) {
    return NodeList(ParentNode_querySelectorAll(handle, selectors));
  }
}
struct DocumentType {
  Node _parent;
  alias _parent this;
  string name() {
    return DocumentType_name_Get(handle);
  }
  string publicId() {
    return DocumentType_publicId_Get(handle);
  }
  string systemId() {
    return DocumentType_systemId_Get(handle);
  }
  void before(SumType!(Node, string) nodes) {
    ChildNode_before(handle, nodes);
  }
  void after(SumType!(Node, string) nodes) {
    ChildNode_after(handle, nodes);
  }
  void replaceWith(SumType!(Node, string) nodes) {
    ChildNode_replaceWith(handle, nodes);
  }
  void remove() {
    ChildNode_remove(handle);
  }
}
struct Element {
  Node _parent;
  alias _parent this;
  Optional!(string) namespaceURI() {
    return Element_namespaceURI_Get(handle);
  }
  Optional!(string) prefix() {
    return Element_prefix_Get(handle);
  }
  string localName() {
    return Element_localName_Get(handle);
  }
  string tagName() {
    return Element_tagName_Get(handle);
  }
  void id(string id) {
    Element_id_Set(handle, id);
  }
  string id() {
    return Element_id_Get(handle);
  }
  void className(string className) {
    Element_className_Set(handle, className);
  }
  string className() {
    return Element_className_Get(handle);
  }
  DOMTokenList classList() {
    return DOMTokenList(Element_classList_Get(handle));
  }
  void slot(string slot) {
    Element_slot_Set(handle, slot);
  }
  string slot() {
    return Element_slot_Get(handle);
  }
  bool hasAttributes() {
    return Element_hasAttributes(handle);
  }
  NamedNodeMap attributes() {
    return NamedNodeMap(Element_attributes_Get(handle));
  }
  Sequence!(string) getAttributeNames() {
    return Sequence!(string)(Element_getAttributeNames(handle));
  }
  Optional!(string) getAttribute(string qualifiedName) {
    return Element_getAttribute(handle, qualifiedName);
  }
  Optional!(string) getAttributeNS(Optional!(string) namespace, string localName) {
    return Element_getAttributeNS(handle, !namespace.empty, namespace.value, localName);
  }
  void setAttribute(string qualifiedName, string value) {
    Element_setAttribute(handle, qualifiedName, value);
  }
  void setAttributeNS(Optional!(string) namespace, string qualifiedName, string value) {
    Element_setAttributeNS(handle, !namespace.empty, namespace.value, qualifiedName, value);
  }
  void removeAttribute(string qualifiedName) {
    Element_removeAttribute(handle, qualifiedName);
  }
  void removeAttributeNS(Optional!(string) namespace, string localName) {
    Element_removeAttributeNS(handle, !namespace.empty, namespace.value, localName);
  }
  bool toggleAttribute(string qualifiedName, bool force) {
    return Element_toggleAttribute(handle, qualifiedName, force);
  }
  bool hasAttribute(string qualifiedName) {
    return Element_hasAttribute(handle, qualifiedName);
  }
  bool hasAttributeNS(Optional!(string) namespace, string localName) {
    return Element_hasAttributeNS(handle, !namespace.empty, namespace.value, localName);
  }
  Optional!(Attr) getAttributeNode(string qualifiedName) {
    return Element_getAttributeNode(handle, qualifiedName);
  }
  Optional!(Attr) getAttributeNodeNS(Optional!(string) namespace, string localName) {
    return Element_getAttributeNodeNS(handle, !namespace.empty, namespace.value, localName);
  }
  Optional!(Attr) setAttributeNode(Attr attr) {
    return Element_setAttributeNode(handle, attr.handle);
  }
  Optional!(Attr) setAttributeNodeNS(Attr attr) {
    return Element_setAttributeNodeNS(handle, attr.handle);
  }
  Attr removeAttributeNode(Attr attr) {
    return Attr(Element_removeAttributeNode(handle, attr.handle));
  }
  ShadowRoot attachShadow(ShadowRootInit init) {
    return ShadowRoot(Element_attachShadow(handle, init.handle));
  }
  Optional!(ShadowRoot) shadowRoot() {
    return Element_shadowRoot_Get(handle);
  }
  Optional!(Element) closest(string selectors) {
    return Element_closest(handle, selectors);
  }
  bool matches(string selectors) {
    return Element_matches(handle, selectors);
  }
  bool webkitMatchesSelector(string selectors) {
    return Element_webkitMatchesSelector(handle, selectors);
  }
  HTMLCollection getElementsByTagName(string qualifiedName) {
    return HTMLCollection(Element_getElementsByTagName(handle, qualifiedName));
  }
  HTMLCollection getElementsByTagNameNS(Optional!(string) namespace, string localName) {
    return HTMLCollection(Element_getElementsByTagNameNS(handle, !namespace.empty, namespace.value, localName));
  }
  HTMLCollection getElementsByClassName(string classNames) {
    return HTMLCollection(Element_getElementsByClassName(handle, classNames));
  }
  Optional!(Element) insertAdjacentElement(string where, Element element) {
    return Element_insertAdjacentElement(handle, where, element.handle);
  }
  void insertAdjacentText(string where, string data) {
    Element_insertAdjacentText(handle, where, data);
  }
  void setPointerCapture(int pointerId) {
    Element_setPointerCapture(handle, pointerId);
  }
  void releasePointerCapture(int pointerId) {
    Element_releasePointerCapture(handle, pointerId);
  }
  bool hasPointerCapture(int pointerId) {
    return Element_hasPointerCapture(handle, pointerId);
  }
  Promise!(void) requestFullscreen(FullscreenOptions options) {
    return Promise!(void)(Element_requestFullscreen(handle, options.handle));
  }
  void onfullscreenchange(EventHandler onfullscreenchange) {
    Element_onfullscreenchange_Set(handle, !onfullscreenchange.empty, onfullscreenchange.value);
  }
  EventHandler onfullscreenchange() {
    return Element_onfullscreenchange_Get(handle);
  }
  void onfullscreenerror(EventHandler onfullscreenerror) {
    Element_onfullscreenerror_Set(handle, !onfullscreenerror.empty, onfullscreenerror.value);
  }
  EventHandler onfullscreenerror() {
    return Element_onfullscreenerror_Get(handle);
  }
  HTMLCollection children() {
    return HTMLCollection(ParentNode_children_Get(handle));
  }
  Optional!(Element) firstElementChild() {
    return ParentNode_firstElementChild_Get(handle);
  }
  Optional!(Element) lastElementChild() {
    return ParentNode_lastElementChild_Get(handle);
  }
  uint childElementCount() {
    return ParentNode_childElementCount_Get(handle);
  }
  void prepend(SumType!(Node, string) nodes) {
    ParentNode_prepend(handle, nodes);
  }
  void append(SumType!(Node, string) nodes) {
    ParentNode_append(handle, nodes);
  }
  Optional!(Element) querySelector(string selectors) {
    return ParentNode_querySelector(handle, selectors);
  }
  NodeList querySelectorAll(string selectors) {
    return NodeList(ParentNode_querySelectorAll(handle, selectors));
  }
  Optional!(Element) previousElementSibling() {
    return NonDocumentTypeChildNode_previousElementSibling_Get(handle);
  }
  Optional!(Element) nextElementSibling() {
    return NonDocumentTypeChildNode_nextElementSibling_Get(handle);
  }
  void before(SumType!(Node, string) nodes) {
    ChildNode_before(handle, nodes);
  }
  void after(SumType!(Node, string) nodes) {
    ChildNode_after(handle, nodes);
  }
  void replaceWith(SumType!(Node, string) nodes) {
    ChildNode_replaceWith(handle, nodes);
  }
  void remove() {
    ChildNode_remove(handle);
  }
  Optional!(HTMLSlotElement) assignedSlot() {
    return Slotable_assignedSlot_Get(handle);
  }
}
struct ElementCreationOptions {
  JsHandle handle;
  alias handle this;
  void is_(string is_) {
    ElementCreationOptions_is_Set(handle, is_);
  }
  string is_() {
    return ElementCreationOptions_is_Get(handle);
  }
}
struct Event {
  JsHandle handle;
  alias handle this;
  string type() {
    return Event_type_Get(handle);
  }
  Optional!(EventTarget) target() {
    return Event_target_Get(handle);
  }
  Optional!(EventTarget) srcElement() {
    return Event_srcElement_Get(handle);
  }
  Optional!(EventTarget) currentTarget() {
    return Event_currentTarget_Get(handle);
  }
  Sequence!(EventTarget) composedPath() {
    return Sequence!(EventTarget)(Event_composedPath(handle));
  }
  enum ushort NONE = 0;
  enum ushort CAPTURING_PHASE = 1;
  enum ushort AT_TARGET = 2;
  enum ushort BUBBLING_PHASE = 3;
  ushort eventPhase() {
    return Event_eventPhase_Get(handle);
  }
  void stopPropagation() {
    Event_stopPropagation(handle);
  }
  void cancelBubble(bool cancelBubble) {
    Event_cancelBubble_Set(handle, cancelBubble);
  }
  bool cancelBubble() {
    return Event_cancelBubble_Get(handle);
  }
  void stopImmediatePropagation() {
    Event_stopImmediatePropagation(handle);
  }
  bool bubbles() {
    return Event_bubbles_Get(handle);
  }
  bool cancelable() {
    return Event_cancelable_Get(handle);
  }
  void returnValue(bool returnValue) {
    Event_returnValue_Set(handle, returnValue);
  }
  bool returnValue() {
    return Event_returnValue_Get(handle);
  }
  void preventDefault() {
    Event_preventDefault(handle);
  }
  bool defaultPrevented() {
    return Event_defaultPrevented_Get(handle);
  }
  bool composed() {
    return Event_composed_Get(handle);
  }
  bool isTrusted() {
    return Event_isTrusted_Get(handle);
  }
  double timeStamp() {
    return Event_timeStamp_Get(handle);
  }
  void initEvent(string type, bool bubbles /* = false */, bool cancelable /* = false */) {
    Event_initEvent(handle, type, bubbles, cancelable);
  }
}
struct EventInit {
  JsHandle handle;
  alias handle this;
  void bubbles(bool bubbles) {
    EventInit_bubbles_Set(handle, bubbles);
  }
  bool bubbles() {
    return EventInit_bubbles_Get(handle);
  }
  void cancelable(bool cancelable) {
    EventInit_cancelable_Set(handle, cancelable);
  }
  bool cancelable() {
    return EventInit_cancelable_Get(handle);
  }
  void composed(bool composed) {
    EventInit_composed_Set(handle, composed);
  }
  bool composed() {
    return EventInit_composed_Get(handle);
  }
}
struct EventListener {
  JsHandle handle;
  alias handle this;
  void handleEvent(Event event) {
    EventListener_handleEvent(handle, event.handle);
  }
}
struct EventListenerOptions {
  JsHandle handle;
  alias handle this;
  void capture(bool capture) {
    EventListenerOptions_capture_Set(handle, capture);
  }
  bool capture() {
    return EventListenerOptions_capture_Get(handle);
  }
}
struct EventTarget {
  JsHandle handle;
  alias handle this;
  void addEventListener(string type, Optional!(EventListener) callback, SumType!(AddEventListenerOptions, bool) options) {
    EventTarget_addEventListener(handle, type, !callback.empty, callback.value.handle, options);
  }
  void removeEventListener(string type, Optional!(EventListener) callback, SumType!(EventListenerOptions, bool) options) {
    EventTarget_removeEventListener(handle, type, !callback.empty, callback.value.handle, options);
  }
  bool dispatchEvent(Event event) {
    return EventTarget_dispatchEvent(handle, event.handle);
  }
}
struct GetRootNodeOptions {
  JsHandle handle;
  alias handle this;
  void composed(bool composed) {
    GetRootNodeOptions_composed_Set(handle, composed);
  }
  bool composed() {
    return GetRootNodeOptions_composed_Get(handle);
  }
}
struct HTMLCollection {
  JsHandle handle;
  alias handle this;
  uint length() {
    return HTMLCollection_length_Get(handle);
  }
  Optional!(Element) item(uint index) {
    return HTMLCollection_item_getter(handle, index);
  }
  Optional!(Element) namedItem(string name) {
    return HTMLCollection_namedItem_getter(handle, name);
  }
}
alias MutationCallback = void delegate(Sequence!(MutationRecord), MutationObserver);
struct MutationObserver {
  JsHandle handle;
  alias handle this;
  void observe(Node target, MutationObserverInit options) {
    MutationObserver_observe(handle, target.handle, options.handle);
  }
  void disconnect() {
    MutationObserver_disconnect(handle);
  }
  Sequence!(MutationRecord) takeRecords() {
    return Sequence!(MutationRecord)(MutationObserver_takeRecords(handle));
  }
}
struct MutationObserverInit {
  JsHandle handle;
  alias handle this;
  void childList(bool childList) {
    MutationObserverInit_childList_Set(handle, childList);
  }
  bool childList() {
    return MutationObserverInit_childList_Get(handle);
  }
  void attributes(bool attributes) {
    MutationObserverInit_attributes_Set(handle, attributes);
  }
  bool attributes() {
    return MutationObserverInit_attributes_Get(handle);
  }
  void characterData(bool characterData) {
    MutationObserverInit_characterData_Set(handle, characterData);
  }
  bool characterData() {
    return MutationObserverInit_characterData_Get(handle);
  }
  void subtree(bool subtree) {
    MutationObserverInit_subtree_Set(handle, subtree);
  }
  bool subtree() {
    return MutationObserverInit_subtree_Get(handle);
  }
  void attributeOldValue(bool attributeOldValue) {
    MutationObserverInit_attributeOldValue_Set(handle, attributeOldValue);
  }
  bool attributeOldValue() {
    return MutationObserverInit_attributeOldValue_Get(handle);
  }
  void characterDataOldValue(bool characterDataOldValue) {
    MutationObserverInit_characterDataOldValue_Set(handle, characterDataOldValue);
  }
  bool characterDataOldValue() {
    return MutationObserverInit_characterDataOldValue_Get(handle);
  }
  void attributeFilter(Sequence!(string) attributeFilter) {
    MutationObserverInit_attributeFilter_Set(handle, attributeFilter.handle);
  }
  Sequence!(string) attributeFilter() {
    return Sequence!(string)(MutationObserverInit_attributeFilter_Get(handle));
  }
}
struct MutationRecord {
  JsHandle handle;
  alias handle this;
  string type() {
    return MutationRecord_type_Get(handle);
  }
  Node target() {
    return Node(MutationRecord_target_Get(handle));
  }
  NodeList addedNodes() {
    return NodeList(MutationRecord_addedNodes_Get(handle));
  }
  NodeList removedNodes() {
    return NodeList(MutationRecord_removedNodes_Get(handle));
  }
  Optional!(Node) previousSibling() {
    return MutationRecord_previousSibling_Get(handle);
  }
  Optional!(Node) nextSibling() {
    return MutationRecord_nextSibling_Get(handle);
  }
  Optional!(string) attributeName() {
    return MutationRecord_attributeName_Get(handle);
  }
  Optional!(string) attributeNamespace() {
    return MutationRecord_attributeNamespace_Get(handle);
  }
  Optional!(string) oldValue() {
    return MutationRecord_oldValue_Get(handle);
  }
}
struct NamedNodeMap {
  JsHandle handle;
  alias handle this;
  uint length() {
    return NamedNodeMap_length_Get(handle);
  }
  Optional!(Attr) item(uint index) {
    return NamedNodeMap_item_getter(handle, index);
  }
  Optional!(Attr) getNamedItem(string qualifiedName) {
    return NamedNodeMap_getNamedItem_getter(handle, qualifiedName);
  }
  Optional!(Attr) getNamedItemNS(Optional!(string) namespace, string localName) {
    return NamedNodeMap_getNamedItemNS(handle, !namespace.empty, namespace.value, localName);
  }
  Optional!(Attr) setNamedItem(Attr attr) {
    return NamedNodeMap_setNamedItem(handle, attr.handle);
  }
  Optional!(Attr) setNamedItemNS(Attr attr) {
    return NamedNodeMap_setNamedItemNS(handle, attr.handle);
  }
  Attr removeNamedItem(string qualifiedName) {
    return Attr(NamedNodeMap_removeNamedItem(handle, qualifiedName));
  }
  Attr removeNamedItemNS(Optional!(string) namespace, string localName) {
    return Attr(NamedNodeMap_removeNamedItemNS(handle, !namespace.empty, namespace.value, localName));
  }
}
struct Node {
  EventTarget _parent;
  alias _parent this;
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
  ushort nodeType() {
    return Node_nodeType_Get(handle);
  }
  string nodeName() {
    return Node_nodeName_Get(handle);
  }
  string baseURI() {
    return string(Node_baseURI_Get(handle));
  }
  bool isConnected() {
    return Node_isConnected_Get(handle);
  }
  Optional!(Document) ownerDocument() {
    return Node_ownerDocument_Get(handle);
  }
  Node getRootNode(GetRootNodeOptions options) {
    return Node(Node_getRootNode(handle, options.handle));
  }
  Optional!(Node) parentNode() {
    return Node_parentNode_Get(handle);
  }
  Optional!(Element) parentElement() {
    return Node_parentElement_Get(handle);
  }
  bool hasChildNodes() {
    return Node_hasChildNodes(handle);
  }
  NodeList childNodes() {
    return NodeList(Node_childNodes_Get(handle));
  }
  Optional!(Node) firstChild() {
    return Node_firstChild_Get(handle);
  }
  Optional!(Node) lastChild() {
    return Node_lastChild_Get(handle);
  }
  Optional!(Node) previousSibling() {
    return Node_previousSibling_Get(handle);
  }
  Optional!(Node) nextSibling() {
    return Node_nextSibling_Get(handle);
  }
  void nodeValue(Optional!(string) nodeValue) {
    Node_nodeValue_Set(handle, !nodeValue.empty, nodeValue.value);
  }
  Optional!(string) nodeValue() {
    return Node_nodeValue_Get(handle);
  }
  void textContent(Optional!(string) textContent) {
    Node_textContent_Set(handle, !textContent.empty, textContent.value);
  }
  Optional!(string) textContent() {
    return Node_textContent_Get(handle);
  }
  void normalize() {
    Node_normalize(handle);
  }
  Node cloneNode(bool deep /* = false */) {
    return Node(Node_cloneNode(handle, deep));
  }
  bool isEqualNode(Optional!(Node) otherNode) {
    return Node_isEqualNode(handle, !otherNode.empty, otherNode.value.handle);
  }
  bool isSameNode(Optional!(Node) otherNode) {
    return Node_isSameNode(handle, !otherNode.empty, otherNode.value.handle);
  }
  enum ushort DOCUMENT_POSITION_DISCONNECTED = 0x01;
  enum ushort DOCUMENT_POSITION_PRECEDING = 0x02;
  enum ushort DOCUMENT_POSITION_FOLLOWING = 0x04;
  enum ushort DOCUMENT_POSITION_CONTAINS = 0x08;
  enum ushort DOCUMENT_POSITION_CONTAINED_BY = 0x10;
  enum ushort DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC = 0x20;
  ushort compareDocumentPosition(Node other) {
    return Node_compareDocumentPosition(handle, other.handle);
  }
  bool contains(Optional!(Node) other) {
    return Node_contains(handle, !other.empty, other.value.handle);
  }
  Optional!(string) lookupPrefix(Optional!(string) namespace) {
    return Node_lookupPrefix(handle, !namespace.empty, namespace.value);
  }
  Optional!(string) lookupNamespaceURI(Optional!(string) prefix) {
    return Node_lookupNamespaceURI(handle, !prefix.empty, prefix.value);
  }
  bool isDefaultNamespace(Optional!(string) namespace) {
    return Node_isDefaultNamespace(handle, !namespace.empty, namespace.value);
  }
  Node insertBefore(Node node, Optional!(Node) child) {
    return Node(Node_insertBefore(handle, node.handle, !child.empty, child.value.handle));
  }
  Node appendChild(Node node) {
    return Node(Node_appendChild(handle, node.handle));
  }
  Node replaceChild(Node node, Node child) {
    return Node(Node_replaceChild(handle, node.handle, child.handle));
  }
  Node removeChild(Node child) {
    return Node(Node_removeChild(handle, child.handle));
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
  ushort acceptNode(Node node) {
    return NodeFilter_acceptNode(handle, node.handle);
  }
}
struct NodeIterator {
  JsHandle handle;
  alias handle this;
  Node root() {
    return Node(NodeIterator_root_Get(handle));
  }
  Node referenceNode() {
    return Node(NodeIterator_referenceNode_Get(handle));
  }
  bool pointerBeforeReferenceNode() {
    return NodeIterator_pointerBeforeReferenceNode_Get(handle);
  }
  uint whatToShow() {
    return NodeIterator_whatToShow_Get(handle);
  }
  Optional!(NodeFilter) filter() {
    return NodeIterator_filter_Get(handle);
  }
  Optional!(Node) nextNode() {
    return NodeIterator_nextNode(handle);
  }
  Optional!(Node) previousNode() {
    return NodeIterator_previousNode(handle);
  }
  void detach() {
    NodeIterator_detach(handle);
  }
}
struct NodeList {
  JsHandle handle;
  alias handle this;
  Optional!(Node) item(uint index) {
    return NodeList_item_getter(handle, index);
  }
  uint length() {
    return NodeList_length_Get(handle);
  }
}
struct ProcessingInstruction {
  CharacterData _parent;
  alias _parent this;
  string target() {
    return ProcessingInstruction_target_Get(handle);
  }
}
struct Range {
  AbstractRange _parent;
  alias _parent this;
  Node commonAncestorContainer() {
    return Node(Range_commonAncestorContainer_Get(handle));
  }
  void setStart(Node node, uint offset) {
    Range_setStart(handle, node.handle, offset);
  }
  void setEnd(Node node, uint offset) {
    Range_setEnd(handle, node.handle, offset);
  }
  void setStartBefore(Node node) {
    Range_setStartBefore(handle, node.handle);
  }
  void setStartAfter(Node node) {
    Range_setStartAfter(handle, node.handle);
  }
  void setEndBefore(Node node) {
    Range_setEndBefore(handle, node.handle);
  }
  void setEndAfter(Node node) {
    Range_setEndAfter(handle, node.handle);
  }
  void collapse(bool toStart /* = false */) {
    Range_collapse(handle, toStart);
  }
  void selectNode(Node node) {
    Range_selectNode(handle, node.handle);
  }
  void selectNodeContents(Node node) {
    Range_selectNodeContents(handle, node.handle);
  }
  enum ushort START_TO_START = 0;
  enum ushort START_TO_END = 1;
  enum ushort END_TO_END = 2;
  enum ushort END_TO_START = 3;
  short compareBoundaryPoints(ushort how, Range sourceRange) {
    return Range_compareBoundaryPoints(handle, how, sourceRange.handle);
  }
  void deleteContents() {
    Range_deleteContents(handle);
  }
  DocumentFragment extractContents() {
    return DocumentFragment(Range_extractContents(handle));
  }
  DocumentFragment cloneContents() {
    return DocumentFragment(Range_cloneContents(handle));
  }
  void insertNode(Node node) {
    Range_insertNode(handle, node.handle);
  }
  void surroundContents(Node newParent) {
    Range_surroundContents(handle, newParent.handle);
  }
  Range cloneRange() {
    return Range(Range_cloneRange(handle));
  }
  void detach() {
    Range_detach(handle);
  }
  bool isPointInRange(Node node, uint offset) {
    return Range_isPointInRange(handle, node.handle, offset);
  }
  short comparePoint(Node node, uint offset) {
    return Range_comparePoint(handle, node.handle, offset);
  }
  bool intersectsNode(Node node) {
    return Range_intersectsNode(handle, node.handle);
  }
}
struct ShadowRoot {
  DocumentFragment _parent;
  alias _parent this;
  ShadowRootMode mode() {
    return ShadowRoot_mode_Get(handle);
  }
  Element host() {
    return Element(ShadowRoot_host_Get(handle));
  }
}
struct ShadowRootInit {
  JsHandle handle;
  alias handle this;
  void mode(ShadowRootMode mode) {
    ShadowRootInit_mode_Set(handle, mode);
  }
  ShadowRootMode mode() {
    return ShadowRootInit_mode_Get(handle);
  }
}
enum ShadowRootMode {
  open,
  closed
}
struct StaticRange {
  AbstractRange _parent;
  alias _parent this;
}
struct Text {
  CharacterData _parent;
  alias _parent this;
  Text splitText(uint offset) {
    return Text(Text_splitText(handle, offset));
  }
  string wholeText() {
    return Text_wholeText_Get(handle);
  }
  Optional!(HTMLSlotElement) assignedSlot() {
    return Slotable_assignedSlot_Get(handle);
  }
}
struct TreeWalker {
  JsHandle handle;
  alias handle this;
  Node root() {
    return Node(TreeWalker_root_Get(handle));
  }
  uint whatToShow() {
    return TreeWalker_whatToShow_Get(handle);
  }
  Optional!(NodeFilter) filter() {
    return TreeWalker_filter_Get(handle);
  }
  void currentNode(Node currentNode) {
    TreeWalker_currentNode_Set(handle, currentNode.handle);
  }
  Node currentNode() {
    return Node(TreeWalker_currentNode_Get(handle));
  }
  Optional!(Node) parentNode() {
    return TreeWalker_parentNode(handle);
  }
  Optional!(Node) firstChild() {
    return TreeWalker_firstChild(handle);
  }
  Optional!(Node) lastChild() {
    return TreeWalker_lastChild(handle);
  }
  Optional!(Node) previousSibling() {
    return TreeWalker_previousSibling(handle);
  }
  Optional!(Node) nextSibling() {
    return TreeWalker_nextSibling(handle);
  }
  Optional!(Node) previousNode() {
    return TreeWalker_previousNode(handle);
  }
  Optional!(Node) nextNode() {
    return TreeWalker_nextNode(handle);
  }
}
struct XMLDocument {
  Document _parent;
  alias _parent this;
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
extern (C) Optional!(Element) NonDocumentTypeChildNode_previousElementSibling_Get(JsHandle);
extern (C) Optional!(Element) NonDocumentTypeChildNode_nextElementSibling_Get(JsHandle);
extern (C) void ChildNode_before(JsHandle, SumType!(Node, string));
extern (C) void ChildNode_after(JsHandle, SumType!(Node, string));
extern (C) void ChildNode_replaceWith(JsHandle, SumType!(Node, string));
extern (C) void ChildNode_remove(JsHandle);
extern (C) JsHandle CustomEvent_detail_Get(JsHandle);
extern (C) void CustomEvent_initCustomEvent(JsHandle, string, bool, bool, Any);
extern (C) void CustomEventInit_detail_Set(JsHandle, Any);
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
extern (C) JsHandle Document_URL_Get(JsHandle);
extern (C) JsHandle Document_documentURI_Get(JsHandle);
extern (C) JsHandle Document_origin_Get(JsHandle);
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
extern (C) void Document_domain_Set(JsHandle, JsHandle);
extern (C) JsHandle Document_domain_Get(JsHandle);
extern (C) JsHandle Document_referrer_Get(JsHandle);
extern (C) void Document_cookie_Set(JsHandle, JsHandle);
extern (C) JsHandle Document_cookie_Get(JsHandle);
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
extern (C) Optional!(WindowProxy) Document_open__string_string_string(JsHandle, JsHandle, string, string);
extern (C) void Document_close(JsHandle);
extern (C) void Document_write(JsHandle, string);
extern (C) void Document_writeln(JsHandle, string);
extern (C) Optional!(WindowProxy) Document_defaultView_Get(JsHandle);
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
extern (C) bool Document_fullscreenEnabled_Get(JsHandle);
extern (C) bool Document_fullscreen_Get(JsHandle);
extern (C) JsHandle Document_exitFullscreen(JsHandle);
extern (C) void Document_onfullscreenchange_Set(JsHandle, EventHandler);
extern (C) EventHandler Document_onfullscreenchange_Get(JsHandle);
extern (C) void Document_onfullscreenerror_Set(JsHandle, EventHandler);
extern (C) EventHandler Document_onfullscreenerror_Get(JsHandle);
extern (C) Optional!(SVGSVGElement) Document_rootElement_Get(JsHandle);
extern (C) Optional!(Element) NonElementParentNode_getElementById(JsHandle, string);
extern (C) JsHandle ParentNode_children_Get(JsHandle);
extern (C) Optional!(Element) ParentNode_firstElementChild_Get(JsHandle);
extern (C) Optional!(Element) ParentNode_lastElementChild_Get(JsHandle);
extern (C) uint ParentNode_childElementCount_Get(JsHandle);
extern (C) void ParentNode_prepend(JsHandle, SumType!(Node, string));
extern (C) void ParentNode_append(JsHandle, SumType!(Node, string));
extern (C) Optional!(Element) ParentNode_querySelector(JsHandle, string);
extern (C) JsHandle ParentNode_querySelectorAll(JsHandle, string);
extern (C) void GlobalEventHandlers_ongotpointercapture_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ongotpointercapture_Get(JsHandle);
extern (C) void GlobalEventHandlers_onlostpointercapture_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onlostpointercapture_Get(JsHandle);
extern (C) void GlobalEventHandlers_onpointerdown_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onpointerdown_Get(JsHandle);
extern (C) void GlobalEventHandlers_onpointermove_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onpointermove_Get(JsHandle);
extern (C) void GlobalEventHandlers_onpointerup_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onpointerup_Get(JsHandle);
extern (C) void GlobalEventHandlers_onpointercancel_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onpointercancel_Get(JsHandle);
extern (C) void GlobalEventHandlers_onpointerover_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onpointerover_Get(JsHandle);
extern (C) void GlobalEventHandlers_onpointerout_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onpointerout_Get(JsHandle);
extern (C) void GlobalEventHandlers_onpointerenter_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onpointerenter_Get(JsHandle);
extern (C) void GlobalEventHandlers_onpointerleave_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_onpointerleave_Get(JsHandle);
extern (C) void GlobalEventHandlers_ontouchstart_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ontouchstart_Get(JsHandle);
extern (C) void GlobalEventHandlers_ontouchend_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ontouchend_Get(JsHandle);
extern (C) void GlobalEventHandlers_ontouchmove_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ontouchmove_Get(JsHandle);
extern (C) void GlobalEventHandlers_ontouchcancel_Set(JsHandle, EventHandler);
extern (C) EventHandler GlobalEventHandlers_ontouchcancel_Get(JsHandle);
extern (C) Optional!(Element) NonElementParentNode_getElementById(JsHandle, string);
extern (C) JsHandle ParentNode_children_Get(JsHandle);
extern (C) Optional!(Element) ParentNode_firstElementChild_Get(JsHandle);
extern (C) Optional!(Element) ParentNode_lastElementChild_Get(JsHandle);
extern (C) uint ParentNode_childElementCount_Get(JsHandle);
extern (C) void ParentNode_prepend(JsHandle, SumType!(Node, string));
extern (C) void ParentNode_append(JsHandle, SumType!(Node, string));
extern (C) Optional!(Element) ParentNode_querySelector(JsHandle, string);
extern (C) JsHandle ParentNode_querySelectorAll(JsHandle, string);
extern (C) string DocumentType_name_Get(JsHandle);
extern (C) string DocumentType_publicId_Get(JsHandle);
extern (C) string DocumentType_systemId_Get(JsHandle);
extern (C) void ChildNode_before(JsHandle, SumType!(Node, string));
extern (C) void ChildNode_after(JsHandle, SumType!(Node, string));
extern (C) void ChildNode_replaceWith(JsHandle, SumType!(Node, string));
extern (C) void ChildNode_remove(JsHandle);
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
extern (C) JsHandle ParentNode_children_Get(JsHandle);
extern (C) Optional!(Element) ParentNode_firstElementChild_Get(JsHandle);
extern (C) Optional!(Element) ParentNode_lastElementChild_Get(JsHandle);
extern (C) uint ParentNode_childElementCount_Get(JsHandle);
extern (C) void ParentNode_prepend(JsHandle, SumType!(Node, string));
extern (C) void ParentNode_append(JsHandle, SumType!(Node, string));
extern (C) Optional!(Element) ParentNode_querySelector(JsHandle, string);
extern (C) JsHandle ParentNode_querySelectorAll(JsHandle, string);
extern (C) Optional!(Element) NonDocumentTypeChildNode_previousElementSibling_Get(JsHandle);
extern (C) Optional!(Element) NonDocumentTypeChildNode_nextElementSibling_Get(JsHandle);
extern (C) void ChildNode_before(JsHandle, SumType!(Node, string));
extern (C) void ChildNode_after(JsHandle, SumType!(Node, string));
extern (C) void ChildNode_replaceWith(JsHandle, SumType!(Node, string));
extern (C) void ChildNode_remove(JsHandle);
extern (C) Optional!(HTMLSlotElement) Slotable_assignedSlot_Get(JsHandle);
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
extern (C) JsHandle Node_baseURI_Get(JsHandle);
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
extern (C) JsHandle Text_splitText(JsHandle, uint);
extern (C) string Text_wholeText_Get(JsHandle);
extern (C) Optional!(HTMLSlotElement) Slotable_assignedSlot_Get(JsHandle);
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