module spasm.bindings.notifications;

import spasm.types;
import spasm.bindings.common;
import spasm.bindings.dom;
import spasm.bindings.html;
import spasm.bindings.serviceworker;
import spasm.bindings.vibration;

nothrow:
struct GetNotificationOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  static auto create() {
    return GetNotificationOptions(JsHandle(spasm_add__object()));
  }
  void tag(string tag) {
    GetNotificationOptions_tag_Set(this.handle, tag);
  }
  auto tag() {
    return GetNotificationOptions_tag_Get(this.handle);
  }
}
struct Notification {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .EventTarget(h);
  }
  void permission(NotificationPermission permission) {
    Notification_permission_Set(this._parent, permission);
  }
  auto permission() {
    return Notification_permission_Get(this._parent);
  }
  auto requestPermission(NotificationPermissionCallback deprecatedCallback) {
    return Promise!(NotificationPermission)(JsHandle(Notification_requestPermission(this._parent, deprecatedCallback)));
  }
  auto requestPermission() {
    return Promise!(NotificationPermission)(JsHandle(Notification_requestPermission_0(this._parent)));
  }
  void maxActions(uint maxActions) {
    Notification_maxActions_Set(this._parent, maxActions);
  }
  auto maxActions() {
    return Notification_maxActions_Get(this._parent);
  }
  void onclick(EventHandler onclick) {
    Notification_onclick_Set(this._parent, onclick);
  }
  auto onclick() {
    return Notification_onclick_Get(this._parent);
  }
  void onshow(EventHandler onshow) {
    Notification_onshow_Set(this._parent, onshow);
  }
  auto onshow() {
    return Notification_onshow_Get(this._parent);
  }
  void onerror(EventHandler onerror) {
    Notification_onerror_Set(this._parent, onerror);
  }
  auto onerror() {
    return Notification_onerror_Get(this._parent);
  }
  void onclose(EventHandler onclose) {
    Notification_onclose_Set(this._parent, onclose);
  }
  auto onclose() {
    return Notification_onclose_Get(this._parent);
  }
  auto title() {
    return Notification_title_Get(this._parent);
  }
  auto dir() {
    return Notification_dir_Get(this._parent);
  }
  auto lang() {
    return Notification_lang_Get(this._parent);
  }
  auto body_() {
    return Notification_body_Get(this._parent);
  }
  auto tag() {
    return Notification_tag_Get(this._parent);
  }
  auto image() {
    return Notification_image_Get(this._parent);
  }
  auto icon() {
    return Notification_icon_Get(this._parent);
  }
  auto badge() {
    return Notification_badge_Get(this._parent);
  }
  auto vibrate() {
    return FrozenArray!(uint)(JsHandle(Notification_vibrate_Get(this._parent)));
  }
  auto timestamp() {
    return Notification_timestamp_Get(this._parent);
  }
  auto renotify() {
    return Notification_renotify_Get(this._parent);
  }
  auto silent() {
    return Notification_silent_Get(this._parent);
  }
  auto requireInteraction() {
    return Notification_requireInteraction_Get(this._parent);
  }
  auto data() {
    return Any(JsHandle(Notification_data_Get(this._parent)));
  }
  auto actions() {
    return FrozenArray!(NotificationAction)(JsHandle(Notification_actions_Get(this._parent)));
  }
  void close() {
    Notification_close(this._parent);
  }
}
struct NotificationAction {
  nothrow:
  JsHandle handle;
  alias handle this;
  static auto create() {
    return NotificationAction(JsHandle(spasm_add__object()));
  }
  void action(string action) {
    NotificationAction_action_Set(this.handle, action);
  }
  auto action() {
    return NotificationAction_action_Get(this.handle);
  }
  void title(string title) {
    NotificationAction_title_Set(this.handle, title);
  }
  auto title() {
    return NotificationAction_title_Get(this.handle);
  }
  void icon(string icon) {
    NotificationAction_icon_Set(this.handle, icon);
  }
  auto icon() {
    return NotificationAction_icon_Get(this.handle);
  }
}
enum NotificationDirection {
  auto_,
  ltr,
  rtl
}
struct NotificationEvent {
  nothrow:
  spasm.bindings.serviceworker.ExtendableEvent _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .ExtendableEvent(h);
  }
  auto notification() {
    return Notification(JsHandle(NotificationEvent_notification_Get(this._parent)));
  }
  auto action() {
    return NotificationEvent_action_Get(this._parent);
  }
}
struct NotificationEventInit {
  nothrow:
  spasm.bindings.serviceworker.ExtendableEventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .ExtendableEventInit(h);
  }
  static auto create() {
    return NotificationEventInit(JsHandle(spasm_add__object()));
  }
  void notification(Notification notification) {
    NotificationEventInit_notification_Set(this._parent, notification.handle);
  }
  auto notification() {
    return Notification(JsHandle(NotificationEventInit_notification_Get(this._parent)));
  }
  void action(string action) {
    NotificationEventInit_action_Set(this._parent, action);
  }
  auto action() {
    return NotificationEventInit_action_Get(this._parent);
  }
}
struct NotificationOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  static auto create() {
    return NotificationOptions(JsHandle(spasm_add__object()));
  }
  void dir(NotificationDirection dir) {
    NotificationOptions_dir_Set(this.handle, dir);
  }
  auto dir() {
    return NotificationOptions_dir_Get(this.handle);
  }
  void lang(string lang) {
    NotificationOptions_lang_Set(this.handle, lang);
  }
  auto lang() {
    return NotificationOptions_lang_Get(this.handle);
  }
  void body_(string body_) {
    NotificationOptions_body_Set(this.handle, body_);
  }
  auto body_() {
    return NotificationOptions_body_Get(this.handle);
  }
  void tag(string tag) {
    NotificationOptions_tag_Set(this.handle, tag);
  }
  auto tag() {
    return NotificationOptions_tag_Get(this.handle);
  }
  void image(string image) {
    NotificationOptions_image_Set(this.handle, image);
  }
  auto image() {
    return NotificationOptions_image_Get(this.handle);
  }
  void icon(string icon) {
    NotificationOptions_icon_Set(this.handle, icon);
  }
  auto icon() {
    return NotificationOptions_icon_Get(this.handle);
  }
  void badge(string badge) {
    NotificationOptions_badge_Set(this.handle, badge);
  }
  auto badge() {
    return NotificationOptions_badge_Get(this.handle);
  }
  void vibrate(VibratePattern vibrate) {
    NotificationOptions_vibrate_Set(this.handle, vibrate);
  }
  auto vibrate() {
    return NotificationOptions_vibrate_Get(this.handle);
  }
  void timestamp(ulong timestamp) {
    NotificationOptions_timestamp_Set(this.handle, timestamp);
  }
  auto timestamp() {
    return NotificationOptions_timestamp_Get(this.handle);
  }
  void renotify(bool renotify) {
    NotificationOptions_renotify_Set(this.handle, renotify);
  }
  auto renotify() {
    return NotificationOptions_renotify_Get(this.handle);
  }
  void silent(bool silent) {
    NotificationOptions_silent_Set(this.handle, silent);
  }
  auto silent() {
    return NotificationOptions_silent_Get(this.handle);
  }
  void requireInteraction(bool requireInteraction) {
    NotificationOptions_requireInteraction_Set(this.handle, requireInteraction);
  }
  auto requireInteraction() {
    return NotificationOptions_requireInteraction_Get(this.handle);
  }
  void data(T0)(T0 data) {
    Handle _handle_data = getOrCreateHandle(data);
    NotificationOptions_data_Set(this.handle, _handle_data);
    dropHandle!(T0)(_handle_data);
  }
  auto data() {
    return Any(JsHandle(NotificationOptions_data_Get(this.handle)));
  }
  void actions(Sequence!(NotificationAction) actions) {
    NotificationOptions_actions_Set(this.handle, actions.handle);
  }
  auto actions() {
    return Sequence!(NotificationAction)(JsHandle(NotificationOptions_actions_Get(this.handle)));
  }
}
enum NotificationPermission {
  default_,
  denied,
  granted
}
alias NotificationPermissionCallback = void delegate(NotificationPermission);


extern (C) void GetNotificationOptions_tag_Set(Handle, string);
extern (C) string GetNotificationOptions_tag_Get(Handle);
extern (C) void Notification_permission_Set(Handle, NotificationPermission);
extern (C) NotificationPermission Notification_permission_Get(Handle);
extern (C) Handle Notification_requestPermission(Handle, NotificationPermissionCallback);
extern (C) Handle Notification_requestPermission_0(Handle);
extern (C) void Notification_maxActions_Set(Handle, uint);
extern (C) uint Notification_maxActions_Get(Handle);
extern (C) void Notification_onclick_Set(Handle, EventHandler);
extern (C) EventHandler Notification_onclick_Get(Handle);
extern (C) void Notification_onshow_Set(Handle, EventHandler);
extern (C) EventHandler Notification_onshow_Get(Handle);
extern (C) void Notification_onerror_Set(Handle, EventHandler);
extern (C) EventHandler Notification_onerror_Get(Handle);
extern (C) void Notification_onclose_Set(Handle, EventHandler);
extern (C) EventHandler Notification_onclose_Get(Handle);
extern (C) string Notification_title_Get(Handle);
extern (C) NotificationDirection Notification_dir_Get(Handle);
extern (C) string Notification_lang_Get(Handle);
extern (C) string Notification_body_Get(Handle);
extern (C) string Notification_tag_Get(Handle);
extern (C) string Notification_image_Get(Handle);
extern (C) string Notification_icon_Get(Handle);
extern (C) string Notification_badge_Get(Handle);
extern (C) Handle Notification_vibrate_Get(Handle);
extern (C) ulong Notification_timestamp_Get(Handle);
extern (C) bool Notification_renotify_Get(Handle);
extern (C) bool Notification_silent_Get(Handle);
extern (C) bool Notification_requireInteraction_Get(Handle);
extern (C) Handle Notification_data_Get(Handle);
extern (C) Handle Notification_actions_Get(Handle);
extern (C) void Notification_close(Handle);
extern (C) void NotificationAction_action_Set(Handle, string);
extern (C) string NotificationAction_action_Get(Handle);
extern (C) void NotificationAction_title_Set(Handle, string);
extern (C) string NotificationAction_title_Get(Handle);
extern (C) void NotificationAction_icon_Set(Handle, string);
extern (C) string NotificationAction_icon_Get(Handle);
extern (C) Handle NotificationEvent_notification_Get(Handle);
extern (C) string NotificationEvent_action_Get(Handle);
extern (C) void NotificationEventInit_notification_Set(Handle, Handle);
extern (C) Handle NotificationEventInit_notification_Get(Handle);
extern (C) void NotificationEventInit_action_Set(Handle, string);
extern (C) string NotificationEventInit_action_Get(Handle);
extern (C) void NotificationOptions_dir_Set(Handle, NotificationDirection);
extern (C) NotificationDirection NotificationOptions_dir_Get(Handle);
extern (C) void NotificationOptions_lang_Set(Handle, string);
extern (C) string NotificationOptions_lang_Get(Handle);
extern (C) void NotificationOptions_body_Set(Handle, string);
extern (C) string NotificationOptions_body_Get(Handle);
extern (C) void NotificationOptions_tag_Set(Handle, string);
extern (C) string NotificationOptions_tag_Get(Handle);
extern (C) void NotificationOptions_image_Set(Handle, string);
extern (C) string NotificationOptions_image_Get(Handle);
extern (C) void NotificationOptions_icon_Set(Handle, string);
extern (C) string NotificationOptions_icon_Get(Handle);
extern (C) void NotificationOptions_badge_Set(Handle, string);
extern (C) string NotificationOptions_badge_Get(Handle);
extern (C) void NotificationOptions_vibrate_Set(Handle, VibratePattern);
extern (C) VibratePattern NotificationOptions_vibrate_Get(Handle);
extern (C) void NotificationOptions_timestamp_Set(Handle, ulong);
extern (C) ulong NotificationOptions_timestamp_Get(Handle);
extern (C) void NotificationOptions_renotify_Set(Handle, bool);
extern (C) bool NotificationOptions_renotify_Get(Handle);
extern (C) void NotificationOptions_silent_Set(Handle, bool);
extern (C) bool NotificationOptions_silent_Get(Handle);
extern (C) void NotificationOptions_requireInteraction_Set(Handle, bool);
extern (C) bool NotificationOptions_requireInteraction_Get(Handle);
extern (C) void NotificationOptions_data_Set(Handle, Handle);
extern (C) Handle NotificationOptions_data_Get(Handle);
extern (C) void NotificationOptions_actions_Set(Handle, Handle);
extern (C) Handle NotificationOptions_actions_Get(Handle);