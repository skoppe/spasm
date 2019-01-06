module spasm.bindings.serviceworker;

import spasm.types;
import spasm.bindings.dom;
import spasm.bindings.fetch;
import spasm.bindings.html;
import spasm.bindings.notifications;
import spasm.bindings.pagevisibility;

struct Cache {
  JsHandle handle;
  alias handle this;
  auto match(RequestInfo request, CacheQueryOptions options) {
    return Promise!(Any)(Cache_match(this.handle, request, options.handle));
  }
  auto matchAll(RequestInfo request, CacheQueryOptions options) {
    return Promise!(FrozenArray!(Response))(Cache_matchAll(this.handle, request, options.handle));
  }
  auto add(RequestInfo request) {
    return Promise!(void)(Cache_add(this.handle, request));
  }
  auto addAll(Sequence!(RequestInfo) requests) {
    return Promise!(void)(Cache_addAll(this.handle, requests.handle));
  }
  auto put(RequestInfo request, Response response) {
    return Promise!(void)(Cache_put(this.handle, request, response.handle));
  }
  auto delete_(RequestInfo request, CacheQueryOptions options) {
    return Promise!(bool)(Cache_delete(this.handle, request, options.handle));
  }
  auto keys(RequestInfo request, CacheQueryOptions options) {
    return Promise!(FrozenArray!(Request))(Cache_keys(this.handle, request, options.handle));
  }
}
struct CacheQueryOptions {
  JsHandle handle;
  alias handle this;
  auto ignoreSearch(bool ignoreSearch) {
    CacheQueryOptions_ignoreSearch_Set(this.handle, ignoreSearch);
  }
  auto ignoreSearch() {
    return CacheQueryOptions_ignoreSearch_Get(this.handle);
  }
  auto ignoreMethod(bool ignoreMethod) {
    CacheQueryOptions_ignoreMethod_Set(this.handle, ignoreMethod);
  }
  auto ignoreMethod() {
    return CacheQueryOptions_ignoreMethod_Get(this.handle);
  }
  auto ignoreVary(bool ignoreVary) {
    CacheQueryOptions_ignoreVary_Set(this.handle, ignoreVary);
  }
  auto ignoreVary() {
    return CacheQueryOptions_ignoreVary_Get(this.handle);
  }
}
struct CacheStorage {
  JsHandle handle;
  alias handle this;
  auto match(RequestInfo request, MultiCacheQueryOptions options) {
    return Promise!(Any)(CacheStorage_match(this.handle, request, options.handle));
  }
  auto has(string cacheName) {
    return Promise!(bool)(CacheStorage_has(this.handle, cacheName));
  }
  auto open(string cacheName) {
    return Promise!(Cache)(CacheStorage_open(this.handle, cacheName));
  }
  auto delete_(string cacheName) {
    return Promise!(bool)(CacheStorage_delete(this.handle, cacheName));
  }
  auto keys() {
    return Promise!(Sequence!(string))(CacheStorage_keys(this.handle));
  }
}
struct Client {
  JsHandle handle;
  alias handle this;
  auto url() {
    return Client_url_Get(this.handle);
  }
  auto frameType() {
    return Client_frameType_Get(this.handle);
  }
  auto id() {
    return Client_id_Get(this.handle);
  }
  auto type() {
    return Client_type_Get(this.handle);
  }
  auto postMessage(Any message, Sequence!(JsObject) transfer /* = [] */) {
    Client_postMessage(this.handle, message.handle, transfer.handle);
  }
}
struct ClientQueryOptions {
  JsHandle handle;
  alias handle this;
  auto includeUncontrolled(bool includeUncontrolled) {
    ClientQueryOptions_includeUncontrolled_Set(this.handle, includeUncontrolled);
  }
  auto includeUncontrolled() {
    return ClientQueryOptions_includeUncontrolled_Get(this.handle);
  }
  auto type(ClientType type) {
    ClientQueryOptions_type_Set(this.handle, type);
  }
  auto type() {
    return ClientQueryOptions_type_Get(this.handle);
  }
}
enum ClientType {
  window,
  worker,
  sharedworker,
  all
}
struct Clients {
  JsHandle handle;
  alias handle this;
  auto get(string id) {
    return Promise!(Any)(Clients_get(this.handle, id));
  }
  auto matchAll(ClientQueryOptions options) {
    return Promise!(FrozenArray!(Client))(Clients_matchAll(this.handle, options.handle));
  }
  auto openWindow(string url) {
    return Promise!(Optional!(WindowClient))(Clients_openWindow(this.handle, url));
  }
  auto claim() {
    return Promise!(void)(Clients_claim(this.handle));
  }
}
struct ExtendableEvent {
  Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Event(h);
  }
  auto waitUntil(Promise!(Any) f) {
    ExtendableEvent_waitUntil(this._parent, f.handle);
  }
}
struct ExtendableEventInit {
  EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventInit(h);
  }
}
struct ExtendableMessageEvent {
  ExtendableEvent _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = ExtendableEvent(h);
  }
  auto data() {
    return Any(ExtendableMessageEvent_data_Get(this._parent));
  }
  auto origin() {
    return ExtendableMessageEvent_origin_Get(this._parent);
  }
  auto lastEventId() {
    return ExtendableMessageEvent_lastEventId_Get(this._parent);
  }
  auto source() {
    return ExtendableMessageEvent_source_Get(this._parent);
  }
  auto ports() {
    return FrozenArray!(MessagePort)(ExtendableMessageEvent_ports_Get(this._parent));
  }
}
struct ExtendableMessageEventInit {
  ExtendableEventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = ExtendableEventInit(h);
  }
  auto data(Any data) {
    ExtendableMessageEventInit_data_Set(this._parent, data.handle);
  }
  auto data() {
    return Any(ExtendableMessageEventInit_data_Get(this._parent));
  }
  auto origin(string origin) {
    ExtendableMessageEventInit_origin_Set(this._parent, origin);
  }
  auto origin() {
    return ExtendableMessageEventInit_origin_Get(this._parent);
  }
  auto lastEventId(string lastEventId) {
    ExtendableMessageEventInit_lastEventId_Set(this._parent, lastEventId);
  }
  auto lastEventId() {
    return ExtendableMessageEventInit_lastEventId_Get(this._parent);
  }
  auto source(Optional!(SumType!(Client, ServiceWorker, MessagePort)) source) {
    ExtendableMessageEventInit_source_Set(this._parent, !source.empty, source.front);
  }
  auto source() {
    return ExtendableMessageEventInit_source_Get(this._parent);
  }
  auto ports(Sequence!(MessagePort) ports) {
    ExtendableMessageEventInit_ports_Set(this._parent, ports.handle);
  }
  auto ports() {
    return Sequence!(MessagePort)(ExtendableMessageEventInit_ports_Get(this._parent));
  }
}
struct FetchEvent {
  ExtendableEvent _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = ExtendableEvent(h);
  }
  auto request() {
    return Request(FetchEvent_request_Get(this._parent));
  }
  auto preloadResponse() {
    return Promise!(Any)(FetchEvent_preloadResponse_Get(this._parent));
  }
  auto clientId() {
    return FetchEvent_clientId_Get(this._parent);
  }
  auto resultingClientId() {
    return FetchEvent_resultingClientId_Get(this._parent);
  }
  auto replacesClientId() {
    return FetchEvent_replacesClientId_Get(this._parent);
  }
  auto respondWith(Promise!(Response) r) {
    FetchEvent_respondWith(this._parent, r.handle);
  }
}
struct FetchEventInit {
  ExtendableEventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = ExtendableEventInit(h);
  }
  auto request(Request request) {
    FetchEventInit_request_Set(this._parent, request.handle);
  }
  auto request() {
    return Request(FetchEventInit_request_Get(this._parent));
  }
  auto preloadResponse(Promise!(Any) preloadResponse) {
    FetchEventInit_preloadResponse_Set(this._parent, preloadResponse.handle);
  }
  auto preloadResponse() {
    return Promise!(Any)(FetchEventInit_preloadResponse_Get(this._parent));
  }
  auto clientId(string clientId) {
    FetchEventInit_clientId_Set(this._parent, clientId);
  }
  auto clientId() {
    return FetchEventInit_clientId_Get(this._parent);
  }
  auto resultingClientId(string resultingClientId) {
    FetchEventInit_resultingClientId_Set(this._parent, resultingClientId);
  }
  auto resultingClientId() {
    return FetchEventInit_resultingClientId_Get(this._parent);
  }
  auto replacesClientId(string replacesClientId) {
    FetchEventInit_replacesClientId_Set(this._parent, replacesClientId);
  }
  auto replacesClientId() {
    return FetchEventInit_replacesClientId_Get(this._parent);
  }
}
enum FrameType {
  auxiliary,
  top_level,
  nested,
  none
}
struct MultiCacheQueryOptions {
  CacheQueryOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = CacheQueryOptions(h);
  }
  auto cacheName(string cacheName) {
    MultiCacheQueryOptions_cacheName_Set(this._parent, cacheName);
  }
  auto cacheName() {
    return MultiCacheQueryOptions_cacheName_Get(this._parent);
  }
}
struct NavigationPreloadManager {
  JsHandle handle;
  alias handle this;
  auto enable() {
    return Promise!(void)(NavigationPreloadManager_enable(this.handle));
  }
  auto disable() {
    return Promise!(void)(NavigationPreloadManager_disable(this.handle));
  }
  auto setHeaderValue(string value) {
    return Promise!(void)(NavigationPreloadManager_setHeaderValue(this.handle, value));
  }
  auto getState() {
    return Promise!(NavigationPreloadState)(NavigationPreloadManager_getState(this.handle));
  }
}
struct NavigationPreloadState {
  JsHandle handle;
  alias handle this;
  auto enabled(bool enabled) {
    NavigationPreloadState_enabled_Set(this.handle, enabled);
  }
  auto enabled() {
    return NavigationPreloadState_enabled_Get(this.handle);
  }
  auto headerValue(string headerValue) {
    NavigationPreloadState_headerValue_Set(this.handle, headerValue);
  }
  auto headerValue() {
    return NavigationPreloadState_headerValue_Get(this.handle);
  }
}
struct RegistrationOptions {
  JsHandle handle;
  alias handle this;
  auto scope_(string scope_) {
    RegistrationOptions_scope_Set(this.handle, scope_);
  }
  auto scope_() {
    return RegistrationOptions_scope_Get(this.handle);
  }
  auto type(WorkerType type) {
    RegistrationOptions_type_Set(this.handle, type);
  }
  auto type() {
    return RegistrationOptions_type_Get(this.handle);
  }
  auto updateViaCache(ServiceWorkerUpdateViaCache updateViaCache) {
    RegistrationOptions_updateViaCache_Set(this.handle, updateViaCache);
  }
  auto updateViaCache() {
    return RegistrationOptions_updateViaCache_Get(this.handle);
  }
}
struct ServiceWorker {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto scriptURL() {
    return ServiceWorker_scriptURL_Get(this._parent);
  }
  auto state() {
    return ServiceWorker_state_Get(this._parent);
  }
  auto postMessage(Any message, Sequence!(JsObject) transfer /* = [] */) {
    ServiceWorker_postMessage(this._parent, message.handle, transfer.handle);
  }
  auto onstatechange(EventHandler onstatechange) {
    ServiceWorker_onstatechange_Set(this._parent, onstatechange);
  }
  auto onstatechange() {
    return ServiceWorker_onstatechange_Get(this._parent);
  }
}
struct ServiceWorkerContainer {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto controller() {
    return ServiceWorkerContainer_controller_Get(this._parent);
  }
  auto ready() {
    return Promise!(ServiceWorkerRegistration)(ServiceWorkerContainer_ready_Get(this._parent));
  }
  auto register(string scriptURL, RegistrationOptions options) {
    return Promise!(ServiceWorkerRegistration)(ServiceWorkerContainer_register(this._parent, scriptURL, options.handle));
  }
  auto getRegistration(string clientURL /* = "" */) {
    return Promise!(Any)(ServiceWorkerContainer_getRegistration(this._parent, clientURL));
  }
  auto getRegistrations() {
    return Promise!(FrozenArray!(ServiceWorkerRegistration))(ServiceWorkerContainer_getRegistrations(this._parent));
  }
  auto startMessages() {
    ServiceWorkerContainer_startMessages(this._parent);
  }
  auto oncontrollerchange(EventHandler oncontrollerchange) {
    ServiceWorkerContainer_oncontrollerchange_Set(this._parent, oncontrollerchange);
  }
  auto oncontrollerchange() {
    return ServiceWorkerContainer_oncontrollerchange_Get(this._parent);
  }
  auto onmessage(EventHandler onmessage) {
    ServiceWorkerContainer_onmessage_Set(this._parent, onmessage);
  }
  auto onmessage() {
    return ServiceWorkerContainer_onmessage_Get(this._parent);
  }
  auto onmessageerror(EventHandler onmessageerror) {
    ServiceWorkerContainer_onmessageerror_Set(this._parent, onmessageerror);
  }
  auto onmessageerror() {
    return ServiceWorkerContainer_onmessageerror_Get(this._parent);
  }
}
struct ServiceWorkerGlobalScope {
  WorkerGlobalScope _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = WorkerGlobalScope(h);
  }
  auto clients() {
    return Clients(ServiceWorkerGlobalScope_clients_Get(this._parent));
  }
  auto registration() {
    return ServiceWorkerRegistration(ServiceWorkerGlobalScope_registration_Get(this._parent));
  }
  auto skipWaiting() {
    return Promise!(void)(ServiceWorkerGlobalScope_skipWaiting(this._parent));
  }
  auto oninstall(EventHandler oninstall) {
    ServiceWorkerGlobalScope_oninstall_Set(this._parent, oninstall);
  }
  auto oninstall() {
    return ServiceWorkerGlobalScope_oninstall_Get(this._parent);
  }
  auto onactivate(EventHandler onactivate) {
    ServiceWorkerGlobalScope_onactivate_Set(this._parent, onactivate);
  }
  auto onactivate() {
    return ServiceWorkerGlobalScope_onactivate_Get(this._parent);
  }
  auto onfetch(EventHandler onfetch) {
    ServiceWorkerGlobalScope_onfetch_Set(this._parent, onfetch);
  }
  auto onfetch() {
    return ServiceWorkerGlobalScope_onfetch_Get(this._parent);
  }
  auto onmessage(EventHandler onmessage) {
    ServiceWorkerGlobalScope_onmessage_Set(this._parent, onmessage);
  }
  auto onmessage() {
    return ServiceWorkerGlobalScope_onmessage_Get(this._parent);
  }
  auto onmessageerror(EventHandler onmessageerror) {
    ServiceWorkerGlobalScope_onmessageerror_Set(this._parent, onmessageerror);
  }
  auto onmessageerror() {
    return ServiceWorkerGlobalScope_onmessageerror_Get(this._parent);
  }
  auto onnotificationclick(EventHandler onnotificationclick) {
    ServiceWorkerGlobalScope_onnotificationclick_Set(this._parent, onnotificationclick);
  }
  auto onnotificationclick() {
    return ServiceWorkerGlobalScope_onnotificationclick_Get(this._parent);
  }
  auto onnotificationclose(EventHandler onnotificationclose) {
    ServiceWorkerGlobalScope_onnotificationclose_Set(this._parent, onnotificationclose);
  }
  auto onnotificationclose() {
    return ServiceWorkerGlobalScope_onnotificationclose_Get(this._parent);
  }
}
struct ServiceWorkerRegistration {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto installing() {
    return ServiceWorkerRegistration_installing_Get(this._parent);
  }
  auto waiting() {
    return ServiceWorkerRegistration_waiting_Get(this._parent);
  }
  auto active() {
    return ServiceWorkerRegistration_active_Get(this._parent);
  }
  auto navigationPreload() {
    return NavigationPreloadManager(ServiceWorkerRegistration_navigationPreload_Get(this._parent));
  }
  auto scope_() {
    return ServiceWorkerRegistration_scope_Get(this._parent);
  }
  auto updateViaCache() {
    return ServiceWorkerRegistration_updateViaCache_Get(this._parent);
  }
  auto update() {
    return Promise!(void)(ServiceWorkerRegistration_update(this._parent));
  }
  auto unregister() {
    return Promise!(bool)(ServiceWorkerRegistration_unregister(this._parent));
  }
  auto onupdatefound(EventHandler onupdatefound) {
    ServiceWorkerRegistration_onupdatefound_Set(this._parent, onupdatefound);
  }
  auto onupdatefound() {
    return ServiceWorkerRegistration_onupdatefound_Get(this._parent);
  }
  auto showNotification(string title, NotificationOptions options) {
    return Promise!(void)(ServiceWorkerRegistration_showNotification(this._parent, title, options.handle));
  }
  auto getNotifications(GetNotificationOptions filter) {
    return Promise!(Sequence!(Notification))(ServiceWorkerRegistration_getNotifications(this._parent, filter.handle));
  }
}
enum ServiceWorkerState {
  installing,
  installed,
  activating,
  activated,
  redundant
}
enum ServiceWorkerUpdateViaCache {
  imports,
  all,
  none
}
struct WindowClient {
  Client _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Client(h);
  }
  auto visibilityState() {
    return WindowClient_visibilityState_Get(this._parent);
  }
  auto focused() {
    return WindowClient_focused_Get(this._parent);
  }
  auto ancestorOrigins() {
    return FrozenArray!(string)(WindowClient_ancestorOrigins_Get(this._parent));
  }
  auto focus() {
    return Promise!(WindowClient)(WindowClient_focus(this._parent));
  }
  auto navigate(string url) {
    return Promise!(Optional!(WindowClient))(WindowClient_navigate(this._parent, url));
  }
}


extern (C) JsHandle Cache_match(JsHandle, RequestInfo, JsHandle);
extern (C) JsHandle Cache_matchAll(JsHandle, RequestInfo, JsHandle);
extern (C) JsHandle Cache_add(JsHandle, RequestInfo);
extern (C) JsHandle Cache_addAll(JsHandle, JsHandle);
extern (C) JsHandle Cache_put(JsHandle, RequestInfo, JsHandle);
extern (C) JsHandle Cache_delete(JsHandle, RequestInfo, JsHandle);
extern (C) JsHandle Cache_keys(JsHandle, RequestInfo, JsHandle);
extern (C) void CacheQueryOptions_ignoreSearch_Set(JsHandle, bool);
extern (C) bool CacheQueryOptions_ignoreSearch_Get(JsHandle);
extern (C) void CacheQueryOptions_ignoreMethod_Set(JsHandle, bool);
extern (C) bool CacheQueryOptions_ignoreMethod_Get(JsHandle);
extern (C) void CacheQueryOptions_ignoreVary_Set(JsHandle, bool);
extern (C) bool CacheQueryOptions_ignoreVary_Get(JsHandle);
extern (C) JsHandle CacheStorage_match(JsHandle, RequestInfo, JsHandle);
extern (C) JsHandle CacheStorage_has(JsHandle, string);
extern (C) JsHandle CacheStorage_open(JsHandle, string);
extern (C) JsHandle CacheStorage_delete(JsHandle, string);
extern (C) JsHandle CacheStorage_keys(JsHandle);
extern (C) string Client_url_Get(JsHandle);
extern (C) FrameType Client_frameType_Get(JsHandle);
extern (C) string Client_id_Get(JsHandle);
extern (C) ClientType Client_type_Get(JsHandle);
extern (C) void Client_postMessage(JsHandle, JsHandle, JsHandle);
extern (C) void ClientQueryOptions_includeUncontrolled_Set(JsHandle, bool);
extern (C) bool ClientQueryOptions_includeUncontrolled_Get(JsHandle);
extern (C) void ClientQueryOptions_type_Set(JsHandle, ClientType);
extern (C) ClientType ClientQueryOptions_type_Get(JsHandle);
extern (C) JsHandle Clients_get(JsHandle, string);
extern (C) JsHandle Clients_matchAll(JsHandle, JsHandle);
extern (C) JsHandle Clients_openWindow(JsHandle, string);
extern (C) JsHandle Clients_claim(JsHandle);
extern (C) void ExtendableEvent_waitUntil(JsHandle, JsHandle);
extern (C) JsHandle ExtendableMessageEvent_data_Get(JsHandle);
extern (C) string ExtendableMessageEvent_origin_Get(JsHandle);
extern (C) string ExtendableMessageEvent_lastEventId_Get(JsHandle);
extern (C) Optional!(SumType!(Client, ServiceWorker, MessagePort)) ExtendableMessageEvent_source_Get(JsHandle);
extern (C) JsHandle ExtendableMessageEvent_ports_Get(JsHandle);
extern (C) void ExtendableMessageEventInit_data_Set(JsHandle, JsHandle);
extern (C) JsHandle ExtendableMessageEventInit_data_Get(JsHandle);
extern (C) void ExtendableMessageEventInit_origin_Set(JsHandle, string);
extern (C) string ExtendableMessageEventInit_origin_Get(JsHandle);
extern (C) void ExtendableMessageEventInit_lastEventId_Set(JsHandle, string);
extern (C) string ExtendableMessageEventInit_lastEventId_Get(JsHandle);
extern (C) void ExtendableMessageEventInit_source_Set(JsHandle, bool, SumType!(Client, ServiceWorker, MessagePort));
extern (C) Optional!(SumType!(Client, ServiceWorker, MessagePort)) ExtendableMessageEventInit_source_Get(JsHandle);
extern (C) void ExtendableMessageEventInit_ports_Set(JsHandle, JsHandle);
extern (C) JsHandle ExtendableMessageEventInit_ports_Get(JsHandle);
extern (C) JsHandle FetchEvent_request_Get(JsHandle);
extern (C) JsHandle FetchEvent_preloadResponse_Get(JsHandle);
extern (C) string FetchEvent_clientId_Get(JsHandle);
extern (C) string FetchEvent_resultingClientId_Get(JsHandle);
extern (C) string FetchEvent_replacesClientId_Get(JsHandle);
extern (C) void FetchEvent_respondWith(JsHandle, JsHandle);
extern (C) void FetchEventInit_request_Set(JsHandle, JsHandle);
extern (C) JsHandle FetchEventInit_request_Get(JsHandle);
extern (C) void FetchEventInit_preloadResponse_Set(JsHandle, JsHandle);
extern (C) JsHandle FetchEventInit_preloadResponse_Get(JsHandle);
extern (C) void FetchEventInit_clientId_Set(JsHandle, string);
extern (C) string FetchEventInit_clientId_Get(JsHandle);
extern (C) void FetchEventInit_resultingClientId_Set(JsHandle, string);
extern (C) string FetchEventInit_resultingClientId_Get(JsHandle);
extern (C) void FetchEventInit_replacesClientId_Set(JsHandle, string);
extern (C) string FetchEventInit_replacesClientId_Get(JsHandle);
extern (C) void MultiCacheQueryOptions_cacheName_Set(JsHandle, string);
extern (C) string MultiCacheQueryOptions_cacheName_Get(JsHandle);
extern (C) JsHandle NavigationPreloadManager_enable(JsHandle);
extern (C) JsHandle NavigationPreloadManager_disable(JsHandle);
extern (C) JsHandle NavigationPreloadManager_setHeaderValue(JsHandle, string);
extern (C) JsHandle NavigationPreloadManager_getState(JsHandle);
extern (C) void NavigationPreloadState_enabled_Set(JsHandle, bool);
extern (C) bool NavigationPreloadState_enabled_Get(JsHandle);
extern (C) void NavigationPreloadState_headerValue_Set(JsHandle, string);
extern (C) string NavigationPreloadState_headerValue_Get(JsHandle);
extern (C) void RegistrationOptions_scope_Set(JsHandle, string);
extern (C) string RegistrationOptions_scope_Get(JsHandle);
extern (C) void RegistrationOptions_type_Set(JsHandle, WorkerType);
extern (C) WorkerType RegistrationOptions_type_Get(JsHandle);
extern (C) void RegistrationOptions_updateViaCache_Set(JsHandle, ServiceWorkerUpdateViaCache);
extern (C) ServiceWorkerUpdateViaCache RegistrationOptions_updateViaCache_Get(JsHandle);
extern (C) string ServiceWorker_scriptURL_Get(JsHandle);
extern (C) ServiceWorkerState ServiceWorker_state_Get(JsHandle);
extern (C) void ServiceWorker_postMessage(JsHandle, JsHandle, JsHandle);
extern (C) void ServiceWorker_onstatechange_Set(JsHandle, EventHandler);
extern (C) EventHandler ServiceWorker_onstatechange_Get(JsHandle);
extern (C) Optional!(ServiceWorker) ServiceWorkerContainer_controller_Get(JsHandle);
extern (C) JsHandle ServiceWorkerContainer_ready_Get(JsHandle);
extern (C) JsHandle ServiceWorkerContainer_register(JsHandle, string, JsHandle);
extern (C) JsHandle ServiceWorkerContainer_getRegistration(JsHandle, string);
extern (C) JsHandle ServiceWorkerContainer_getRegistrations(JsHandle);
extern (C) void ServiceWorkerContainer_startMessages(JsHandle);
extern (C) void ServiceWorkerContainer_oncontrollerchange_Set(JsHandle, EventHandler);
extern (C) EventHandler ServiceWorkerContainer_oncontrollerchange_Get(JsHandle);
extern (C) void ServiceWorkerContainer_onmessage_Set(JsHandle, EventHandler);
extern (C) EventHandler ServiceWorkerContainer_onmessage_Get(JsHandle);
extern (C) void ServiceWorkerContainer_onmessageerror_Set(JsHandle, EventHandler);
extern (C) EventHandler ServiceWorkerContainer_onmessageerror_Get(JsHandle);
extern (C) JsHandle ServiceWorkerGlobalScope_clients_Get(JsHandle);
extern (C) JsHandle ServiceWorkerGlobalScope_registration_Get(JsHandle);
extern (C) JsHandle ServiceWorkerGlobalScope_skipWaiting(JsHandle);
extern (C) void ServiceWorkerGlobalScope_oninstall_Set(JsHandle, EventHandler);
extern (C) EventHandler ServiceWorkerGlobalScope_oninstall_Get(JsHandle);
extern (C) void ServiceWorkerGlobalScope_onactivate_Set(JsHandle, EventHandler);
extern (C) EventHandler ServiceWorkerGlobalScope_onactivate_Get(JsHandle);
extern (C) void ServiceWorkerGlobalScope_onfetch_Set(JsHandle, EventHandler);
extern (C) EventHandler ServiceWorkerGlobalScope_onfetch_Get(JsHandle);
extern (C) void ServiceWorkerGlobalScope_onmessage_Set(JsHandle, EventHandler);
extern (C) EventHandler ServiceWorkerGlobalScope_onmessage_Get(JsHandle);
extern (C) void ServiceWorkerGlobalScope_onmessageerror_Set(JsHandle, EventHandler);
extern (C) EventHandler ServiceWorkerGlobalScope_onmessageerror_Get(JsHandle);
extern (C) void ServiceWorkerGlobalScope_onnotificationclick_Set(JsHandle, EventHandler);
extern (C) EventHandler ServiceWorkerGlobalScope_onnotificationclick_Get(JsHandle);
extern (C) void ServiceWorkerGlobalScope_onnotificationclose_Set(JsHandle, EventHandler);
extern (C) EventHandler ServiceWorkerGlobalScope_onnotificationclose_Get(JsHandle);
extern (C) Optional!(ServiceWorker) ServiceWorkerRegistration_installing_Get(JsHandle);
extern (C) Optional!(ServiceWorker) ServiceWorkerRegistration_waiting_Get(JsHandle);
extern (C) Optional!(ServiceWorker) ServiceWorkerRegistration_active_Get(JsHandle);
extern (C) JsHandle ServiceWorkerRegistration_navigationPreload_Get(JsHandle);
extern (C) string ServiceWorkerRegistration_scope_Get(JsHandle);
extern (C) ServiceWorkerUpdateViaCache ServiceWorkerRegistration_updateViaCache_Get(JsHandle);
extern (C) JsHandle ServiceWorkerRegistration_update(JsHandle);
extern (C) JsHandle ServiceWorkerRegistration_unregister(JsHandle);
extern (C) void ServiceWorkerRegistration_onupdatefound_Set(JsHandle, EventHandler);
extern (C) EventHandler ServiceWorkerRegistration_onupdatefound_Get(JsHandle);
extern (C) JsHandle ServiceWorkerRegistration_showNotification(JsHandle, string, JsHandle);
extern (C) JsHandle ServiceWorkerRegistration_getNotifications(JsHandle, JsHandle);
extern (C) VisibilityState WindowClient_visibilityState_Get(JsHandle);
extern (C) bool WindowClient_focused_Get(JsHandle);
extern (C) JsHandle WindowClient_ancestorOrigins_Get(JsHandle);
extern (C) JsHandle WindowClient_focus(JsHandle);
extern (C) JsHandle WindowClient_navigate(JsHandle, string);