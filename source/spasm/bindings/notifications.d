module spasm.bindings.notifications;

import spasm.types;
import spasm.bindings.common;
import spasm.bindings.dom;
import spasm.bindings.html;
import spasm.bindings.serviceworker;
import spasm.bindings.vibration;

struct GetNotificationOptions {
  JsHandle handle;
  alias handle this;
  auto tag(string tag) {
    GetNotificationOptions_tag_Set(this.handle, tag);
  }
  auto tag() {
    auto result = GetNotificationOptions_tag_Get(this.handle);
    return result;
  }
}
struct Notification {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto permission(NotificationPermission permission) {
    Notification_permission_Set(this._parent, permission);
  }
  auto permission() {
    auto result = Notification_permission_Get(this._parent);
    return result;
  }
  auto requestPermission(NotificationPermissionCallback deprecatedCallback) {
    auto result = Promise!(NotificationPermission)(JsHandle(Notification_requestPermission(this._parent, deprecatedCallback)));
    return result;
  }
  auto maxActions(uint maxActions) {
    Notification_maxActions_Set(this._parent, maxActions);
  }
  auto maxActions() {
    auto result = Notification_maxActions_Get(this._parent);
    return result;
  }
  auto onclick(EventHandler onclick) {
    Notification_onclick_Set(this._parent, onclick);
  }
  auto onclick() {
    auto result = Notification_onclick_Get(this._parent);
    return result;
  }
  auto onshow(EventHandler onshow) {
    Notification_onshow_Set(this._parent, onshow);
  }
  auto onshow() {
    auto result = Notification_onshow_Get(this._parent);
    return result;
  }
  auto onerror(EventHandler onerror) {
    Notification_onerror_Set(this._parent, onerror);
  }
  auto onerror() {
    auto result = Notification_onerror_Get(this._parent);
    return result;
  }
  auto onclose(EventHandler onclose) {
    Notification_onclose_Set(this._parent, onclose);
  }
  auto onclose() {
    auto result = Notification_onclose_Get(this._parent);
    return result;
  }
  auto title() {
    auto result = Notification_title_Get(this._parent);
    return result;
  }
  auto dir() {
    auto result = Notification_dir_Get(this._parent);
    return result;
  }
  auto lang() {
    auto result = Notification_lang_Get(this._parent);
    return result;
  }
  auto body_() {
    auto result = Notification_body_Get(this._parent);
    return result;
  }
  auto tag() {
    auto result = Notification_tag_Get(this._parent);
    return result;
  }
  auto image() {
    auto result = Notification_image_Get(this._parent);
    return result;
  }
  auto icon() {
    auto result = Notification_icon_Get(this._parent);
    return result;
  }
  auto badge() {
    auto result = Notification_badge_Get(this._parent);
    return result;
  }
  auto vibrate() {
    auto result = FrozenArray!(uint)(JsHandle(Notification_vibrate_Get(this._parent)));
    return result;
  }
  auto timestamp() {
    auto result = Notification_timestamp_Get(this._parent);
    return result;
  }
  auto renotify() {
    auto result = Notification_renotify_Get(this._parent);
    return result;
  }
  auto silent() {
    auto result = Notification_silent_Get(this._parent);
    return result;
  }
  auto requireInteraction() {
    auto result = Notification_requireInteraction_Get(this._parent);
    return result;
  }
  auto data() {
    auto result = Any(JsHandle(Notification_data_Get(this._parent)));
    return result;
  }
  auto actions() {
    auto result = FrozenArray!(NotificationAction)(JsHandle(Notification_actions_Get(this._parent)));
    return result;
  }
  auto close() {
    Notification_close(this._parent);
  }
}
struct NotificationAction {
  JsHandle handle;
  alias handle this;
  auto action(string action) {
    NotificationAction_action_Set(this.handle, action);
  }
  auto action() {
    auto result = NotificationAction_action_Get(this.handle);
    return result;
  }
  auto title(string title) {
    NotificationAction_title_Set(this.handle, title);
  }
  auto title() {
    auto result = NotificationAction_title_Get(this.handle);
    return result;
  }
  auto icon(string icon) {
    NotificationAction_icon_Set(this.handle, icon);
  }
  auto icon() {
    auto result = NotificationAction_icon_Get(this.handle);
    return result;
  }
}
enum NotificationDirection {
  auto_,
  ltr,
  rtl
}
struct NotificationEvent {
  ExtendableEvent _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = ExtendableEvent(h);
  }
  auto notification() {
    auto result = Notification(JsHandle(NotificationEvent_notification_Get(this._parent)));
    return result;
  }
  auto action() {
    auto result = NotificationEvent_action_Get(this._parent);
    return result;
  }
}
struct NotificationEventInit {
  ExtendableEventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = ExtendableEventInit(h);
  }
  auto notification(Notification notification) {
    NotificationEventInit_notification_Set(this._parent, notification.handle);
  }
  auto notification() {
    auto result = Notification(JsHandle(NotificationEventInit_notification_Get(this._parent)));
    return result;
  }
  auto action(string action) {
    NotificationEventInit_action_Set(this._parent, action);
  }
  auto action() {
    auto result = NotificationEventInit_action_Get(this._parent);
    return result;
  }
}
struct NotificationOptions {
  JsHandle handle;
  alias handle this;
  auto dir(NotificationDirection dir) {
    NotificationOptions_dir_Set(this.handle, dir);
  }
  auto dir() {
    auto result = NotificationOptions_dir_Get(this.handle);
    return result;
  }
  auto lang(string lang) {
    NotificationOptions_lang_Set(this.handle, lang);
  }
  auto lang() {
    auto result = NotificationOptions_lang_Get(this.handle);
    return result;
  }
  auto body_(string body_) {
    NotificationOptions_body_Set(this.handle, body_);
  }
  auto body_() {
    auto result = NotificationOptions_body_Get(this.handle);
    return result;
  }
  auto tag(string tag) {
    NotificationOptions_tag_Set(this.handle, tag);
  }
  auto tag() {
    auto result = NotificationOptions_tag_Get(this.handle);
    return result;
  }
  auto image(string image) {
    NotificationOptions_image_Set(this.handle, image);
  }
  auto image() {
    auto result = NotificationOptions_image_Get(this.handle);
    return result;
  }
  auto icon(string icon) {
    NotificationOptions_icon_Set(this.handle, icon);
  }
  auto icon() {
    auto result = NotificationOptions_icon_Get(this.handle);
    return result;
  }
  auto badge(string badge) {
    NotificationOptions_badge_Set(this.handle, badge);
  }
  auto badge() {
    auto result = NotificationOptions_badge_Get(this.handle);
    return result;
  }
  auto vibrate(VibratePattern vibrate) {
    NotificationOptions_vibrate_Set(this.handle, vibrate);
  }
  auto vibrate() {
    auto result = NotificationOptions_vibrate_Get(this.handle);
    return result;
  }
  auto timestamp(ulong timestamp) {
    NotificationOptions_timestamp_Set(this.handle, timestamp);
  }
  auto timestamp() {
    auto result = NotificationOptions_timestamp_Get(this.handle);
    return result;
  }
  auto renotify(bool renotify) {
    NotificationOptions_renotify_Set(this.handle, renotify);
  }
  auto renotify() {
    auto result = NotificationOptions_renotify_Get(this.handle);
    return result;
  }
  auto silent(bool silent) {
    NotificationOptions_silent_Set(this.handle, silent);
  }
  auto silent() {
    auto result = NotificationOptions_silent_Get(this.handle);
    return result;
  }
  auto requireInteraction(bool requireInteraction) {
    NotificationOptions_requireInteraction_Set(this.handle, requireInteraction);
  }
  auto requireInteraction() {
    auto result = NotificationOptions_requireInteraction_Get(this.handle);
    return result;
  }
  auto data(T0)(T0 data) {
    Handle _handle_data = getOrCreateHandle(data);
    NotificationOptions_data_Set(this.handle, _handle_data);
    dropHandle!(T0)(_handle_data);
  }
  auto data() {
    auto result = Any(JsHandle(NotificationOptions_data_Get(this.handle)));
    return result;
  }
  auto actions(Sequence!(NotificationAction) actions) {
    NotificationOptions_actions_Set(this.handle, actions.handle);
  }
  auto actions() {
    auto result = Sequence!(NotificationAction)(JsHandle(NotificationOptions_actions_Get(this.handle)));
    return result;
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