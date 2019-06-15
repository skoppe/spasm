module spasm.bindings.dom;

import spasm.types;
import spasm.bindings.cssom;
import spasm.bindings.domhighrestimestamp;
import spasm.bindings.fullscreen;
import spasm.bindings.html;
import spasm.bindings.pagevisibility;
import spasm.bindings.svg;

@safe:
nothrow:

struct AbortController {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto signal() {
    return AbortSignal(AbortController_signal_Get(this.handle));
  }
  void abort() {
    AbortController_abort(this.handle);
  }
}
struct AbortSignal {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
  }
  auto aborted() {
    return AbortSignal_aborted_Get(this._parent);
  }
  void onabort(EventHandler onabort) {
    AbortSignal_onabort_Set(this._parent, onabort);
  }
  auto onabort() {
    return AbortSignal_onabort_Get(this._parent);
  }
}
struct AbstractRange {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
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
  nothrow:
  spasm.bindings.dom.EventListenerOptions _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventListenerOptions(h);
  }
  static auto create() {
    return AddEventListenerOptions(spasm_add__object());
  }
  void passive(bool passive) {
    AddEventListenerOptions_passive_Set(this._parent, passive);
  }
  auto passive() {
    return AddEventListenerOptions_passive_Get(this._parent);
  }
  void once(bool once) {
    AddEventListenerOptions_once_Set(this._parent, once);
  }
  auto once() {
    return AddEventListenerOptions_once_Get(this._parent);
  }
}
struct Attr {
  nothrow:
  spasm.bindings.dom.Node _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Node(h);
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
  void value(string value) {
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
  nothrow:
  spasm.bindings.dom.Text _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Text(h);
  }
}
struct CharacterData {
  nothrow:
  spasm.bindings.dom.Node _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Node(h);
  }
  void data(string data) {
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
  void appendData(string data) {
    CharacterData_appendData(this._parent, data);
  }
  void insertData(uint offset, string data) {
    CharacterData_insertData(this._parent, offset, data);
  }
  void deleteData(uint offset, uint count) {
    CharacterData_deleteData(this._parent, offset, count);
  }
  void replaceData(uint offset, uint count, string data) {
    CharacterData_replaceData(this._parent, offset, count, data);
  }
  auto previousElementSibling() {
    return NonDocumentTypeChildNode_previousElementSibling_Get(this._parent);
  }
  auto nextElementSibling() {
    return NonDocumentTypeChildNode_nextElementSibling_Get(this._parent);
  }
  void before(scope ref SumType!(Node, string) nodes) {
    ChildNode_before(this._parent, nodes);
  }
  void after(scope ref SumType!(Node, string) nodes) {
    ChildNode_after(this._parent, nodes);
  }
  void replaceWith(scope ref SumType!(Node, string) nodes) {
    ChildNode_replaceWith(this._parent, nodes);
  }
  void remove() {
    ChildNode_remove(this._parent);
  }
}
struct Comment {
  nothrow:
  spasm.bindings.dom.CharacterData _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .CharacterData(h);
  }
}
struct CustomEvent {
  nothrow:
  spasm.bindings.dom.Event _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Event(h);
  }
  auto detail() {
    return Any(CustomEvent_detail_Get(this._parent));
  }
  void initCustomEvent(T3)(string type, bool bubbles /* = false */, bool cancelable /* = false */, scope auto ref T3 detail /* = null */) {
    Handle _handle_detail = getOrCreateHandle(detail);
    CustomEvent_initCustomEvent(this._parent, type, bubbles, cancelable, _handle_detail);
    dropHandle!(T3)(_handle_detail);
  }
  void initCustomEvent(string type, bool bubbles /* = false */, bool cancelable /* = false */) {
    CustomEvent_initCustomEvent_0(this._parent, type, bubbles, cancelable);
  }
  void initCustomEvent(string type, bool bubbles /* = false */) {
    CustomEvent_initCustomEvent_1(this._parent, type, bubbles);
  }
  void initCustomEvent(string type) {
    CustomEvent_initCustomEvent_2(this._parent, type);
  }
}
struct CustomEventInit {
  nothrow:
  spasm.bindings.dom.EventInit _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventInit(h);
  }
  static auto create() {
    return CustomEventInit(spasm_add__object());
  }
  void detail(T0)(scope auto ref T0 detail) {
    Handle _handle_detail = getOrCreateHandle(detail);
    CustomEventInit_detail_Set(this._parent, _handle_detail);
    dropHandle!(T0)(_handle_detail);
  }
  auto detail() {
    return Any(CustomEventInit_detail_Get(this._parent));
  }
}
struct DOMImplementation {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto createDocumentType(string qualifiedName, string publicId, string systemId) {
    return DocumentType(DOMImplementation_createDocumentType(this.handle, qualifiedName, publicId, systemId));
  }
  auto createDocument(scope ref Optional!(string) namespace, string qualifiedName, scope ref Optional!(DocumentType) doctype /* = no!(DocumentType) */) {
    return XMLDocument(DOMImplementation_createDocument(this.handle, !namespace.empty, namespace.front, qualifiedName, !doctype.empty, doctype.front._parent));
  }
  auto createDocument(scope ref Optional!(string) namespace, string qualifiedName) {
    return XMLDocument(DOMImplementation_createDocument_0(this.handle, !namespace.empty, namespace.front, qualifiedName));
  }
  auto createHTMLDocument(string title) {
    return Document(DOMImplementation_createHTMLDocument(this.handle, title));
  }
  auto createHTMLDocument() {
    return Document(DOMImplementation_createHTMLDocument_0(this.handle));
  }
  auto hasFeature() {
    return DOMImplementation_hasFeature(this.handle);
  }
}
struct DOMTokenList {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto length() {
    return DOMTokenList_length_Get(this.handle);
  }
  auto item(uint index) {
    return DOMTokenList_item_getter(this.handle, index);
  }
  auto contains(string token) {
    return DOMTokenList_contains(this.handle, token);
  }
  void add(string tokens) {
    DOMTokenList_add(this.handle, tokens);
  }
  void remove(string tokens) {
    DOMTokenList_remove(this.handle, tokens);
  }
  auto toggle(string token, bool force) {
    return DOMTokenList_toggle(this.handle, token, force);
  }
  auto toggle(string token) {
    return DOMTokenList_toggle_0(this.handle, token);
  }
  auto replace(string token, string newToken) {
    return DOMTokenList_replace(this.handle, token, newToken);
  }
  auto supports(string token) {
    return DOMTokenList_supports(this.handle, token);
  }
  void value(string value) {
    DOMTokenList_value_Set(this.handle, value);
  }
  auto value() {
    return DOMTokenList_value_Get(this.handle);
  }
}
struct Document {
  nothrow:
  spasm.bindings.dom.Node _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Node(h);
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
  auto getElementsByTagNameNS(scope ref Optional!(string) namespace, string localName) {
    return HTMLCollection(Document_getElementsByTagNameNS(this._parent, !namespace.empty, namespace.front, localName));
  }
  auto getElementsByClassName(string classNames) {
    return HTMLCollection(Document_getElementsByClassName(this._parent, classNames));
  }
  auto createElement(string localName, scope ref SumType!(string, ElementCreationOptions) options) {
    return Element(Document_createElement(this._parent, localName, options));
  }
  auto createElement(string localName) {
    return Element(Document_createElement_0(this._parent, localName));
  }
  auto createElementNS(scope ref Optional!(string) namespace, string qualifiedName, scope ref SumType!(string, ElementCreationOptions) options) {
    return Element(Document_createElementNS(this._parent, !namespace.empty, namespace.front, qualifiedName, options));
  }
  auto createElementNS(scope ref Optional!(string) namespace, string qualifiedName) {
    return Element(Document_createElementNS_0(this._parent, !namespace.empty, namespace.front, qualifiedName));
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
  auto importNode(scope ref Node node, bool deep /* = false */) {
    return Node(Document_importNode(this._parent, node._parent, deep));
  }
  auto importNode(scope ref Node node) {
    return Node(Document_importNode_0(this._parent, node._parent));
  }
  auto adoptNode(scope ref Node node) {
    return Node(Document_adoptNode(this._parent, node._parent));
  }
  auto createAttribute(string localName) {
    return Attr(Document_createAttribute(this._parent, localName));
  }
  auto createAttributeNS(scope ref Optional!(string) namespace, string qualifiedName) {
    return Attr(Document_createAttributeNS(this._parent, !namespace.empty, namespace.front, qualifiedName));
  }
  auto createEvent(string interface_) {
    return Event(Document_createEvent(this._parent, interface_));
  }
  auto createRange() {
    return Range(Document_createRange(this._parent));
  }
  auto createNodeIterator(scope ref Node root, uint whatToShow /* = 0xFFFFFFFF */, scope ref Optional!(NodeFilter) filter /* = no!(NodeFilter) */) {
    return NodeIterator(Document_createNodeIterator(this._parent, root._parent, whatToShow, !filter.empty, filter.front.handle));
  }
  auto createNodeIterator(scope ref Node root, uint whatToShow /* = 0xFFFFFFFF */) {
    return NodeIterator(Document_createNodeIterator_0(this._parent, root._parent, whatToShow));
  }
  auto createNodeIterator(scope ref Node root) {
    return NodeIterator(Document_createNodeIterator_1(this._parent, root._parent));
  }
  auto createTreeWalker(scope ref Node root, uint whatToShow /* = 0xFFFFFFFF */, scope ref Optional!(NodeFilter) filter /* = no!(NodeFilter) */) {
    return TreeWalker(Document_createTreeWalker(this._parent, root._parent, whatToShow, !filter.empty, filter.front.handle));
  }
  auto createTreeWalker(scope ref Node root, uint whatToShow /* = 0xFFFFFFFF */) {
    return TreeWalker(Document_createTreeWalker_0(this._parent, root._parent, whatToShow));
  }
  auto createTreeWalker(scope ref Node root) {
    return TreeWalker(Document_createTreeWalker_1(this._parent, root._parent));
  }
  auto location() {
    return Document_location_Get(this._parent);
  }
  void domain(string domain) {
    Document_domain_Set(this._parent, domain);
  }
  auto domain() {
    return Document_domain_Get(this._parent);
  }
  auto referrer() {
    return Document_referrer_Get(this._parent);
  }
  void cookie(string cookie) {
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
  void title(string title) {
    Document_title_Set(this._parent, title);
  }
  auto title() {
    return Document_title_Get(this._parent);
  }
  void dir(string dir) {
    Document_dir_Set(this._parent, dir);
  }
  auto dir() {
    return Document_dir_Get(this._parent);
  }
  void body_(scope ref Optional!(HTMLElement) body_) {
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
  auto open(string unused1) {
    return Document(Document_open_0(this._parent, unused1));
  }
  auto open() {
    return Document(Document_open_1(this._parent));
  }
  auto open(string url, string name, string features) {
    return Document_open__string_string_string(this._parent, url, name, features);
  }
  void close() {
    Document_close(this._parent);
  }
  void write(string text) {
    Document_write(this._parent, text);
  }
  void writeln(string text) {
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
  void designMode(string designMode) {
    Document_designMode_Set(this._parent, designMode);
  }
  auto designMode() {
    return Document_designMode_Get(this._parent);
  }
  auto execCommand(string commandId, bool showUI /* = false */, string value /* = "" */) {
    return Document_execCommand(this._parent, commandId, showUI, value);
  }
  auto execCommand(string commandId, bool showUI /* = false */) {
    return Document_execCommand_0(this._parent, commandId, showUI);
  }
  auto execCommand(string commandId) {
    return Document_execCommand_1(this._parent, commandId);
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
  void onreadystatechange(EventHandler onreadystatechange) {
    Document_onreadystatechange_Set(this._parent, onreadystatechange);
  }
  auto onreadystatechange() {
    return Document_onreadystatechange_Get(this._parent);
  }
  void fgColor(string fgColor) {
    Document_fgColor_Set(this._parent, fgColor);
  }
  auto fgColor() {
    return Document_fgColor_Get(this._parent);
  }
  void linkColor(string linkColor) {
    Document_linkColor_Set(this._parent, linkColor);
  }
  auto linkColor() {
    return Document_linkColor_Get(this._parent);
  }
  void vlinkColor(string vlinkColor) {
    Document_vlinkColor_Set(this._parent, vlinkColor);
  }
  auto vlinkColor() {
    return Document_vlinkColor_Get(this._parent);
  }
  void alinkColor(string alinkColor) {
    Document_alinkColor_Set(this._parent, alinkColor);
  }
  auto alinkColor() {
    return Document_alinkColor_Get(this._parent);
  }
  void bgColor(string bgColor) {
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
  void clear() {
    Document_clear(this._parent);
  }
  void captureEvents() {
    Document_captureEvents(this._parent);
  }
  void releaseEvents() {
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
  void onvisibilitychange(EventHandler onvisibilitychange) {
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
  void onfullscreenchange(EventHandler onfullscreenchange) {
    Document_onfullscreenchange_Set(this._parent, onfullscreenchange);
  }
  auto onfullscreenchange() {
    return Document_onfullscreenchange_Get(this._parent);
  }
  void onfullscreenerror(EventHandler onfullscreenerror) {
    Document_onfullscreenerror_Set(this._parent, onfullscreenerror);
  }
  auto onfullscreenerror() {
    return Document_onfullscreenerror_Get(this._parent);
  }
  auto rootElement() {
    return Document_rootElement_Get(this._parent);
  }
  auto styleSheets() {
    return StyleSheetList(Document_styleSheets_Get(this._parent));
  }
  auto getElementById(string elementId) {
    return NonElementParentNode_getElementById(this._parent, elementId);
  }
  auto fullscreenElement() {
    return DocumentOrShadowRoot_fullscreenElement_Get(this._parent);
  }
  auto children() {
    return HTMLCollection(ParentNode_children_Get(this._parent));
  }
  auto firstElementChild() {
    return ParentNode_firstElementChild_Get(this._parent);
  }
  auto lastElementChild() {
    return ParentNode_lastElementChild_Get(this._parent);
  }
  auto childElementCount() {
    return ParentNode_childElementCount_Get(this._parent);
  }
  void prepend(scope ref SumType!(Node, string) nodes) {
    ParentNode_prepend(this._parent, nodes);
  }
  void append(scope ref SumType!(Node, string) nodes) {
    ParentNode_append(this._parent, nodes);
  }
  auto querySelector(string selectors) {
    return ParentNode_querySelector(this._parent, selectors);
  }
  auto querySelectorAll(string selectors) {
    return NodeList(ParentNode_querySelectorAll(this._parent, selectors));
  }
  void oncopy(EventHandler oncopy) {
    DocumentAndElementEventHandlers_oncopy_Set(this._parent, oncopy);
  }
  auto oncopy() {
    return DocumentAndElementEventHandlers_oncopy_Get(this._parent);
  }
  void oncut(EventHandler oncut) {
    DocumentAndElementEventHandlers_oncut_Set(this._parent, oncut);
  }
  auto oncut() {
    return DocumentAndElementEventHandlers_oncut_Get(this._parent);
  }
  void onpaste(EventHandler onpaste) {
    DocumentAndElementEventHandlers_onpaste_Set(this._parent, onpaste);
  }
  auto onpaste() {
    return DocumentAndElementEventHandlers_onpaste_Get(this._parent);
  }
  void onabort(EventHandler onabort) {
    GlobalEventHandlers_onabort_Set(this._parent, onabort);
  }
  auto onabort() {
    return GlobalEventHandlers_onabort_Get(this._parent);
  }
  void onauxclick(EventHandler onauxclick) {
    GlobalEventHandlers_onauxclick_Set(this._parent, onauxclick);
  }
  auto onauxclick() {
    return GlobalEventHandlers_onauxclick_Get(this._parent);
  }
  void onblur(EventHandler onblur) {
    GlobalEventHandlers_onblur_Set(this._parent, onblur);
  }
  auto onblur() {
    return GlobalEventHandlers_onblur_Get(this._parent);
  }
  void oncancel(EventHandler oncancel) {
    GlobalEventHandlers_oncancel_Set(this._parent, oncancel);
  }
  auto oncancel() {
    return GlobalEventHandlers_oncancel_Get(this._parent);
  }
  void oncanplay(EventHandler oncanplay) {
    GlobalEventHandlers_oncanplay_Set(this._parent, oncanplay);
  }
  auto oncanplay() {
    return GlobalEventHandlers_oncanplay_Get(this._parent);
  }
  void oncanplaythrough(EventHandler oncanplaythrough) {
    GlobalEventHandlers_oncanplaythrough_Set(this._parent, oncanplaythrough);
  }
  auto oncanplaythrough() {
    return GlobalEventHandlers_oncanplaythrough_Get(this._parent);
  }
  void onchange(EventHandler onchange) {
    GlobalEventHandlers_onchange_Set(this._parent, onchange);
  }
  auto onchange() {
    return GlobalEventHandlers_onchange_Get(this._parent);
  }
  void onclick(EventHandler onclick) {
    GlobalEventHandlers_onclick_Set(this._parent, onclick);
  }
  auto onclick() {
    return GlobalEventHandlers_onclick_Get(this._parent);
  }
  void onclose(EventHandler onclose) {
    GlobalEventHandlers_onclose_Set(this._parent, onclose);
  }
  auto onclose() {
    return GlobalEventHandlers_onclose_Get(this._parent);
  }
  void oncontextmenu(EventHandler oncontextmenu) {
    GlobalEventHandlers_oncontextmenu_Set(this._parent, oncontextmenu);
  }
  auto oncontextmenu() {
    return GlobalEventHandlers_oncontextmenu_Get(this._parent);
  }
  void oncuechange(EventHandler oncuechange) {
    GlobalEventHandlers_oncuechange_Set(this._parent, oncuechange);
  }
  auto oncuechange() {
    return GlobalEventHandlers_oncuechange_Get(this._parent);
  }
  void ondblclick(EventHandler ondblclick) {
    GlobalEventHandlers_ondblclick_Set(this._parent, ondblclick);
  }
  auto ondblclick() {
    return GlobalEventHandlers_ondblclick_Get(this._parent);
  }
  void ondrag(EventHandler ondrag) {
    GlobalEventHandlers_ondrag_Set(this._parent, ondrag);
  }
  auto ondrag() {
    return GlobalEventHandlers_ondrag_Get(this._parent);
  }
  void ondragend(EventHandler ondragend) {
    GlobalEventHandlers_ondragend_Set(this._parent, ondragend);
  }
  auto ondragend() {
    return GlobalEventHandlers_ondragend_Get(this._parent);
  }
  void ondragenter(EventHandler ondragenter) {
    GlobalEventHandlers_ondragenter_Set(this._parent, ondragenter);
  }
  auto ondragenter() {
    return GlobalEventHandlers_ondragenter_Get(this._parent);
  }
  void ondragexit(EventHandler ondragexit) {
    GlobalEventHandlers_ondragexit_Set(this._parent, ondragexit);
  }
  auto ondragexit() {
    return GlobalEventHandlers_ondragexit_Get(this._parent);
  }
  void ondragleave(EventHandler ondragleave) {
    GlobalEventHandlers_ondragleave_Set(this._parent, ondragleave);
  }
  auto ondragleave() {
    return GlobalEventHandlers_ondragleave_Get(this._parent);
  }
  void ondragover(EventHandler ondragover) {
    GlobalEventHandlers_ondragover_Set(this._parent, ondragover);
  }
  auto ondragover() {
    return GlobalEventHandlers_ondragover_Get(this._parent);
  }
  void ondragstart(EventHandler ondragstart) {
    GlobalEventHandlers_ondragstart_Set(this._parent, ondragstart);
  }
  auto ondragstart() {
    return GlobalEventHandlers_ondragstart_Get(this._parent);
  }
  void ondrop(EventHandler ondrop) {
    GlobalEventHandlers_ondrop_Set(this._parent, ondrop);
  }
  auto ondrop() {
    return GlobalEventHandlers_ondrop_Get(this._parent);
  }
  void ondurationchange(EventHandler ondurationchange) {
    GlobalEventHandlers_ondurationchange_Set(this._parent, ondurationchange);
  }
  auto ondurationchange() {
    return GlobalEventHandlers_ondurationchange_Get(this._parent);
  }
  void onemptied(EventHandler onemptied) {
    GlobalEventHandlers_onemptied_Set(this._parent, onemptied);
  }
  auto onemptied() {
    return GlobalEventHandlers_onemptied_Get(this._parent);
  }
  void onended(EventHandler onended) {
    GlobalEventHandlers_onended_Set(this._parent, onended);
  }
  auto onended() {
    return GlobalEventHandlers_onended_Get(this._parent);
  }
  void onerror(scope ref OnErrorEventHandler onerror) {
    GlobalEventHandlers_onerror_Set(this._parent, !onerror.empty, onerror.front);
  }
  auto onerror() {
    return GlobalEventHandlers_onerror_Get(this._parent);
  }
  void onfocus(EventHandler onfocus) {
    GlobalEventHandlers_onfocus_Set(this._parent, onfocus);
  }
  auto onfocus() {
    return GlobalEventHandlers_onfocus_Get(this._parent);
  }
  void oninput(EventHandler oninput) {
    GlobalEventHandlers_oninput_Set(this._parent, oninput);
  }
  auto oninput() {
    return GlobalEventHandlers_oninput_Get(this._parent);
  }
  void oninvalid(EventHandler oninvalid) {
    GlobalEventHandlers_oninvalid_Set(this._parent, oninvalid);
  }
  auto oninvalid() {
    return GlobalEventHandlers_oninvalid_Get(this._parent);
  }
  void onkeydown(EventHandler onkeydown) {
    GlobalEventHandlers_onkeydown_Set(this._parent, onkeydown);
  }
  auto onkeydown() {
    return GlobalEventHandlers_onkeydown_Get(this._parent);
  }
  void onkeypress(EventHandler onkeypress) {
    GlobalEventHandlers_onkeypress_Set(this._parent, onkeypress);
  }
  auto onkeypress() {
    return GlobalEventHandlers_onkeypress_Get(this._parent);
  }
  void onkeyup(EventHandler onkeyup) {
    GlobalEventHandlers_onkeyup_Set(this._parent, onkeyup);
  }
  auto onkeyup() {
    return GlobalEventHandlers_onkeyup_Get(this._parent);
  }
  void onload(EventHandler onload) {
    GlobalEventHandlers_onload_Set(this._parent, onload);
  }
  auto onload() {
    return GlobalEventHandlers_onload_Get(this._parent);
  }
  void onloadeddata(EventHandler onloadeddata) {
    GlobalEventHandlers_onloadeddata_Set(this._parent, onloadeddata);
  }
  auto onloadeddata() {
    return GlobalEventHandlers_onloadeddata_Get(this._parent);
  }
  void onloadedmetadata(EventHandler onloadedmetadata) {
    GlobalEventHandlers_onloadedmetadata_Set(this._parent, onloadedmetadata);
  }
  auto onloadedmetadata() {
    return GlobalEventHandlers_onloadedmetadata_Get(this._parent);
  }
  void onloadend(EventHandler onloadend) {
    GlobalEventHandlers_onloadend_Set(this._parent, onloadend);
  }
  auto onloadend() {
    return GlobalEventHandlers_onloadend_Get(this._parent);
  }
  void onloadstart(EventHandler onloadstart) {
    GlobalEventHandlers_onloadstart_Set(this._parent, onloadstart);
  }
  auto onloadstart() {
    return GlobalEventHandlers_onloadstart_Get(this._parent);
  }
  void onmousedown(EventHandler onmousedown) {
    GlobalEventHandlers_onmousedown_Set(this._parent, onmousedown);
  }
  auto onmousedown() {
    return GlobalEventHandlers_onmousedown_Get(this._parent);
  }
  void onmouseenter(EventHandler onmouseenter) {
    GlobalEventHandlers_onmouseenter_Set(this._parent, onmouseenter);
  }
  auto onmouseenter() {
    return GlobalEventHandlers_onmouseenter_Get(this._parent);
  }
  void onmouseleave(EventHandler onmouseleave) {
    GlobalEventHandlers_onmouseleave_Set(this._parent, onmouseleave);
  }
  auto onmouseleave() {
    return GlobalEventHandlers_onmouseleave_Get(this._parent);
  }
  void onmousemove(EventHandler onmousemove) {
    GlobalEventHandlers_onmousemove_Set(this._parent, onmousemove);
  }
  auto onmousemove() {
    return GlobalEventHandlers_onmousemove_Get(this._parent);
  }
  void onmouseout(EventHandler onmouseout) {
    GlobalEventHandlers_onmouseout_Set(this._parent, onmouseout);
  }
  auto onmouseout() {
    return GlobalEventHandlers_onmouseout_Get(this._parent);
  }
  void onmouseover(EventHandler onmouseover) {
    GlobalEventHandlers_onmouseover_Set(this._parent, onmouseover);
  }
  auto onmouseover() {
    return GlobalEventHandlers_onmouseover_Get(this._parent);
  }
  void onmouseup(EventHandler onmouseup) {
    GlobalEventHandlers_onmouseup_Set(this._parent, onmouseup);
  }
  auto onmouseup() {
    return GlobalEventHandlers_onmouseup_Get(this._parent);
  }
  void onwheel(EventHandler onwheel) {
    GlobalEventHandlers_onwheel_Set(this._parent, onwheel);
  }
  auto onwheel() {
    return GlobalEventHandlers_onwheel_Get(this._parent);
  }
  void onpause(EventHandler onpause) {
    GlobalEventHandlers_onpause_Set(this._parent, onpause);
  }
  auto onpause() {
    return GlobalEventHandlers_onpause_Get(this._parent);
  }
  void onplay(EventHandler onplay) {
    GlobalEventHandlers_onplay_Set(this._parent, onplay);
  }
  auto onplay() {
    return GlobalEventHandlers_onplay_Get(this._parent);
  }
  void onplaying(EventHandler onplaying) {
    GlobalEventHandlers_onplaying_Set(this._parent, onplaying);
  }
  auto onplaying() {
    return GlobalEventHandlers_onplaying_Get(this._parent);
  }
  void onprogress(EventHandler onprogress) {
    GlobalEventHandlers_onprogress_Set(this._parent, onprogress);
  }
  auto onprogress() {
    return GlobalEventHandlers_onprogress_Get(this._parent);
  }
  void onratechange(EventHandler onratechange) {
    GlobalEventHandlers_onratechange_Set(this._parent, onratechange);
  }
  auto onratechange() {
    return GlobalEventHandlers_onratechange_Get(this._parent);
  }
  void onreset(EventHandler onreset) {
    GlobalEventHandlers_onreset_Set(this._parent, onreset);
  }
  auto onreset() {
    return GlobalEventHandlers_onreset_Get(this._parent);
  }
  void onresize(EventHandler onresize) {
    GlobalEventHandlers_onresize_Set(this._parent, onresize);
  }
  auto onresize() {
    return GlobalEventHandlers_onresize_Get(this._parent);
  }
  void onscroll(EventHandler onscroll) {
    GlobalEventHandlers_onscroll_Set(this._parent, onscroll);
  }
  auto onscroll() {
    return GlobalEventHandlers_onscroll_Get(this._parent);
  }
  void onsecuritypolicyviolation(EventHandler onsecuritypolicyviolation) {
    GlobalEventHandlers_onsecuritypolicyviolation_Set(this._parent, onsecuritypolicyviolation);
  }
  auto onsecuritypolicyviolation() {
    return GlobalEventHandlers_onsecuritypolicyviolation_Get(this._parent);
  }
  void onseeked(EventHandler onseeked) {
    GlobalEventHandlers_onseeked_Set(this._parent, onseeked);
  }
  auto onseeked() {
    return GlobalEventHandlers_onseeked_Get(this._parent);
  }
  void onseeking(EventHandler onseeking) {
    GlobalEventHandlers_onseeking_Set(this._parent, onseeking);
  }
  auto onseeking() {
    return GlobalEventHandlers_onseeking_Get(this._parent);
  }
  void onselect(EventHandler onselect) {
    GlobalEventHandlers_onselect_Set(this._parent, onselect);
  }
  auto onselect() {
    return GlobalEventHandlers_onselect_Get(this._parent);
  }
  void onstalled(EventHandler onstalled) {
    GlobalEventHandlers_onstalled_Set(this._parent, onstalled);
  }
  auto onstalled() {
    return GlobalEventHandlers_onstalled_Get(this._parent);
  }
  void onsubmit(EventHandler onsubmit) {
    GlobalEventHandlers_onsubmit_Set(this._parent, onsubmit);
  }
  auto onsubmit() {
    return GlobalEventHandlers_onsubmit_Get(this._parent);
  }
  void onsuspend(EventHandler onsuspend) {
    GlobalEventHandlers_onsuspend_Set(this._parent, onsuspend);
  }
  auto onsuspend() {
    return GlobalEventHandlers_onsuspend_Get(this._parent);
  }
  void ontimeupdate(EventHandler ontimeupdate) {
    GlobalEventHandlers_ontimeupdate_Set(this._parent, ontimeupdate);
  }
  auto ontimeupdate() {
    return GlobalEventHandlers_ontimeupdate_Get(this._parent);
  }
  void ontoggle(EventHandler ontoggle) {
    GlobalEventHandlers_ontoggle_Set(this._parent, ontoggle);
  }
  auto ontoggle() {
    return GlobalEventHandlers_ontoggle_Get(this._parent);
  }
  void onvolumechange(EventHandler onvolumechange) {
    GlobalEventHandlers_onvolumechange_Set(this._parent, onvolumechange);
  }
  auto onvolumechange() {
    return GlobalEventHandlers_onvolumechange_Get(this._parent);
  }
  void onwaiting(EventHandler onwaiting) {
    GlobalEventHandlers_onwaiting_Set(this._parent, onwaiting);
  }
  auto onwaiting() {
    return GlobalEventHandlers_onwaiting_Get(this._parent);
  }
  void ongotpointercapture(EventHandler ongotpointercapture) {
    GlobalEventHandlers_ongotpointercapture_Set(this._parent, ongotpointercapture);
  }
  auto ongotpointercapture() {
    return GlobalEventHandlers_ongotpointercapture_Get(this._parent);
  }
  void onlostpointercapture(EventHandler onlostpointercapture) {
    GlobalEventHandlers_onlostpointercapture_Set(this._parent, onlostpointercapture);
  }
  auto onlostpointercapture() {
    return GlobalEventHandlers_onlostpointercapture_Get(this._parent);
  }
  void onpointerdown(EventHandler onpointerdown) {
    GlobalEventHandlers_onpointerdown_Set(this._parent, onpointerdown);
  }
  auto onpointerdown() {
    return GlobalEventHandlers_onpointerdown_Get(this._parent);
  }
  void onpointermove(EventHandler onpointermove) {
    GlobalEventHandlers_onpointermove_Set(this._parent, onpointermove);
  }
  auto onpointermove() {
    return GlobalEventHandlers_onpointermove_Get(this._parent);
  }
  void onpointerup(EventHandler onpointerup) {
    GlobalEventHandlers_onpointerup_Set(this._parent, onpointerup);
  }
  auto onpointerup() {
    return GlobalEventHandlers_onpointerup_Get(this._parent);
  }
  void onpointercancel(EventHandler onpointercancel) {
    GlobalEventHandlers_onpointercancel_Set(this._parent, onpointercancel);
  }
  auto onpointercancel() {
    return GlobalEventHandlers_onpointercancel_Get(this._parent);
  }
  void onpointerover(EventHandler onpointerover) {
    GlobalEventHandlers_onpointerover_Set(this._parent, onpointerover);
  }
  auto onpointerover() {
    return GlobalEventHandlers_onpointerover_Get(this._parent);
  }
  void onpointerout(EventHandler onpointerout) {
    GlobalEventHandlers_onpointerout_Set(this._parent, onpointerout);
  }
  auto onpointerout() {
    return GlobalEventHandlers_onpointerout_Get(this._parent);
  }
  void onpointerenter(EventHandler onpointerenter) {
    GlobalEventHandlers_onpointerenter_Set(this._parent, onpointerenter);
  }
  auto onpointerenter() {
    return GlobalEventHandlers_onpointerenter_Get(this._parent);
  }
  void onpointerleave(EventHandler onpointerleave) {
    GlobalEventHandlers_onpointerleave_Set(this._parent, onpointerleave);
  }
  auto onpointerleave() {
    return GlobalEventHandlers_onpointerleave_Get(this._parent);
  }
  void ontouchstart(EventHandler ontouchstart) {
    GlobalEventHandlers_ontouchstart_Set(this._parent, ontouchstart);
  }
  auto ontouchstart() {
    return GlobalEventHandlers_ontouchstart_Get(this._parent);
  }
  void ontouchend(EventHandler ontouchend) {
    GlobalEventHandlers_ontouchend_Set(this._parent, ontouchend);
  }
  auto ontouchend() {
    return GlobalEventHandlers_ontouchend_Get(this._parent);
  }
  void ontouchmove(EventHandler ontouchmove) {
    GlobalEventHandlers_ontouchmove_Set(this._parent, ontouchmove);
  }
  auto ontouchmove() {
    return GlobalEventHandlers_ontouchmove_Get(this._parent);
  }
  void ontouchcancel(EventHandler ontouchcancel) {
    GlobalEventHandlers_ontouchcancel_Set(this._parent, ontouchcancel);
  }
  auto ontouchcancel() {
    return GlobalEventHandlers_ontouchcancel_Get(this._parent);
  }
}
struct DocumentFragment {
  nothrow:
  spasm.bindings.dom.Node _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Node(h);
  }
  auto getElementById(string elementId) {
    return NonElementParentNode_getElementById(this._parent, elementId);
  }
  auto children() {
    return HTMLCollection(ParentNode_children_Get(this._parent));
  }
  auto firstElementChild() {
    return ParentNode_firstElementChild_Get(this._parent);
  }
  auto lastElementChild() {
    return ParentNode_lastElementChild_Get(this._parent);
  }
  auto childElementCount() {
    return ParentNode_childElementCount_Get(this._parent);
  }
  void prepend(scope ref SumType!(Node, string) nodes) {
    ParentNode_prepend(this._parent, nodes);
  }
  void append(scope ref SumType!(Node, string) nodes) {
    ParentNode_append(this._parent, nodes);
  }
  auto querySelector(string selectors) {
    return ParentNode_querySelector(this._parent, selectors);
  }
  auto querySelectorAll(string selectors) {
    return NodeList(ParentNode_querySelectorAll(this._parent, selectors));
  }
}
struct DocumentType {
  nothrow:
  spasm.bindings.dom.Node _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Node(h);
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
  void before(scope ref SumType!(Node, string) nodes) {
    ChildNode_before(this._parent, nodes);
  }
  void after(scope ref SumType!(Node, string) nodes) {
    ChildNode_after(this._parent, nodes);
  }
  void replaceWith(scope ref SumType!(Node, string) nodes) {
    ChildNode_replaceWith(this._parent, nodes);
  }
  void remove() {
    ChildNode_remove(this._parent);
  }
}
struct Element {
  nothrow:
  spasm.bindings.dom.Node _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Node(h);
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
  void id(string id) {
    Element_id_Set(this._parent, id);
  }
  auto id() {
    return Element_id_Get(this._parent);
  }
  void className(string className) {
    Element_className_Set(this._parent, className);
  }
  auto className() {
    return Element_className_Get(this._parent);
  }
  auto classList() {
    return DOMTokenList(Element_classList_Get(this._parent));
  }
  void slot(string slot) {
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
  auto getAttributeNS(scope ref Optional!(string) namespace, string localName) {
    return Element_getAttributeNS(this._parent, !namespace.empty, namespace.front, localName);
  }
  void setAttribute(string qualifiedName, string value) {
    Element_setAttribute(this._parent, qualifiedName, value);
  }
  void setAttributeNS(scope ref Optional!(string) namespace, string qualifiedName, string value) {
    Element_setAttributeNS(this._parent, !namespace.empty, namespace.front, qualifiedName, value);
  }
  void removeAttribute(string qualifiedName) {
    Element_removeAttribute(this._parent, qualifiedName);
  }
  void removeAttributeNS(scope ref Optional!(string) namespace, string localName) {
    Element_removeAttributeNS(this._parent, !namespace.empty, namespace.front, localName);
  }
  auto toggleAttribute(string qualifiedName, bool force) {
    return Element_toggleAttribute(this._parent, qualifiedName, force);
  }
  auto toggleAttribute(string qualifiedName) {
    return Element_toggleAttribute_0(this._parent, qualifiedName);
  }
  auto hasAttribute(string qualifiedName) {
    return Element_hasAttribute(this._parent, qualifiedName);
  }
  auto hasAttributeNS(scope ref Optional!(string) namespace, string localName) {
    return Element_hasAttributeNS(this._parent, !namespace.empty, namespace.front, localName);
  }
  auto getAttributeNode(string qualifiedName) {
    return Element_getAttributeNode(this._parent, qualifiedName);
  }
  auto getAttributeNodeNS(scope ref Optional!(string) namespace, string localName) {
    return Element_getAttributeNodeNS(this._parent, !namespace.empty, namespace.front, localName);
  }
  auto setAttributeNode(scope ref Attr attr) {
    return Element_setAttributeNode(this._parent, attr._parent);
  }
  auto setAttributeNodeNS(scope ref Attr attr) {
    return Element_setAttributeNodeNS(this._parent, attr._parent);
  }
  auto removeAttributeNode(scope ref Attr attr) {
    return Attr(Element_removeAttributeNode(this._parent, attr._parent));
  }
  auto attachShadow(scope ref ShadowRootInit init) {
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
  auto getElementsByTagNameNS(scope ref Optional!(string) namespace, string localName) {
    return HTMLCollection(Element_getElementsByTagNameNS(this._parent, !namespace.empty, namespace.front, localName));
  }
  auto getElementsByClassName(string classNames) {
    return HTMLCollection(Element_getElementsByClassName(this._parent, classNames));
  }
  auto insertAdjacentElement(string where, scope ref Element element) {
    return Element_insertAdjacentElement(this._parent, where, element._parent);
  }
  void insertAdjacentText(string where, string data) {
    Element_insertAdjacentText(this._parent, where, data);
  }
  void innerHTML(string innerHTML) {
    Element_innerHTML_Set(this._parent, innerHTML);
  }
  auto innerHTML() {
    return Element_innerHTML_Get(this._parent);
  }
  void outerHTML(string outerHTML) {
    Element_outerHTML_Set(this._parent, outerHTML);
  }
  auto outerHTML() {
    return Element_outerHTML_Get(this._parent);
  }
  void insertAdjacentHTML(string position, string text) {
    Element_insertAdjacentHTML(this._parent, position, text);
  }
  void setPointerCapture(int pointerId) {
    Element_setPointerCapture(this._parent, pointerId);
  }
  void releasePointerCapture(int pointerId) {
    Element_releasePointerCapture(this._parent, pointerId);
  }
  auto hasPointerCapture(int pointerId) {
    return Element_hasPointerCapture(this._parent, pointerId);
  }
  auto requestFullscreen(scope ref FullscreenOptions options) {
    return Promise!(void)(Element_requestFullscreen(this._parent, options.handle));
  }
  auto requestFullscreen() {
    return Promise!(void)(Element_requestFullscreen_0(this._parent));
  }
  void onfullscreenchange(EventHandler onfullscreenchange) {
    Element_onfullscreenchange_Set(this._parent, onfullscreenchange);
  }
  auto onfullscreenchange() {
    return Element_onfullscreenchange_Get(this._parent);
  }
  void onfullscreenerror(EventHandler onfullscreenerror) {
    Element_onfullscreenerror_Set(this._parent, onfullscreenerror);
  }
  auto onfullscreenerror() {
    return Element_onfullscreenerror_Get(this._parent);
  }
  auto children() {
    return HTMLCollection(ParentNode_children_Get(this._parent));
  }
  auto firstElementChild() {
    return ParentNode_firstElementChild_Get(this._parent);
  }
  auto lastElementChild() {
    return ParentNode_lastElementChild_Get(this._parent);
  }
  auto childElementCount() {
    return ParentNode_childElementCount_Get(this._parent);
  }
  void prepend(scope ref SumType!(Node, string) nodes) {
    ParentNode_prepend(this._parent, nodes);
  }
  void append(scope ref SumType!(Node, string) nodes) {
    ParentNode_append(this._parent, nodes);
  }
  auto querySelector(string selectors) {
    return ParentNode_querySelector(this._parent, selectors);
  }
  auto querySelectorAll(string selectors) {
    return NodeList(ParentNode_querySelectorAll(this._parent, selectors));
  }
  auto previousElementSibling() {
    return NonDocumentTypeChildNode_previousElementSibling_Get(this._parent);
  }
  auto nextElementSibling() {
    return NonDocumentTypeChildNode_nextElementSibling_Get(this._parent);
  }
  void before(scope ref SumType!(Node, string) nodes) {
    ChildNode_before(this._parent, nodes);
  }
  void after(scope ref SumType!(Node, string) nodes) {
    ChildNode_after(this._parent, nodes);
  }
  void replaceWith(scope ref SumType!(Node, string) nodes) {
    ChildNode_replaceWith(this._parent, nodes);
  }
  void remove() {
    ChildNode_remove(this._parent);
  }
  auto assignedSlot() {
    return Slotable_assignedSlot_Get(this._parent);
  }
}
struct ElementCreationOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return ElementCreationOptions(spasm_add__object());
  }
  void is_(string is_) {
    ElementCreationOptions_is_Set(this.handle, is_);
  }
  auto is_() {
    return ElementCreationOptions_is_Get(this.handle);
  }
}
struct Event {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
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
  void stopPropagation() {
    Event_stopPropagation(this.handle);
  }
  void cancelBubble(bool cancelBubble) {
    Event_cancelBubble_Set(this.handle, cancelBubble);
  }
  auto cancelBubble() {
    return Event_cancelBubble_Get(this.handle);
  }
  void stopImmediatePropagation() {
    Event_stopImmediatePropagation(this.handle);
  }
  auto bubbles() {
    return Event_bubbles_Get(this.handle);
  }
  auto cancelable() {
    return Event_cancelable_Get(this.handle);
  }
  void returnValue(bool returnValue) {
    Event_returnValue_Set(this.handle, returnValue);
  }
  auto returnValue() {
    return Event_returnValue_Get(this.handle);
  }
  void preventDefault() {
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
  void initEvent(string type, bool bubbles /* = false */, bool cancelable /* = false */) {
    Event_initEvent(this.handle, type, bubbles, cancelable);
  }
  void initEvent(string type, bool bubbles /* = false */) {
    Event_initEvent_0(this.handle, type, bubbles);
  }
  void initEvent(string type) {
    Event_initEvent_1(this.handle, type);
  }
}
struct EventInit {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return EventInit(spasm_add__object());
  }
  void bubbles(bool bubbles) {
    EventInit_bubbles_Set(this.handle, bubbles);
  }
  auto bubbles() {
    return EventInit_bubbles_Get(this.handle);
  }
  void cancelable(bool cancelable) {
    EventInit_cancelable_Set(this.handle, cancelable);
  }
  auto cancelable() {
    return EventInit_cancelable_Get(this.handle);
  }
  void composed(bool composed) {
    EventInit_composed_Set(this.handle, composed);
  }
  auto composed() {
    return EventInit_composed_Get(this.handle);
  }
}
alias EventListener = void delegate(Event);
struct EventListenerOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return EventListenerOptions(spasm_add__object());
  }
  void capture(bool capture) {
    EventListenerOptions_capture_Set(this.handle, capture);
  }
  auto capture() {
    return EventListenerOptions_capture_Get(this.handle);
  }
}
struct EventTarget {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  void addEventListener(string type, EventListener callback, scope ref SumType!(AddEventListenerOptions, bool) options) {
    EventTarget_addEventListener(this.handle, type, callback, options);
  }
  void addEventListener(string type, EventListener callback) {
    EventTarget_addEventListener_0(this.handle, type, callback);
  }
  void removeEventListener(string type, EventListener callback, scope ref SumType!(EventListenerOptions, bool) options) {
    EventTarget_removeEventListener(this.handle, type, callback, options);
  }
  void removeEventListener(string type, EventListener callback) {
    EventTarget_removeEventListener_0(this.handle, type, callback);
  }
  auto dispatchEvent(scope ref Event event) {
    return EventTarget_dispatchEvent(this.handle, event.handle);
  }
}
struct GetRootNodeOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return GetRootNodeOptions(spasm_add__object());
  }
  void composed(bool composed) {
    GetRootNodeOptions_composed_Set(this.handle, composed);
  }
  auto composed() {
    return GetRootNodeOptions_composed_Get(this.handle);
  }
}
struct HTMLCollection {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
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
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  void observe(scope ref Node target, scope ref MutationObserverInit options) {
    MutationObserver_observe(this.handle, target._parent, options.handle);
  }
  void observe(scope ref Node target) {
    MutationObserver_observe_0(this.handle, target._parent);
  }
  void disconnect() {
    MutationObserver_disconnect(this.handle);
  }
  auto takeRecords() {
    return Sequence!(MutationRecord)(MutationObserver_takeRecords(this.handle));
  }
}
struct MutationObserverInit {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return MutationObserverInit(spasm_add__object());
  }
  void childList(bool childList) {
    MutationObserverInit_childList_Set(this.handle, childList);
  }
  auto childList() {
    return MutationObserverInit_childList_Get(this.handle);
  }
  void attributes(bool attributes) {
    MutationObserverInit_attributes_Set(this.handle, attributes);
  }
  auto attributes() {
    return MutationObserverInit_attributes_Get(this.handle);
  }
  void characterData(bool characterData) {
    MutationObserverInit_characterData_Set(this.handle, characterData);
  }
  auto characterData() {
    return MutationObserverInit_characterData_Get(this.handle);
  }
  void subtree(bool subtree) {
    MutationObserverInit_subtree_Set(this.handle, subtree);
  }
  auto subtree() {
    return MutationObserverInit_subtree_Get(this.handle);
  }
  void attributeOldValue(bool attributeOldValue) {
    MutationObserverInit_attributeOldValue_Set(this.handle, attributeOldValue);
  }
  auto attributeOldValue() {
    return MutationObserverInit_attributeOldValue_Get(this.handle);
  }
  void characterDataOldValue(bool characterDataOldValue) {
    MutationObserverInit_characterDataOldValue_Set(this.handle, characterDataOldValue);
  }
  auto characterDataOldValue() {
    return MutationObserverInit_characterDataOldValue_Get(this.handle);
  }
  void attributeFilter(scope ref Sequence!(string) attributeFilter) {
    MutationObserverInit_attributeFilter_Set(this.handle, attributeFilter.handle);
  }
  auto attributeFilter() {
    return Sequence!(string)(MutationObserverInit_attributeFilter_Get(this.handle));
  }
}
struct MutationRecord {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
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
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto length() {
    return NamedNodeMap_length_Get(this.handle);
  }
  auto item(uint index) {
    return NamedNodeMap_item_getter(this.handle, index);
  }
  auto getNamedItem(string qualifiedName) {
    return NamedNodeMap_getNamedItem_getter(this.handle, qualifiedName);
  }
  auto getNamedItemNS(scope ref Optional!(string) namespace, string localName) {
    return NamedNodeMap_getNamedItemNS(this.handle, !namespace.empty, namespace.front, localName);
  }
  auto setNamedItem(scope ref Attr attr) {
    return NamedNodeMap_setNamedItem(this.handle, attr._parent);
  }
  auto setNamedItemNS(scope ref Attr attr) {
    return NamedNodeMap_setNamedItemNS(this.handle, attr._parent);
  }
  auto removeNamedItem(string qualifiedName) {
    return Attr(NamedNodeMap_removeNamedItem(this.handle, qualifiedName));
  }
  auto removeNamedItemNS(scope ref Optional!(string) namespace, string localName) {
    return Attr(NamedNodeMap_removeNamedItemNS(this.handle, !namespace.empty, namespace.front, localName));
  }
}
struct Node {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
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
  auto getRootNode(scope ref GetRootNodeOptions options) {
    return Node(Node_getRootNode(this._parent, options.handle));
  }
  auto getRootNode() {
    return Node(Node_getRootNode_0(this._parent));
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
  void nodeValue(scope ref Optional!(string) nodeValue) {
    Node_nodeValue_Set(this._parent, !nodeValue.empty, nodeValue.front);
  }
  auto nodeValue() {
    return Node_nodeValue_Get(this._parent);
  }
  void textContent(scope ref Optional!(string) textContent) {
    Node_textContent_Set(this._parent, !textContent.empty, textContent.front);
  }
  auto textContent() {
    return Node_textContent_Get(this._parent);
  }
  void normalize() {
    Node_normalize(this._parent);
  }
  auto cloneNode(bool deep /* = false */) {
    return Node(Node_cloneNode(this._parent, deep));
  }
  auto cloneNode() {
    return Node(Node_cloneNode_0(this._parent));
  }
  auto isEqualNode(scope ref Optional!(Node) otherNode) {
    return Node_isEqualNode(this._parent, !otherNode.empty, otherNode.front._parent);
  }
  auto isSameNode(scope ref Optional!(Node) otherNode) {
    return Node_isSameNode(this._parent, !otherNode.empty, otherNode.front._parent);
  }
  enum ushort DOCUMENT_POSITION_DISCONNECTED = 0x01;
  enum ushort DOCUMENT_POSITION_PRECEDING = 0x02;
  enum ushort DOCUMENT_POSITION_FOLLOWING = 0x04;
  enum ushort DOCUMENT_POSITION_CONTAINS = 0x08;
  enum ushort DOCUMENT_POSITION_CONTAINED_BY = 0x10;
  enum ushort DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC = 0x20;
  auto compareDocumentPosition(scope ref Node other) {
    return Node_compareDocumentPosition(this._parent, other._parent);
  }
  auto contains(scope ref Optional!(Node) other) {
    return Node_contains(this._parent, !other.empty, other.front._parent);
  }
  auto lookupPrefix(scope ref Optional!(string) namespace) {
    return Node_lookupPrefix(this._parent, !namespace.empty, namespace.front);
  }
  auto lookupNamespaceURI(scope ref Optional!(string) prefix) {
    return Node_lookupNamespaceURI(this._parent, !prefix.empty, prefix.front);
  }
  auto isDefaultNamespace(scope ref Optional!(string) namespace) {
    return Node_isDefaultNamespace(this._parent, !namespace.empty, namespace.front);
  }
  auto insertBefore(scope ref Node node, scope ref Optional!(Node) child) {
    return Node(Node_insertBefore(this._parent, node._parent, !child.empty, child.front._parent));
  }
  auto appendChild(scope ref Node node) {
    return Node(Node_appendChild(this._parent, node._parent));
  }
  auto replaceChild(scope ref Node node, scope ref Node child) {
    return Node(Node_replaceChild(this._parent, node._parent, child._parent));
  }
  auto removeChild(scope ref Node child) {
    return Node(Node_removeChild(this._parent, child._parent));
  }
}
struct NodeFilter {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
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
  auto acceptNode(scope ref Node node) {
    return NodeFilter_acceptNode(this.handle, node._parent);
  }
}
struct NodeIterator {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
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
  void detach() {
    NodeIterator_detach(this.handle);
  }
}
struct NodeList {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto item(uint index) {
    return NodeList_item_getter(this.handle, index);
  }
  auto length() {
    return NodeList_length_Get(this.handle);
  }
}
struct ProcessingInstruction {
  nothrow:
  spasm.bindings.dom.CharacterData _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .CharacterData(h);
  }
  auto target() {
    return ProcessingInstruction_target_Get(this._parent);
  }
}
struct Range {
  nothrow:
  spasm.bindings.dom.AbstractRange _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .AbstractRange(h);
  }
  auto commonAncestorContainer() {
    return Node(Range_commonAncestorContainer_Get(this._parent));
  }
  void setStart(scope ref Node node, uint offset) {
    Range_setStart(this._parent, node._parent, offset);
  }
  void setEnd(scope ref Node node, uint offset) {
    Range_setEnd(this._parent, node._parent, offset);
  }
  void setStartBefore(scope ref Node node) {
    Range_setStartBefore(this._parent, node._parent);
  }
  void setStartAfter(scope ref Node node) {
    Range_setStartAfter(this._parent, node._parent);
  }
  void setEndBefore(scope ref Node node) {
    Range_setEndBefore(this._parent, node._parent);
  }
  void setEndAfter(scope ref Node node) {
    Range_setEndAfter(this._parent, node._parent);
  }
  void collapse(bool toStart /* = false */) {
    Range_collapse(this._parent, toStart);
  }
  void collapse() {
    Range_collapse_0(this._parent);
  }
  void selectNode(scope ref Node node) {
    Range_selectNode(this._parent, node._parent);
  }
  void selectNodeContents(scope ref Node node) {
    Range_selectNodeContents(this._parent, node._parent);
  }
  enum ushort START_TO_START = 0;
  enum ushort START_TO_END = 1;
  enum ushort END_TO_END = 2;
  enum ushort END_TO_START = 3;
  auto compareBoundaryPoints(ushort how, scope ref Range sourceRange) {
    return Range_compareBoundaryPoints(this._parent, how, sourceRange._parent);
  }
  void deleteContents() {
    Range_deleteContents(this._parent);
  }
  auto extractContents() {
    return DocumentFragment(Range_extractContents(this._parent));
  }
  auto cloneContents() {
    return DocumentFragment(Range_cloneContents(this._parent));
  }
  void insertNode(scope ref Node node) {
    Range_insertNode(this._parent, node._parent);
  }
  void surroundContents(scope ref Node newParent) {
    Range_surroundContents(this._parent, newParent._parent);
  }
  auto cloneRange() {
    return Range(Range_cloneRange(this._parent));
  }
  void detach() {
    Range_detach(this._parent);
  }
  auto isPointInRange(scope ref Node node, uint offset) {
    return Range_isPointInRange(this._parent, node._parent, offset);
  }
  auto comparePoint(scope ref Node node, uint offset) {
    return Range_comparePoint(this._parent, node._parent, offset);
  }
  auto intersectsNode(scope ref Node node) {
    return Range_intersectsNode(this._parent, node._parent);
  }
  auto createContextualFragment(string fragment) {
    return DocumentFragment(Range_createContextualFragment(this._parent, fragment));
  }
}
struct ShadowRoot {
  nothrow:
  spasm.bindings.dom.DocumentFragment _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .DocumentFragment(h);
  }
  auto mode() {
    return ShadowRoot_mode_Get(this._parent);
  }
  auto host() {
    return Element(ShadowRoot_host_Get(this._parent));
  }
  auto fullscreenElement() {
    return DocumentOrShadowRoot_fullscreenElement_Get(this._parent);
  }
}
struct ShadowRootInit {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return ShadowRootInit(spasm_add__object());
  }
  void mode(ShadowRootMode mode) {
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
  nothrow:
  spasm.bindings.dom.AbstractRange _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .AbstractRange(h);
  }
}
struct Text {
  nothrow:
  spasm.bindings.dom.CharacterData _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .CharacterData(h);
  }
  auto splitText(uint offset) {
    return Text(Text_splitText(this._parent, offset));
  }
  auto wholeText() {
    return Text_wholeText_Get(this._parent);
  }
  auto assignedSlot() {
    return Slotable_assignedSlot_Get(this._parent);
  }
}
struct TreeWalker {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto root() {
    return Node(TreeWalker_root_Get(this.handle));
  }
  auto whatToShow() {
    return TreeWalker_whatToShow_Get(this.handle);
  }
  auto filter() {
    return TreeWalker_filter_Get(this.handle);
  }
  void currentNode(scope ref Node currentNode) {
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
  nothrow:
  spasm.bindings.dom.Document _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Document(h);
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
extern (C) void ChildNode_before(Handle, scope ref SumType!(Node, string));
extern (C) void ChildNode_after(Handle, scope ref SumType!(Node, string));
extern (C) void ChildNode_replaceWith(Handle, scope ref SumType!(Node, string));
extern (C) void ChildNode_remove(Handle);
extern (C) Handle CustomEvent_detail_Get(Handle);
extern (C) void CustomEvent_initCustomEvent(Handle, string, bool, bool, Handle);
extern (C) void CustomEvent_initCustomEvent_0(Handle, string, bool, bool);
extern (C) void CustomEvent_initCustomEvent_1(Handle, string, bool);
extern (C) void CustomEvent_initCustomEvent_2(Handle, string);
extern (C) void CustomEventInit_detail_Set(Handle, Handle);
extern (C) Handle CustomEventInit_detail_Get(Handle);
extern (C) Handle DOMImplementation_createDocumentType(Handle, string, string, string);
extern (C) Handle DOMImplementation_createDocument(Handle, bool, string, string, bool, Handle);
extern (C) Handle DOMImplementation_createDocument_0(Handle, bool, string, string);
extern (C) Handle DOMImplementation_createHTMLDocument(Handle, string);
extern (C) Handle DOMImplementation_createHTMLDocument_0(Handle);
extern (C) bool DOMImplementation_hasFeature(Handle);
extern (C) uint DOMTokenList_length_Get(Handle);
extern (C) Optional!(string) DOMTokenList_item_getter(Handle, uint);
extern (C) bool DOMTokenList_contains(Handle, string);
extern (C) void DOMTokenList_add(Handle, string);
extern (C) void DOMTokenList_remove(Handle, string);
extern (C) bool DOMTokenList_toggle(Handle, string, bool);
extern (C) bool DOMTokenList_toggle_0(Handle, string);
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
extern (C) Handle Document_createElement(Handle, string, scope ref SumType!(string, ElementCreationOptions));
extern (C) Handle Document_createElement_0(Handle, string);
extern (C) Handle Document_createElementNS(Handle, bool, string, string, scope ref SumType!(string, ElementCreationOptions));
extern (C) Handle Document_createElementNS_0(Handle, bool, string, string);
extern (C) Handle Document_createDocumentFragment(Handle);
extern (C) Handle Document_createTextNode(Handle, string);
extern (C) Handle Document_createCDATASection(Handle, string);
extern (C) Handle Document_createComment(Handle, string);
extern (C) Handle Document_createProcessingInstruction(Handle, string, string);
extern (C) Handle Document_importNode(Handle, Handle, bool);
extern (C) Handle Document_importNode_0(Handle, Handle);
extern (C) Handle Document_adoptNode(Handle, Handle);
extern (C) Handle Document_createAttribute(Handle, string);
extern (C) Handle Document_createAttributeNS(Handle, bool, string, string);
extern (C) Handle Document_createEvent(Handle, string);
extern (C) Handle Document_createRange(Handle);
extern (C) Handle Document_createNodeIterator(Handle, Handle, uint, bool, Handle);
extern (C) Handle Document_createNodeIterator_0(Handle, Handle, uint);
extern (C) Handle Document_createNodeIterator_1(Handle, Handle);
extern (C) Handle Document_createTreeWalker(Handle, Handle, uint, bool, Handle);
extern (C) Handle Document_createTreeWalker_0(Handle, Handle, uint);
extern (C) Handle Document_createTreeWalker_1(Handle, Handle);
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
extern (C) Handle Document_open_0(Handle, string);
extern (C) Handle Document_open_1(Handle);
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
extern (C) bool Document_execCommand_0(Handle, string, bool);
extern (C) bool Document_execCommand_1(Handle, string);
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
extern (C) Handle Document_styleSheets_Get(Handle);
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
extern (C) bool Element_toggleAttribute_0(Handle, string);
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
extern (C) void Element_innerHTML_Set(Handle, string);
extern (C) string Element_innerHTML_Get(Handle);
extern (C) void Element_outerHTML_Set(Handle, string);
extern (C) string Element_outerHTML_Get(Handle);
extern (C) void Element_insertAdjacentHTML(Handle, string, string);
extern (C) void Element_setPointerCapture(Handle, int);
extern (C) void Element_releasePointerCapture(Handle, int);
extern (C) bool Element_hasPointerCapture(Handle, int);
extern (C) Handle Element_requestFullscreen(Handle, Handle);
extern (C) Handle Element_requestFullscreen_0(Handle);
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
extern (C) void Event_initEvent_0(Handle, string, bool);
extern (C) void Event_initEvent_1(Handle, string);
extern (C) void EventInit_bubbles_Set(Handle, bool);
extern (C) bool EventInit_bubbles_Get(Handle);
extern (C) void EventInit_cancelable_Set(Handle, bool);
extern (C) bool EventInit_cancelable_Get(Handle);
extern (C) void EventInit_composed_Set(Handle, bool);
extern (C) bool EventInit_composed_Get(Handle);
extern (C) void EventListenerOptions_capture_Set(Handle, bool);
extern (C) bool EventListenerOptions_capture_Get(Handle);
extern (C) void EventTarget_addEventListener(Handle, string, EventListener, scope ref SumType!(AddEventListenerOptions, bool));
extern (C) void EventTarget_addEventListener_0(Handle, string, EventListener);
extern (C) void EventTarget_removeEventListener(Handle, string, EventListener, scope ref SumType!(EventListenerOptions, bool));
extern (C) void EventTarget_removeEventListener_0(Handle, string, EventListener);
extern (C) bool EventTarget_dispatchEvent(Handle, Handle);
extern (C) void GetRootNodeOptions_composed_Set(Handle, bool);
extern (C) bool GetRootNodeOptions_composed_Get(Handle);
extern (C) uint HTMLCollection_length_Get(Handle);
extern (C) Optional!(Element) HTMLCollection_item_getter(Handle, uint);
extern (C) Optional!(Element) HTMLCollection_namedItem_getter(Handle, string);
extern (C) void MutationObserver_observe(Handle, Handle, Handle);
extern (C) void MutationObserver_observe_0(Handle, Handle);
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
extern (C) Handle Node_getRootNode_0(Handle);
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
extern (C) Handle Node_cloneNode_0(Handle);
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
extern (C) void ParentNode_prepend(Handle, scope ref SumType!(Node, string));
extern (C) void ParentNode_append(Handle, scope ref SumType!(Node, string));
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
extern (C) void Range_collapse_0(Handle);
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
extern (C) Handle Range_createContextualFragment(Handle, string);
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