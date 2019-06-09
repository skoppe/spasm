module spasm.node;

import spasm.types;

template getChildren(Parent) {
  import std.traits : hasUDA;
  import std.meta : AliasSeq;
  import std.traits : FieldNameTuple;
  alias members = FieldNameTuple!Parent;
  template isChild(string member) {
    static if (__traits(compiles, __traits(getMember, Parent, member)))
      enum isChild = hasUDA!(__traits(getMember, Parent, member), child);
    else
      enum isChild = false;
  }
  import std.meta : Filter;
  alias getChildren = Filter!(isChild, members);
}

struct BaseNode {
  JsHandle node = invalidHandle;
  bool mounted;
  bool marked;
  alias node this;
}

struct TagHtmlElementMap {
  import spasm.bindings.html;
  alias a = HTMLAnchorElement;
  alias area = HTMLAreaElement;
  alias audio = HTMLAudioElement;
  alias br = HTMLBRElement;
  alias base = HTMLBaseElement;
  alias body_ = HTMLBodyElement;
  alias button = HTMLButtonElement;
  alias canvas = HTMLCanvasElement;
  alias dlist = HTMLDListElement;
  alias data = HTMLDataElement;
  alias datalist = HTMLDataListElement;
  alias details = HTMLDetailsElement;
  alias dialog = HTMLDialogElement;
  alias directory = HTMLDirectoryElement;
  alias div = HTMLDivElement;
  alias embed = HTMLEmbedElement;
  alias fieldset = HTMLFieldSetElement;
  alias font = HTMLFontElement;
  alias form = HTMLFormElement;
  alias frame = HTMLFrameElement;
  alias frameset = HTMLFrameSetElement;
  alias hr = HTMLHRElement;
  alias head = HTMLHeadElement;
  alias h1 = HTMLHeadingElement;
  alias h2 = HTMLHeadingElement;
  alias h3 = HTMLHeadingElement;
  alias h4 = HTMLHeadingElement;
  alias h5 = HTMLHeadingElement;
  alias h6 = HTMLHeadingElement;
  alias html = HTMLHtmlElement;
  alias iframe = HTMLIFrameElement;
  alias image = HTMLImageElement;
  alias input = HTMLInputElement;
  alias li = HTMLLIElement;
  alias label = HTMLLabelElement;
  alias legend = HTMLLegendElement;
  alias link = HTMLLinkElement;
  alias map = HTMLMapElement;
  alias marquee = HTMLMarqueeElement;
  alias media = HTMLMediaElement;
  alias menu = HTMLMenuElement;
  alias meta = HTMLMetaElement;
  alias meter = HTMLMeterElement;
  alias mod = HTMLModElement;
  alias olist = HTMLOListElement;
  alias object = HTMLObjectElement;
  alias optgroup = HTMLOptGroupElement;
  alias option = HTMLOptionElement;
  alias output = HTMLOutputElement;
  alias paragraph = HTMLParagraphElement;
  alias param = HTMLParamElement;
  alias picture = HTMLPictureElement;
  alias pre = HTMLPreElement;
  alias progress = HTMLProgressElement;
  alias quote = HTMLQuoteElement;
  alias script = HTMLScriptElement;
  alias select = HTMLSelectElement;
  alias slot = HTMLSlotElement;
  alias source = HTMLSourceElement;
  alias span = HTMLSpanElement;
  alias style = HTMLStyleElement;
  alias tablecaption = HTMLTableCaptionElement;
  alias tablecell = HTMLTableCellElement;
  alias tablecol = HTMLTableColElement;
  alias table = HTMLTableElement;
  alias tablerow = HTMLTableRowElement;
  alias tablesection = HTMLTableSectionElement;
  alias template_ = HTMLTemplateElement;
  alias textarea = HTMLTextAreaElement;
  alias time = HTMLTimeElement;
  alias title = HTMLTitleElement;
  alias track = HTMLTrackElement;
  alias ul = HTMLUListElement;
  alias unknown = HTMLUnknownElement;
  alias video = HTMLVideoElement;
  // anything not known (custom elements, or footer/section/header/etc.)
  template opDispatch(string name) {
    alias opDispatch = HTMLElement;
  }
}

struct NamedNode(string tag) {
  alias Element = __traits(getMember, TagHtmlElementMap, tag);
  Element node = invalidHandle;
  bool mounted;
  bool marked;
  alias node this;
}

mixin template Node(string str) {
  mixin("NamedNode!\""~str~"\" node;");
}
