import spasm from '../modules/spasm.js';
export default {
  jsExports: {
    AbortController_signal_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].signal);
    },
    AbortController_abort: function(ctx) {
      spasm.objects[ctx].abort();
    },
    AbortSignal_aborted_Get: function(ctx) {
      return spasm.objects[ctx].aborted;
    },
    AbortSignal_onabort_Set: function(ctx, onabort) {
      spasm.objects[ctx].onabort = onabort;
    },
    AbortSignal_onabort_Get: function(ctx) {
      return spasm.objects[ctx].onabort;
    },
    AbstractRange_startContainer_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].startContainer);
    },
    AbstractRange_startOffset_Get: function(ctx) {
      return spasm.objects[ctx].startOffset;
    },
    AbstractRange_endContainer_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].endContainer);
    },
    AbstractRange_endOffset_Get: function(ctx) {
      return spasm.objects[ctx].endOffset;
    },
    AbstractRange_collapsed_Get: function(ctx) {
      return spasm.objects[ctx].collapsed;
    },
    AddEventListenerOptions_passive_Set: function(ctx, passive) {
      spasm.objects[ctx].passive = passive;
    },
    AddEventListenerOptions_passive_Get: function(ctx) {
      return spasm.objects[ctx].passive;
    },
    AddEventListenerOptions_once_Set: function(ctx, once) {
      spasm.objects[ctx].once = once;
    },
    AddEventListenerOptions_once_Get: function(ctx) {
      return spasm.objects[ctx].once;
    },
    Attr_namespaceURI_Get: function(rawResult, ctx) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].namespaceURI);
    },
    Attr_prefix_Get: function(rawResult, ctx) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].prefix);
    },
    Attr_localName_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].localName);
    },
    Attr_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    Attr_value_Set: function(ctx, valueLen, valuePtr) {
      spasm.objects[ctx].value = spasm.decode_string(valueLen, valuePtr);
    },
    Attr_value_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].value);
    },
    Attr_ownerElement_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].ownerElement);
    },
    Attr_specified_Get: function(ctx) {
      return spasm.objects[ctx].specified;
    },
    CharacterData_data_Set: function(ctx, dataLen, dataPtr) {
      spasm.objects[ctx].data = spasm.decode_string(dataLen, dataPtr);
    },
    CharacterData_data_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].data);
    },
    CharacterData_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    CharacterData_substringData: function(rawResult, ctx, offset, count) {
      spasm.encode.string(rawResult, spasm.objects[ctx].substringData(offset, count));
    },
    CharacterData_appendData: function(ctx, dataLen, dataPtr) {
      spasm.objects[ctx].appendData(spasm.decode_string(dataLen, dataPtr));
    },
    CharacterData_insertData: function(ctx, offset, dataLen, dataPtr) {
      spasm.objects[ctx].insertData(offset, spasm.decode_string(dataLen, dataPtr));
    },
    CharacterData_deleteData: function(ctx, offset, count) {
      spasm.objects[ctx].deleteData(offset, count);
    },
    CharacterData_replaceData: function(ctx, offset, count, dataLen, dataPtr) {
      spasm.objects[ctx].replaceData(offset, count, spasm.decode_string(dataLen, dataPtr));
    },
    NonDocumentTypeChildNode_previousElementSibling_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].previousElementSibling);
    },
    NonDocumentTypeChildNode_nextElementSibling_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].nextElementSibling);
    },
    ChildNode_before: function(ctx, nodes) {
      spasm.objects[ctx].before(spasm.decode_union2_Node_string(nodes));
    },
    ChildNode_after: function(ctx, nodes) {
      spasm.objects[ctx].after(spasm.decode_union2_Node_string(nodes));
    },
    ChildNode_replaceWith: function(ctx, nodes) {
      spasm.objects[ctx].replaceWith(spasm.decode_union2_Node_string(nodes));
    },
    ChildNode_remove: function(ctx) {
      spasm.objects[ctx].remove();
    },
    CustomEvent_detail_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].detail);
    },
    CustomEvent_initCustomEvent: function(ctx, typeLen, typePtr, bubbles, cancelable, detail) {
      spasm.objects[ctx].initCustomEvent(spasm.decode_string(typeLen, typePtr), bubbles, cancelable, spasm.objects[detail]);
    },
    CustomEventInit_detail_Set: function(ctx, detail) {
      spasm.objects[ctx].detail = spasm.objects[detail];
    },
    CustomEventInit_detail_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].detail);
    },
    DOMImplementation_createDocumentType: function(ctx, qualifiedNameLen, qualifiedNamePtr, publicIdLen, publicIdPtr, systemIdLen, systemIdPtr) {
      return spasm.addObject(spasm.objects[ctx].createDocumentType(spasm.decode_string(qualifiedNameLen, qualifiedNamePtr), spasm.decode_string(publicIdLen, publicIdPtr), spasm.decode_string(systemIdLen, systemIdPtr)));
    },
    DOMImplementation_createDocument: function(ctx, namespaceDefined, namespaceLen, namespacePtr, qualifiedNameLen, qualifiedNamePtr, doctypeDefined, doctype) {
      return spasm.addObject(spasm.objects[ctx].createDocument(namespaceDefined ? spasm.decode_string(namespaceLen, namespacePtr) : undefined, spasm.decode_string(qualifiedNameLen, qualifiedNamePtr), doctypeDefined ? spasm.objects[doctype] : undefined));
    },
    DOMImplementation_createHTMLDocument: function(ctx, titleLen, titlePtr) {
      return spasm.addObject(spasm.objects[ctx].createHTMLDocument(spasm.decode_string(titleLen, titlePtr)));
    },
    DOMImplementation_hasFeature: function(ctx) {
      return spasm.objects[ctx].hasFeature();
    },
    DOMTokenList_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    DOMTokenList_item_getter: function(rawResult, ctx, index) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].item(index));
    },
    DOMTokenList_contains: function(ctx, tokenLen, tokenPtr) {
      return spasm.objects[ctx].contains(spasm.decode_string(tokenLen, tokenPtr));
    },
    DOMTokenList_add: function(ctx, tokensLen, tokensPtr) {
      spasm.objects[ctx].add(spasm.decode_string(tokensLen, tokensPtr));
    },
    DOMTokenList_remove: function(ctx, tokensLen, tokensPtr) {
      spasm.objects[ctx].remove(spasm.decode_string(tokensLen, tokensPtr));
    },
    DOMTokenList_toggle: function(ctx, tokenLen, tokenPtr, force) {
      return spasm.objects[ctx].toggle(spasm.decode_string(tokenLen, tokenPtr), force);
    },
    DOMTokenList_replace: function(ctx, tokenLen, tokenPtr, newTokenLen, newTokenPtr) {
      return spasm.objects[ctx].replace(spasm.decode_string(tokenLen, tokenPtr), spasm.decode_string(newTokenLen, newTokenPtr));
    },
    DOMTokenList_supports: function(ctx, tokenLen, tokenPtr) {
      return spasm.objects[ctx].supports(spasm.decode_string(tokenLen, tokenPtr));
    },
    DOMTokenList_value_Set: function(ctx, valueLen, valuePtr) {
      spasm.objects[ctx].value = spasm.decode_string(valueLen, valuePtr);
    },
    DOMTokenList_value_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].value);
    },
    Document_implementation_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].implementation);
    },
    Document_URL_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].URL);
    },
    Document_documentURI_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].documentURI);
    },
    Document_origin_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].origin);
    },
    Document_compatMode_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].compatMode);
    },
    Document_characterSet_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].characterSet);
    },
    Document_charset_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].charset);
    },
    Document_inputEncoding_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].inputEncoding);
    },
    Document_contentType_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].contentType);
    },
    Document_doctype_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].doctype);
    },
    Document_documentElement_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].documentElement);
    },
    Document_getElementsByTagName: function(ctx, qualifiedNameLen, qualifiedNamePtr) {
      return spasm.addObject(spasm.objects[ctx].getElementsByTagName(spasm.decode_string(qualifiedNameLen, qualifiedNamePtr)));
    },
    Document_getElementsByTagNameNS: function(ctx, namespaceDefined, namespaceLen, namespacePtr, localNameLen, localNamePtr) {
      return spasm.addObject(spasm.objects[ctx].getElementsByTagNameNS(namespaceDefined ? spasm.decode_string(namespaceLen, namespacePtr) : undefined, spasm.decode_string(localNameLen, localNamePtr)));
    },
    Document_getElementsByClassName: function(ctx, classNamesLen, classNamesPtr) {
      return spasm.addObject(spasm.objects[ctx].getElementsByClassName(spasm.decode_string(classNamesLen, classNamesPtr)));
    },
    Document_createElement: function(ctx, localNameLen, localNamePtr, options) {
      return spasm.addObject(spasm.objects[ctx].createElement(spasm.decode_string(localNameLen, localNamePtr), spasm.decode_union2_string_ElementCreationOptions(options)));
    },
    Document_createElementNS: function(ctx, namespaceDefined, namespaceLen, namespacePtr, qualifiedNameLen, qualifiedNamePtr, options) {
      return spasm.addObject(spasm.objects[ctx].createElementNS(namespaceDefined ? spasm.decode_string(namespaceLen, namespacePtr) : undefined, spasm.decode_string(qualifiedNameLen, qualifiedNamePtr), spasm.decode_union2_string_ElementCreationOptions(options)));
    },
    Document_createDocumentFragment: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].createDocumentFragment());
    },
    Document_createTextNode: function(ctx, dataLen, dataPtr) {
      return spasm.addObject(spasm.objects[ctx].createTextNode(spasm.decode_string(dataLen, dataPtr)));
    },
    Document_createCDATASection: function(ctx, dataLen, dataPtr) {
      return spasm.addObject(spasm.objects[ctx].createCDATASection(spasm.decode_string(dataLen, dataPtr)));
    },
    Document_createComment: function(ctx, dataLen, dataPtr) {
      return spasm.addObject(spasm.objects[ctx].createComment(spasm.decode_string(dataLen, dataPtr)));
    },
    Document_createProcessingInstruction: function(ctx, targetLen, targetPtr, dataLen, dataPtr) {
      return spasm.addObject(spasm.objects[ctx].createProcessingInstruction(spasm.decode_string(targetLen, targetPtr), spasm.decode_string(dataLen, dataPtr)));
    },
    Document_importNode: function(ctx, node, deep) {
      return spasm.addObject(spasm.objects[ctx].importNode(spasm.objects[node], deep));
    },
    Document_adoptNode: function(ctx, node) {
      return spasm.addObject(spasm.objects[ctx].adoptNode(spasm.objects[node]));
    },
    Document_createAttribute: function(ctx, localNameLen, localNamePtr) {
      return spasm.addObject(spasm.objects[ctx].createAttribute(spasm.decode_string(localNameLen, localNamePtr)));
    },
    Document_createAttributeNS: function(ctx, namespaceDefined, namespaceLen, namespacePtr, qualifiedNameLen, qualifiedNamePtr) {
      return spasm.addObject(spasm.objects[ctx].createAttributeNS(namespaceDefined ? spasm.decode_string(namespaceLen, namespacePtr) : undefined, spasm.decode_string(qualifiedNameLen, qualifiedNamePtr)));
    },
    Document_createEvent: function(ctx, interfaceLen, interfacePtr) {
      return spasm.addObject(spasm.objects[ctx].createEvent(spasm.decode_string(interfaceLen, interfacePtr)));
    },
    Document_createRange: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].createRange());
    },
    Document_createNodeIterator: function(ctx, root, whatToShow, filterDefined, filter) {
      return spasm.addObject(spasm.objects[ctx].createNodeIterator(spasm.objects[root], whatToShow, filterDefined ? spasm.objects[filter] : undefined));
    },
    Document_createTreeWalker: function(ctx, root, whatToShow, filterDefined, filter) {
      return spasm.addObject(spasm.objects[ctx].createTreeWalker(spasm.objects[root], whatToShow, filterDefined ? spasm.objects[filter] : undefined));
    },
    Document_location_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].location);
    },
    Document_domain_Set: function(ctx, domainLen, domainPtr) {
      spasm.objects[ctx].domain = spasm.decode_string(domainLen, domainPtr);
    },
    Document_domain_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].domain);
    },
    Document_referrer_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].referrer);
    },
    Document_cookie_Set: function(ctx, cookieLen, cookiePtr) {
      spasm.objects[ctx].cookie = spasm.decode_string(cookieLen, cookiePtr);
    },
    Document_cookie_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].cookie);
    },
    Document_lastModified_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].lastModified);
    },
    Document_readyState_Get: function(ctx) {
      return spasm.encode.DocumentReadyState(spasm.objects[ctx].readyState);
    },
    Document_title_Set: function(ctx, titleLen, titlePtr) {
      spasm.objects[ctx].title = spasm.decode_string(titleLen, titlePtr);
    },
    Document_title_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].title);
    },
    Document_dir_Set: function(ctx, dirLen, dirPtr) {
      spasm.objects[ctx].dir = spasm.decode_string(dirLen, dirPtr);
    },
    Document_dir_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].dir);
    },
    Document_body_Set: function(ctx, bodyDefined, body) {
      spasm.objects[ctx].body = bodyDefined ? spasm.objects[body] : undefined;
    },
    Document_body_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].body);
    },
    Document_head_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].head);
    },
    Document_images_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].images);
    },
    Document_embeds_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].embeds);
    },
    Document_plugins_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].plugins);
    },
    Document_links_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].links);
    },
    Document_forms_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].forms);
    },
    Document_scripts_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].scripts);
    },
    Document_getElementsByName: function(ctx, elementNameLen, elementNamePtr) {
      return spasm.addObject(spasm.objects[ctx].getElementsByName(spasm.decode_string(elementNameLen, elementNamePtr)));
    },
    Document_currentScript_Get: function(rawResult, ctx) {
      spasm.encode.optional_HTMLOrSVGScriptElement(rawResult, spasm.objects[ctx].currentScript);
    },
    Document_open__string_string: function(ctx, unused1Len, unused1Ptr, unused2Len, unused2Ptr) {
      return spasm.addObject(spasm.objects[ctx].open(spasm.decode_string(unused1Len, unused1Ptr), spasm.decode_string(unused2Len, unused2Ptr)));
    },
    Document_open__string_string_string: function(rawResult, ctx, urlLen, urlPtr, nameLen, namePtr, featuresLen, featuresPtr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].open(spasm.decode_string(urlLen, urlPtr), spasm.decode_string(nameLen, namePtr), spasm.decode_string(featuresLen, featuresPtr)));
    },
    Document_close: function(ctx) {
      spasm.objects[ctx].close();
    },
    Document_write: function(ctx, textLen, textPtr) {
      spasm.objects[ctx].write(spasm.decode_string(textLen, textPtr));
    },
    Document_writeln: function(ctx, textLen, textPtr) {
      spasm.objects[ctx].writeln(spasm.decode_string(textLen, textPtr));
    },
    Document_defaultView_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].defaultView);
    },
    Document_activeElement_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].activeElement);
    },
    Document_hasFocus: function(ctx) {
      return spasm.objects[ctx].hasFocus();
    },
    Document_designMode_Set: function(ctx, designModeLen, designModePtr) {
      spasm.objects[ctx].designMode = spasm.decode_string(designModeLen, designModePtr);
    },
    Document_designMode_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].designMode);
    },
    Document_execCommand: function(ctx, commandIdLen, commandIdPtr, showUI, valueLen, valuePtr) {
      return spasm.objects[ctx].execCommand(spasm.decode_string(commandIdLen, commandIdPtr), showUI, spasm.decode_string(valueLen, valuePtr));
    },
    Document_queryCommandEnabled: function(ctx, commandIdLen, commandIdPtr) {
      return spasm.objects[ctx].queryCommandEnabled(spasm.decode_string(commandIdLen, commandIdPtr));
    },
    Document_queryCommandIndeterm: function(ctx, commandIdLen, commandIdPtr) {
      return spasm.objects[ctx].queryCommandIndeterm(spasm.decode_string(commandIdLen, commandIdPtr));
    },
    Document_queryCommandState: function(ctx, commandIdLen, commandIdPtr) {
      return spasm.objects[ctx].queryCommandState(spasm.decode_string(commandIdLen, commandIdPtr));
    },
    Document_queryCommandSupported: function(ctx, commandIdLen, commandIdPtr) {
      return spasm.objects[ctx].queryCommandSupported(spasm.decode_string(commandIdLen, commandIdPtr));
    },
    Document_queryCommandValue: function(rawResult, ctx, commandIdLen, commandIdPtr) {
      spasm.encode.string(rawResult, spasm.objects[ctx].queryCommandValue(spasm.decode_string(commandIdLen, commandIdPtr)));
    },
    Document_onreadystatechange_Set: function(ctx, onreadystatechange) {
      spasm.objects[ctx].onreadystatechange = onreadystatechange;
    },
    Document_onreadystatechange_Get: function(ctx) {
      return spasm.objects[ctx].onreadystatechange;
    },
    Document_fgColor_Set: function(ctx, fgColorLen, fgColorPtr) {
      spasm.objects[ctx].fgColor = spasm.decode_string(fgColorLen, fgColorPtr);
    },
    Document_fgColor_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].fgColor);
    },
    Document_linkColor_Set: function(ctx, linkColorLen, linkColorPtr) {
      spasm.objects[ctx].linkColor = spasm.decode_string(linkColorLen, linkColorPtr);
    },
    Document_linkColor_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].linkColor);
    },
    Document_vlinkColor_Set: function(ctx, vlinkColorLen, vlinkColorPtr) {
      spasm.objects[ctx].vlinkColor = spasm.decode_string(vlinkColorLen, vlinkColorPtr);
    },
    Document_vlinkColor_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].vlinkColor);
    },
    Document_alinkColor_Set: function(ctx, alinkColorLen, alinkColorPtr) {
      spasm.objects[ctx].alinkColor = spasm.decode_string(alinkColorLen, alinkColorPtr);
    },
    Document_alinkColor_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].alinkColor);
    },
    Document_bgColor_Set: function(ctx, bgColorLen, bgColorPtr) {
      spasm.objects[ctx].bgColor = spasm.decode_string(bgColorLen, bgColorPtr);
    },
    Document_bgColor_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].bgColor);
    },
    Document_anchors_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].anchors);
    },
    Document_applets_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].applets);
    },
    Document_clear: function(ctx) {
      spasm.objects[ctx].clear();
    },
    Document_captureEvents: function(ctx) {
      spasm.objects[ctx].captureEvents();
    },
    Document_releaseEvents: function(ctx) {
      spasm.objects[ctx].releaseEvents();
    },
    Document_all_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].all);
    },
    Document_hidden_Get: function(ctx) {
      return spasm.objects[ctx].hidden;
    },
    Document_visibilityState_Get: function(ctx) {
      return spasm.encode.VisibilityState(spasm.objects[ctx].visibilityState);
    },
    Document_onvisibilitychange_Set: function(ctx, onvisibilitychange) {
      spasm.objects[ctx].onvisibilitychange = onvisibilitychange;
    },
    Document_onvisibilitychange_Get: function(ctx) {
      return spasm.objects[ctx].onvisibilitychange;
    },
    Document_fullscreenEnabled_Get: function(ctx) {
      return spasm.objects[ctx].fullscreenEnabled;
    },
    Document_fullscreen_Get: function(ctx) {
      return spasm.objects[ctx].fullscreen;
    },
    Document_exitFullscreen: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].exitFullscreen());
    },
    Document_onfullscreenchange_Set: function(ctx, onfullscreenchange) {
      spasm.objects[ctx].onfullscreenchange = onfullscreenchange;
    },
    Document_onfullscreenchange_Get: function(ctx) {
      return spasm.objects[ctx].onfullscreenchange;
    },
    Document_onfullscreenerror_Set: function(ctx, onfullscreenerror) {
      spasm.objects[ctx].onfullscreenerror = onfullscreenerror;
    },
    Document_onfullscreenerror_Get: function(ctx) {
      return spasm.objects[ctx].onfullscreenerror;
    },
    Document_rootElement_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].rootElement);
    },
    NonElementParentNode_getElementById: function(rawResult, ctx, elementIdLen, elementIdPtr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].getElementById(spasm.decode_string(elementIdLen, elementIdPtr)));
    },
    DocumentOrShadowRoot_fullscreenElement_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].fullscreenElement);
    },
    ParentNode_children_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].children);
    },
    ParentNode_firstElementChild_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].firstElementChild);
    },
    ParentNode_lastElementChild_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].lastElementChild);
    },
    ParentNode_childElementCount_Get: function(ctx) {
      return spasm.objects[ctx].childElementCount;
    },
    ParentNode_prepend: function(ctx, nodes) {
      spasm.objects[ctx].prepend(spasm.decode_union2_Node_string(nodes));
    },
    ParentNode_append: function(ctx, nodes) {
      spasm.objects[ctx].append(spasm.decode_union2_Node_string(nodes));
    },
    ParentNode_querySelector: function(rawResult, ctx, selectorsLen, selectorsPtr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].querySelector(spasm.decode_string(selectorsLen, selectorsPtr)));
    },
    ParentNode_querySelectorAll: function(ctx, selectorsLen, selectorsPtr) {
      return spasm.addObject(spasm.objects[ctx].querySelectorAll(spasm.decode_string(selectorsLen, selectorsPtr)));
    },
    GlobalEventHandlers_ongotpointercapture_Set: function(ctx, ongotpointercapture) {
      spasm.objects[ctx].ongotpointercapture = ongotpointercapture;
    },
    GlobalEventHandlers_ongotpointercapture_Get: function(ctx) {
      return spasm.objects[ctx].ongotpointercapture;
    },
    GlobalEventHandlers_onlostpointercapture_Set: function(ctx, onlostpointercapture) {
      spasm.objects[ctx].onlostpointercapture = onlostpointercapture;
    },
    GlobalEventHandlers_onlostpointercapture_Get: function(ctx) {
      return spasm.objects[ctx].onlostpointercapture;
    },
    GlobalEventHandlers_onpointerdown_Set: function(ctx, onpointerdown) {
      spasm.objects[ctx].onpointerdown = onpointerdown;
    },
    GlobalEventHandlers_onpointerdown_Get: function(ctx) {
      return spasm.objects[ctx].onpointerdown;
    },
    GlobalEventHandlers_onpointermove_Set: function(ctx, onpointermove) {
      spasm.objects[ctx].onpointermove = onpointermove;
    },
    GlobalEventHandlers_onpointermove_Get: function(ctx) {
      return spasm.objects[ctx].onpointermove;
    },
    GlobalEventHandlers_onpointerup_Set: function(ctx, onpointerup) {
      spasm.objects[ctx].onpointerup = onpointerup;
    },
    GlobalEventHandlers_onpointerup_Get: function(ctx) {
      return spasm.objects[ctx].onpointerup;
    },
    GlobalEventHandlers_onpointercancel_Set: function(ctx, onpointercancel) {
      spasm.objects[ctx].onpointercancel = onpointercancel;
    },
    GlobalEventHandlers_onpointercancel_Get: function(ctx) {
      return spasm.objects[ctx].onpointercancel;
    },
    GlobalEventHandlers_onpointerover_Set: function(ctx, onpointerover) {
      spasm.objects[ctx].onpointerover = onpointerover;
    },
    GlobalEventHandlers_onpointerover_Get: function(ctx) {
      return spasm.objects[ctx].onpointerover;
    },
    GlobalEventHandlers_onpointerout_Set: function(ctx, onpointerout) {
      spasm.objects[ctx].onpointerout = onpointerout;
    },
    GlobalEventHandlers_onpointerout_Get: function(ctx) {
      return spasm.objects[ctx].onpointerout;
    },
    GlobalEventHandlers_onpointerenter_Set: function(ctx, onpointerenter) {
      spasm.objects[ctx].onpointerenter = onpointerenter;
    },
    GlobalEventHandlers_onpointerenter_Get: function(ctx) {
      return spasm.objects[ctx].onpointerenter;
    },
    GlobalEventHandlers_onpointerleave_Set: function(ctx, onpointerleave) {
      spasm.objects[ctx].onpointerleave = onpointerleave;
    },
    GlobalEventHandlers_onpointerleave_Get: function(ctx) {
      return spasm.objects[ctx].onpointerleave;
    },
    GlobalEventHandlers_ontouchstart_Set: function(ctx, ontouchstart) {
      spasm.objects[ctx].ontouchstart = ontouchstart;
    },
    GlobalEventHandlers_ontouchstart_Get: function(ctx) {
      return spasm.objects[ctx].ontouchstart;
    },
    GlobalEventHandlers_ontouchend_Set: function(ctx, ontouchend) {
      spasm.objects[ctx].ontouchend = ontouchend;
    },
    GlobalEventHandlers_ontouchend_Get: function(ctx) {
      return spasm.objects[ctx].ontouchend;
    },
    GlobalEventHandlers_ontouchmove_Set: function(ctx, ontouchmove) {
      spasm.objects[ctx].ontouchmove = ontouchmove;
    },
    GlobalEventHandlers_ontouchmove_Get: function(ctx) {
      return spasm.objects[ctx].ontouchmove;
    },
    GlobalEventHandlers_ontouchcancel_Set: function(ctx, ontouchcancel) {
      spasm.objects[ctx].ontouchcancel = ontouchcancel;
    },
    GlobalEventHandlers_ontouchcancel_Get: function(ctx) {
      return spasm.objects[ctx].ontouchcancel;
    },
    NonElementParentNode_getElementById: function(rawResult, ctx, elementIdLen, elementIdPtr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].getElementById(spasm.decode_string(elementIdLen, elementIdPtr)));
    },
    ParentNode_children_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].children);
    },
    ParentNode_firstElementChild_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].firstElementChild);
    },
    ParentNode_lastElementChild_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].lastElementChild);
    },
    ParentNode_childElementCount_Get: function(ctx) {
      return spasm.objects[ctx].childElementCount;
    },
    ParentNode_prepend: function(ctx, nodes) {
      spasm.objects[ctx].prepend(spasm.decode_union2_Node_string(nodes));
    },
    ParentNode_append: function(ctx, nodes) {
      spasm.objects[ctx].append(spasm.decode_union2_Node_string(nodes));
    },
    ParentNode_querySelector: function(rawResult, ctx, selectorsLen, selectorsPtr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].querySelector(spasm.decode_string(selectorsLen, selectorsPtr)));
    },
    ParentNode_querySelectorAll: function(ctx, selectorsLen, selectorsPtr) {
      return spasm.addObject(spasm.objects[ctx].querySelectorAll(spasm.decode_string(selectorsLen, selectorsPtr)));
    },
    DocumentType_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    DocumentType_publicId_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].publicId);
    },
    DocumentType_systemId_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].systemId);
    },
    ChildNode_before: function(ctx, nodes) {
      spasm.objects[ctx].before(spasm.decode_union2_Node_string(nodes));
    },
    ChildNode_after: function(ctx, nodes) {
      spasm.objects[ctx].after(spasm.decode_union2_Node_string(nodes));
    },
    ChildNode_replaceWith: function(ctx, nodes) {
      spasm.objects[ctx].replaceWith(spasm.decode_union2_Node_string(nodes));
    },
    ChildNode_remove: function(ctx) {
      spasm.objects[ctx].remove();
    },
    Element_namespaceURI_Get: function(rawResult, ctx) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].namespaceURI);
    },
    Element_prefix_Get: function(rawResult, ctx) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].prefix);
    },
    Element_localName_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].localName);
    },
    Element_tagName_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].tagName);
    },
    Element_id_Set: function(ctx, idLen, idPtr) {
      spasm.objects[ctx].id = spasm.decode_string(idLen, idPtr);
    },
    Element_id_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].id);
    },
    Element_className_Set: function(ctx, classNameLen, classNamePtr) {
      spasm.objects[ctx].className = spasm.decode_string(classNameLen, classNamePtr);
    },
    Element_className_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].className);
    },
    Element_classList_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].classList);
    },
    Element_slot_Set: function(ctx, slotLen, slotPtr) {
      spasm.objects[ctx].slot = spasm.decode_string(slotLen, slotPtr);
    },
    Element_slot_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].slot);
    },
    Element_hasAttributes: function(ctx) {
      return spasm.objects[ctx].hasAttributes();
    },
    Element_attributes_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].attributes);
    },
    Element_getAttributeNames: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].getAttributeNames());
    },
    Element_getAttribute: function(rawResult, ctx, qualifiedNameLen, qualifiedNamePtr) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].getAttribute(spasm.decode_string(qualifiedNameLen, qualifiedNamePtr)));
    },
    Element_getAttributeNS: function(rawResult, ctx, namespaceDefined, namespaceLen, namespacePtr, localNameLen, localNamePtr) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].getAttributeNS(namespaceDefined ? spasm.decode_string(namespaceLen, namespacePtr) : undefined, spasm.decode_string(localNameLen, localNamePtr)));
    },
    Element_setAttribute: function(ctx, qualifiedNameLen, qualifiedNamePtr, valueLen, valuePtr) {
      spasm.objects[ctx].setAttribute(spasm.decode_string(qualifiedNameLen, qualifiedNamePtr), spasm.decode_string(valueLen, valuePtr));
    },
    Element_setAttributeNS: function(ctx, namespaceDefined, namespaceLen, namespacePtr, qualifiedNameLen, qualifiedNamePtr, valueLen, valuePtr) {
      spasm.objects[ctx].setAttributeNS(namespaceDefined ? spasm.decode_string(namespaceLen, namespacePtr) : undefined, spasm.decode_string(qualifiedNameLen, qualifiedNamePtr), spasm.decode_string(valueLen, valuePtr));
    },
    Element_removeAttribute: function(ctx, qualifiedNameLen, qualifiedNamePtr) {
      spasm.objects[ctx].removeAttribute(spasm.decode_string(qualifiedNameLen, qualifiedNamePtr));
    },
    Element_removeAttributeNS: function(ctx, namespaceDefined, namespaceLen, namespacePtr, localNameLen, localNamePtr) {
      spasm.objects[ctx].removeAttributeNS(namespaceDefined ? spasm.decode_string(namespaceLen, namespacePtr) : undefined, spasm.decode_string(localNameLen, localNamePtr));
    },
    Element_toggleAttribute: function(ctx, qualifiedNameLen, qualifiedNamePtr, force) {
      return spasm.objects[ctx].toggleAttribute(spasm.decode_string(qualifiedNameLen, qualifiedNamePtr), force);
    },
    Element_hasAttribute: function(ctx, qualifiedNameLen, qualifiedNamePtr) {
      return spasm.objects[ctx].hasAttribute(spasm.decode_string(qualifiedNameLen, qualifiedNamePtr));
    },
    Element_hasAttributeNS: function(ctx, namespaceDefined, namespaceLen, namespacePtr, localNameLen, localNamePtr) {
      return spasm.objects[ctx].hasAttributeNS(namespaceDefined ? spasm.decode_string(namespaceLen, namespacePtr) : undefined, spasm.decode_string(localNameLen, localNamePtr));
    },
    Element_getAttributeNode: function(rawResult, ctx, qualifiedNameLen, qualifiedNamePtr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].getAttributeNode(spasm.decode_string(qualifiedNameLen, qualifiedNamePtr)));
    },
    Element_getAttributeNodeNS: function(rawResult, ctx, namespaceDefined, namespaceLen, namespacePtr, localNameLen, localNamePtr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].getAttributeNodeNS(namespaceDefined ? spasm.decode_string(namespaceLen, namespacePtr) : undefined, spasm.decode_string(localNameLen, localNamePtr)));
    },
    Element_setAttributeNode: function(rawResult, ctx, attr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].setAttributeNode(spasm.objects[attr]));
    },
    Element_setAttributeNodeNS: function(rawResult, ctx, attr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].setAttributeNodeNS(spasm.objects[attr]));
    },
    Element_removeAttributeNode: function(ctx, attr) {
      return spasm.addObject(spasm.objects[ctx].removeAttributeNode(spasm.objects[attr]));
    },
    Element_attachShadow: function(ctx, init) {
      return spasm.addObject(spasm.objects[ctx].attachShadow(spasm.objects[init]));
    },
    Element_shadowRoot_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].shadowRoot);
    },
    Element_closest: function(rawResult, ctx, selectorsLen, selectorsPtr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].closest(spasm.decode_string(selectorsLen, selectorsPtr)));
    },
    Element_matches: function(ctx, selectorsLen, selectorsPtr) {
      return spasm.objects[ctx].matches(spasm.decode_string(selectorsLen, selectorsPtr));
    },
    Element_webkitMatchesSelector: function(ctx, selectorsLen, selectorsPtr) {
      return spasm.objects[ctx].webkitMatchesSelector(spasm.decode_string(selectorsLen, selectorsPtr));
    },
    Element_getElementsByTagName: function(ctx, qualifiedNameLen, qualifiedNamePtr) {
      return spasm.addObject(spasm.objects[ctx].getElementsByTagName(spasm.decode_string(qualifiedNameLen, qualifiedNamePtr)));
    },
    Element_getElementsByTagNameNS: function(ctx, namespaceDefined, namespaceLen, namespacePtr, localNameLen, localNamePtr) {
      return spasm.addObject(spasm.objects[ctx].getElementsByTagNameNS(namespaceDefined ? spasm.decode_string(namespaceLen, namespacePtr) : undefined, spasm.decode_string(localNameLen, localNamePtr)));
    },
    Element_getElementsByClassName: function(ctx, classNamesLen, classNamesPtr) {
      return spasm.addObject(spasm.objects[ctx].getElementsByClassName(spasm.decode_string(classNamesLen, classNamesPtr)));
    },
    Element_insertAdjacentElement: function(rawResult, ctx, whereLen, wherePtr, element) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].insertAdjacentElement(spasm.decode_string(whereLen, wherePtr), spasm.objects[element]));
    },
    Element_insertAdjacentText: function(ctx, whereLen, wherePtr, dataLen, dataPtr) {
      spasm.objects[ctx].insertAdjacentText(spasm.decode_string(whereLen, wherePtr), spasm.decode_string(dataLen, dataPtr));
    },
    Element_setPointerCapture: function(ctx, pointerId) {
      spasm.objects[ctx].setPointerCapture(pointerId);
    },
    Element_releasePointerCapture: function(ctx, pointerId) {
      spasm.objects[ctx].releasePointerCapture(pointerId);
    },
    Element_hasPointerCapture: function(ctx, pointerId) {
      return spasm.objects[ctx].hasPointerCapture(pointerId);
    },
    Element_requestFullscreen: function(ctx, options) {
      return spasm.addObject(spasm.objects[ctx].requestFullscreen(spasm.objects[options]));
    },
    Element_onfullscreenchange_Set: function(ctx, onfullscreenchange) {
      spasm.objects[ctx].onfullscreenchange = onfullscreenchange;
    },
    Element_onfullscreenchange_Get: function(ctx) {
      return spasm.objects[ctx].onfullscreenchange;
    },
    Element_onfullscreenerror_Set: function(ctx, onfullscreenerror) {
      spasm.objects[ctx].onfullscreenerror = onfullscreenerror;
    },
    Element_onfullscreenerror_Get: function(ctx) {
      return spasm.objects[ctx].onfullscreenerror;
    },
    ParentNode_children_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].children);
    },
    ParentNode_firstElementChild_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].firstElementChild);
    },
    ParentNode_lastElementChild_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].lastElementChild);
    },
    ParentNode_childElementCount_Get: function(ctx) {
      return spasm.objects[ctx].childElementCount;
    },
    ParentNode_prepend: function(ctx, nodes) {
      spasm.objects[ctx].prepend(spasm.decode_union2_Node_string(nodes));
    },
    ParentNode_append: function(ctx, nodes) {
      spasm.objects[ctx].append(spasm.decode_union2_Node_string(nodes));
    },
    ParentNode_querySelector: function(rawResult, ctx, selectorsLen, selectorsPtr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].querySelector(spasm.decode_string(selectorsLen, selectorsPtr)));
    },
    ParentNode_querySelectorAll: function(ctx, selectorsLen, selectorsPtr) {
      return spasm.addObject(spasm.objects[ctx].querySelectorAll(spasm.decode_string(selectorsLen, selectorsPtr)));
    },
    NonDocumentTypeChildNode_previousElementSibling_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].previousElementSibling);
    },
    NonDocumentTypeChildNode_nextElementSibling_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].nextElementSibling);
    },
    ChildNode_before: function(ctx, nodes) {
      spasm.objects[ctx].before(spasm.decode_union2_Node_string(nodes));
    },
    ChildNode_after: function(ctx, nodes) {
      spasm.objects[ctx].after(spasm.decode_union2_Node_string(nodes));
    },
    ChildNode_replaceWith: function(ctx, nodes) {
      spasm.objects[ctx].replaceWith(spasm.decode_union2_Node_string(nodes));
    },
    ChildNode_remove: function(ctx) {
      spasm.objects[ctx].remove();
    },
    Slotable_assignedSlot_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].assignedSlot);
    },
    ElementCreationOptions_is_Set: function(ctx, isLen, isPtr) {
      spasm.objects[ctx].is = spasm.decode_string(isLen, isPtr);
    },
    ElementCreationOptions_is_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].is);
    },
    Event_type_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].type);
    },
    Event_target_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].target);
    },
    Event_srcElement_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].srcElement);
    },
    Event_currentTarget_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].currentTarget);
    },
    Event_composedPath: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].composedPath());
    },
    Event_eventPhase_Get: function(ctx) {
      return spasm.objects[ctx].eventPhase;
    },
    Event_stopPropagation: function(ctx) {
      spasm.objects[ctx].stopPropagation();
    },
    Event_cancelBubble_Set: function(ctx, cancelBubble) {
      spasm.objects[ctx].cancelBubble = cancelBubble;
    },
    Event_cancelBubble_Get: function(ctx) {
      return spasm.objects[ctx].cancelBubble;
    },
    Event_stopImmediatePropagation: function(ctx) {
      spasm.objects[ctx].stopImmediatePropagation();
    },
    Event_bubbles_Get: function(ctx) {
      return spasm.objects[ctx].bubbles;
    },
    Event_cancelable_Get: function(ctx) {
      return spasm.objects[ctx].cancelable;
    },
    Event_returnValue_Set: function(ctx, returnValue) {
      spasm.objects[ctx].returnValue = returnValue;
    },
    Event_returnValue_Get: function(ctx) {
      return spasm.objects[ctx].returnValue;
    },
    Event_preventDefault: function(ctx) {
      spasm.objects[ctx].preventDefault();
    },
    Event_defaultPrevented_Get: function(ctx) {
      return spasm.objects[ctx].defaultPrevented;
    },
    Event_composed_Get: function(ctx) {
      return spasm.objects[ctx].composed;
    },
    Event_isTrusted_Get: function(ctx) {
      return spasm.objects[ctx].isTrusted;
    },
    Event_timeStamp_Get: function(ctx) {
      return spasm.objects[ctx].timeStamp;
    },
    Event_initEvent: function(ctx, typeLen, typePtr, bubbles, cancelable) {
      spasm.objects[ctx].initEvent(spasm.decode_string(typeLen, typePtr), bubbles, cancelable);
    },
    EventInit_bubbles_Set: function(ctx, bubbles) {
      spasm.objects[ctx].bubbles = bubbles;
    },
    EventInit_bubbles_Get: function(ctx) {
      return spasm.objects[ctx].bubbles;
    },
    EventInit_cancelable_Set: function(ctx, cancelable) {
      spasm.objects[ctx].cancelable = cancelable;
    },
    EventInit_cancelable_Get: function(ctx) {
      return spasm.objects[ctx].cancelable;
    },
    EventInit_composed_Set: function(ctx, composed) {
      spasm.objects[ctx].composed = composed;
    },
    EventInit_composed_Get: function(ctx) {
      return spasm.objects[ctx].composed;
    },
    EventListener_handleEvent: function(ctx, event) {
      spasm.objects[ctx].handleEvent(spasm.objects[event]);
    },
    EventListenerOptions_capture_Set: function(ctx, capture) {
      spasm.objects[ctx].capture = capture;
    },
    EventListenerOptions_capture_Get: function(ctx) {
      return spasm.objects[ctx].capture;
    },
    EventTarget_addEventListener: function(ctx, typeLen, typePtr, callbackDefined, callback, options) {
      spasm.objects[ctx].addEventListener(spasm.decode_string(typeLen, typePtr), callbackDefined ? spasm.objects[callback] : undefined, spasm.decode_union2_AddEventListenerOptions_bool(options));
    },
    EventTarget_removeEventListener: function(ctx, typeLen, typePtr, callbackDefined, callback, options) {
      spasm.objects[ctx].removeEventListener(spasm.decode_string(typeLen, typePtr), callbackDefined ? spasm.objects[callback] : undefined, spasm.decode_union2_EventListenerOptions_bool(options));
    },
    EventTarget_dispatchEvent: function(ctx, event) {
      return spasm.objects[ctx].dispatchEvent(spasm.objects[event]);
    },
    GetRootNodeOptions_composed_Set: function(ctx, composed) {
      spasm.objects[ctx].composed = composed;
    },
    GetRootNodeOptions_composed_Get: function(ctx) {
      return spasm.objects[ctx].composed;
    },
    HTMLCollection_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    HTMLCollection_item_getter: function(rawResult, ctx, index) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].item(index));
    },
    HTMLCollection_namedItem_getter: function(rawResult, ctx, nameLen, namePtr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].namedItem(spasm.decode_string(nameLen, namePtr)));
    },
    MutationObserver_observe: function(ctx, target, options) {
      spasm.objects[ctx].observe(spasm.objects[target], spasm.objects[options]);
    },
    MutationObserver_disconnect: function(ctx) {
      spasm.objects[ctx].disconnect();
    },
    MutationObserver_takeRecords: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].takeRecords());
    },
    MutationObserverInit_childList_Set: function(ctx, childList) {
      spasm.objects[ctx].childList = childList;
    },
    MutationObserverInit_childList_Get: function(ctx) {
      return spasm.objects[ctx].childList;
    },
    MutationObserverInit_attributes_Set: function(ctx, attributes) {
      spasm.objects[ctx].attributes = attributes;
    },
    MutationObserverInit_attributes_Get: function(ctx) {
      return spasm.objects[ctx].attributes;
    },
    MutationObserverInit_characterData_Set: function(ctx, characterData) {
      spasm.objects[ctx].characterData = characterData;
    },
    MutationObserverInit_characterData_Get: function(ctx) {
      return spasm.objects[ctx].characterData;
    },
    MutationObserverInit_subtree_Set: function(ctx, subtree) {
      spasm.objects[ctx].subtree = subtree;
    },
    MutationObserverInit_subtree_Get: function(ctx) {
      return spasm.objects[ctx].subtree;
    },
    MutationObserverInit_attributeOldValue_Set: function(ctx, attributeOldValue) {
      spasm.objects[ctx].attributeOldValue = attributeOldValue;
    },
    MutationObserverInit_attributeOldValue_Get: function(ctx) {
      return spasm.objects[ctx].attributeOldValue;
    },
    MutationObserverInit_characterDataOldValue_Set: function(ctx, characterDataOldValue) {
      spasm.objects[ctx].characterDataOldValue = characterDataOldValue;
    },
    MutationObserverInit_characterDataOldValue_Get: function(ctx) {
      return spasm.objects[ctx].characterDataOldValue;
    },
    MutationObserverInit_attributeFilter_Set: function(ctx, attributeFilter) {
      spasm.objects[ctx].attributeFilter = spasm.objects[attributeFilter];
    },
    MutationObserverInit_attributeFilter_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].attributeFilter);
    },
    MutationRecord_type_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].type);
    },
    MutationRecord_target_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].target);
    },
    MutationRecord_addedNodes_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].addedNodes);
    },
    MutationRecord_removedNodes_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].removedNodes);
    },
    MutationRecord_previousSibling_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].previousSibling);
    },
    MutationRecord_nextSibling_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].nextSibling);
    },
    MutationRecord_attributeName_Get: function(rawResult, ctx) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].attributeName);
    },
    MutationRecord_attributeNamespace_Get: function(rawResult, ctx) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].attributeNamespace);
    },
    MutationRecord_oldValue_Get: function(rawResult, ctx) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].oldValue);
    },
    NamedNodeMap_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    NamedNodeMap_item_getter: function(rawResult, ctx, index) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].item(index));
    },
    NamedNodeMap_getNamedItem_getter: function(rawResult, ctx, qualifiedNameLen, qualifiedNamePtr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].getNamedItem(spasm.decode_string(qualifiedNameLen, qualifiedNamePtr)));
    },
    NamedNodeMap_getNamedItemNS: function(rawResult, ctx, namespaceDefined, namespaceLen, namespacePtr, localNameLen, localNamePtr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].getNamedItemNS(namespaceDefined ? spasm.decode_string(namespaceLen, namespacePtr) : undefined, spasm.decode_string(localNameLen, localNamePtr)));
    },
    NamedNodeMap_setNamedItem: function(rawResult, ctx, attr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].setNamedItem(spasm.objects[attr]));
    },
    NamedNodeMap_setNamedItemNS: function(rawResult, ctx, attr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].setNamedItemNS(spasm.objects[attr]));
    },
    NamedNodeMap_removeNamedItem: function(ctx, qualifiedNameLen, qualifiedNamePtr) {
      return spasm.addObject(spasm.objects[ctx].removeNamedItem(spasm.decode_string(qualifiedNameLen, qualifiedNamePtr)));
    },
    NamedNodeMap_removeNamedItemNS: function(ctx, namespaceDefined, namespaceLen, namespacePtr, localNameLen, localNamePtr) {
      return spasm.addObject(spasm.objects[ctx].removeNamedItemNS(namespaceDefined ? spasm.decode_string(namespaceLen, namespacePtr) : undefined, spasm.decode_string(localNameLen, localNamePtr)));
    },
    Node_nodeType_Get: function(ctx) {
      return spasm.objects[ctx].nodeType;
    },
    Node_nodeName_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].nodeName);
    },
    Node_baseURI_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].baseURI);
    },
    Node_isConnected_Get: function(ctx) {
      return spasm.objects[ctx].isConnected;
    },
    Node_ownerDocument_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].ownerDocument);
    },
    Node_getRootNode: function(ctx, options) {
      return spasm.addObject(spasm.objects[ctx].getRootNode(spasm.objects[options]));
    },
    Node_parentNode_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].parentNode);
    },
    Node_parentElement_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].parentElement);
    },
    Node_hasChildNodes: function(ctx) {
      return spasm.objects[ctx].hasChildNodes();
    },
    Node_childNodes_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].childNodes);
    },
    Node_firstChild_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].firstChild);
    },
    Node_lastChild_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].lastChild);
    },
    Node_previousSibling_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].previousSibling);
    },
    Node_nextSibling_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].nextSibling);
    },
    Node_nodeValue_Set: function(ctx, nodeValueDefined, nodeValueLen, nodeValuePtr) {
      spasm.objects[ctx].nodeValue = nodeValueDefined ? spasm.decode_string(nodeValueLen, nodeValuePtr) : undefined;
    },
    Node_nodeValue_Get: function(rawResult, ctx) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].nodeValue);
    },
    Node_textContent_Set: function(ctx, textContentDefined, textContentLen, textContentPtr) {
      spasm.objects[ctx].textContent = textContentDefined ? spasm.decode_string(textContentLen, textContentPtr) : undefined;
    },
    Node_textContent_Get: function(rawResult, ctx) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].textContent);
    },
    Node_normalize: function(ctx) {
      spasm.objects[ctx].normalize();
    },
    Node_cloneNode: function(ctx, deep) {
      return spasm.addObject(spasm.objects[ctx].cloneNode(deep));
    },
    Node_isEqualNode: function(ctx, otherNodeDefined, otherNode) {
      return spasm.objects[ctx].isEqualNode(otherNodeDefined ? spasm.objects[otherNode] : undefined);
    },
    Node_isSameNode: function(ctx, otherNodeDefined, otherNode) {
      return spasm.objects[ctx].isSameNode(otherNodeDefined ? spasm.objects[otherNode] : undefined);
    },
    Node_compareDocumentPosition: function(ctx, other) {
      return spasm.objects[ctx].compareDocumentPosition(spasm.objects[other]);
    },
    Node_contains: function(ctx, otherDefined, other) {
      return spasm.objects[ctx].contains(otherDefined ? spasm.objects[other] : undefined);
    },
    Node_lookupPrefix: function(rawResult, ctx, namespaceDefined, namespaceLen, namespacePtr) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].lookupPrefix(namespaceDefined ? spasm.decode_string(namespaceLen, namespacePtr) : undefined));
    },
    Node_lookupNamespaceURI: function(rawResult, ctx, prefixDefined, prefixLen, prefixPtr) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].lookupNamespaceURI(prefixDefined ? spasm.decode_string(prefixLen, prefixPtr) : undefined));
    },
    Node_isDefaultNamespace: function(ctx, namespaceDefined, namespaceLen, namespacePtr) {
      return spasm.objects[ctx].isDefaultNamespace(namespaceDefined ? spasm.decode_string(namespaceLen, namespacePtr) : undefined);
    },
    Node_insertBefore: function(ctx, node, childDefined, child) {
      return spasm.addObject(spasm.objects[ctx].insertBefore(spasm.objects[node], childDefined ? spasm.objects[child] : undefined));
    },
    Node_appendChild: function(ctx, node) {
      return spasm.addObject(spasm.objects[ctx].appendChild(spasm.objects[node]));
    },
    Node_replaceChild: function(ctx, node, child) {
      return spasm.addObject(spasm.objects[ctx].replaceChild(spasm.objects[node], spasm.objects[child]));
    },
    Node_removeChild: function(ctx, child) {
      return spasm.addObject(spasm.objects[ctx].removeChild(spasm.objects[child]));
    },
    NodeFilter_acceptNode: function(ctx, node) {
      return spasm.objects[ctx].acceptNode(spasm.objects[node]);
    },
    NodeIterator_root_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].root);
    },
    NodeIterator_referenceNode_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].referenceNode);
    },
    NodeIterator_pointerBeforeReferenceNode_Get: function(ctx) {
      return spasm.objects[ctx].pointerBeforeReferenceNode;
    },
    NodeIterator_whatToShow_Get: function(ctx) {
      return spasm.objects[ctx].whatToShow;
    },
    NodeIterator_filter_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].filter);
    },
    NodeIterator_nextNode: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].nextNode());
    },
    NodeIterator_previousNode: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].previousNode());
    },
    NodeIterator_detach: function(ctx) {
      spasm.objects[ctx].detach();
    },
    NodeList_item_getter: function(rawResult, ctx, index) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].item(index));
    },
    NodeList_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    ProcessingInstruction_target_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].target);
    },
    Range_commonAncestorContainer_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].commonAncestorContainer);
    },
    Range_setStart: function(ctx, node, offset) {
      spasm.objects[ctx].setStart(spasm.objects[node], offset);
    },
    Range_setEnd: function(ctx, node, offset) {
      spasm.objects[ctx].setEnd(spasm.objects[node], offset);
    },
    Range_setStartBefore: function(ctx, node) {
      spasm.objects[ctx].setStartBefore(spasm.objects[node]);
    },
    Range_setStartAfter: function(ctx, node) {
      spasm.objects[ctx].setStartAfter(spasm.objects[node]);
    },
    Range_setEndBefore: function(ctx, node) {
      spasm.objects[ctx].setEndBefore(spasm.objects[node]);
    },
    Range_setEndAfter: function(ctx, node) {
      spasm.objects[ctx].setEndAfter(spasm.objects[node]);
    },
    Range_collapse: function(ctx, toStart) {
      spasm.objects[ctx].collapse(toStart);
    },
    Range_selectNode: function(ctx, node) {
      spasm.objects[ctx].selectNode(spasm.objects[node]);
    },
    Range_selectNodeContents: function(ctx, node) {
      spasm.objects[ctx].selectNodeContents(spasm.objects[node]);
    },
    Range_compareBoundaryPoints: function(ctx, how, sourceRange) {
      return spasm.objects[ctx].compareBoundaryPoints(how, spasm.objects[sourceRange]);
    },
    Range_deleteContents: function(ctx) {
      spasm.objects[ctx].deleteContents();
    },
    Range_extractContents: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].extractContents());
    },
    Range_cloneContents: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].cloneContents());
    },
    Range_insertNode: function(ctx, node) {
      spasm.objects[ctx].insertNode(spasm.objects[node]);
    },
    Range_surroundContents: function(ctx, newParent) {
      spasm.objects[ctx].surroundContents(spasm.objects[newParent]);
    },
    Range_cloneRange: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].cloneRange());
    },
    Range_detach: function(ctx) {
      spasm.objects[ctx].detach();
    },
    Range_isPointInRange: function(ctx, node, offset) {
      return spasm.objects[ctx].isPointInRange(spasm.objects[node], offset);
    },
    Range_comparePoint: function(ctx, node, offset) {
      return spasm.objects[ctx].comparePoint(spasm.objects[node], offset);
    },
    Range_intersectsNode: function(ctx, node) {
      return spasm.objects[ctx].intersectsNode(spasm.objects[node]);
    },
    ShadowRoot_mode_Get: function(ctx) {
      return spasm.encode.ShadowRootMode(spasm.objects[ctx].mode);
    },
    ShadowRoot_host_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].host);
    },
    DocumentOrShadowRoot_fullscreenElement_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].fullscreenElement);
    },
    ShadowRootInit_mode_Set: function(ctx, mode) {
      spasm.objects[ctx].mode = spasm.decode_ShadowRootMode(mode);
    },
    ShadowRootInit_mode_Get: function(ctx) {
      return spasm.encode.ShadowRootMode(spasm.objects[ctx].mode);
    },
    Text_splitText: function(ctx, offset) {
      return spasm.addObject(spasm.objects[ctx].splitText(offset));
    },
    Text_wholeText_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].wholeText);
    },
    Slotable_assignedSlot_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].assignedSlot);
    },
    TreeWalker_root_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].root);
    },
    TreeWalker_whatToShow_Get: function(ctx) {
      return spasm.objects[ctx].whatToShow;
    },
    TreeWalker_filter_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].filter);
    },
    TreeWalker_currentNode_Set: function(ctx, currentNode) {
      spasm.objects[ctx].currentNode = spasm.objects[currentNode];
    },
    TreeWalker_currentNode_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].currentNode);
    },
    TreeWalker_parentNode: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].parentNode());
    },
    TreeWalker_firstChild: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].firstChild());
    },
    TreeWalker_lastChild: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].lastChild());
    },
    TreeWalker_previousSibling: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].previousSibling());
    },
    TreeWalker_nextSibling: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].nextSibling());
    },
    TreeWalker_previousNode: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].previousNode());
    },
    TreeWalker_nextNode: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].nextNode());
    },
  }
}