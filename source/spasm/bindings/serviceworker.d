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
    auto result = Promise!(Any)(JsHandle(Cache_match(this.handle, request, options.handle)));
    return result;
  }
  auto matchAll(RequestInfo request, CacheQueryOptions options) {
    auto result = Promise!(FrozenArray!(Response))(JsHandle(Cache_matchAll(this.handle, request, options.handle)));
    return result;
  }
  auto add(RequestInfo request) {
    auto result = Promise!(void)(JsHandle(Cache_add(this.handle, request)));
    return result;
  }
  auto addAll(Sequence!(RequestInfo) requests) {
    auto result = Promise!(void)(JsHandle(Cache_addAll(this.handle, requests.handle)));
    return result;
  }
  auto put(RequestInfo request, Response response) {
    auto result = Promise!(void)(JsHandle(Cache_put(this.handle, request, response.handle)));
    return result;
  }
  auto delete_(RequestInfo request, CacheQueryOptions options) {
    auto result = Promise!(bool)(JsHandle(Cache_delete(this.handle, request, options.handle)));
    return result;
  }
  auto keys(RequestInfo request, CacheQueryOptions options) {
    auto result = Promise!(FrozenArray!(Request))(JsHandle(Cache_keys(this.handle, request, options.handle)));
    return result;
  }
}
struct CacheQueryOptions {
  JsHandle handle;
  alias handle this;
  auto ignoreSearch(bool ignoreSearch) {
    CacheQueryOptions_ignoreSearch_Set(this.handle, ignoreSearch);
  }
  auto ignoreSearch() {
    auto result = CacheQueryOptions_ignoreSearch_Get(this.handle);
    return result;
  }
  auto ignoreMethod(bool ignoreMethod) {
    CacheQueryOptions_ignoreMethod_Set(this.handle, ignoreMethod);
  }
  auto ignoreMethod() {
    auto result = CacheQueryOptions_ignoreMethod_Get(this.handle);
    return result;
  }
  auto ignoreVary(bool ignoreVary) {
    CacheQueryOptions_ignoreVary_Set(this.handle, ignoreVary);
  }
  auto ignoreVary() {
    auto result = CacheQueryOptions_ignoreVary_Get(this.handle);
    return result;
  }
}
struct CacheStorage {
  JsHandle handle;
  alias handle this;
  auto match(RequestInfo request, MultiCacheQueryOptions options) {
    auto result = Promise!(Any)(JsHandle(CacheStorage_match(this.handle, request, options.handle)));
    return result;
  }
  auto has(string cacheName) {
    auto result = Promise!(bool)(JsHandle(CacheStorage_has(this.handle, cacheName)));
    return result;
  }
  auto open(string cacheName) {
    auto result = Promise!(Cache)(JsHandle(CacheStorage_open(this.handle, cacheName)));
    return result;
  }
  auto delete_(string cacheName) {
    auto result = Promise!(bool)(JsHandle(CacheStorage_delete(this.handle, cacheName)));
    return result;
  }
  auto keys() {
    auto result = Promise!(Sequence!(string))(JsHandle(CacheStorage_keys(this.handle)));
    return result;
  }
}
struct Client {
  JsHandle handle;
  alias handle this;
  auto url() {
    auto result = Client_url_Get(this.handle);
    return result;
  }
  auto frameType() {
    auto result = Client_frameType_Get(this.handle);
    return result;
  }
  auto id() {
    auto result = Client_id_Get(this.handle);
    return result;
  }
  auto type() {
    auto result = Client_type_Get(this.handle);
    return result;
  }
  auto postMessage(T0)(T0 message, Sequence!(JsObject) transfer /* = [] */) {
    Handle _handle_message = getOrCreateHandle(message);
    Client_postMessage(this.handle, _handle_message, transfer.handle);
    dropHandle!(T0)(_handle_message);
  }
}
struct ClientQueryOptions {
  JsHandle handle;
  alias handle this;
  auto includeUncontrolled(bool includeUncontrolled) {
    ClientQueryOptions_includeUncontrolled_Set(this.handle, includeUncontrolled);
  }
  auto includeUncontrolled() {
    auto result = ClientQueryOptions_includeUncontrolled_Get(this.handle);
    return result;
  }
  auto type(ClientType type) {
    ClientQueryOptions_type_Set(this.handle, type);
  }
  auto type() {
    auto result = ClientQueryOptions_type_Get(this.handle);
    return result;
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
    auto result = Promise!(Any)(JsHandle(Clients_get(this.handle, id)));
    return result;
  }
  auto matchAll(ClientQueryOptions options) {
    auto result = Promise!(FrozenArray!(Client))(JsHandle(Clients_matchAll(this.handle, options.handle)));
    return result;
  }
  auto openWindow(string url) {
    auto result = Promise!(Optional!(WindowClient))(JsHandle(Clients_openWindow(this.handle, url)));
    return result;
  }
  auto claim() {
    auto result = Promise!(void)(JsHandle(Clients_claim(this.handle)));
    return result;
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
    auto result = Any(JsHandle(ExtendableMessageEvent_data_Get(this._parent)));
    return result;
  }
  auto origin() {
    auto result = ExtendableMessageEvent_origin_Get(this._parent);
    return result;
  }
  auto lastEventId() {
    auto result = ExtendableMessageEvent_lastEventId_Get(this._parent);
    return result;
  }
  auto source() {
    auto result = ExtendableMessageEvent_source_Get(this._parent);
    return result;
  }
  auto ports() {
    auto result = FrozenArray!(MessagePort)(JsHandle(ExtendableMessageEvent_ports_Get(this._parent)));
    return result;
  }
}
struct ExtendableMessageEventInit {
  ExtendableEventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = ExtendableEventInit(h);
  }
  auto data(T0)(T0 data) {
    Handle _handle_data = getOrCreateHandle(data);
    ExtendableMessageEventInit_data_Set(this._parent, _handle_data);
    dropHandle!(T0)(_handle_data);
  }
  auto data() {
    auto result = Any(JsHandle(ExtendableMessageEventInit_data_Get(this._parent)));
    return result;
  }
  auto origin(string origin) {
    ExtendableMessageEventInit_origin_Set(this._parent, origin);
  }
  auto origin() {
    auto result = ExtendableMessageEventInit_origin_Get(this._parent);
    return result;
  }
  auto lastEventId(string lastEventId) {
    ExtendableMessageEventInit_lastEventId_Set(this._parent, lastEventId);
  }
  auto lastEventId() {
    auto result = ExtendableMessageEventInit_lastEventId_Get(this._parent);
    return result;
  }
  auto source(Optional!(SumType!(Client, ServiceWorker, MessagePort)) source) {
    ExtendableMessageEventInit_source_Set(this._parent, !source.empty, source.front);
  }
  auto source() {
    auto result = ExtendableMessageEventInit_source_Get(this._parent);
    return result;
  }
  auto ports(Sequence!(MessagePort) ports) {
    ExtendableMessageEventInit_ports_Set(this._parent, ports.handle);
  }
  auto ports() {
    auto result = Sequence!(MessagePort)(JsHandle(ExtendableMessageEventInit_ports_Get(this._parent)));
    return result;
  }
}
struct FetchEvent {
  ExtendableEvent _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = ExtendableEvent(h);
  }
  auto request() {
    auto result = Request(JsHandle(FetchEvent_request_Get(this._parent)));
    return result;
  }
  auto preloadResponse() {
    auto result = Promise!(Any)(JsHandle(FetchEvent_preloadResponse_Get(this._parent)));
    return result;
  }
  auto clientId() {
    auto result = FetchEvent_clientId_Get(this._parent);
    return result;
  }
  auto resultingClientId() {
    auto result = FetchEvent_resultingClientId_Get(this._parent);
    return result;
  }
  auto replacesClientId() {
    auto result = FetchEvent_replacesClientId_Get(this._parent);
    return result;
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
    auto result = Request(JsHandle(FetchEventInit_request_Get(this._parent)));
    return result;
  }
  auto preloadResponse(Promise!(Any) preloadResponse) {
    FetchEventInit_preloadResponse_Set(this._parent, preloadResponse.handle);
  }
  auto preloadResponse() {
    auto result = Promise!(Any)(JsHandle(FetchEventInit_preloadResponse_Get(this._parent)));
    return result;
  }
  auto clientId(string clientId) {
    FetchEventInit_clientId_Set(this._parent, clientId);
  }
  auto clientId() {
    auto result = FetchEventInit_clientId_Get(this._parent);
    return result;
  }
  auto resultingClientId(string resultingClientId) {
    FetchEventInit_resultingClientId_Set(this._parent, resultingClientId);
  }
  auto resultingClientId() {
    auto result = FetchEventInit_resultingClientId_Get(this._parent);
    return result;
  }
  auto replacesClientId(string replacesClientId) {
    FetchEventInit_replacesClientId_Set(this._parent, replacesClientId);
  }
  auto replacesClientId() {
    auto result = FetchEventInit_replacesClientId_Get(this._parent);
    return result;
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
    auto result = MultiCacheQueryOptions_cacheName_Get(this._parent);
    return result;
  }
}
struct NavigationPreloadManager {
  JsHandle handle;
  alias handle this;
  auto enable() {
    auto result = Promise!(void)(JsHandle(NavigationPreloadManager_enable(this.handle)));
    return result;
  }
  auto disable() {
    auto result = Promise!(void)(JsHandle(NavigationPreloadManager_disable(this.handle)));
    return result;
  }
  auto setHeaderValue(string value) {
    auto result = Promise!(void)(JsHandle(NavigationPreloadManager_setHeaderValue(this.handle, value)));
    return result;
  }
  auto getState() {
    auto result = Promise!(NavigationPreloadState)(JsHandle(NavigationPreloadManager_getState(this.handle)));
    return result;
  }
}
struct NavigationPreloadState {
  JsHandle handle;
  alias handle this;
  auto enabled(bool enabled) {
    NavigationPreloadState_enabled_Set(this.handle, enabled);
  }
  auto enabled() {
    auto result = NavigationPreloadState_enabled_Get(this.handle);
    return result;
  }
  auto headerValue(string headerValue) {
    NavigationPreloadState_headerValue_Set(this.handle, headerValue);
  }
  auto headerValue() {
    auto result = NavigationPreloadState_headerValue_Get(this.handle);
    return result;
  }
}
struct RegistrationOptions {
  JsHandle handle;
  alias handle this;
  auto scope_(string scope_) {
    RegistrationOptions_scope_Set(this.handle, scope_);
  }
  auto scope_() {
    auto result = RegistrationOptions_scope_Get(this.handle);
    return result;
  }
  auto type(WorkerType type) {
    RegistrationOptions_type_Set(this.handle, type);
  }
  auto type() {
    auto result = RegistrationOptions_type_Get(this.handle);
    return result;
  }
  auto updateViaCache(ServiceWorkerUpdateViaCache updateViaCache) {
    RegistrationOptions_updateViaCache_Set(this.handle, updateViaCache);
  }
  auto updateViaCache() {
    auto result = RegistrationOptions_updateViaCache_Get(this.handle);
    return result;
  }
}
struct ServiceWorker {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto scriptURL() {
    auto result = ServiceWorker_scriptURL_Get(this._parent);
    return result;
  }
  auto state() {
    auto result = ServiceWorker_state_Get(this._parent);
    return result;
  }
  auto postMessage(T0)(T0 message, Sequence!(JsObject) transfer /* = [] */) {
    Handle _handle_message = getOrCreateHandle(message);
    ServiceWorker_postMessage(this._parent, _handle_message, transfer.handle);
    dropHandle!(T0)(_handle_message);
  }
  auto onstatechange(EventHandler onstatechange) {
    ServiceWorker_onstatechange_Set(this._parent, onstatechange);
  }
  auto onstatechange() {
    auto result = ServiceWorker_onstatechange_Get(this._parent);
    return result;
  }
}
struct ServiceWorkerContainer {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto controller() {
    auto result = ServiceWorkerContainer_controller_Get(this._parent);
    return result;
  }
  auto ready() {
    auto result = Promise!(ServiceWorkerRegistration)(JsHandle(ServiceWorkerContainer_ready_Get(this._parent)));
    return result;
  }
  auto register(string scriptURL, RegistrationOptions options) {
    auto result = Promise!(ServiceWorkerRegistration)(JsHandle(ServiceWorkerContainer_register(this._parent, scriptURL, options.handle)));
    return result;
  }
  auto getRegistration(string clientURL /* = "" */) {
    auto result = Promise!(Any)(JsHandle(ServiceWorkerContainer_getRegistration(this._parent, clientURL)));
    return result;
  }
  auto getRegistrations() {
    auto result = Promise!(FrozenArray!(ServiceWorkerRegistration))(JsHandle(ServiceWorkerContainer_getRegistrations(this._parent)));
    return result;
  }
  auto startMessages() {
    ServiceWorkerContainer_startMessages(this._parent);
  }
  auto oncontrollerchange(EventHandler oncontrollerchange) {
    ServiceWorkerContainer_oncontrollerchange_Set(this._parent, oncontrollerchange);
  }
  auto oncontrollerchange() {
    auto result = ServiceWorkerContainer_oncontrollerchange_Get(this._parent);
    return result;
  }
  auto onmessage(EventHandler onmessage) {
    ServiceWorkerContainer_onmessage_Set(this._parent, onmessage);
  }
  auto onmessage() {
    auto result = ServiceWorkerContainer_onmessage_Get(this._parent);
    return result;
  }
  auto onmessageerror(EventHandler onmessageerror) {
    ServiceWorkerContainer_onmessageerror_Set(this._parent, onmessageerror);
  }
  auto onmessageerror() {
    auto result = ServiceWorkerContainer_onmessageerror_Get(this._parent);
    return result;
  }
}
struct ServiceWorkerGlobalScope {
  WorkerGlobalScope _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = WorkerGlobalScope(h);
  }
  auto clients() {
    auto result = Clients(JsHandle(ServiceWorkerGlobalScope_clients_Get(this._parent)));
    return result;
  }
  auto registration() {
    auto result = ServiceWorkerRegistration(JsHandle(ServiceWorkerGlobalScope_registration_Get(this._parent)));
    return result;
  }
  auto skipWaiting() {
    auto result = Promise!(void)(JsHandle(ServiceWorkerGlobalScope_skipWaiting(this._parent)));
    return result;
  }
  auto oninstall(EventHandler oninstall) {
    ServiceWorkerGlobalScope_oninstall_Set(this._parent, oninstall);
  }
  auto oninstall() {
    auto result = ServiceWorkerGlobalScope_oninstall_Get(this._parent);
    return result;
  }
  auto onactivate(EventHandler onactivate) {
    ServiceWorkerGlobalScope_onactivate_Set(this._parent, onactivate);
  }
  auto onactivate() {
    auto result = ServiceWorkerGlobalScope_onactivate_Get(this._parent);
    return result;
  }
  auto onfetch(EventHandler onfetch) {
    ServiceWorkerGlobalScope_onfetch_Set(this._parent, onfetch);
  }
  auto onfetch() {
    auto result = ServiceWorkerGlobalScope_onfetch_Get(this._parent);
    return result;
  }
  auto onmessage(EventHandler onmessage) {
    ServiceWorkerGlobalScope_onmessage_Set(this._parent, onmessage);
  }
  auto onmessage() {
    auto result = ServiceWorkerGlobalScope_onmessage_Get(this._parent);
    return result;
  }
  auto onmessageerror(EventHandler onmessageerror) {
    ServiceWorkerGlobalScope_onmessageerror_Set(this._parent, onmessageerror);
  }
  auto onmessageerror() {
    auto result = ServiceWorkerGlobalScope_onmessageerror_Get(this._parent);
    return result;
  }
  auto onnotificationclick(EventHandler onnotificationclick) {
    ServiceWorkerGlobalScope_onnotificationclick_Set(this._parent, onnotificationclick);
  }
  auto onnotificationclick() {
    auto result = ServiceWorkerGlobalScope_onnotificationclick_Get(this._parent);
    return result;
  }
  auto onnotificationclose(EventHandler onnotificationclose) {
    ServiceWorkerGlobalScope_onnotificationclose_Set(this._parent, onnotificationclose);
  }
  auto onnotificationclose() {
    auto result = ServiceWorkerGlobalScope_onnotificationclose_Get(this._parent);
    return result;
  }
}
struct ServiceWorkerRegistration {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto installing() {
    auto result = ServiceWorkerRegistration_installing_Get(this._parent);
    return result;
  }
  auto waiting() {
    auto result = ServiceWorkerRegistration_waiting_Get(this._parent);
    return result;
  }
  auto active() {
    auto result = ServiceWorkerRegistration_active_Get(this._parent);
    return result;
  }
  auto navigationPreload() {
    auto result = NavigationPreloadManager(JsHandle(ServiceWorkerRegistration_navigationPreload_Get(this._parent)));
    return result;
  }
  auto scope_() {
    auto result = ServiceWorkerRegistration_scope_Get(this._parent);
    return result;
  }
  auto updateViaCache() {
    auto result = ServiceWorkerRegistration_updateViaCache_Get(this._parent);
    return result;
  }
  auto update() {
    auto result = Promise!(void)(JsHandle(ServiceWorkerRegistration_update(this._parent)));
    return result;
  }
  auto unregister() {
    auto result = Promise!(bool)(JsHandle(ServiceWorkerRegistration_unregister(this._parent)));
    return result;
  }
  auto onupdatefound(EventHandler onupdatefound) {
    ServiceWorkerRegistration_onupdatefound_Set(this._parent, onupdatefound);
  }
  auto onupdatefound() {
    auto result = ServiceWorkerRegistration_onupdatefound_Get(this._parent);
    return result;
  }
  auto showNotification(string title, NotificationOptions options) {
    auto result = Promise!(void)(JsHandle(ServiceWorkerRegistration_showNotification(this._parent, title, options.handle)));
    return result;
  }
  auto getNotifications(GetNotificationOptions filter) {
    auto result = Promise!(Sequence!(Notification))(JsHandle(ServiceWorkerRegistration_getNotifications(this._parent, filter.handle)));
    return result;
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
    auto result = WindowClient_visibilityState_Get(this._parent);
    return result;
  }
  auto focused() {
    auto result = WindowClient_focused_Get(this._parent);
    return result;
  }
  auto ancestorOrigins() {
    auto result = FrozenArray!(string)(JsHandle(WindowClient_ancestorOrigins_Get(this._parent)));
    return result;
  }
  auto focus() {
    auto result = Promise!(WindowClient)(JsHandle(WindowClient_focus(this._parent)));
    return result;
  }
  auto navigate(string url) {
    auto result = Promise!(Optional!(WindowClient))(JsHandle(WindowClient_navigate(this._parent, url)));
    return result;
  }
}


extern (C) Handle Cache_match(Handle, RequestInfo, Handle);
extern (C) Handle Cache_matchAll(Handle, RequestInfo, Handle);
extern (C) Handle Cache_add(Handle, RequestInfo);
extern (C) Handle Cache_addAll(Handle, Handle);
extern (C) Handle Cache_put(Handle, RequestInfo, Handle);
extern (C) Handle Cache_delete(Handle, RequestInfo, Handle);
extern (C) Handle Cache_keys(Handle, RequestInfo, Handle);
extern (C) void CacheQueryOptions_ignoreSearch_Set(Handle, bool);
extern (C) bool CacheQueryOptions_ignoreSearch_Get(Handle);
extern (C) void CacheQueryOptions_ignoreMethod_Set(Handle, bool);
extern (C) bool CacheQueryOptions_ignoreMethod_Get(Handle);
extern (C) void CacheQueryOptions_ignoreVary_Set(Handle, bool);
extern (C) bool CacheQueryOptions_ignoreVary_Get(Handle);
extern (C) Handle CacheStorage_match(Handle, RequestInfo, Handle);
extern (C) Handle CacheStorage_has(Handle, string);
extern (C) Handle CacheStorage_open(Handle, string);
extern (C) Handle CacheStorage_delete(Handle, string);
extern (C) Handle CacheStorage_keys(Handle);
extern (C) string Client_url_Get(Handle);
extern (C) FrameType Client_frameType_Get(Handle);
extern (C) string Client_id_Get(Handle);
extern (C) ClientType Client_type_Get(Handle);
extern (C) void Client_postMessage(Handle, Handle, Handle);
extern (C) void ClientQueryOptions_includeUncontrolled_Set(Handle, bool);
extern (C) bool ClientQueryOptions_includeUncontrolled_Get(Handle);
extern (C) void ClientQueryOptions_type_Set(Handle, ClientType);
extern (C) ClientType ClientQueryOptions_type_Get(Handle);
extern (C) Handle Clients_get(Handle, string);
extern (C) Handle Clients_matchAll(Handle, Handle);
extern (C) Handle Clients_openWindow(Handle, string);
extern (C) Handle Clients_claim(Handle);
extern (C) void ExtendableEvent_waitUntil(Handle, Handle);
extern (C) Handle ExtendableMessageEvent_data_Get(Handle);
extern (C) string ExtendableMessageEvent_origin_Get(Handle);
extern (C) string ExtendableMessageEvent_lastEventId_Get(Handle);
extern (C) Optional!(SumType!(Client, ServiceWorker, MessagePort)) ExtendableMessageEvent_source_Get(Handle);
extern (C) Handle ExtendableMessageEvent_ports_Get(Handle);
extern (C) void ExtendableMessageEventInit_data_Set(Handle, Handle);
extern (C) Handle ExtendableMessageEventInit_data_Get(Handle);
extern (C) void ExtendableMessageEventInit_origin_Set(Handle, string);
extern (C) string ExtendableMessageEventInit_origin_Get(Handle);
extern (C) void ExtendableMessageEventInit_lastEventId_Set(Handle, string);
extern (C) string ExtendableMessageEventInit_lastEventId_Get(Handle);
extern (C) void ExtendableMessageEventInit_source_Set(Handle, bool, SumType!(Client, ServiceWorker, MessagePort));
extern (C) Optional!(SumType!(Client, ServiceWorker, MessagePort)) ExtendableMessageEventInit_source_Get(Handle);
extern (C) void ExtendableMessageEventInit_ports_Set(Handle, Handle);
extern (C) Handle ExtendableMessageEventInit_ports_Get(Handle);
extern (C) Handle FetchEvent_request_Get(Handle);
extern (C) Handle FetchEvent_preloadResponse_Get(Handle);
extern (C) string FetchEvent_clientId_Get(Handle);
extern (C) string FetchEvent_resultingClientId_Get(Handle);
extern (C) string FetchEvent_replacesClientId_Get(Handle);
extern (C) void FetchEvent_respondWith(Handle, Handle);
extern (C) void FetchEventInit_request_Set(Handle, Handle);
extern (C) Handle FetchEventInit_request_Get(Handle);
extern (C) void FetchEventInit_preloadResponse_Set(Handle, Handle);
extern (C) Handle FetchEventInit_preloadResponse_Get(Handle);
extern (C) void FetchEventInit_clientId_Set(Handle, string);
extern (C) string FetchEventInit_clientId_Get(Handle);
extern (C) void FetchEventInit_resultingClientId_Set(Handle, string);
extern (C) string FetchEventInit_resultingClientId_Get(Handle);
extern (C) void FetchEventInit_replacesClientId_Set(Handle, string);
extern (C) string FetchEventInit_replacesClientId_Get(Handle);
extern (C) void MultiCacheQueryOptions_cacheName_Set(Handle, string);
extern (C) string MultiCacheQueryOptions_cacheName_Get(Handle);
extern (C) Handle NavigationPreloadManager_enable(Handle);
extern (C) Handle NavigationPreloadManager_disable(Handle);
extern (C) Handle NavigationPreloadManager_setHeaderValue(Handle, string);
extern (C) Handle NavigationPreloadManager_getState(Handle);
extern (C) void NavigationPreloadState_enabled_Set(Handle, bool);
extern (C) bool NavigationPreloadState_enabled_Get(Handle);
extern (C) void NavigationPreloadState_headerValue_Set(Handle, string);
extern (C) string NavigationPreloadState_headerValue_Get(Handle);
extern (C) void RegistrationOptions_scope_Set(Handle, string);
extern (C) string RegistrationOptions_scope_Get(Handle);
extern (C) void RegistrationOptions_type_Set(Handle, WorkerType);
extern (C) WorkerType RegistrationOptions_type_Get(Handle);
extern (C) void RegistrationOptions_updateViaCache_Set(Handle, ServiceWorkerUpdateViaCache);
extern (C) ServiceWorkerUpdateViaCache RegistrationOptions_updateViaCache_Get(Handle);
extern (C) string ServiceWorker_scriptURL_Get(Handle);
extern (C) ServiceWorkerState ServiceWorker_state_Get(Handle);
extern (C) void ServiceWorker_postMessage(Handle, Handle, Handle);
extern (C) void ServiceWorker_onstatechange_Set(Handle, EventHandler);
extern (C) EventHandler ServiceWorker_onstatechange_Get(Handle);
extern (C) Optional!(ServiceWorker) ServiceWorkerContainer_controller_Get(Handle);
extern (C) Handle ServiceWorkerContainer_ready_Get(Handle);
extern (C) Handle ServiceWorkerContainer_register(Handle, string, Handle);
extern (C) Handle ServiceWorkerContainer_getRegistration(Handle, string);
extern (C) Handle ServiceWorkerContainer_getRegistrations(Handle);
extern (C) void ServiceWorkerContainer_startMessages(Handle);
extern (C) void ServiceWorkerContainer_oncontrollerchange_Set(Handle, EventHandler);
extern (C) EventHandler ServiceWorkerContainer_oncontrollerchange_Get(Handle);
extern (C) void ServiceWorkerContainer_onmessage_Set(Handle, EventHandler);
extern (C) EventHandler ServiceWorkerContainer_onmessage_Get(Handle);
extern (C) void ServiceWorkerContainer_onmessageerror_Set(Handle, EventHandler);
extern (C) EventHandler ServiceWorkerContainer_onmessageerror_Get(Handle);
extern (C) Handle ServiceWorkerGlobalScope_clients_Get(Handle);
extern (C) Handle ServiceWorkerGlobalScope_registration_Get(Handle);
extern (C) Handle ServiceWorkerGlobalScope_skipWaiting(Handle);
extern (C) void ServiceWorkerGlobalScope_oninstall_Set(Handle, EventHandler);
extern (C) EventHandler ServiceWorkerGlobalScope_oninstall_Get(Handle);
extern (C) void ServiceWorkerGlobalScope_onactivate_Set(Handle, EventHandler);
extern (C) EventHandler ServiceWorkerGlobalScope_onactivate_Get(Handle);
extern (C) void ServiceWorkerGlobalScope_onfetch_Set(Handle, EventHandler);
extern (C) EventHandler ServiceWorkerGlobalScope_onfetch_Get(Handle);
extern (C) void ServiceWorkerGlobalScope_onmessage_Set(Handle, EventHandler);
extern (C) EventHandler ServiceWorkerGlobalScope_onmessage_Get(Handle);
extern (C) void ServiceWorkerGlobalScope_onmessageerror_Set(Handle, EventHandler);
extern (C) EventHandler ServiceWorkerGlobalScope_onmessageerror_Get(Handle);
extern (C) void ServiceWorkerGlobalScope_onnotificationclick_Set(Handle, EventHandler);
extern (C) EventHandler ServiceWorkerGlobalScope_onnotificationclick_Get(Handle);
extern (C) void ServiceWorkerGlobalScope_onnotificationclose_Set(Handle, EventHandler);
extern (C) EventHandler ServiceWorkerGlobalScope_onnotificationclose_Get(Handle);
extern (C) Optional!(ServiceWorker) ServiceWorkerRegistration_installing_Get(Handle);
extern (C) Optional!(ServiceWorker) ServiceWorkerRegistration_waiting_Get(Handle);
extern (C) Optional!(ServiceWorker) ServiceWorkerRegistration_active_Get(Handle);
extern (C) Handle ServiceWorkerRegistration_navigationPreload_Get(Handle);
extern (C) string ServiceWorkerRegistration_scope_Get(Handle);
extern (C) ServiceWorkerUpdateViaCache ServiceWorkerRegistration_updateViaCache_Get(Handle);
extern (C) Handle ServiceWorkerRegistration_update(Handle);
extern (C) Handle ServiceWorkerRegistration_unregister(Handle);
extern (C) void ServiceWorkerRegistration_onupdatefound_Set(Handle, EventHandler);
extern (C) EventHandler ServiceWorkerRegistration_onupdatefound_Get(Handle);
extern (C) Handle ServiceWorkerRegistration_showNotification(Handle, string, Handle);
extern (C) Handle ServiceWorkerRegistration_getNotifications(Handle, Handle);
extern (C) VisibilityState WindowClient_visibilityState_Get(Handle);
extern (C) bool WindowClient_focused_Get(Handle);
extern (C) Handle WindowClient_ancestorOrigins_Get(Handle);
extern (C) Handle WindowClient_focus(Handle);
extern (C) Handle WindowClient_navigate(Handle, string);