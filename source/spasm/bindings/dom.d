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
    auto result = AbortSignal(JsHandle(AbortController_signal_Get(this.handle)));
    return result;
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
    auto result = AbortSignal_aborted_Get(this._parent);
    return result;
  }
  auto onabort(EventHandler onabort) {
    AbortSignal_onabort_Set(this._parent, onabort);
  }
  auto onabort() {
    auto result = AbortSignal_onabort_Get(this._parent);
    return result;
  }
}
struct AbstractRange {
  JsHandle handle;
  alias handle this;
  auto startContainer() {
    auto result = Node(JsHandle(AbstractRange_startContainer_Get(this.handle)));
    return result;
  }
  auto startOffset() {
    auto result = AbstractRange_startOffset_Get(this.handle);
    return result;
  }
  auto endContainer() {
    auto result = Node(JsHandle(AbstractRange_endContainer_Get(this.handle)));
    return result;
  }
  auto endOffset() {
    auto result = AbstractRange_endOffset_Get(this.handle);
    return result;
  }
  auto collapsed() {
    auto result = AbstractRange_collapsed_Get(this.handle);
    return result;
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
    auto result = AddEventListenerOptions_passive_Get(this._parent);
    return result;
  }
  auto once(bool once) {
    AddEventListenerOptions_once_Set(this._parent, once);
  }
  auto once() {
    auto result = AddEventListenerOptions_once_Get(this._parent);
    return result;
  }
}
struct Attr {
  Node _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Node(h);
  }
  auto namespaceURI() {
    auto result = Attr_namespaceURI_Get(this._parent);
    return result;
  }
  auto prefix() {
    auto result = Attr_prefix_Get(this._parent);
    return result;
  }
  auto localName() {
    auto result = Attr_localName_Get(this._parent);
    return result;
  }
  auto name() {
    auto result = Attr_name_Get(this._parent);
    return result;
  }
  auto value(string value) {
    Attr_value_Set(this._parent, value);
  }
  auto value() {
    auto result = Attr_value_Get(this._parent);
    return result;
  }
  auto ownerElement() {
    auto result = Attr_ownerElement_Get(this._parent);
    return result;
  }
  auto specified() {
    auto result = Attr_specified_Get(this._parent);
    return result;
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
    auto result = CharacterData_data_Get(this._parent);
    return result;
  }
  auto length() {
    auto result = CharacterData_length_Get(this._parent);
    return result;
  }
  auto substringData(uint offset, uint count) {
    auto result = CharacterData_substringData(this._parent, offset, count);
    return result;
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
    auto result = NonDocumentTypeChildNode_previousElementSibling_Get(this.handle);
    return result;
  }
  auto nextElementSibling() {
    auto result = NonDocumentTypeChildNode_nextElementSibling_Get(this.handle);
    return result;
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
    auto result = Any(JsHandle(CustomEvent_detail_Get(this._parent)));
    return result;
  }
  auto initCustomEvent(T3)(string type, bool bubbles /* = false */, bool cancelable /* = false */, T3 detail /* = null */) {
    Handle _handle_detail = getOrCreateHandle(detail);
    CustomEvent_initCustomEvent(this._parent, type, bubbles, cancelable, _handle_detail);
    dropHandle!(T3)(_handle_detail);
  }
}
struct CustomEventInit {
  EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventInit(h);
  }
  auto detail(T0)(T0 detail) {
    Handle _handle_detail = getOrCreateHandle(detail);
    CustomEventInit_detail_Set(this._parent, _handle_detail);
    dropHandle!(T0)(_handle_detail);
  }
  auto detail() {
    auto result = Any(JsHandle(CustomEventInit_detail_Get(this._parent)));
    return result;
  }
}
struct DOMImplementation {
  JsHandle handle;
  alias handle this;
  auto createDocumentType(string qualifiedName, string publicId, string systemId) {
    auto result = DocumentType(JsHandle(DOMImplementation_createDocumentType(this.handle, qualifiedName, publicId, systemId)));
    return result;
  }
  auto createDocument(Optional!(string) namespace, string qualifiedName, Optional!(DocumentType) doctype /* = no!(DocumentType) */) {
    auto result = XMLDocument(JsHandle(DOMImplementation_createDocument(this.handle, !namespace.empty, namespace.front, qualifiedName, !doctype.empty, doctype.front.handle)));
    return result;
  }
  auto createHTMLDocument(string title) {
    auto result = Document(JsHandle(DOMImplementation_createHTMLDocument(this.handle, title)));
    return result;
  }
  auto hasFeature() {
    auto result = DOMImplementation_hasFeature(this.handle);
    return result;
  }
}
struct DOMTokenList {
  JsHandle handle;
  alias handle this;
  auto length() {
    auto result = DOMTokenList_length_Get(this.handle);
    return result;
  }
  auto item(uint index) {
    auto result = DOMTokenList_item_getter(this.handle, index);
    return result;
  }
  auto contains(string token) {
    auto result = DOMTokenList_contains(this.handle, token);
    return result;
  }
  auto add(string tokens) {
    DOMTokenList_add(this.handle, tokens);
  }
  auto remove(string tokens) {
    DOMTokenList_remove(this.handle, tokens);
  }
  auto toggle(string token, bool force) {
    auto result = DOMTokenList_toggle(this.handle, token, force);
    return result;
  }
  auto replace(string token, string newToken) {
    auto result = DOMTokenList_replace(this.handle, token, newToken);
    return result;
  }
  auto supports(string token) {
    auto result = DOMTokenList_supports(this.handle, token);
    return result;
  }
  auto value(string value) {
    DOMTokenList_value_Set(this.handle, value);
  }
  auto value() {
    auto result = DOMTokenList_value_Get(this.handle);
    return result;
  }
}
struct Document {
  Node _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Node(h);
  }
  auto implementation() {
    auto result = DOMImplementation(JsHandle(Document_implementation_Get(this._parent)));
    return result;
  }
  auto URL() {
    auto result = Document_URL_Get(this._parent);
    return result;
  }
  auto documentURI() {
    auto result = Document_documentURI_Get(this._parent);
    return result;
  }
  auto origin() {
    auto result = Document_origin_Get(this._parent);
    return result;
  }
  auto compatMode() {
    auto result = Document_compatMode_Get(this._parent);
    return result;
  }
  auto characterSet() {
    auto result = Document_characterSet_Get(this._parent);
    return result;
  }
  auto charset() {
    auto result = Document_charset_Get(this._parent);
    return result;
  }
  auto inputEncoding() {
    auto result = Document_inputEncoding_Get(this._parent);
    return result;
  }
  auto contentType() {
    auto result = Document_contentType_Get(this._parent);
    return result;
  }
  auto doctype() {
    auto result = Document_doctype_Get(this._parent);
    return result;
  }
  auto documentElement() {
    auto result = Document_documentElement_Get(this._parent);
    return result;
  }
  auto getElementsByTagName(string qualifiedName) {
    auto result = HTMLCollection(JsHandle(Document_getElementsByTagName(this._parent, qualifiedName)));
    return result;
  }
  auto getElementsByTagNameNS(Optional!(string) namespace, string localName) {
    auto result = HTMLCollection(JsHandle(Document_getElementsByTagNameNS(this._parent, !namespace.empty, namespace.front, localName)));
    return result;
  }
  auto getElementsByClassName(string classNames) {
    auto result = HTMLCollection(JsHandle(Document_getElementsByClassName(this._parent, classNames)));
    return result;
  }
  auto createElement(string localName, SumType!(string, ElementCreationOptions) options) {
    auto result = Element(JsHandle(Document_createElement(this._parent, localName, options)));
    return result;
  }
  auto createElementNS(Optional!(string) namespace, string qualifiedName, SumType!(string, ElementCreationOptions) options) {
    auto result = Element(JsHandle(Document_createElementNS(this._parent, !namespace.empty, namespace.front, qualifiedName, options)));
    return result;
  }
  auto createDocumentFragment() {
    auto result = DocumentFragment(JsHandle(Document_createDocumentFragment(this._parent)));
    return result;
  }
  auto createTextNode(string data) {
    auto result = Text(JsHandle(Document_createTextNode(this._parent, data)));
    return result;
  }
  auto createCDATASection(string data) {
    auto result = CDATASection(JsHandle(Document_createCDATASection(this._parent, data)));
    return result;
  }
  auto createComment(string data) {
    auto result = Comment(JsHandle(Document_createComment(this._parent, data)));
    return result;
  }
  auto createProcessingInstruction(string target, string data) {
    auto result = ProcessingInstruction(JsHandle(Document_createProcessingInstruction(this._parent, target, data)));
    return result;
  }
  auto importNode(Node node, bool deep /* = false */) {
    auto result = Node(JsHandle(Document_importNode(this._parent, node.handle, deep)));
    return result;
  }
  auto adoptNode(Node node) {
    auto result = Node(JsHandle(Document_adoptNode(this._parent, node.handle)));
    return result;
  }
  auto createAttribute(string localName) {
    auto result = Attr(JsHandle(Document_createAttribute(this._parent, localName)));
    return result;
  }
  auto createAttributeNS(Optional!(string) namespace, string qualifiedName) {
    auto result = Attr(JsHandle(Document_createAttributeNS(this._parent, !namespace.empty, namespace.front, qualifiedName)));
    return result;
  }
  auto createEvent(string interface_) {
    auto result = Event(JsHandle(Document_createEvent(this._parent, interface_)));
    return result;
  }
  auto createRange() {
    auto result = Range(JsHandle(Document_createRange(this._parent)));
    return result;
  }
  auto createNodeIterator(Node root, uint whatToShow /* = 0xFFFFFFFF */, Optional!(NodeFilter) filter /* = no!(NodeFilter) */) {
    auto result = NodeIterator(JsHandle(Document_createNodeIterator(this._parent, root.handle, whatToShow, !filter.empty, filter.front.handle)));
    return result;
  }
  auto createTreeWalker(Node root, uint whatToShow /* = 0xFFFFFFFF */, Optional!(NodeFilter) filter /* = no!(NodeFilter) */) {
    auto result = TreeWalker(JsHandle(Document_createTreeWalker(this._parent, root.handle, whatToShow, !filter.empty, filter.front.handle)));
    return result;
  }
  auto location() {
    auto result = Document_location_Get(this._parent);
    return result;
  }
  auto domain(string domain) {
    Document_domain_Set(this._parent, domain);
  }
  auto domain() {
    auto result = Document_domain_Get(this._parent);
    return result;
  }
  auto referrer() {
    auto result = Document_referrer_Get(this._parent);
    return result;
  }
  auto cookie(string cookie) {
    Document_cookie_Set(this._parent, cookie);
  }
  auto cookie() {
    auto result = Document_cookie_Get(this._parent);
    return result;
  }
  auto lastModified() {
    auto result = Document_lastModified_Get(this._parent);
    return result;
  }
  auto readyState() {
    auto result = Document_readyState_Get(this._parent);
    return result;
  }
  auto title(string title) {
    Document_title_Set(this._parent, title);
  }
  auto title() {
    auto result = Document_title_Get(this._parent);
    return result;
  }
  auto dir(string dir) {
    Document_dir_Set(this._parent, dir);
  }
  auto dir() {
    auto result = Document_dir_Get(this._parent);
    return result;
  }
  auto body_(Optional!(HTMLElement) body_) {
    Document_body_Set(this._parent, !body_.empty, body_.front.handle);
  }
  auto body_() {
    auto result = Document_body_Get(this._parent);
    return result;
  }
  auto head() {
    auto result = Document_head_Get(this._parent);
    return result;
  }
  auto images() {
    auto result = HTMLCollection(JsHandle(Document_images_Get(this._parent)));
    return result;
  }
  auto embeds() {
    auto result = HTMLCollection(JsHandle(Document_embeds_Get(this._parent)));
    return result;
  }
  auto plugins() {
    auto result = HTMLCollection(JsHandle(Document_plugins_Get(this._parent)));
    return result;
  }
  auto links() {
    auto result = HTMLCollection(JsHandle(Document_links_Get(this._parent)));
    return result;
  }
  auto forms() {
    auto result = HTMLCollection(JsHandle(Document_forms_Get(this._parent)));
    return result;
  }
  auto scripts() {
    auto result = HTMLCollection(JsHandle(Document_scripts_Get(this._parent)));
    return result;
  }
  auto getElementsByName(string elementName) {
    auto result = NodeList(JsHandle(Document_getElementsByName(this._parent, elementName)));
    return result;
  }
  auto currentScript() {
    auto result = Document_currentScript_Get(this._parent);
    return result;
  }
  auto open(string unused1, string unused2) {
    auto result = Document(JsHandle(Document_open__string_string(this._parent, unused1, unused2)));
    return result;
  }
  auto open(string url, string name, string features) {
    auto result = Document_open__string_string_string(this._parent, url, name, features);
    return result;
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
    auto result = Document_defaultView_Get(this._parent);
    return result;
  }
  auto activeElement() {
    auto result = Document_activeElement_Get(this._parent);
    return result;
  }
  auto hasFocus() {
    auto result = Document_hasFocus(this._parent);
    return result;
  }
  auto designMode(string designMode) {
    Document_designMode_Set(this._parent, designMode);
  }
  auto designMode() {
    auto result = Document_designMode_Get(this._parent);
    return result;
  }
  auto execCommand(string commandId, bool showUI /* = false */, string value /* = "" */) {
    auto result = Document_execCommand(this._parent, commandId, showUI, value);
    return result;
  }
  auto queryCommandEnabled(string commandId) {
    auto result = Document_queryCommandEnabled(this._parent, commandId);
    return result;
  }
  auto queryCommandIndeterm(string commandId) {
    auto result = Document_queryCommandIndeterm(this._parent, commandId);
    return result;
  }
  auto queryCommandState(string commandId) {
    auto result = Document_queryCommandState(this._parent, commandId);
    return result;
  }
  auto queryCommandSupported(string commandId) {
    auto result = Document_queryCommandSupported(this._parent, commandId);
    return result;
  }
  auto queryCommandValue(string commandId) {
    auto result = Document_queryCommandValue(this._parent, commandId);
    return result;
  }
  auto onreadystatechange(EventHandler onreadystatechange) {
    Document_onreadystatechange_Set(this._parent, onreadystatechange);
  }
  auto onreadystatechange() {
    auto result = Document_onreadystatechange_Get(this._parent);
    return result;
  }
  auto fgColor(string fgColor) {
    Document_fgColor_Set(this._parent, fgColor);
  }
  auto fgColor() {
    auto result = Document_fgColor_Get(this._parent);
    return result;
  }
  auto linkColor(string linkColor) {
    Document_linkColor_Set(this._parent, linkColor);
  }
  auto linkColor() {
    auto result = Document_linkColor_Get(this._parent);
    return result;
  }
  auto vlinkColor(string vlinkColor) {
    Document_vlinkColor_Set(this._parent, vlinkColor);
  }
  auto vlinkColor() {
    auto result = Document_vlinkColor_Get(this._parent);
    return result;
  }
  auto alinkColor(string alinkColor) {
    Document_alinkColor_Set(this._parent, alinkColor);
  }
  auto alinkColor() {
    auto result = Document_alinkColor_Get(this._parent);
    return result;
  }
  auto bgColor(string bgColor) {
    Document_bgColor_Set(this._parent, bgColor);
  }
  auto bgColor() {
    auto result = Document_bgColor_Get(this._parent);
    return result;
  }
  auto anchors() {
    auto result = HTMLCollection(JsHandle(Document_anchors_Get(this._parent)));
    return result;
  }
  auto applets() {
    auto result = HTMLCollection(JsHandle(Document_applets_Get(this._parent)));
    return result;
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
    auto result = HTMLAllCollection(JsHandle(Document_all_Get(this._parent)));
    return result;
  }
  auto hidden() {
    auto result = Document_hidden_Get(this._parent);
    return result;
  }
  auto visibilityState() {
    auto result = Document_visibilityState_Get(this._parent);
    return result;
  }
  auto onvisibilitychange(EventHandler onvisibilitychange) {
    Document_onvisibilitychange_Set(this._parent, onvisibilitychange);
  }
  auto onvisibilitychange() {
    auto result = Document_onvisibilitychange_Get(this._parent);
    return result;
  }
  auto fullscreenEnabled() {
    auto result = Document_fullscreenEnabled_Get(this._parent);
    return result;
  }
  auto fullscreen() {
    auto result = Document_fullscreen_Get(this._parent);
    return result;
  }
  auto exitFullscreen() {
    auto result = Promise!(void)(JsHandle(Document_exitFullscreen(this._parent)));
    return result;
  }
  auto onfullscreenchange(EventHandler onfullscreenchange) {
    Document_onfullscreenchange_Set(this._parent, onfullscreenchange);
  }
  auto onfullscreenchange() {
    auto result = Document_onfullscreenchange_Get(this._parent);
    return result;
  }
  auto onfullscreenerror(EventHandler onfullscreenerror) {
    Document_onfullscreenerror_Set(this._parent, onfullscreenerror);
  }
  auto onfullscreenerror() {
    auto result = Document_onfullscreenerror_Get(this._parent);
    return result;
  }
  auto rootElement() {
    auto result = Document_rootElement_Get(this._parent);
    return result;
  }
  auto getElementById(string elementId) {
    auto result = NonElementParentNode_getElementById(this.handle, elementId);
    return result;
  }
  auto fullscreenElement() {
    auto result = DocumentOrShadowRoot_fullscreenElement_Get(this.handle);
    return result;
  }
  auto children() {
    auto result = HTMLCollection(JsHandle(ParentNode_children_Get(this.handle)));
    return result;
  }
  auto firstElementChild() {
    auto result = ParentNode_firstElementChild_Get(this.handle);
    return result;
  }
  auto lastElementChild() {
    auto result = ParentNode_lastElementChild_Get(this.handle);
    return result;
  }
  auto childElementCount() {
    auto result = ParentNode_childElementCount_Get(this.handle);
    return result;
  }
  auto prepend(SumType!(Node, string) nodes) {
    ParentNode_prepend(this.handle, nodes);
  }
  auto append(SumType!(Node, string) nodes) {
    ParentNode_append(this.handle, nodes);
  }
  auto querySelector(string selectors) {
    auto result = ParentNode_querySelector(this.handle, selectors);
    return result;
  }
  auto querySelectorAll(string selectors) {
    auto result = NodeList(JsHandle(ParentNode_querySelectorAll(this.handle, selectors)));
    return result;
  }
  auto ongotpointercapture(EventHandler ongotpointercapture) {
    GlobalEventHandlers_ongotpointercapture_Set(this.handle, ongotpointercapture);
  }
  auto ongotpointercapture() {
    auto result = GlobalEventHandlers_ongotpointercapture_Get(this.handle);
    return result;
  }
  auto onlostpointercapture(EventHandler onlostpointercapture) {
    GlobalEventHandlers_onlostpointercapture_Set(this.handle, onlostpointercapture);
  }
  auto onlostpointercapture() {
    auto result = GlobalEventHandlers_onlostpointercapture_Get(this.handle);
    return result;
  }
  auto onpointerdown(EventHandler onpointerdown) {
    GlobalEventHandlers_onpointerdown_Set(this.handle, onpointerdown);
  }
  auto onpointerdown() {
    auto result = GlobalEventHandlers_onpointerdown_Get(this.handle);
    return result;
  }
  auto onpointermove(EventHandler onpointermove) {
    GlobalEventHandlers_onpointermove_Set(this.handle, onpointermove);
  }
  auto onpointermove() {
    auto result = GlobalEventHandlers_onpointermove_Get(this.handle);
    return result;
  }
  auto onpointerup(EventHandler onpointerup) {
    GlobalEventHandlers_onpointerup_Set(this.handle, onpointerup);
  }
  auto onpointerup() {
    auto result = GlobalEventHandlers_onpointerup_Get(this.handle);
    return result;
  }
  auto onpointercancel(EventHandler onpointercancel) {
    GlobalEventHandlers_onpointercancel_Set(this.handle, onpointercancel);
  }
  auto onpointercancel() {
    auto result = GlobalEventHandlers_onpointercancel_Get(this.handle);
    return result;
  }
  auto onpointerover(EventHandler onpointerover) {
    GlobalEventHandlers_onpointerover_Set(this.handle, onpointerover);
  }
  auto onpointerover() {
    auto result = GlobalEventHandlers_onpointerover_Get(this.handle);
    return result;
  }
  auto onpointerout(EventHandler onpointerout) {
    GlobalEventHandlers_onpointerout_Set(this.handle, onpointerout);
  }
  auto onpointerout() {
    auto result = GlobalEventHandlers_onpointerout_Get(this.handle);
    return result;
  }
  auto onpointerenter(EventHandler onpointerenter) {
    GlobalEventHandlers_onpointerenter_Set(this.handle, onpointerenter);
  }
  auto onpointerenter() {
    auto result = GlobalEventHandlers_onpointerenter_Get(this.handle);
    return result;
  }
  auto onpointerleave(EventHandler onpointerleave) {
    GlobalEventHandlers_onpointerleave_Set(this.handle, onpointerleave);
  }
  auto onpointerleave() {
    auto result = GlobalEventHandlers_onpointerleave_Get(this.handle);
    return result;
  }
  auto ontouchstart(EventHandler ontouchstart) {
    GlobalEventHandlers_ontouchstart_Set(this.handle, ontouchstart);
  }
  auto ontouchstart() {
    auto result = GlobalEventHandlers_ontouchstart_Get(this.handle);
    return result;
  }
  auto ontouchend(EventHandler ontouchend) {
    GlobalEventHandlers_ontouchend_Set(this.handle, ontouchend);
  }
  auto ontouchend() {
    auto result = GlobalEventHandlers_ontouchend_Get(this.handle);
    return result;
  }
  auto ontouchmove(EventHandler ontouchmove) {
    GlobalEventHandlers_ontouchmove_Set(this.handle, ontouchmove);
  }
  auto ontouchmove() {
    auto result = GlobalEventHandlers_ontouchmove_Get(this.handle);
    return result;
  }
  auto ontouchcancel(EventHandler ontouchcancel) {
    GlobalEventHandlers_ontouchcancel_Set(this.handle, ontouchcancel);
  }
  auto ontouchcancel() {
    auto result = GlobalEventHandlers_ontouchcancel_Get(this.handle);
    return result;
  }
}
struct DocumentFragment {
  Node _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Node(h);
  }
  auto getElementById(string elementId) {
    auto result = NonElementParentNode_getElementById(this.handle, elementId);
    return result;
  }
  auto children() {
    auto result = HTMLCollection(JsHandle(ParentNode_children_Get(this.handle)));
    return result;
  }
  auto firstElementChild() {
    auto result = ParentNode_firstElementChild_Get(this.handle);
    return result;
  }
  auto lastElementChild() {
    auto result = ParentNode_lastElementChild_Get(this.handle);
    return result;
  }
  auto childElementCount() {
    auto result = ParentNode_childElementCount_Get(this.handle);
    return result;
  }
  auto prepend(SumType!(Node, string) nodes) {
    ParentNode_prepend(this.handle, nodes);
  }
  auto append(SumType!(Node, string) nodes) {
    ParentNode_append(this.handle, nodes);
  }
  auto querySelector(string selectors) {
    auto result = ParentNode_querySelector(this.handle, selectors);
    return result;
  }
  auto querySelectorAll(string selectors) {
    auto result = NodeList(JsHandle(ParentNode_querySelectorAll(this.handle, selectors)));
    return result;
  }
}
struct DocumentType {
  Node _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Node(h);
  }
  auto name() {
    auto result = DocumentType_name_Get(this._parent);
    return result;
  }
  auto publicId() {
    auto result = DocumentType_publicId_Get(this._parent);
    return result;
  }
  auto systemId() {
    auto result = DocumentType_systemId_Get(this._parent);
    return result;
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
    auto result = Element_namespaceURI_Get(this._parent);
    return result;
  }
  auto prefix() {
    auto result = Element_prefix_Get(this._parent);
    return result;
  }
  auto localName() {
    auto result = Element_localName_Get(this._parent);
    return result;
  }
  auto tagName() {
    auto result = Element_tagName_Get(this._parent);
    return result;
  }
  auto id(string id) {
    Element_id_Set(this._parent, id);
  }
  auto id() {
    auto result = Element_id_Get(this._parent);
    return result;
  }
  auto className(string className) {
    Element_className_Set(this._parent, className);
  }
  auto className() {
    auto result = Element_className_Get(this._parent);
    return result;
  }
  auto classList() {
    auto result = DOMTokenList(JsHandle(Element_classList_Get(this._parent)));
    return result;
  }
  auto slot(string slot) {
    Element_slot_Set(this._parent, slot);
  }
  auto slot() {
    auto result = Element_slot_Get(this._parent);
    return result;
  }
  auto hasAttributes() {
    auto result = Element_hasAttributes(this._parent);
    return result;
  }
  auto attributes() {
    auto result = NamedNodeMap(JsHandle(Element_attributes_Get(this._parent)));
    return result;
  }
  auto getAttributeNames() {
    auto result = Sequence!(string)(JsHandle(Element_getAttributeNames(this._parent)));
    return result;
  }
  auto getAttribute(string qualifiedName) {
    auto result = Element_getAttribute(this._parent, qualifiedName);
    return result;
  }
  auto getAttributeNS(Optional!(string) namespace, string localName) {
    auto result = Element_getAttributeNS(this._parent, !namespace.empty, namespace.front, localName);
    return result;
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
    auto result = Element_toggleAttribute(this._parent, qualifiedName, force);
    return result;
  }
  auto hasAttribute(string qualifiedName) {
    auto result = Element_hasAttribute(this._parent, qualifiedName);
    return result;
  }
  auto hasAttributeNS(Optional!(string) namespace, string localName) {
    auto result = Element_hasAttributeNS(this._parent, !namespace.empty, namespace.front, localName);
    return result;
  }
  auto getAttributeNode(string qualifiedName) {
    auto result = Element_getAttributeNode(this._parent, qualifiedName);
    return result;
  }
  auto getAttributeNodeNS(Optional!(string) namespace, string localName) {
    auto result = Element_getAttributeNodeNS(this._parent, !namespace.empty, namespace.front, localName);
    return result;
  }
  auto setAttributeNode(Attr attr) {
    auto result = Element_setAttributeNode(this._parent, attr.handle);
    return result;
  }
  auto setAttributeNodeNS(Attr attr) {
    auto result = Element_setAttributeNodeNS(this._parent, attr.handle);
    return result;
  }
  auto removeAttributeNode(Attr attr) {
    auto result = Attr(JsHandle(Element_removeAttributeNode(this._parent, attr.handle)));
    return result;
  }
  auto attachShadow(ShadowRootInit init) {
    auto result = ShadowRoot(JsHandle(Element_attachShadow(this._parent, init.handle)));
    return result;
  }
  auto shadowRoot() {
    auto result = Element_shadowRoot_Get(this._parent);
    return result;
  }
  auto closest(string selectors) {
    auto result = Element_closest(this._parent, selectors);
    return result;
  }
  auto matches(string selectors) {
    auto result = Element_matches(this._parent, selectors);
    return result;
  }
  auto webkitMatchesSelector(string selectors) {
    auto result = Element_webkitMatchesSelector(this._parent, selectors);
    return result;
  }
  auto getElementsByTagName(string qualifiedName) {
    auto result = HTMLCollection(JsHandle(Element_getElementsByTagName(this._parent, qualifiedName)));
    return result;
  }
  auto getElementsByTagNameNS(Optional!(string) namespace, string localName) {
    auto result = HTMLCollection(JsHandle(Element_getElementsByTagNameNS(this._parent, !namespace.empty, namespace.front, localName)));
    return result;
  }
  auto getElementsByClassName(string classNames) {
    auto result = HTMLCollection(JsHandle(Element_getElementsByClassName(this._parent, classNames)));
    return result;
  }
  auto insertAdjacentElement(string where, Element element) {
    auto result = Element_insertAdjacentElement(this._parent, where, element.handle);
    return result;
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
    auto result = Element_hasPointerCapture(this._parent, pointerId);
    return result;
  }
  auto requestFullscreen(FullscreenOptions options) {
    auto result = Promise!(void)(JsHandle(Element_requestFullscreen(this._parent, options.handle)));
    return result;
  }
  auto onfullscreenchange(EventHandler onfullscreenchange) {
    Element_onfullscreenchange_Set(this._parent, onfullscreenchange);
  }
  auto onfullscreenchange() {
    auto result = Element_onfullscreenchange_Get(this._parent);
    return result;
  }
  auto onfullscreenerror(EventHandler onfullscreenerror) {
    Element_onfullscreenerror_Set(this._parent, onfullscreenerror);
  }
  auto onfullscreenerror() {
    auto result = Element_onfullscreenerror_Get(this._parent);
    return result;
  }
  auto children() {
    auto result = HTMLCollection(JsHandle(ParentNode_children_Get(this.handle)));
    return result;
  }
  auto firstElementChild() {
    auto result = ParentNode_firstElementChild_Get(this.handle);
    return result;
  }
  auto lastElementChild() {
    auto result = ParentNode_lastElementChild_Get(this.handle);
    return result;
  }
  auto childElementCount() {
    auto result = ParentNode_childElementCount_Get(this.handle);
    return result;
  }
  auto prepend(SumType!(Node, string) nodes) {
    ParentNode_prepend(this.handle, nodes);
  }
  auto append(SumType!(Node, string) nodes) {
    ParentNode_append(this.handle, nodes);
  }
  auto querySelector(string selectors) {
    auto result = ParentNode_querySelector(this.handle, selectors);
    return result;
  }
  auto querySelectorAll(string selectors) {
    auto result = NodeList(JsHandle(ParentNode_querySelectorAll(this.handle, selectors)));
    return result;
  }
  auto previousElementSibling() {
    auto result = NonDocumentTypeChildNode_previousElementSibling_Get(this.handle);
    return result;
  }
  auto nextElementSibling() {
    auto result = NonDocumentTypeChildNode_nextElementSibling_Get(this.handle);
    return result;
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
    auto result = Slotable_assignedSlot_Get(this.handle);
    return result;
  }
}
struct ElementCreationOptions {
  JsHandle handle;
  alias handle this;
  auto is_(string is_) {
    ElementCreationOptions_is_Set(this.handle, is_);
  }
  auto is_() {
    auto result = ElementCreationOptions_is_Get(this.handle);
    return result;
  }
}
struct Event {
  JsHandle handle;
  alias handle this;
  auto type() {
    auto result = Event_type_Get(this.handle);
    return result;
  }
  auto target() {
    auto result = Event_target_Get(this.handle);
    return result;
  }
  auto srcElement() {
    auto result = Event_srcElement_Get(this.handle);
    return result;
  }
  auto currentTarget() {
    auto result = Event_currentTarget_Get(this.handle);
    return result;
  }
  auto composedPath() {
    auto result = Sequence!(EventTarget)(JsHandle(Event_composedPath(this.handle)));
    return result;
  }
  enum ushort NONE = 0;
  enum ushort CAPTURING_PHASE = 1;
  enum ushort AT_TARGET = 2;
  enum ushort BUBBLING_PHASE = 3;
  auto eventPhase() {
    auto result = Event_eventPhase_Get(this.handle);
    return result;
  }
  auto stopPropagation() {
    Event_stopPropagation(this.handle);
  }
  auto cancelBubble(bool cancelBubble) {
    Event_cancelBubble_Set(this.handle, cancelBubble);
  }
  auto cancelBubble() {
    auto result = Event_cancelBubble_Get(this.handle);
    return result;
  }
  auto stopImmediatePropagation() {
    Event_stopImmediatePropagation(this.handle);
  }
  auto bubbles() {
    auto result = Event_bubbles_Get(this.handle);
    return result;
  }
  auto cancelable() {
    auto result = Event_cancelable_Get(this.handle);
    return result;
  }
  auto returnValue(bool returnValue) {
    Event_returnValue_Set(this.handle, returnValue);
  }
  auto returnValue() {
    auto result = Event_returnValue_Get(this.handle);
    return result;
  }
  auto preventDefault() {
    Event_preventDefault(this.handle);
  }
  auto defaultPrevented() {
    auto result = Event_defaultPrevented_Get(this.handle);
    return result;
  }
  auto composed() {
    auto result = Event_composed_Get(this.handle);
    return result;
  }
  auto isTrusted() {
    auto result = Event_isTrusted_Get(this.handle);
    return result;
  }
  auto timeStamp() {
    auto result = Event_timeStamp_Get(this.handle);
    return result;
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
    auto result = EventInit_bubbles_Get(this.handle);
    return result;
  }
  auto cancelable(bool cancelable) {
    EventInit_cancelable_Set(this.handle, cancelable);
  }
  auto cancelable() {
    auto result = EventInit_cancelable_Get(this.handle);
    return result;
  }
  auto composed(bool composed) {
    EventInit_composed_Set(this.handle, composed);
  }
  auto composed() {
    auto result = EventInit_composed_Get(this.handle);
    return result;
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
    auto result = EventListenerOptions_capture_Get(this.handle);
    return result;
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
    auto result = EventTarget_dispatchEvent(this.handle, event.handle);
    return result;
  }
}
struct GetRootNodeOptions {
  JsHandle handle;
  alias handle this;
  auto composed(bool composed) {
    GetRootNodeOptions_composed_Set(this.handle, composed);
  }
  auto composed() {
    auto result = GetRootNodeOptions_composed_Get(this.handle);
    return result;
  }
}
struct HTMLCollection {
  JsHandle handle;
  alias handle this;
  auto length() {
    auto result = HTMLCollection_length_Get(this.handle);
    return result;
  }
  auto item(uint index) {
    auto result = HTMLCollection_item_getter(this.handle, index);
    return result;
  }
  auto namedItem(string name) {
    auto result = HTMLCollection_namedItem_getter(this.handle, name);
    return result;
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
    auto result = Sequence!(MutationRecord)(JsHandle(MutationObserver_takeRecords(this.handle)));
    return result;
  }
}
struct MutationObserverInit {
  JsHandle handle;
  alias handle this;
  auto childList(bool childList) {
    MutationObserverInit_childList_Set(this.handle, childList);
  }
  auto childList() {
    auto result = MutationObserverInit_childList_Get(this.handle);
    return result;
  }
  auto attributes(bool attributes) {
    MutationObserverInit_attributes_Set(this.handle, attributes);
  }
  auto attributes() {
    auto result = MutationObserverInit_attributes_Get(this.handle);
    return result;
  }
  auto characterData(bool characterData) {
    MutationObserverInit_characterData_Set(this.handle, characterData);
  }
  auto characterData() {
    auto result = MutationObserverInit_characterData_Get(this.handle);
    return result;
  }
  auto subtree(bool subtree) {
    MutationObserverInit_subtree_Set(this.handle, subtree);
  }
  auto subtree() {
    auto result = MutationObserverInit_subtree_Get(this.handle);
    return result;
  }
  auto attributeOldValue(bool attributeOldValue) {
    MutationObserverInit_attributeOldValue_Set(this.handle, attributeOldValue);
  }
  auto attributeOldValue() {
    auto result = MutationObserverInit_attributeOldValue_Get(this.handle);
    return result;
  }
  auto characterDataOldValue(bool characterDataOldValue) {
    MutationObserverInit_characterDataOldValue_Set(this.handle, characterDataOldValue);
  }
  auto characterDataOldValue() {
    auto result = MutationObserverInit_characterDataOldValue_Get(this.handle);
    return result;
  }
  auto attributeFilter(Sequence!(string) attributeFilter) {
    MutationObserverInit_attributeFilter_Set(this.handle, attributeFilter.handle);
  }
  auto attributeFilter() {
    auto result = Sequence!(string)(JsHandle(MutationObserverInit_attributeFilter_Get(this.handle)));
    return result;
  }
}
struct MutationRecord {
  JsHandle handle;
  alias handle this;
  auto type() {
    auto result = MutationRecord_type_Get(this.handle);
    return result;
  }
  auto target() {
    auto result = Node(JsHandle(MutationRecord_target_Get(this.handle)));
    return result;
  }
  auto addedNodes() {
    auto result = NodeList(JsHandle(MutationRecord_addedNodes_Get(this.handle)));
    return result;
  }
  auto removedNodes() {
    auto result = NodeList(JsHandle(MutationRecord_removedNodes_Get(this.handle)));
    return result;
  }
  auto previousSibling() {
    auto result = MutationRecord_previousSibling_Get(this.handle);
    return result;
  }
  auto nextSibling() {
    auto result = MutationRecord_nextSibling_Get(this.handle);
    return result;
  }
  auto attributeName() {
    auto result = MutationRecord_attributeName_Get(this.handle);
    return result;
  }
  auto attributeNamespace() {
    auto result = MutationRecord_attributeNamespace_Get(this.handle);
    return result;
  }
  auto oldValue() {
    auto result = MutationRecord_oldValue_Get(this.handle);
    return result;
  }
}
struct NamedNodeMap {
  JsHandle handle;
  alias handle this;
  auto length() {
    auto result = NamedNodeMap_length_Get(this.handle);
    return result;
  }
  auto item(uint index) {
    auto result = NamedNodeMap_item_getter(this.handle, index);
    return result;
  }
  auto getNamedItem(string qualifiedName) {
    auto result = NamedNodeMap_getNamedItem_getter(this.handle, qualifiedName);
    return result;
  }
  auto getNamedItemNS(Optional!(string) namespace, string localName) {
    auto result = NamedNodeMap_getNamedItemNS(this.handle, !namespace.empty, namespace.front, localName);
    return result;
  }
  auto setNamedItem(Attr attr) {
    auto result = NamedNodeMap_setNamedItem(this.handle, attr.handle);
    return result;
  }
  auto setNamedItemNS(Attr attr) {
    auto result = NamedNodeMap_setNamedItemNS(this.handle, attr.handle);
    return result;
  }
  auto removeNamedItem(string qualifiedName) {
    auto result = Attr(JsHandle(NamedNodeMap_removeNamedItem(this.handle, qualifiedName)));
    return result;
  }
  auto removeNamedItemNS(Optional!(string) namespace, string localName) {
    auto result = Attr(JsHandle(NamedNodeMap_removeNamedItemNS(this.handle, !namespace.empty, namespace.front, localName)));
    return result;
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
    auto result = Node_nodeType_Get(this._parent);
    return result;
  }
  auto nodeName() {
    auto result = Node_nodeName_Get(this._parent);
    return result;
  }
  auto baseURI() {
    auto result = Node_baseURI_Get(this._parent);
    return result;
  }
  auto isConnected() {
    auto result = Node_isConnected_Get(this._parent);
    return result;
  }
  auto ownerDocument() {
    auto result = Node_ownerDocument_Get(this._parent);
    return result;
  }
  auto getRootNode(GetRootNodeOptions options) {
    auto result = Node(JsHandle(Node_getRootNode(this._parent, options.handle)));
    return result;
  }
  auto parentNode() {
    auto result = Node_parentNode_Get(this._parent);
    return result;
  }
  auto parentElement() {
    auto result = Node_parentElement_Get(this._parent);
    return result;
  }
  auto hasChildNodes() {
    auto result = Node_hasChildNodes(this._parent);
    return result;
  }
  auto childNodes() {
    auto result = NodeList(JsHandle(Node_childNodes_Get(this._parent)));
    return result;
  }
  auto firstChild() {
    auto result = Node_firstChild_Get(this._parent);
    return result;
  }
  auto lastChild() {
    auto result = Node_lastChild_Get(this._parent);
    return result;
  }
  auto previousSibling() {
    auto result = Node_previousSibling_Get(this._parent);
    return result;
  }
  auto nextSibling() {
    auto result = Node_nextSibling_Get(this._parent);
    return result;
  }
  auto nodeValue(Optional!(string) nodeValue) {
    Node_nodeValue_Set(this._parent, !nodeValue.empty, nodeValue.front);
  }
  auto nodeValue() {
    auto result = Node_nodeValue_Get(this._parent);
    return result;
  }
  auto textContent(Optional!(string) textContent) {
    Node_textContent_Set(this._parent, !textContent.empty, textContent.front);
  }
  auto textContent() {
    auto result = Node_textContent_Get(this._parent);
    return result;
  }
  auto normalize() {
    Node_normalize(this._parent);
  }
  auto cloneNode(bool deep /* = false */) {
    auto result = Node(JsHandle(Node_cloneNode(this._parent, deep)));
    return result;
  }
  auto isEqualNode(Optional!(Node) otherNode) {
    auto result = Node_isEqualNode(this._parent, !otherNode.empty, otherNode.front.handle);
    return result;
  }
  auto isSameNode(Optional!(Node) otherNode) {
    auto result = Node_isSameNode(this._parent, !otherNode.empty, otherNode.front.handle);
    return result;
  }
  enum ushort DOCUMENT_POSITION_DISCONNECTED = 0x01;
  enum ushort DOCUMENT_POSITION_PRECEDING = 0x02;
  enum ushort DOCUMENT_POSITION_FOLLOWING = 0x04;
  enum ushort DOCUMENT_POSITION_CONTAINS = 0x08;
  enum ushort DOCUMENT_POSITION_CONTAINED_BY = 0x10;
  enum ushort DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC = 0x20;
  auto compareDocumentPosition(Node other) {
    auto result = Node_compareDocumentPosition(this._parent, other.handle);
    return result;
  }
  auto contains(Optional!(Node) other) {
    auto result = Node_contains(this._parent, !other.empty, other.front.handle);
    return result;
  }
  auto lookupPrefix(Optional!(string) namespace) {
    auto result = Node_lookupPrefix(this._parent, !namespace.empty, namespace.front);
    return result;
  }
  auto lookupNamespaceURI(Optional!(string) prefix) {
    auto result = Node_lookupNamespaceURI(this._parent, !prefix.empty, prefix.front);
    return result;
  }
  auto isDefaultNamespace(Optional!(string) namespace) {
    auto result = Node_isDefaultNamespace(this._parent, !namespace.empty, namespace.front);
    return result;
  }
  auto insertBefore(Node node, Optional!(Node) child) {
    auto result = Node(JsHandle(Node_insertBefore(this._parent, node.handle, !child.empty, child.front.handle)));
    return result;
  }
  auto appendChild(Node node) {
    auto result = Node(JsHandle(Node_appendChild(this._parent, node.handle)));
    return result;
  }
  auto replaceChild(Node node, Node child) {
    auto result = Node(JsHandle(Node_replaceChild(this._parent, node.handle, child.handle)));
    return result;
  }
  auto removeChild(Node child) {
    auto result = Node(JsHandle(Node_removeChild(this._parent, child.handle)));
    return result;
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
    auto result = NodeFilter_acceptNode(this.handle, node.handle);
    return result;
  }
}
struct NodeIterator {
  JsHandle handle;
  alias handle this;
  auto root() {
    auto result = Node(JsHandle(NodeIterator_root_Get(this.handle)));
    return result;
  }
  auto referenceNode() {
    auto result = Node(JsHandle(NodeIterator_referenceNode_Get(this.handle)));
    return result;
  }
  auto pointerBeforeReferenceNode() {
    auto result = NodeIterator_pointerBeforeReferenceNode_Get(this.handle);
    return result;
  }
  auto whatToShow() {
    auto result = NodeIterator_whatToShow_Get(this.handle);
    return result;
  }
  auto filter() {
    auto result = NodeIterator_filter_Get(this.handle);
    return result;
  }
  auto nextNode() {
    auto result = NodeIterator_nextNode(this.handle);
    return result;
  }
  auto previousNode() {
    auto result = NodeIterator_previousNode(this.handle);
    return result;
  }
  auto detach() {
    NodeIterator_detach(this.handle);
  }
}
struct NodeList {
  JsHandle handle;
  alias handle this;
  auto item(uint index) {
    auto result = NodeList_item_getter(this.handle, index);
    return result;
  }
  auto length() {
    auto result = NodeList_length_Get(this.handle);
    return result;
  }
}
struct ProcessingInstruction {
  CharacterData _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = CharacterData(h);
  }
  auto target() {
    auto result = ProcessingInstruction_target_Get(this._parent);
    return result;
  }
}
struct Range {
  AbstractRange _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AbstractRange(h);
  }
  auto commonAncestorContainer() {
    auto result = Node(JsHandle(Range_commonAncestorContainer_Get(this._parent)));
    return result;
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
    auto result = Range_compareBoundaryPoints(this._parent, how, sourceRange.handle);
    return result;
  }
  auto deleteContents() {
    Range_deleteContents(this._parent);
  }
  auto extractContents() {
    auto result = DocumentFragment(JsHandle(Range_extractContents(this._parent)));
    return result;
  }
  auto cloneContents() {
    auto result = DocumentFragment(JsHandle(Range_cloneContents(this._parent)));
    return result;
  }
  auto insertNode(Node node) {
    Range_insertNode(this._parent, node.handle);
  }
  auto surroundContents(Node newParent) {
    Range_surroundContents(this._parent, newParent.handle);
  }
  auto cloneRange() {
    auto result = Range(JsHandle(Range_cloneRange(this._parent)));
    return result;
  }
  auto detach() {
    Range_detach(this._parent);
  }
  auto isPointInRange(Node node, uint offset) {
    auto result = Range_isPointInRange(this._parent, node.handle, offset);
    return result;
  }
  auto comparePoint(Node node, uint offset) {
    auto result = Range_comparePoint(this._parent, node.handle, offset);
    return result;
  }
  auto intersectsNode(Node node) {
    auto result = Range_intersectsNode(this._parent, node.handle);
    return result;
  }
}
struct ShadowRoot {
  DocumentFragment _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = DocumentFragment(h);
  }
  auto mode() {
    auto result = ShadowRoot_mode_Get(this._parent);
    return result;
  }
  auto host() {
    auto result = Element(JsHandle(ShadowRoot_host_Get(this._parent)));
    return result;
  }
  auto fullscreenElement() {
    auto result = DocumentOrShadowRoot_fullscreenElement_Get(this.handle);
    return result;
  }
}
struct ShadowRootInit {
  JsHandle handle;
  alias handle this;
  auto mode(ShadowRootMode mode) {
    ShadowRootInit_mode_Set(this.handle, mode);
  }
  auto mode() {
    auto result = ShadowRootInit_mode_Get(this.handle);
    return result;
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
    auto result = Text(JsHandle(Text_splitText(this._parent, offset)));
    return result;
  }
  auto wholeText() {
    auto result = Text_wholeText_Get(this._parent);
    return result;
  }
  auto assignedSlot() {
    auto result = Slotable_assignedSlot_Get(this.handle);
    return result;
  }
}
struct TreeWalker {
  JsHandle handle;
  alias handle this;
  auto root() {
    auto result = Node(JsHandle(TreeWalker_root_Get(this.handle)));
    return result;
  }
  auto whatToShow() {
    auto result = TreeWalker_whatToShow_Get(this.handle);
    return result;
  }
  auto filter() {
    auto result = TreeWalker_filter_Get(this.handle);
    return result;
  }
  auto currentNode(Node currentNode) {
    TreeWalker_currentNode_Set(this.handle, currentNode.handle);
  }
  auto currentNode() {
    auto result = Node(JsHandle(TreeWalker_currentNode_Get(this.handle)));
    return result;
  }
  auto parentNode() {
    auto result = TreeWalker_parentNode(this.handle);
    return result;
  }
  auto firstChild() {
    auto result = TreeWalker_firstChild(this.handle);
    return result;
  }
  auto lastChild() {
    auto result = TreeWalker_lastChild(this.handle);
    return result;
  }
  auto previousSibling() {
    auto result = TreeWalker_previousSibling(this.handle);
    return result;
  }
  auto nextSibling() {
    auto result = TreeWalker_nextSibling(this.handle);
    return result;
  }
  auto previousNode() {
    auto result = TreeWalker_previousNode(this.handle);
    return result;
  }
  auto nextNode() {
    auto result = TreeWalker_nextNode(this.handle);
    return result;
  }
}
struct XMLDocument {
  Document _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Document(h);
  }
}


extern (C) Handle AbortController_signal_Get(Handle);
extern (C) void AbortController_abort(Handle);
extern (C) bool AbortSignal_aborted_Get(Handle);
extern (C) void AbortSignal_onabort_Set(Handle, EventHandler);
extern (C) EventHandler AbortSignal_onabort_Get(Handle);
extern (C) Handle AbstractRange_startContainer_Get(Handle);
extern (C) uint AbstractRange_startOffset_Get(Handle);
extern (C) Handle AbstractRange_endContainer_Get(Handle);
extern (C) uint AbstractRange_endOffset_Get(Handle);
extern (C) bool AbstractRange_collapsed_Get(Handle);
extern (C) void AddEventListenerOptions_passive_Set(Handle, bool);
extern (C) bool AddEventListenerOptions_passive_Get(Handle);
extern (C) void AddEventListenerOptions_once_Set(Handle, bool);
extern (C) bool AddEventListenerOptions_once_Get(Handle);
extern (C) Optional!(string) Attr_namespaceURI_Get(Handle);
extern (C) Optional!(string) Attr_prefix_Get(Handle);
extern (C) string Attr_localName_Get(Handle);
extern (C) string Attr_name_Get(Handle);
extern (C) void Attr_value_Set(Handle, string);
extern (C) string Attr_value_Get(Handle);
extern (C) Optional!(Element) Attr_ownerElement_Get(Handle);
extern (C) bool Attr_specified_Get(Handle);
extern (C) void CharacterData_data_Set(Handle, string);
extern (C) string CharacterData_data_Get(Handle);
extern (C) uint CharacterData_length_Get(Handle);
extern (C) string CharacterData_substringData(Handle, uint, uint);
extern (C) void CharacterData_appendData(Handle, string);
extern (C) void CharacterData_insertData(Handle, uint, string);
extern (C) void CharacterData_deleteData(Handle, uint, uint);
extern (C) void CharacterData_replaceData(Handle, uint, uint, string);
extern (C) void ChildNode_before(Handle, SumType!(Node, string));
extern (C) void ChildNode_after(Handle, SumType!(Node, string));
extern (C) void ChildNode_replaceWith(Handle, SumType!(Node, string));
extern (C) void ChildNode_remove(Handle);
extern (C) Handle CustomEvent_detail_Get(Handle);
extern (C) void CustomEvent_initCustomEvent(Handle, string, bool, bool, Handle);
extern (C) void CustomEventInit_detail_Set(Handle, Handle);
extern (C) Handle CustomEventInit_detail_Get(Handle);
extern (C) Handle DOMImplementation_createDocumentType(Handle, string, string, string);
extern (C) Handle DOMImplementation_createDocument(Handle, bool, string, string, bool, Handle);
extern (C) Handle DOMImplementation_createHTMLDocument(Handle, string);
extern (C) bool DOMImplementation_hasFeature(Handle);
extern (C) uint DOMTokenList_length_Get(Handle);
extern (C) Optional!(string) DOMTokenList_item_getter(Handle, uint);
extern (C) bool DOMTokenList_contains(Handle, string);
extern (C) void DOMTokenList_add(Handle, string);
extern (C) void DOMTokenList_remove(Handle, string);
extern (C) bool DOMTokenList_toggle(Handle, string, bool);
extern (C) bool DOMTokenList_replace(Handle, string, string);
extern (C) bool DOMTokenList_supports(Handle, string);
extern (C) void DOMTokenList_value_Set(Handle, string);
extern (C) string DOMTokenList_value_Get(Handle);
extern (C) Handle Document_implementation_Get(Handle);
extern (C) string Document_URL_Get(Handle);
extern (C) string Document_documentURI_Get(Handle);
extern (C) string Document_origin_Get(Handle);
extern (C) string Document_compatMode_Get(Handle);
extern (C) string Document_characterSet_Get(Handle);
extern (C) string Document_charset_Get(Handle);
extern (C) string Document_inputEncoding_Get(Handle);
extern (C) string Document_contentType_Get(Handle);
extern (C) Optional!(DocumentType) Document_doctype_Get(Handle);
extern (C) Optional!(Element) Document_documentElement_Get(Handle);
extern (C) Handle Document_getElementsByTagName(Handle, string);
extern (C) Handle Document_getElementsByTagNameNS(Handle, bool, string, string);
extern (C) Handle Document_getElementsByClassName(Handle, string);
extern (C) Handle Document_createElement(Handle, string, SumType!(string, ElementCreationOptions));
extern (C) Handle Document_createElementNS(Handle, bool, string, string, SumType!(string, ElementCreationOptions));
extern (C) Handle Document_createDocumentFragment(Handle);
extern (C) Handle Document_createTextNode(Handle, string);
extern (C) Handle Document_createCDATASection(Handle, string);
extern (C) Handle Document_createComment(Handle, string);
extern (C) Handle Document_createProcessingInstruction(Handle, string, string);
extern (C) Handle Document_importNode(Handle, Handle, bool);
extern (C) Handle Document_adoptNode(Handle, Handle);
extern (C) Handle Document_createAttribute(Handle, string);
extern (C) Handle Document_createAttributeNS(Handle, bool, string, string);
extern (C) Handle Document_createEvent(Handle, string);
extern (C) Handle Document_createRange(Handle);
extern (C) Handle Document_createNodeIterator(Handle, Handle, uint, bool, Handle);
extern (C) Handle Document_createTreeWalker(Handle, Handle, uint, bool, Handle);
extern (C) Optional!(Location) Document_location_Get(Handle);
extern (C) void Document_domain_Set(Handle, string);
extern (C) string Document_domain_Get(Handle);
extern (C) string Document_referrer_Get(Handle);
extern (C) void Document_cookie_Set(Handle, string);
extern (C) string Document_cookie_Get(Handle);
extern (C) string Document_lastModified_Get(Handle);
extern (C) DocumentReadyState Document_readyState_Get(Handle);
extern (C) void Document_title_Set(Handle, string);
extern (C) string Document_title_Get(Handle);
extern (C) void Document_dir_Set(Handle, string);
extern (C) string Document_dir_Get(Handle);
extern (C) void Document_body_Set(Handle, bool, Handle);
extern (C) Optional!(HTMLElement) Document_body_Get(Handle);
extern (C) Optional!(HTMLHeadElement) Document_head_Get(Handle);
extern (C) Handle Document_images_Get(Handle);
extern (C) Handle Document_embeds_Get(Handle);
extern (C) Handle Document_plugins_Get(Handle);
extern (C) Handle Document_links_Get(Handle);
extern (C) Handle Document_forms_Get(Handle);
extern (C) Handle Document_scripts_Get(Handle);
extern (C) Handle Document_getElementsByName(Handle, string);
extern (C) Optional!(HTMLOrSVGScriptElement) Document_currentScript_Get(Handle);
extern (C) Handle Document_open__string_string(Handle, string, string);
extern (C) Optional!(Window) Document_open__string_string_string(Handle, string, string, string);
extern (C) void Document_close(Handle);
extern (C) void Document_write(Handle, string);
extern (C) void Document_writeln(Handle, string);
extern (C) Optional!(Window) Document_defaultView_Get(Handle);
extern (C) Optional!(Element) Document_activeElement_Get(Handle);
extern (C) bool Document_hasFocus(Handle);
extern (C) void Document_designMode_Set(Handle, string);
extern (C) string Document_designMode_Get(Handle);
extern (C) bool Document_execCommand(Handle, string, bool, string);
extern (C) bool Document_queryCommandEnabled(Handle, string);
extern (C) bool Document_queryCommandIndeterm(Handle, string);
extern (C) bool Document_queryCommandState(Handle, string);
extern (C) bool Document_queryCommandSupported(Handle, string);
extern (C) string Document_queryCommandValue(Handle, string);
extern (C) void Document_onreadystatechange_Set(Handle, EventHandler);
extern (C) EventHandler Document_onreadystatechange_Get(Handle);
extern (C) void Document_fgColor_Set(Handle, string);
extern (C) string Document_fgColor_Get(Handle);
extern (C) void Document_linkColor_Set(Handle, string);
extern (C) string Document_linkColor_Get(Handle);
extern (C) void Document_vlinkColor_Set(Handle, string);
extern (C) string Document_vlinkColor_Get(Handle);
extern (C) void Document_alinkColor_Set(Handle, string);
extern (C) string Document_alinkColor_Get(Handle);
extern (C) void Document_bgColor_Set(Handle, string);
extern (C) string Document_bgColor_Get(Handle);
extern (C) Handle Document_anchors_Get(Handle);
extern (C) Handle Document_applets_Get(Handle);
extern (C) void Document_clear(Handle);
extern (C) void Document_captureEvents(Handle);
extern (C) void Document_releaseEvents(Handle);
extern (C) Handle Document_all_Get(Handle);
extern (C) bool Document_hidden_Get(Handle);
extern (C) VisibilityState Document_visibilityState_Get(Handle);
extern (C) void Document_onvisibilitychange_Set(Handle, EventHandler);
extern (C) EventHandler Document_onvisibilitychange_Get(Handle);
extern (C) bool Document_fullscreenEnabled_Get(Handle);
extern (C) bool Document_fullscreen_Get(Handle);
extern (C) Handle Document_exitFullscreen(Handle);
extern (C) void Document_onfullscreenchange_Set(Handle, EventHandler);
extern (C) EventHandler Document_onfullscreenchange_Get(Handle);
extern (C) void Document_onfullscreenerror_Set(Handle, EventHandler);
extern (C) EventHandler Document_onfullscreenerror_Get(Handle);
extern (C) Optional!(SVGSVGElement) Document_rootElement_Get(Handle);
extern (C) Optional!(Element) DocumentOrShadowRoot_fullscreenElement_Get(Handle);
extern (C) string DocumentType_name_Get(Handle);
extern (C) string DocumentType_publicId_Get(Handle);
extern (C) string DocumentType_systemId_Get(Handle);
extern (C) Optional!(string) Element_namespaceURI_Get(Handle);
extern (C) Optional!(string) Element_prefix_Get(Handle);
extern (C) string Element_localName_Get(Handle);
extern (C) string Element_tagName_Get(Handle);
extern (C) void Element_id_Set(Handle, string);
extern (C) string Element_id_Get(Handle);
extern (C) void Element_className_Set(Handle, string);
extern (C) string Element_className_Get(Handle);
extern (C) Handle Element_classList_Get(Handle);
extern (C) void Element_slot_Set(Handle, string);
extern (C) string Element_slot_Get(Handle);
extern (C) bool Element_hasAttributes(Handle);
extern (C) Handle Element_attributes_Get(Handle);
extern (C) Handle Element_getAttributeNames(Handle);
extern (C) Optional!(string) Element_getAttribute(Handle, string);
extern (C) Optional!(string) Element_getAttributeNS(Handle, bool, string, string);
extern (C) void Element_setAttribute(Handle, string, string);
extern (C) void Element_setAttributeNS(Handle, bool, string, string, string);
extern (C) void Element_removeAttribute(Handle, string);
extern (C) void Element_removeAttributeNS(Handle, bool, string, string);
extern (C) bool Element_toggleAttribute(Handle, string, bool);
extern (C) bool Element_hasAttribute(Handle, string);
extern (C) bool Element_hasAttributeNS(Handle, bool, string, string);
extern (C) Optional!(Attr) Element_getAttributeNode(Handle, string);
extern (C) Optional!(Attr) Element_getAttributeNodeNS(Handle, bool, string, string);
extern (C) Optional!(Attr) Element_setAttributeNode(Handle, Handle);
extern (C) Optional!(Attr) Element_setAttributeNodeNS(Handle, Handle);
extern (C) Handle Element_removeAttributeNode(Handle, Handle);
extern (C) Handle Element_attachShadow(Handle, Handle);
extern (C) Optional!(ShadowRoot) Element_shadowRoot_Get(Handle);
extern (C) Optional!(Element) Element_closest(Handle, string);
extern (C) bool Element_matches(Handle, string);
extern (C) bool Element_webkitMatchesSelector(Handle, string);
extern (C) Handle Element_getElementsByTagName(Handle, string);
extern (C) Handle Element_getElementsByTagNameNS(Handle, bool, string, string);
extern (C) Handle Element_getElementsByClassName(Handle, string);
extern (C) Optional!(Element) Element_insertAdjacentElement(Handle, string, Handle);
extern (C) void Element_insertAdjacentText(Handle, string, string);
extern (C) void Element_setPointerCapture(Handle, int);
extern (C) void Element_releasePointerCapture(Handle, int);
extern (C) bool Element_hasPointerCapture(Handle, int);
extern (C) Handle Element_requestFullscreen(Handle, Handle);
extern (C) void Element_onfullscreenchange_Set(Handle, EventHandler);
extern (C) EventHandler Element_onfullscreenchange_Get(Handle);
extern (C) void Element_onfullscreenerror_Set(Handle, EventHandler);
extern (C) EventHandler Element_onfullscreenerror_Get(Handle);
extern (C) void ElementCreationOptions_is_Set(Handle, string);
extern (C) string ElementCreationOptions_is_Get(Handle);
extern (C) string Event_type_Get(Handle);
extern (C) Optional!(EventTarget) Event_target_Get(Handle);
extern (C) Optional!(EventTarget) Event_srcElement_Get(Handle);
extern (C) Optional!(EventTarget) Event_currentTarget_Get(Handle);
extern (C) Handle Event_composedPath(Handle);
extern (C) ushort Event_eventPhase_Get(Handle);
extern (C) void Event_stopPropagation(Handle);
extern (C) void Event_cancelBubble_Set(Handle, bool);
extern (C) bool Event_cancelBubble_Get(Handle);
extern (C) void Event_stopImmediatePropagation(Handle);
extern (C) bool Event_bubbles_Get(Handle);
extern (C) bool Event_cancelable_Get(Handle);
extern (C) void Event_returnValue_Set(Handle, bool);
extern (C) bool Event_returnValue_Get(Handle);
extern (C) void Event_preventDefault(Handle);
extern (C) bool Event_defaultPrevented_Get(Handle);
extern (C) bool Event_composed_Get(Handle);
extern (C) bool Event_isTrusted_Get(Handle);
extern (C) double Event_timeStamp_Get(Handle);
extern (C) void Event_initEvent(Handle, string, bool, bool);
extern (C) void EventInit_bubbles_Set(Handle, bool);
extern (C) bool EventInit_bubbles_Get(Handle);
extern (C) void EventInit_cancelable_Set(Handle, bool);
extern (C) bool EventInit_cancelable_Get(Handle);
extern (C) void EventInit_composed_Set(Handle, bool);
extern (C) bool EventInit_composed_Get(Handle);
extern (C) void EventListener_handleEvent(Handle, Handle);
extern (C) void EventListenerOptions_capture_Set(Handle, bool);
extern (C) bool EventListenerOptions_capture_Get(Handle);
extern (C) void EventTarget_addEventListener(Handle, string, bool, Handle, SumType!(AddEventListenerOptions, bool));
extern (C) void EventTarget_removeEventListener(Handle, string, bool, Handle, SumType!(EventListenerOptions, bool));
extern (C) bool EventTarget_dispatchEvent(Handle, Handle);
extern (C) void GetRootNodeOptions_composed_Set(Handle, bool);
extern (C) bool GetRootNodeOptions_composed_Get(Handle);
extern (C) uint HTMLCollection_length_Get(Handle);
extern (C) Optional!(Element) HTMLCollection_item_getter(Handle, uint);
extern (C) Optional!(Element) HTMLCollection_namedItem_getter(Handle, string);
extern (C) void MutationObserver_observe(Handle, Handle, Handle);
extern (C) void MutationObserver_disconnect(Handle);
extern (C) Handle MutationObserver_takeRecords(Handle);
extern (C) void MutationObserverInit_childList_Set(Handle, bool);
extern (C) bool MutationObserverInit_childList_Get(Handle);
extern (C) void MutationObserverInit_attributes_Set(Handle, bool);
extern (C) bool MutationObserverInit_attributes_Get(Handle);
extern (C) void MutationObserverInit_characterData_Set(Handle, bool);
extern (C) bool MutationObserverInit_characterData_Get(Handle);
extern (C) void MutationObserverInit_subtree_Set(Handle, bool);
extern (C) bool MutationObserverInit_subtree_Get(Handle);
extern (C) void MutationObserverInit_attributeOldValue_Set(Handle, bool);
extern (C) bool MutationObserverInit_attributeOldValue_Get(Handle);
extern (C) void MutationObserverInit_characterDataOldValue_Set(Handle, bool);
extern (C) bool MutationObserverInit_characterDataOldValue_Get(Handle);
extern (C) void MutationObserverInit_attributeFilter_Set(Handle, Handle);
extern (C) Handle MutationObserverInit_attributeFilter_Get(Handle);
extern (C) string MutationRecord_type_Get(Handle);
extern (C) Handle MutationRecord_target_Get(Handle);
extern (C) Handle MutationRecord_addedNodes_Get(Handle);
extern (C) Handle MutationRecord_removedNodes_Get(Handle);
extern (C) Optional!(Node) MutationRecord_previousSibling_Get(Handle);
extern (C) Optional!(Node) MutationRecord_nextSibling_Get(Handle);
extern (C) Optional!(string) MutationRecord_attributeName_Get(Handle);
extern (C) Optional!(string) MutationRecord_attributeNamespace_Get(Handle);
extern (C) Optional!(string) MutationRecord_oldValue_Get(Handle);
extern (C) uint NamedNodeMap_length_Get(Handle);
extern (C) Optional!(Attr) NamedNodeMap_item_getter(Handle, uint);
extern (C) Optional!(Attr) NamedNodeMap_getNamedItem_getter(Handle, string);
extern (C) Optional!(Attr) NamedNodeMap_getNamedItemNS(Handle, bool, string, string);
extern (C) Optional!(Attr) NamedNodeMap_setNamedItem(Handle, Handle);
extern (C) Optional!(Attr) NamedNodeMap_setNamedItemNS(Handle, Handle);
extern (C) Handle NamedNodeMap_removeNamedItem(Handle, string);
extern (C) Handle NamedNodeMap_removeNamedItemNS(Handle, bool, string, string);
extern (C) ushort Node_nodeType_Get(Handle);
extern (C) string Node_nodeName_Get(Handle);
extern (C) string Node_baseURI_Get(Handle);
extern (C) bool Node_isConnected_Get(Handle);
extern (C) Optional!(Document) Node_ownerDocument_Get(Handle);
extern (C) Handle Node_getRootNode(Handle, Handle);
extern (C) Optional!(Node) Node_parentNode_Get(Handle);
extern (C) Optional!(Element) Node_parentElement_Get(Handle);
extern (C) bool Node_hasChildNodes(Handle);
extern (C) Handle Node_childNodes_Get(Handle);
extern (C) Optional!(Node) Node_firstChild_Get(Handle);
extern (C) Optional!(Node) Node_lastChild_Get(Handle);
extern (C) Optional!(Node) Node_previousSibling_Get(Handle);
extern (C) Optional!(Node) Node_nextSibling_Get(Handle);
extern (C) void Node_nodeValue_Set(Handle, bool, string);
extern (C) Optional!(string) Node_nodeValue_Get(Handle);
extern (C) void Node_textContent_Set(Handle, bool, string);
extern (C) Optional!(string) Node_textContent_Get(Handle);
extern (C) void Node_normalize(Handle);
extern (C) Handle Node_cloneNode(Handle, bool);
extern (C) bool Node_isEqualNode(Handle, bool, Handle);
extern (C) bool Node_isSameNode(Handle, bool, Handle);
extern (C) ushort Node_compareDocumentPosition(Handle, Handle);
extern (C) bool Node_contains(Handle, bool, Handle);
extern (C) Optional!(string) Node_lookupPrefix(Handle, bool, string);
extern (C) Optional!(string) Node_lookupNamespaceURI(Handle, bool, string);
extern (C) bool Node_isDefaultNamespace(Handle, bool, string);
extern (C) Handle Node_insertBefore(Handle, Handle, bool, Handle);
extern (C) Handle Node_appendChild(Handle, Handle);
extern (C) Handle Node_replaceChild(Handle, Handle, Handle);
extern (C) Handle Node_removeChild(Handle, Handle);
extern (C) ushort NodeFilter_acceptNode(Handle, Handle);
extern (C) Handle NodeIterator_root_Get(Handle);
extern (C) Handle NodeIterator_referenceNode_Get(Handle);
extern (C) bool NodeIterator_pointerBeforeReferenceNode_Get(Handle);
extern (C) uint NodeIterator_whatToShow_Get(Handle);
extern (C) Optional!(NodeFilter) NodeIterator_filter_Get(Handle);
extern (C) Optional!(Node) NodeIterator_nextNode(Handle);
extern (C) Optional!(Node) NodeIterator_previousNode(Handle);
extern (C) void NodeIterator_detach(Handle);
extern (C) Optional!(Node) NodeList_item_getter(Handle, uint);
extern (C) uint NodeList_length_Get(Handle);
extern (C) Optional!(Element) NonDocumentTypeChildNode_previousElementSibling_Get(Handle);
extern (C) Optional!(Element) NonDocumentTypeChildNode_nextElementSibling_Get(Handle);
extern (C) Optional!(Element) NonElementParentNode_getElementById(Handle, string);
extern (C) Handle ParentNode_children_Get(Handle);
extern (C) Optional!(Element) ParentNode_firstElementChild_Get(Handle);
extern (C) Optional!(Element) ParentNode_lastElementChild_Get(Handle);
extern (C) uint ParentNode_childElementCount_Get(Handle);
extern (C) void ParentNode_prepend(Handle, SumType!(Node, string));
extern (C) void ParentNode_append(Handle, SumType!(Node, string));
extern (C) Optional!(Element) ParentNode_querySelector(Handle, string);
extern (C) Handle ParentNode_querySelectorAll(Handle, string);
extern (C) string ProcessingInstruction_target_Get(Handle);
extern (C) Handle Range_commonAncestorContainer_Get(Handle);
extern (C) void Range_setStart(Handle, Handle, uint);
extern (C) void Range_setEnd(Handle, Handle, uint);
extern (C) void Range_setStartBefore(Handle, Handle);
extern (C) void Range_setStartAfter(Handle, Handle);
extern (C) void Range_setEndBefore(Handle, Handle);
extern (C) void Range_setEndAfter(Handle, Handle);
extern (C) void Range_collapse(Handle, bool);
extern (C) void Range_selectNode(Handle, Handle);
extern (C) void Range_selectNodeContents(Handle, Handle);
extern (C) short Range_compareBoundaryPoints(Handle, ushort, Handle);
extern (C) void Range_deleteContents(Handle);
extern (C) Handle Range_extractContents(Handle);
extern (C) Handle Range_cloneContents(Handle);
extern (C) void Range_insertNode(Handle, Handle);
extern (C) void Range_surroundContents(Handle, Handle);
extern (C) Handle Range_cloneRange(Handle);
extern (C) void Range_detach(Handle);
extern (C) bool Range_isPointInRange(Handle, Handle, uint);
extern (C) short Range_comparePoint(Handle, Handle, uint);
extern (C) bool Range_intersectsNode(Handle, Handle);
extern (C) ShadowRootMode ShadowRoot_mode_Get(Handle);
extern (C) Handle ShadowRoot_host_Get(Handle);
extern (C) void ShadowRootInit_mode_Set(Handle, ShadowRootMode);
extern (C) ShadowRootMode ShadowRootInit_mode_Get(Handle);
extern (C) Optional!(HTMLSlotElement) Slotable_assignedSlot_Get(Handle);
extern (C) Handle Text_splitText(Handle, uint);
extern (C) string Text_wholeText_Get(Handle);
extern (C) Handle TreeWalker_root_Get(Handle);
extern (C) uint TreeWalker_whatToShow_Get(Handle);
extern (C) Optional!(NodeFilter) TreeWalker_filter_Get(Handle);
extern (C) void TreeWalker_currentNode_Set(Handle, Handle);
extern (C) Handle TreeWalker_currentNode_Get(Handle);
extern (C) Optional!(Node) TreeWalker_parentNode(Handle);
extern (C) Optional!(Node) TreeWalker_firstChild(Handle);
extern (C) Optional!(Node) TreeWalker_lastChild(Handle);
extern (C) Optional!(Node) TreeWalker_previousSibling(Handle);
extern (C) Optional!(Node) TreeWalker_nextSibling(Handle);
extern (C) Optional!(Node) TreeWalker_previousNode(Handle);
extern (C) Optional!(Node) TreeWalker_nextNode(Handle);