module spasm.bindings.serviceworker;

import spasm.types;
import spasm.bindings.dom;
import spasm.bindings.fetch;
import spasm.bindings.html;
import spasm.bindings.notifications;
import spasm.bindings.pagevisibility;

nothrow:
struct Cache {
  nothrow:
  JsHandle handle;
  alias handle this;
  auto match(RequestInfo request, CacheQueryOptions options) {
    return Promise!(Any)(JsHandle(Cache_match(this.handle, request, options.handle)));
  }
  auto match(RequestInfo request) {
    return Promise!(Any)(JsHandle(Cache_match_0(this.handle, request)));
  }
  auto matchAll(RequestInfo request, CacheQueryOptions options) {
    return Promise!(FrozenArray!(Response))(JsHandle(Cache_matchAll(this.handle, request, options.handle)));
  }
  auto matchAll(RequestInfo request) {
    return Promise!(FrozenArray!(Response))(JsHandle(Cache_matchAll_0(this.handle, request)));
  }
  auto matchAll() {
    return Promise!(FrozenArray!(Response))(JsHandle(Cache_matchAll_1(this.handle)));
  }
  auto add(RequestInfo request) {
    return Promise!(void)(JsHandle(Cache_add(this.handle, request)));
  }
  auto addAll(Sequence!(RequestInfo) requests) {
    return Promise!(void)(JsHandle(Cache_addAll(this.handle, requests.handle)));
  }
  auto put(RequestInfo request, Response response) {
    return Promise!(void)(JsHandle(Cache_put(this.handle, request, response.handle)));
  }
  auto delete_(RequestInfo request, CacheQueryOptions options) {
    return Promise!(bool)(JsHandle(Cache_delete(this.handle, request, options.handle)));
  }
  auto delete_(RequestInfo request) {
    return Promise!(bool)(JsHandle(Cache_delete_0(this.handle, request)));
  }
  auto keys(RequestInfo request, CacheQueryOptions options) {
    return Promise!(FrozenArray!(Request))(JsHandle(Cache_keys(this.handle, request, options.handle)));
  }
  auto keys(RequestInfo request) {
    return Promise!(FrozenArray!(Request))(JsHandle(Cache_keys_0(this.handle, request)));
  }
  auto keys() {
    return Promise!(FrozenArray!(Request))(JsHandle(Cache_keys_1(this.handle)));
  }
}
struct CacheQueryOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  static auto create() {
    return CacheQueryOptions(JsHandle(spasm_add__object()));
  }
  void ignoreSearch(bool ignoreSearch) {
    CacheQueryOptions_ignoreSearch_Set(this.handle, ignoreSearch);
  }
  auto ignoreSearch() {
    return CacheQueryOptions_ignoreSearch_Get(this.handle);
  }
  void ignoreMethod(bool ignoreMethod) {
    CacheQueryOptions_ignoreMethod_Set(this.handle, ignoreMethod);
  }
  auto ignoreMethod() {
    return CacheQueryOptions_ignoreMethod_Get(this.handle);
  }
  void ignoreVary(bool ignoreVary) {
    CacheQueryOptions_ignoreVary_Set(this.handle, ignoreVary);
  }
  auto ignoreVary() {
    return CacheQueryOptions_ignoreVary_Get(this.handle);
  }
}
struct CacheStorage {
  nothrow:
  JsHandle handle;
  alias handle this;
  auto match(RequestInfo request, MultiCacheQueryOptions options) {
    return Promise!(Any)(JsHandle(CacheStorage_match(this.handle, request, options._parent)));
  }
  auto match(RequestInfo request) {
    return Promise!(Any)(JsHandle(CacheStorage_match_0(this.handle, request)));
  }
  auto has(string cacheName) {
    return Promise!(bool)(JsHandle(CacheStorage_has(this.handle, cacheName)));
  }
  auto open(string cacheName) {
    return Promise!(Cache)(JsHandle(CacheStorage_open(this.handle, cacheName)));
  }
  auto delete_(string cacheName) {
    return Promise!(bool)(JsHandle(CacheStorage_delete(this.handle, cacheName)));
  }
  auto keys() {
    return Promise!(Sequence!(string))(JsHandle(CacheStorage_keys(this.handle)));
  }
}
struct Client {
  nothrow:
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
  void postMessage(T0)(T0 message, Sequence!(JsObject) transfer /* = [] */) {
    Handle _handle_message = getOrCreateHandle(message);
    Client_postMessage(this.handle, _handle_message, transfer.handle);
    dropHandle!(T0)(_handle_message);
  }
  void postMessage(T0)(T0 message) {
    Handle _handle_message = getOrCreateHandle(message);
    Client_postMessage_0(this.handle, _handle_message);
    dropHandle!(T0)(_handle_message);
  }
}
struct ClientQueryOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  static auto create() {
    return ClientQueryOptions(JsHandle(spasm_add__object()));
  }
  void includeUncontrolled(bool includeUncontrolled) {
    ClientQueryOptions_includeUncontrolled_Set(this.handle, includeUncontrolled);
  }
  auto includeUncontrolled() {
    return ClientQueryOptions_includeUncontrolled_Get(this.handle);
  }
  void type(ClientType type) {
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
  nothrow:
  JsHandle handle;
  alias handle this;
  auto get(string id) {
    return Promise!(Any)(JsHandle(Clients_get(this.handle, id)));
  }
  auto matchAll(ClientQueryOptions options) {
    return Promise!(FrozenArray!(Client))(JsHandle(Clients_matchAll(this.handle, options.handle)));
  }
  auto matchAll() {
    return Promise!(FrozenArray!(Client))(JsHandle(Clients_matchAll_0(this.handle)));
  }
  auto openWindow(string url) {
    return Promise!(Optional!(WindowClient))(JsHandle(Clients_openWindow(this.handle, url)));
  }
  auto claim() {
    return Promise!(void)(JsHandle(Clients_claim(this.handle)));
  }
}
struct ExtendableEvent {
  nothrow:
  spasm.bindings.dom.Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .Event(h);
  }
  void waitUntil(Promise!(Any) f) {
    ExtendableEvent_waitUntil(this._parent, f.handle);
  }
}
struct ExtendableEventInit {
  nothrow:
  spasm.bindings.dom.EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .EventInit(h);
  }
  static auto create() {
    return ExtendableEventInit(JsHandle(spasm_add__object()));
  }
}
struct ExtendableMessageEvent {
  nothrow:
  spasm.bindings.serviceworker.ExtendableEvent _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .ExtendableEvent(h);
  }
  auto data() {
    return Any(JsHandle(ExtendableMessageEvent_data_Get(this._parent)));
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
    return FrozenArray!(MessagePort)(JsHandle(ExtendableMessageEvent_ports_Get(this._parent)));
  }
}
struct ExtendableMessageEventInit {
  nothrow:
  spasm.bindings.serviceworker.ExtendableEventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .ExtendableEventInit(h);
  }
  static auto create() {
    return ExtendableMessageEventInit(JsHandle(spasm_add__object()));
  }
  void data(T0)(T0 data) {
    Handle _handle_data = getOrCreateHandle(data);
    ExtendableMessageEventInit_data_Set(this._parent, _handle_data);
    dropHandle!(T0)(_handle_data);
  }
  auto data() {
    return Any(JsHandle(ExtendableMessageEventInit_data_Get(this._parent)));
  }
  void origin(string origin) {
    ExtendableMessageEventInit_origin_Set(this._parent, origin);
  }
  auto origin() {
    return ExtendableMessageEventInit_origin_Get(this._parent);
  }
  void lastEventId(string lastEventId) {
    ExtendableMessageEventInit_lastEventId_Set(this._parent, lastEventId);
  }
  auto lastEventId() {
    return ExtendableMessageEventInit_lastEventId_Get(this._parent);
  }
  void source(Optional!(SumType!(Client, ServiceWorker, MessagePort)) source) {
    ExtendableMessageEventInit_source_Set(this._parent, !source.empty, source.front);
  }
  auto source() {
    return ExtendableMessageEventInit_source_Get(this._parent);
  }
  void ports(Sequence!(MessagePort) ports) {
    ExtendableMessageEventInit_ports_Set(this._parent, ports.handle);
  }
  auto ports() {
    return Sequence!(MessagePort)(JsHandle(ExtendableMessageEventInit_ports_Get(this._parent)));
  }
}
struct FetchEvent {
  nothrow:
  spasm.bindings.serviceworker.ExtendableEvent _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .ExtendableEvent(h);
  }
  auto request() {
    return Request(JsHandle(FetchEvent_request_Get(this._parent)));
  }
  auto preloadResponse() {
    return Promise!(Any)(JsHandle(FetchEvent_preloadResponse_Get(this._parent)));
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
  void respondWith(Promise!(Response) r) {
    FetchEvent_respondWith(this._parent, r.handle);
  }
}
struct FetchEventInit {
  nothrow:
  spasm.bindings.serviceworker.ExtendableEventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .ExtendableEventInit(h);
  }
  static auto create() {
    return FetchEventInit(JsHandle(spasm_add__object()));
  }
  void request(Request request) {
    FetchEventInit_request_Set(this._parent, request.handle);
  }
  auto request() {
    return Request(JsHandle(FetchEventInit_request_Get(this._parent)));
  }
  void preloadResponse(Promise!(Any) preloadResponse) {
    FetchEventInit_preloadResponse_Set(this._parent, preloadResponse.handle);
  }
  auto preloadResponse() {
    return Promise!(Any)(JsHandle(FetchEventInit_preloadResponse_Get(this._parent)));
  }
  void clientId(string clientId) {
    FetchEventInit_clientId_Set(this._parent, clientId);
  }
  auto clientId() {
    return FetchEventInit_clientId_Get(this._parent);
  }
  void resultingClientId(string resultingClientId) {
    FetchEventInit_resultingClientId_Set(this._parent, resultingClientId);
  }
  auto resultingClientId() {
    return FetchEventInit_resultingClientId_Get(this._parent);
  }
  void replacesClientId(string replacesClientId) {
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
  nothrow:
  spasm.bindings.serviceworker.CacheQueryOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .CacheQueryOptions(h);
  }
  static auto create() {
    return MultiCacheQueryOptions(JsHandle(spasm_add__object()));
  }
  void cacheName(string cacheName) {
    MultiCacheQueryOptions_cacheName_Set(this._parent, cacheName);
  }
  auto cacheName() {
    return MultiCacheQueryOptions_cacheName_Get(this._parent);
  }
}
struct NavigationPreloadManager {
  nothrow:
  JsHandle handle;
  alias handle this;
  auto enable() {
    return Promise!(void)(JsHandle(NavigationPreloadManager_enable(this.handle)));
  }
  auto disable() {
    return Promise!(void)(JsHandle(NavigationPreloadManager_disable(this.handle)));
  }
  auto setHeaderValue(string value) {
    return Promise!(void)(JsHandle(NavigationPreloadManager_setHeaderValue(this.handle, value)));
  }
  auto getState() {
    return Promise!(NavigationPreloadState)(JsHandle(NavigationPreloadManager_getState(this.handle)));
  }
}
struct NavigationPreloadState {
  nothrow:
  JsHandle handle;
  alias handle this;
  static auto create() {
    return NavigationPreloadState(JsHandle(spasm_add__object()));
  }
  void enabled(bool enabled) {
    NavigationPreloadState_enabled_Set(this.handle, enabled);
  }
  auto enabled() {
    return NavigationPreloadState_enabled_Get(this.handle);
  }
  void headerValue(string headerValue) {
    NavigationPreloadState_headerValue_Set(this.handle, headerValue);
  }
  auto headerValue() {
    return NavigationPreloadState_headerValue_Get(this.handle);
  }
}
struct RegistrationOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  static auto create() {
    return RegistrationOptions(JsHandle(spasm_add__object()));
  }
  void scope_(string scope_) {
    RegistrationOptions_scope_Set(this.handle, scope_);
  }
  auto scope_() {
    return RegistrationOptions_scope_Get(this.handle);
  }
  void type(WorkerType type) {
    RegistrationOptions_type_Set(this.handle, type);
  }
  auto type() {
    return RegistrationOptions_type_Get(this.handle);
  }
  void updateViaCache(ServiceWorkerUpdateViaCache updateViaCache) {
    RegistrationOptions_updateViaCache_Set(this.handle, updateViaCache);
  }
  auto updateViaCache() {
    return RegistrationOptions_updateViaCache_Get(this.handle);
  }
}
struct ServiceWorker {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .EventTarget(h);
  }
  auto scriptURL() {
    return ServiceWorker_scriptURL_Get(this._parent);
  }
  auto state() {
    return ServiceWorker_state_Get(this._parent);
  }
  void postMessage(T0)(T0 message, Sequence!(JsObject) transfer /* = [] */) {
    Handle _handle_message = getOrCreateHandle(message);
    ServiceWorker_postMessage(this._parent, _handle_message, transfer.handle);
    dropHandle!(T0)(_handle_message);
  }
  void postMessage(T0)(T0 message) {
    Handle _handle_message = getOrCreateHandle(message);
    ServiceWorker_postMessage_0(this._parent, _handle_message);
    dropHandle!(T0)(_handle_message);
  }
  void onstatechange(EventHandler onstatechange) {
    ServiceWorker_onstatechange_Set(this._parent, onstatechange);
  }
  auto onstatechange() {
    return ServiceWorker_onstatechange_Get(this._parent);
  }
  void onerror(EventHandler onerror) {
    AbstractWorker_onerror_Set(this._parent, onerror);
  }
  auto onerror() {
    return AbstractWorker_onerror_Get(this._parent);
  }
}
struct ServiceWorkerContainer {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .EventTarget(h);
  }
  auto controller() {
    return ServiceWorkerContainer_controller_Get(this._parent);
  }
  auto ready() {
    return Promise!(ServiceWorkerRegistration)(JsHandle(ServiceWorkerContainer_ready_Get(this._parent)));
  }
  auto register(string scriptURL, RegistrationOptions options) {
    return Promise!(ServiceWorkerRegistration)(JsHandle(ServiceWorkerContainer_register(this._parent, scriptURL, options.handle)));
  }
  auto register(string scriptURL) {
    return Promise!(ServiceWorkerRegistration)(JsHandle(ServiceWorkerContainer_register_0(this._parent, scriptURL)));
  }
  auto getRegistration(string clientURL /* = "" */) {
    return Promise!(Any)(JsHandle(ServiceWorkerContainer_getRegistration(this._parent, clientURL)));
  }
  auto getRegistration() {
    return Promise!(Any)(JsHandle(ServiceWorkerContainer_getRegistration_0(this._parent)));
  }
  auto getRegistrations() {
    return Promise!(FrozenArray!(ServiceWorkerRegistration))(JsHandle(ServiceWorkerContainer_getRegistrations(this._parent)));
  }
  void startMessages() {
    ServiceWorkerContainer_startMessages(this._parent);
  }
  void oncontrollerchange(EventHandler oncontrollerchange) {
    ServiceWorkerContainer_oncontrollerchange_Set(this._parent, oncontrollerchange);
  }
  auto oncontrollerchange() {
    return ServiceWorkerContainer_oncontrollerchange_Get(this._parent);
  }
  void onmessage(EventHandler onmessage) {
    ServiceWorkerContainer_onmessage_Set(this._parent, onmessage);
  }
  auto onmessage() {
    return ServiceWorkerContainer_onmessage_Get(this._parent);
  }
  void onmessageerror(EventHandler onmessageerror) {
    ServiceWorkerContainer_onmessageerror_Set(this._parent, onmessageerror);
  }
  auto onmessageerror() {
    return ServiceWorkerContainer_onmessageerror_Get(this._parent);
  }
}
struct ServiceWorkerGlobalScope {
  nothrow:
  spasm.bindings.html.WorkerGlobalScope _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .WorkerGlobalScope(h);
  }
  auto clients() {
    return Clients(JsHandle(ServiceWorkerGlobalScope_clients_Get(this._parent)));
  }
  auto registration() {
    return ServiceWorkerRegistration(JsHandle(ServiceWorkerGlobalScope_registration_Get(this._parent)));
  }
  auto skipWaiting() {
    return Promise!(void)(JsHandle(ServiceWorkerGlobalScope_skipWaiting(this._parent)));
  }
  void oninstall(EventHandler oninstall) {
    ServiceWorkerGlobalScope_oninstall_Set(this._parent, oninstall);
  }
  auto oninstall() {
    return ServiceWorkerGlobalScope_oninstall_Get(this._parent);
  }
  void onactivate(EventHandler onactivate) {
    ServiceWorkerGlobalScope_onactivate_Set(this._parent, onactivate);
  }
  auto onactivate() {
    return ServiceWorkerGlobalScope_onactivate_Get(this._parent);
  }
  void onfetch(EventHandler onfetch) {
    ServiceWorkerGlobalScope_onfetch_Set(this._parent, onfetch);
  }
  auto onfetch() {
    return ServiceWorkerGlobalScope_onfetch_Get(this._parent);
  }
  void onmessage(EventHandler onmessage) {
    ServiceWorkerGlobalScope_onmessage_Set(this._parent, onmessage);
  }
  auto onmessage() {
    return ServiceWorkerGlobalScope_onmessage_Get(this._parent);
  }
  void onmessageerror(EventHandler onmessageerror) {
    ServiceWorkerGlobalScope_onmessageerror_Set(this._parent, onmessageerror);
  }
  auto onmessageerror() {
    return ServiceWorkerGlobalScope_onmessageerror_Get(this._parent);
  }
  void onnotificationclick(EventHandler onnotificationclick) {
    ServiceWorkerGlobalScope_onnotificationclick_Set(this._parent, onnotificationclick);
  }
  auto onnotificationclick() {
    return ServiceWorkerGlobalScope_onnotificationclick_Get(this._parent);
  }
  void onnotificationclose(EventHandler onnotificationclose) {
    ServiceWorkerGlobalScope_onnotificationclose_Set(this._parent, onnotificationclose);
  }
  auto onnotificationclose() {
    return ServiceWorkerGlobalScope_onnotificationclose_Get(this._parent);
  }
}
struct ServiceWorkerRegistration {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .EventTarget(h);
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
    return NavigationPreloadManager(JsHandle(ServiceWorkerRegistration_navigationPreload_Get(this._parent)));
  }
  auto scope_() {
    return ServiceWorkerRegistration_scope_Get(this._parent);
  }
  auto updateViaCache() {
    return ServiceWorkerRegistration_updateViaCache_Get(this._parent);
  }
  auto update() {
    return Promise!(void)(JsHandle(ServiceWorkerRegistration_update(this._parent)));
  }
  auto unregister() {
    return Promise!(bool)(JsHandle(ServiceWorkerRegistration_unregister(this._parent)));
  }
  void onupdatefound(EventHandler onupdatefound) {
    ServiceWorkerRegistration_onupdatefound_Set(this._parent, onupdatefound);
  }
  auto onupdatefound() {
    return ServiceWorkerRegistration_onupdatefound_Get(this._parent);
  }
  auto showNotification(string title, NotificationOptions options) {
    return Promise!(void)(JsHandle(ServiceWorkerRegistration_showNotification(this._parent, title, options.handle)));
  }
  auto showNotification(string title) {
    return Promise!(void)(JsHandle(ServiceWorkerRegistration_showNotification_0(this._parent, title)));
  }
  auto getNotifications(GetNotificationOptions filter) {
    return Promise!(Sequence!(Notification))(JsHandle(ServiceWorkerRegistration_getNotifications(this._parent, filter.handle)));
  }
  auto getNotifications() {
    return Promise!(Sequence!(Notification))(JsHandle(ServiceWorkerRegistration_getNotifications_0(this._parent)));
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
  nothrow:
  spasm.bindings.serviceworker.Client _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .Client(h);
  }
  auto visibilityState() {
    return WindowClient_visibilityState_Get(this._parent);
  }
  auto focused() {
    return WindowClient_focused_Get(this._parent);
  }
  auto ancestorOrigins() {
    return FrozenArray!(string)(JsHandle(WindowClient_ancestorOrigins_Get(this._parent)));
  }
  auto focus() {
    return Promise!(WindowClient)(JsHandle(WindowClient_focus(this._parent)));
  }
  auto navigate(string url) {
    return Promise!(Optional!(WindowClient))(JsHandle(WindowClient_navigate(this._parent, url)));
  }
}


extern (C) Handle Cache_match(Handle, RequestInfo, Handle);
extern (C) Handle Cache_match_0(Handle, RequestInfo);
extern (C) Handle Cache_matchAll(Handle, RequestInfo, Handle);
extern (C) Handle Cache_matchAll_0(Handle, RequestInfo);
extern (C) Handle Cache_matchAll_1(Handle);
extern (C) Handle Cache_add(Handle, RequestInfo);
extern (C) Handle Cache_addAll(Handle, Handle);
extern (C) Handle Cache_put(Handle, RequestInfo, Handle);
extern (C) Handle Cache_delete(Handle, RequestInfo, Handle);
extern (C) Handle Cache_delete_0(Handle, RequestInfo);
extern (C) Handle Cache_keys(Handle, RequestInfo, Handle);
extern (C) Handle Cache_keys_0(Handle, RequestInfo);
extern (C) Handle Cache_keys_1(Handle);
extern (C) void CacheQueryOptions_ignoreSearch_Set(Handle, bool);
extern (C) bool CacheQueryOptions_ignoreSearch_Get(Handle);
extern (C) void CacheQueryOptions_ignoreMethod_Set(Handle, bool);
extern (C) bool CacheQueryOptions_ignoreMethod_Get(Handle);
extern (C) void CacheQueryOptions_ignoreVary_Set(Handle, bool);
extern (C) bool CacheQueryOptions_ignoreVary_Get(Handle);
extern (C) Handle CacheStorage_match(Handle, RequestInfo, Handle);
extern (C) Handle CacheStorage_match_0(Handle, RequestInfo);
extern (C) Handle CacheStorage_has(Handle, string);
extern (C) Handle CacheStorage_open(Handle, string);
extern (C) Handle CacheStorage_delete(Handle, string);
extern (C) Handle CacheStorage_keys(Handle);
extern (C) string Client_url_Get(Handle);
extern (C) FrameType Client_frameType_Get(Handle);
extern (C) string Client_id_Get(Handle);
extern (C) ClientType Client_type_Get(Handle);
extern (C) void Client_postMessage(Handle, Handle, Handle);
extern (C) void Client_postMessage_0(Handle, Handle);
extern (C) void ClientQueryOptions_includeUncontrolled_Set(Handle, bool);
extern (C) bool ClientQueryOptions_includeUncontrolled_Get(Handle);
extern (C) void ClientQueryOptions_type_Set(Handle, ClientType);
extern (C) ClientType ClientQueryOptions_type_Get(Handle);
extern (C) Handle Clients_get(Handle, string);
extern (C) Handle Clients_matchAll(Handle, Handle);
extern (C) Handle Clients_matchAll_0(Handle);
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
extern (C) void ServiceWorker_postMessage_0(Handle, Handle);
extern (C) void ServiceWorker_onstatechange_Set(Handle, EventHandler);
extern (C) EventHandler ServiceWorker_onstatechange_Get(Handle);
extern (C) Optional!(ServiceWorker) ServiceWorkerContainer_controller_Get(Handle);
extern (C) Handle ServiceWorkerContainer_ready_Get(Handle);
extern (C) Handle ServiceWorkerContainer_register(Handle, string, Handle);
extern (C) Handle ServiceWorkerContainer_register_0(Handle, string);
extern (C) Handle ServiceWorkerContainer_getRegistration(Handle, string);
extern (C) Handle ServiceWorkerContainer_getRegistration_0(Handle);
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
extern (C) Handle ServiceWorkerRegistration_showNotification_0(Handle, string);
extern (C) Handle ServiceWorkerRegistration_getNotifications(Handle, Handle);
extern (C) Handle ServiceWorkerRegistration_getNotifications_0(Handle);
extern (C) VisibilityState WindowClient_visibilityState_Get(Handle);
extern (C) bool WindowClient_focused_Get(Handle);
extern (C) Handle WindowClient_ancestorOrigins_Get(Handle);
extern (C) Handle WindowClient_focus(Handle);
extern (C) Handle WindowClient_navigate(Handle, string);