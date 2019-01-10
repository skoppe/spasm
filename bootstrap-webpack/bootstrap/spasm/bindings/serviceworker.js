import spasm from './spasm.js';
export default {
  jsExports: {
    Cache_match: function(ctx, request, options) {
      return spasm.addObject(spasm.objects[ctx].match(spasm.decode_RequestInfo(request), spasm.objects[options]));
    },
    Cache_matchAll: function(ctx, request, options) {
      return spasm.addObject(spasm.objects[ctx].matchAll(spasm.decode_RequestInfo(request), spasm.objects[options]));
    },
    Cache_add: function(ctx, request) {
      return spasm.addObject(spasm.objects[ctx].add(spasm.decode_RequestInfo(request)));
    },
    Cache_addAll: function(ctx, requests) {
      return spasm.addObject(spasm.objects[ctx].addAll(spasm.objects[requests]));
    },
    Cache_put: function(ctx, request, response) {
      return spasm.addObject(spasm.objects[ctx].put(spasm.decode_RequestInfo(request), spasm.objects[response]));
    },
    Cache_delete: function(ctx, request, options) {
      return spasm.addObject(spasm.objects[ctx].delete(spasm.decode_RequestInfo(request), spasm.objects[options]));
    },
    Cache_keys: function(ctx, request, options) {
      return spasm.addObject(spasm.objects[ctx].keys(spasm.decode_RequestInfo(request), spasm.objects[options]));
    },
    CacheQueryOptions_ignoreSearch_Set: function(ctx, ignoreSearch) {
      spasm.objects[ctx].ignoreSearch = ignoreSearch;
    },
    CacheQueryOptions_ignoreSearch_Get: function(ctx) {
      return spasm.objects[ctx].ignoreSearch;
    },
    CacheQueryOptions_ignoreMethod_Set: function(ctx, ignoreMethod) {
      spasm.objects[ctx].ignoreMethod = ignoreMethod;
    },
    CacheQueryOptions_ignoreMethod_Get: function(ctx) {
      return spasm.objects[ctx].ignoreMethod;
    },
    CacheQueryOptions_ignoreVary_Set: function(ctx, ignoreVary) {
      spasm.objects[ctx].ignoreVary = ignoreVary;
    },
    CacheQueryOptions_ignoreVary_Get: function(ctx) {
      return spasm.objects[ctx].ignoreVary;
    },
    CacheStorage_match: function(ctx, request, options) {
      return spasm.addObject(spasm.objects[ctx].match(spasm.decode_RequestInfo(request), spasm.objects[options]));
    },
    CacheStorage_has: function(ctx, cacheNameLen, cacheNamePtr) {
      return spasm.addObject(spasm.objects[ctx].has(spasm.decode_string(cacheNameLen, cacheNamePtr)));
    },
    CacheStorage_open: function(ctx, cacheNameLen, cacheNamePtr) {
      return spasm.addObject(spasm.objects[ctx].open(spasm.decode_string(cacheNameLen, cacheNamePtr)));
    },
    CacheStorage_delete: function(ctx, cacheNameLen, cacheNamePtr) {
      return spasm.addObject(spasm.objects[ctx].delete(spasm.decode_string(cacheNameLen, cacheNamePtr)));
    },
    CacheStorage_keys: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].keys());
    },
    Client_url_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].url);
    },
    Client_frameType_Get: function(ctx) {
      return spasm.encode.FrameType(spasm.objects[ctx].frameType);
    },
    Client_id_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].id);
    },
    Client_type_Get: function(ctx) {
      return spasm.encode.ClientType(spasm.objects[ctx].type);
    },
    Client_postMessage: function(ctx, message, transfer) {
      spasm.objects[ctx].postMessage(spasm.objects[message], spasm.objects[transfer]);
    },
    ClientQueryOptions_includeUncontrolled_Set: function(ctx, includeUncontrolled) {
      spasm.objects[ctx].includeUncontrolled = includeUncontrolled;
    },
    ClientQueryOptions_includeUncontrolled_Get: function(ctx) {
      return spasm.objects[ctx].includeUncontrolled;
    },
    ClientQueryOptions_type_Set: function(ctx, type) {
      spasm.objects[ctx].type = spasm.decode_ClientType(type);
    },
    ClientQueryOptions_type_Get: function(ctx) {
      return spasm.encode.ClientType(spasm.objects[ctx].type);
    },
    Clients_get: function(ctx, idLen, idPtr) {
      return spasm.addObject(spasm.objects[ctx].get(spasm.decode_string(idLen, idPtr)));
    },
    Clients_matchAll: function(ctx, options) {
      return spasm.addObject(spasm.objects[ctx].matchAll(spasm.objects[options]));
    },
    Clients_openWindow: function(ctx, urlLen, urlPtr) {
      return spasm.addObject(spasm.objects[ctx].openWindow(spasm.decode_string(urlLen, urlPtr)));
    },
    Clients_claim: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].claim());
    },
    ExtendableEvent_waitUntil: function(ctx, f) {
      spasm.objects[ctx].waitUntil(spasm.objects[f]);
    },
    ExtendableMessageEvent_data_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].data);
    },
    ExtendableMessageEvent_origin_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].origin);
    },
    ExtendableMessageEvent_lastEventId_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].lastEventId);
    },
    ExtendableMessageEvent_source_Get: function(rawResult, ctx) {
      spasm.encode.optional_union3_Client_ServiceWorker_MessagePort(rawResult, spasm.objects[ctx].source);
    },
    ExtendableMessageEvent_ports_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].ports);
    },
    ExtendableMessageEventInit_data_Set: function(ctx, data) {
      spasm.objects[ctx].data = spasm.objects[data];
    },
    ExtendableMessageEventInit_data_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].data);
    },
    ExtendableMessageEventInit_origin_Set: function(ctx, originLen, originPtr) {
      spasm.objects[ctx].origin = spasm.decode_string(originLen, originPtr);
    },
    ExtendableMessageEventInit_origin_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].origin);
    },
    ExtendableMessageEventInit_lastEventId_Set: function(ctx, lastEventIdLen, lastEventIdPtr) {
      spasm.objects[ctx].lastEventId = spasm.decode_string(lastEventIdLen, lastEventIdPtr);
    },
    ExtendableMessageEventInit_lastEventId_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].lastEventId);
    },
    ExtendableMessageEventInit_source_Set: function(ctx, sourceDefined, source) {
      spasm.objects[ctx].source = sourceDefined ? spasm.decode_union3_Client_ServiceWorker_MessagePort(source) : undefined;
    },
    ExtendableMessageEventInit_source_Get: function(rawResult, ctx) {
      spasm.encode.optional_union3_Client_ServiceWorker_MessagePort(rawResult, spasm.objects[ctx].source);
    },
    ExtendableMessageEventInit_ports_Set: function(ctx, ports) {
      spasm.objects[ctx].ports = spasm.objects[ports];
    },
    ExtendableMessageEventInit_ports_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].ports);
    },
    FetchEvent_request_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].request);
    },
    FetchEvent_preloadResponse_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].preloadResponse);
    },
    FetchEvent_clientId_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].clientId);
    },
    FetchEvent_resultingClientId_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].resultingClientId);
    },
    FetchEvent_replacesClientId_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].replacesClientId);
    },
    FetchEvent_respondWith: function(ctx, r) {
      spasm.objects[ctx].respondWith(spasm.objects[r]);
    },
    FetchEventInit_request_Set: function(ctx, request) {
      spasm.objects[ctx].request = spasm.objects[request];
    },
    FetchEventInit_request_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].request);
    },
    FetchEventInit_preloadResponse_Set: function(ctx, preloadResponse) {
      spasm.objects[ctx].preloadResponse = spasm.objects[preloadResponse];
    },
    FetchEventInit_preloadResponse_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].preloadResponse);
    },
    FetchEventInit_clientId_Set: function(ctx, clientIdLen, clientIdPtr) {
      spasm.objects[ctx].clientId = spasm.decode_string(clientIdLen, clientIdPtr);
    },
    FetchEventInit_clientId_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].clientId);
    },
    FetchEventInit_resultingClientId_Set: function(ctx, resultingClientIdLen, resultingClientIdPtr) {
      spasm.objects[ctx].resultingClientId = spasm.decode_string(resultingClientIdLen, resultingClientIdPtr);
    },
    FetchEventInit_resultingClientId_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].resultingClientId);
    },
    FetchEventInit_replacesClientId_Set: function(ctx, replacesClientIdLen, replacesClientIdPtr) {
      spasm.objects[ctx].replacesClientId = spasm.decode_string(replacesClientIdLen, replacesClientIdPtr);
    },
    FetchEventInit_replacesClientId_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].replacesClientId);
    },
    MultiCacheQueryOptions_cacheName_Set: function(ctx, cacheNameLen, cacheNamePtr) {
      spasm.objects[ctx].cacheName = spasm.decode_string(cacheNameLen, cacheNamePtr);
    },
    MultiCacheQueryOptions_cacheName_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].cacheName);
    },
    NavigationPreloadManager_enable: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].enable());
    },
    NavigationPreloadManager_disable: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].disable());
    },
    NavigationPreloadManager_setHeaderValue: function(ctx, valueLen, valuePtr) {
      return spasm.addObject(spasm.objects[ctx].setHeaderValue(spasm.decode_string(valueLen, valuePtr)));
    },
    NavigationPreloadManager_getState: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].getState());
    },
    NavigationPreloadState_enabled_Set: function(ctx, enabled) {
      spasm.objects[ctx].enabled = enabled;
    },
    NavigationPreloadState_enabled_Get: function(ctx) {
      return spasm.objects[ctx].enabled;
    },
    NavigationPreloadState_headerValue_Set: function(ctx, headerValueLen, headerValuePtr) {
      spasm.objects[ctx].headerValue = spasm.decode_string(headerValueLen, headerValuePtr);
    },
    NavigationPreloadState_headerValue_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].headerValue);
    },
    RegistrationOptions_scope_Set: function(ctx, scopeLen, scopePtr) {
      spasm.objects[ctx].scope = spasm.decode_string(scopeLen, scopePtr);
    },
    RegistrationOptions_scope_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].scope);
    },
    RegistrationOptions_type_Set: function(ctx, type) {
      spasm.objects[ctx].type = spasm.decode_WorkerType(type);
    },
    RegistrationOptions_type_Get: function(ctx) {
      return spasm.encode.WorkerType(spasm.objects[ctx].type);
    },
    RegistrationOptions_updateViaCache_Set: function(ctx, updateViaCache) {
      spasm.objects[ctx].updateViaCache = spasm.decode_ServiceWorkerUpdateViaCache(updateViaCache);
    },
    RegistrationOptions_updateViaCache_Get: function(ctx) {
      return spasm.encode.ServiceWorkerUpdateViaCache(spasm.objects[ctx].updateViaCache);
    },
    ServiceWorker_scriptURL_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].scriptURL);
    },
    ServiceWorker_state_Get: function(ctx) {
      return spasm.encode.ServiceWorkerState(spasm.objects[ctx].state);
    },
    ServiceWorker_postMessage: function(ctx, message, transfer) {
      spasm.objects[ctx].postMessage(spasm.objects[message], spasm.objects[transfer]);
    },
    ServiceWorker_onstatechange_Set: function(ctx, onstatechange) {
      spasm.objects[ctx].onstatechange = onstatechange;
    },
    ServiceWorker_onstatechange_Get: function(ctx) {
      return spasm.objects[ctx].onstatechange;
    },
    ServiceWorkerContainer_controller_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].controller);
    },
    ServiceWorkerContainer_ready_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].ready);
    },
    ServiceWorkerContainer_register: function(ctx, scriptURLLen, scriptURLPtr, options) {
      return spasm.addObject(spasm.objects[ctx].register(spasm.decode_string(scriptURLLen, scriptURLPtr), spasm.objects[options]));
    },
    ServiceWorkerContainer_getRegistration: function(ctx, clientURLLen, clientURLPtr) {
      return spasm.addObject(spasm.objects[ctx].getRegistration(spasm.decode_string(clientURLLen, clientURLPtr)));
    },
    ServiceWorkerContainer_getRegistrations: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].getRegistrations());
    },
    ServiceWorkerContainer_startMessages: function(ctx) {
      spasm.objects[ctx].startMessages();
    },
    ServiceWorkerContainer_oncontrollerchange_Set: function(ctx, oncontrollerchange) {
      spasm.objects[ctx].oncontrollerchange = oncontrollerchange;
    },
    ServiceWorkerContainer_oncontrollerchange_Get: function(ctx) {
      return spasm.objects[ctx].oncontrollerchange;
    },
    ServiceWorkerContainer_onmessage_Set: function(ctx, onmessage) {
      spasm.objects[ctx].onmessage = onmessage;
    },
    ServiceWorkerContainer_onmessage_Get: function(ctx) {
      return spasm.objects[ctx].onmessage;
    },
    ServiceWorkerContainer_onmessageerror_Set: function(ctx, onmessageerror) {
      spasm.objects[ctx].onmessageerror = onmessageerror;
    },
    ServiceWorkerContainer_onmessageerror_Get: function(ctx) {
      return spasm.objects[ctx].onmessageerror;
    },
    ServiceWorkerGlobalScope_clients_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].clients);
    },
    ServiceWorkerGlobalScope_registration_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].registration);
    },
    ServiceWorkerGlobalScope_skipWaiting: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].skipWaiting());
    },
    ServiceWorkerGlobalScope_oninstall_Set: function(ctx, oninstall) {
      spasm.objects[ctx].oninstall = oninstall;
    },
    ServiceWorkerGlobalScope_oninstall_Get: function(ctx) {
      return spasm.objects[ctx].oninstall;
    },
    ServiceWorkerGlobalScope_onactivate_Set: function(ctx, onactivate) {
      spasm.objects[ctx].onactivate = onactivate;
    },
    ServiceWorkerGlobalScope_onactivate_Get: function(ctx) {
      return spasm.objects[ctx].onactivate;
    },
    ServiceWorkerGlobalScope_onfetch_Set: function(ctx, onfetch) {
      spasm.objects[ctx].onfetch = onfetch;
    },
    ServiceWorkerGlobalScope_onfetch_Get: function(ctx) {
      return spasm.objects[ctx].onfetch;
    },
    ServiceWorkerGlobalScope_onmessage_Set: function(ctx, onmessage) {
      spasm.objects[ctx].onmessage = onmessage;
    },
    ServiceWorkerGlobalScope_onmessage_Get: function(ctx) {
      return spasm.objects[ctx].onmessage;
    },
    ServiceWorkerGlobalScope_onmessageerror_Set: function(ctx, onmessageerror) {
      spasm.objects[ctx].onmessageerror = onmessageerror;
    },
    ServiceWorkerGlobalScope_onmessageerror_Get: function(ctx) {
      return spasm.objects[ctx].onmessageerror;
    },
    ServiceWorkerGlobalScope_onnotificationclick_Set: function(ctx, onnotificationclick) {
      spasm.objects[ctx].onnotificationclick = onnotificationclick;
    },
    ServiceWorkerGlobalScope_onnotificationclick_Get: function(ctx) {
      return spasm.objects[ctx].onnotificationclick;
    },
    ServiceWorkerGlobalScope_onnotificationclose_Set: function(ctx, onnotificationclose) {
      spasm.objects[ctx].onnotificationclose = onnotificationclose;
    },
    ServiceWorkerGlobalScope_onnotificationclose_Get: function(ctx) {
      return spasm.objects[ctx].onnotificationclose;
    },
    ServiceWorkerRegistration_installing_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].installing);
    },
    ServiceWorkerRegistration_waiting_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].waiting);
    },
    ServiceWorkerRegistration_active_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].active);
    },
    ServiceWorkerRegistration_navigationPreload_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].navigationPreload);
    },
    ServiceWorkerRegistration_scope_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].scope);
    },
    ServiceWorkerRegistration_updateViaCache_Get: function(ctx) {
      return spasm.encode.ServiceWorkerUpdateViaCache(spasm.objects[ctx].updateViaCache);
    },
    ServiceWorkerRegistration_update: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].update());
    },
    ServiceWorkerRegistration_unregister: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].unregister());
    },
    ServiceWorkerRegistration_onupdatefound_Set: function(ctx, onupdatefound) {
      spasm.objects[ctx].onupdatefound = onupdatefound;
    },
    ServiceWorkerRegistration_onupdatefound_Get: function(ctx) {
      return spasm.objects[ctx].onupdatefound;
    },
    ServiceWorkerRegistration_showNotification: function(ctx, titleLen, titlePtr, options) {
      return spasm.addObject(spasm.objects[ctx].showNotification(spasm.decode_string(titleLen, titlePtr), spasm.objects[options]));
    },
    ServiceWorkerRegistration_getNotifications: function(ctx, filter) {
      return spasm.addObject(spasm.objects[ctx].getNotifications(spasm.objects[filter]));
    },
    WindowClient_visibilityState_Get: function(ctx) {
      return spasm.encode.VisibilityState(spasm.objects[ctx].visibilityState);
    },
    WindowClient_focused_Get: function(ctx) {
      return spasm.objects[ctx].focused;
    },
    WindowClient_ancestorOrigins_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].ancestorOrigins);
    },
    WindowClient_focus: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].focus());
    },
    WindowClient_navigate: function(ctx, urlLen, urlPtr) {
      return spasm.addObject(spasm.objects[ctx].navigate(spasm.decode_string(urlLen, urlPtr)));
    },
  }
}