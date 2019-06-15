module spasm.bindings.cssom;

import spasm.types;
import spasm.bindings.dom;

@safe:
nothrow:

struct CSSGroupingRule {
  nothrow:
  spasm.bindings.cssom.CSSRule _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .CSSRule(h);
  }
  auto cssRules() {
    return CSSRuleList(CSSGroupingRule_cssRules_Get(this._parent));
  }
  auto insertRule(string rule, uint index) {
    return CSSGroupingRule_insertRule(this._parent, rule, index);
  }
  void deleteRule(uint index) {
    CSSGroupingRule_deleteRule(this._parent, index);
  }
}
struct CSSImportRule {
  nothrow:
  spasm.bindings.cssom.CSSRule _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .CSSRule(h);
  }
  auto href() {
    return CSSImportRule_href_Get(this._parent);
  }
  auto media() {
    return MediaList(CSSImportRule_media_Get(this._parent));
  }
  auto styleSheet() {
    return CSSStyleSheet(CSSImportRule_styleSheet_Get(this._parent));
  }
}
struct CSSMarginRule {
  nothrow:
  spasm.bindings.cssom.CSSRule _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .CSSRule(h);
  }
  auto name() {
    return CSSMarginRule_name_Get(this._parent);
  }
  auto style() {
    return CSSStyleDeclaration(CSSMarginRule_style_Get(this._parent));
  }
}
struct CSSMediaRule {
  nothrow:
  spasm.bindings.cssom.CSSGroupingRule _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .CSSGroupingRule(h);
  }
  auto media() {
    return MediaList(CSSMediaRule_media_Get(this._parent));
  }
}
struct CSSNamespaceRule {
  nothrow:
  spasm.bindings.cssom.CSSRule _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .CSSRule(h);
  }
  auto namespaceURI() {
    return CSSNamespaceRule_namespaceURI_Get(this._parent);
  }
  auto prefix() {
    return CSSNamespaceRule_prefix_Get(this._parent);
  }
}
struct CSSPageRule {
  nothrow:
  spasm.bindings.cssom.CSSGroupingRule _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .CSSGroupingRule(h);
  }
  void selectorText(string selectorText) {
    CSSPageRule_selectorText_Set(this._parent, selectorText);
  }
  auto selectorText() {
    return CSSPageRule_selectorText_Get(this._parent);
  }
  auto style() {
    return CSSStyleDeclaration(CSSPageRule_style_Get(this._parent));
  }
}
struct CSSRule {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  enum ushort STYLE_RULE = 1;
  enum ushort CHARSET_RULE = 2;
  enum ushort IMPORT_RULE = 3;
  enum ushort MEDIA_RULE = 4;
  enum ushort FONT_FACE_RULE = 5;
  enum ushort PAGE_RULE = 6;
  enum ushort MARGIN_RULE = 9;
  enum ushort NAMESPACE_RULE = 10;
  auto type() {
    return CSSRule_type_Get(this.handle);
  }
  void cssText(string cssText) {
    CSSRule_cssText_Set(this.handle, cssText);
  }
  auto cssText() {
    return CSSRule_cssText_Get(this.handle);
  }
  auto parentRule() {
    return CSSRule_parentRule_Get(this.handle);
  }
  auto parentStyleSheet() {
    return CSSRule_parentStyleSheet_Get(this.handle);
  }
}
struct CSSRuleList {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto item(uint index) {
    return CSSRuleList_item_getter(this.handle, index);
  }
  auto length() {
    return CSSRuleList_length_Get(this.handle);
  }
}
struct CSSStyleDeclaration {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  void cssText(string cssText) {
    CSSStyleDeclaration_cssText_Set(this.handle, cssText);
  }
  auto cssText() {
    return CSSStyleDeclaration_cssText_Get(this.handle);
  }
  auto length() {
    return CSSStyleDeclaration_length_Get(this.handle);
  }
  auto item(uint index) {
    return CSSStyleDeclaration_item_getter(this.handle, index);
  }
  void opIndexAssign(string value, string property) {
    CSSStyleDeclaration_setter__string_string(this.handle, property, value);
  }
  void opDispatch(string property)(string value) {
    CSSStyleDeclaration_setter__string_string(this.handle, property, value);
  }
  auto getPropertyValue(string property) {
    return CSSStyleDeclaration_getPropertyValue(this.handle, property);
  }
  auto getPropertyPriority(string property) {
    return CSSStyleDeclaration_getPropertyPriority(this.handle, property);
  }
  void setProperty(string property, string value, string priority /* = "" */) {
    CSSStyleDeclaration_setProperty(this.handle, property, value, priority);
  }
  void setProperty(string property, string value) {
    CSSStyleDeclaration_setProperty_0(this.handle, property, value);
  }
  void setPropertyValue(string property, string value) {
    CSSStyleDeclaration_setPropertyValue(this.handle, property, value);
  }
  void setPropertyPriority(string property, string priority) {
    CSSStyleDeclaration_setPropertyPriority(this.handle, property, priority);
  }
  auto removeProperty(string property) {
    return CSSStyleDeclaration_removeProperty(this.handle, property);
  }
  auto parentRule() {
    return CSSStyleDeclaration_parentRule_Get(this.handle);
  }
  void cssFloat(string cssFloat) {
    CSSStyleDeclaration_cssFloat_Set(this.handle, cssFloat);
  }
  auto cssFloat() {
    return CSSStyleDeclaration_cssFloat_Get(this.handle);
  }
  void _camel_cased_attribute(string _camel_cased_attribute) {
    CSSStyleDeclaration__camel_cased_attribute_Set(this.handle, _camel_cased_attribute);
  }
  auto _camel_cased_attribute() {
    return CSSStyleDeclaration__camel_cased_attribute_Get(this.handle);
  }
  void _webkit_cased_attribute(string _webkit_cased_attribute) {
    CSSStyleDeclaration__webkit_cased_attribute_Set(this.handle, _webkit_cased_attribute);
  }
  auto _webkit_cased_attribute() {
    return CSSStyleDeclaration__webkit_cased_attribute_Get(this.handle);
  }
  void _dashed_attribute(string _dashed_attribute) {
    CSSStyleDeclaration__dashed_attribute_Set(this.handle, _dashed_attribute);
  }
  auto _dashed_attribute() {
    return CSSStyleDeclaration__dashed_attribute_Get(this.handle);
  }
}
struct CSSStyleRule {
  nothrow:
  spasm.bindings.cssom.CSSRule _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .CSSRule(h);
  }
  void selectorText(string selectorText) {
    CSSStyleRule_selectorText_Set(this._parent, selectorText);
  }
  auto selectorText() {
    return CSSStyleRule_selectorText_Get(this._parent);
  }
  auto style() {
    return CSSStyleDeclaration(CSSStyleRule_style_Get(this._parent));
  }
}
struct CSSStyleSheet {
  nothrow:
  spasm.bindings.cssom.StyleSheet _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .StyleSheet(h);
  }
  auto ownerRule() {
    return CSSStyleSheet_ownerRule_Get(this._parent);
  }
  auto cssRules() {
    return CSSRuleList(CSSStyleSheet_cssRules_Get(this._parent));
  }
  auto insertRule(string rule, uint index) {
    return CSSStyleSheet_insertRule(this._parent, rule, index);
  }
  void deleteRule(uint index) {
    CSSStyleSheet_deleteRule(this._parent, index);
  }
}
struct LinkStyle {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto sheet() {
    return LinkStyle_sheet_Get(this.handle);
  }
}
struct MediaList {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  void mediaText(string mediaText) {
    MediaList_mediaText_Set(this.handle, mediaText);
  }
  auto mediaText() {
    return MediaList_mediaText_Get(this.handle);
  }
  auto length() {
    return MediaList_length_Get(this.handle);
  }
  auto item(uint index) {
    return MediaList_item_getter(this.handle, index);
  }
  void appendMedium(string medium) {
    MediaList_appendMedium(this.handle, medium);
  }
  void deleteMedium(string medium) {
    MediaList_deleteMedium(this.handle, medium);
  }
}
struct StyleSheet {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto type() {
    return StyleSheet_type_Get(this.handle);
  }
  auto href() {
    return StyleSheet_href_Get(this.handle);
  }
  auto ownerNode() {
    return StyleSheet_ownerNode_Get(this.handle);
  }
  auto parentStyleSheet() {
    return StyleSheet_parentStyleSheet_Get(this.handle);
  }
  auto title() {
    return StyleSheet_title_Get(this.handle);
  }
  auto media() {
    return MediaList(StyleSheet_media_Get(this.handle));
  }
  void disabled(bool disabled) {
    StyleSheet_disabled_Set(this.handle, disabled);
  }
  auto disabled() {
    return StyleSheet_disabled_Get(this.handle);
  }
}
struct StyleSheetList {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto item(uint index) {
    return StyleSheetList_item_getter(this.handle, index);
  }
  auto length() {
    return StyleSheetList_length_Get(this.handle);
  }
}


extern (C) Handle CSSGroupingRule_cssRules_Get(Handle);
extern (C) uint CSSGroupingRule_insertRule(Handle, string, uint);
extern (C) void CSSGroupingRule_deleteRule(Handle, uint);
extern (C) string CSSImportRule_href_Get(Handle);
extern (C) Handle CSSImportRule_media_Get(Handle);
extern (C) Handle CSSImportRule_styleSheet_Get(Handle);
extern (C) string CSSMarginRule_name_Get(Handle);
extern (C) Handle CSSMarginRule_style_Get(Handle);
extern (C) Handle CSSMediaRule_media_Get(Handle);
extern (C) string CSSNamespaceRule_namespaceURI_Get(Handle);
extern (C) string CSSNamespaceRule_prefix_Get(Handle);
extern (C) void CSSPageRule_selectorText_Set(Handle, string);
extern (C) string CSSPageRule_selectorText_Get(Handle);
extern (C) Handle CSSPageRule_style_Get(Handle);
extern (C) ushort CSSRule_type_Get(Handle);
extern (C) void CSSRule_cssText_Set(Handle, string);
extern (C) string CSSRule_cssText_Get(Handle);
extern (C) Optional!(CSSRule) CSSRule_parentRule_Get(Handle);
extern (C) Optional!(CSSStyleSheet) CSSRule_parentStyleSheet_Get(Handle);
extern (C) Optional!(CSSRule) CSSRuleList_item_getter(Handle, uint);
extern (C) uint CSSRuleList_length_Get(Handle);
extern (C) void CSSStyleDeclaration_cssText_Set(Handle, string);
extern (C) string CSSStyleDeclaration_cssText_Get(Handle);
extern (C) uint CSSStyleDeclaration_length_Get(Handle);
extern (C) string CSSStyleDeclaration_item_getter(Handle, uint);
extern (C) void CSSStyleDeclaration_setter__string_string(Handle, string, string);
extern (C) string CSSStyleDeclaration_getPropertyValue(Handle, string);
extern (C) string CSSStyleDeclaration_getPropertyPriority(Handle, string);
extern (C) void CSSStyleDeclaration_setProperty(Handle, string, string, string);
extern (C) void CSSStyleDeclaration_setProperty_0(Handle, string, string);
extern (C) void CSSStyleDeclaration_setPropertyValue(Handle, string, string);
extern (C) void CSSStyleDeclaration_setPropertyPriority(Handle, string, string);
extern (C) string CSSStyleDeclaration_removeProperty(Handle, string);
extern (C) Optional!(CSSRule) CSSStyleDeclaration_parentRule_Get(Handle);
extern (C) void CSSStyleDeclaration_cssFloat_Set(Handle, string);
extern (C) string CSSStyleDeclaration_cssFloat_Get(Handle);
extern (C) void CSSStyleDeclaration__camel_cased_attribute_Set(Handle, string);
extern (C) string CSSStyleDeclaration__camel_cased_attribute_Get(Handle);
extern (C) void CSSStyleDeclaration__webkit_cased_attribute_Set(Handle, string);
extern (C) string CSSStyleDeclaration__webkit_cased_attribute_Get(Handle);
extern (C) void CSSStyleDeclaration__dashed_attribute_Set(Handle, string);
extern (C) string CSSStyleDeclaration__dashed_attribute_Get(Handle);
extern (C) void CSSStyleRule_selectorText_Set(Handle, string);
extern (C) string CSSStyleRule_selectorText_Get(Handle);
extern (C) Handle CSSStyleRule_style_Get(Handle);
extern (C) Optional!(CSSRule) CSSStyleSheet_ownerRule_Get(Handle);
extern (C) Handle CSSStyleSheet_cssRules_Get(Handle);
extern (C) uint CSSStyleSheet_insertRule(Handle, string, uint);
extern (C) void CSSStyleSheet_deleteRule(Handle, uint);
extern (C) Handle ElementCSSInlineStyle_style_Get(Handle);
extern (C) Optional!(StyleSheet) LinkStyle_sheet_Get(Handle);
extern (C) void MediaList_mediaText_Set(Handle, string);
extern (C) string MediaList_mediaText_Get(Handle);
extern (C) uint MediaList_length_Get(Handle);
extern (C) Optional!(string) MediaList_item_getter(Handle, uint);
extern (C) void MediaList_appendMedium(Handle, string);
extern (C) void MediaList_deleteMedium(Handle, string);
extern (C) string StyleSheet_type_Get(Handle);
extern (C) Optional!(string) StyleSheet_href_Get(Handle);
extern (C) Optional!(SumType!(Element, ProcessingInstruction)) StyleSheet_ownerNode_Get(Handle);
extern (C) Optional!(StyleSheet) StyleSheet_parentStyleSheet_Get(Handle);
extern (C) Optional!(string) StyleSheet_title_Get(Handle);
extern (C) Handle StyleSheet_media_Get(Handle);
extern (C) void StyleSheet_disabled_Set(Handle, bool);
extern (C) bool StyleSheet_disabled_Get(Handle);
extern (C) Optional!(StyleSheet) StyleSheetList_item_getter(Handle, uint);
extern (C) uint StyleSheetList_length_Get(Handle);