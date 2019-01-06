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
    return GetNotificationOptions_tag_Get(this.handle);
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
    return Notification_permission_Get(this._parent);
  }
  auto requestPermission(NotificationPermissionCallback deprecatedCallback) {
    return Promise!(NotificationPermission)(Notification_requestPermission(this._parent, deprecatedCallback));
  }
  auto maxActions(uint maxActions) {
    Notification_maxActions_Set(this._parent, maxActions);
  }
  auto maxActions() {
    return Notification_maxActions_Get(this._parent);
  }
  auto onclick(EventHandler onclick) {
    Notification_onclick_Set(this._parent, onclick);
  }
  auto onclick() {
    return Notification_onclick_Get(this._parent);
  }
  auto onshow(EventHandler onshow) {
    Notification_onshow_Set(this._parent, onshow);
  }
  auto onshow() {
    return Notification_onshow_Get(this._parent);
  }
  auto onerror(EventHandler onerror) {
    Notification_onerror_Set(this._parent, onerror);
  }
  auto onerror() {
    return Notification_onerror_Get(this._parent);
  }
  auto onclose(EventHandler onclose) {
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
    return FrozenArray!(uint)(Notification_vibrate_Get(this._parent));
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
    return Any(Notification_data_Get(this._parent));
  }
  auto actions() {
    return FrozenArray!(NotificationAction)(Notification_actions_Get(this._parent));
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
    return NotificationAction_action_Get(this.handle);
  }
  auto title(string title) {
    NotificationAction_title_Set(this.handle, title);
  }
  auto title() {
    return NotificationAction_title_Get(this.handle);
  }
  auto icon(string icon) {
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
  ExtendableEvent _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = ExtendableEvent(h);
  }
  auto notification() {
    return Notification(NotificationEvent_notification_Get(this._parent));
  }
  auto action() {
    return NotificationEvent_action_Get(this._parent);
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
    return Notification(NotificationEventInit_notification_Get(this._parent));
  }
  auto action(string action) {
    NotificationEventInit_action_Set(this._parent, action);
  }
  auto action() {
    return NotificationEventInit_action_Get(this._parent);
  }
}
struct NotificationOptions {
  JsHandle handle;
  alias handle this;
  auto dir(NotificationDirection dir) {
    NotificationOptions_dir_Set(this.handle, dir);
  }
  auto dir() {
    return NotificationOptions_dir_Get(this.handle);
  }
  auto lang(string lang) {
    NotificationOptions_lang_Set(this.handle, lang);
  }
  auto lang() {
    return NotificationOptions_lang_Get(this.handle);
  }
  auto body_(string body_) {
    NotificationOptions_body_Set(this.handle, body_);
  }
  auto body_() {
    return NotificationOptions_body_Get(this.handle);
  }
  auto tag(string tag) {
    NotificationOptions_tag_Set(this.handle, tag);
  }
  auto tag() {
    return NotificationOptions_tag_Get(this.handle);
  }
  auto image(string image) {
    NotificationOptions_image_Set(this.handle, image);
  }
  auto image() {
    return NotificationOptions_image_Get(this.handle);
  }
  auto icon(string icon) {
    NotificationOptions_icon_Set(this.handle, icon);
  }
  auto icon() {
    return NotificationOptions_icon_Get(this.handle);
  }
  auto badge(string badge) {
    NotificationOptions_badge_Set(this.handle, badge);
  }
  auto badge() {
    return NotificationOptions_badge_Get(this.handle);
  }
  auto vibrate(VibratePattern vibrate) {
    NotificationOptions_vibrate_Set(this.handle, vibrate);
  }
  auto vibrate() {
    return NotificationOptions_vibrate_Get(this.handle);
  }
  auto timestamp(ulong timestamp) {
    NotificationOptions_timestamp_Set(this.handle, timestamp);
  }
  auto timestamp() {
    return NotificationOptions_timestamp_Get(this.handle);
  }
  auto renotify(bool renotify) {
    NotificationOptions_renotify_Set(this.handle, renotify);
  }
  auto renotify() {
    return NotificationOptions_renotify_Get(this.handle);
  }
  auto silent(bool silent) {
    NotificationOptions_silent_Set(this.handle, silent);
  }
  auto silent() {
    return NotificationOptions_silent_Get(this.handle);
  }
  auto requireInteraction(bool requireInteraction) {
    NotificationOptions_requireInteraction_Set(this.handle, requireInteraction);
  }
  auto requireInteraction() {
    return NotificationOptions_requireInteraction_Get(this.handle);
  }
  auto data(Any data) {
    NotificationOptions_data_Set(this.handle, data.handle);
  }
  auto data() {
    return Any(NotificationOptions_data_Get(this.handle));
  }
  auto actions(Sequence!(NotificationAction) actions) {
    NotificationOptions_actions_Set(this.handle, actions.handle);
  }
  auto actions() {
    return Sequence!(NotificationAction)(NotificationOptions_actions_Get(this.handle));
  }
}
enum NotificationPermission {
  default_,
  denied,
  granted
}
alias NotificationPermissionCallback = void delegate(NotificationPermission);


extern (C) void GetNotificationOptions_tag_Set(JsHandle, string);
extern (C) string GetNotificationOptions_tag_Get(JsHandle);
extern (C) void Notification_permission_Set(JsHandle, NotificationPermission);
extern (C) NotificationPermission Notification_permission_Get(JsHandle);
extern (C) JsHandle Notification_requestPermission(JsHandle, NotificationPermissionCallback);
extern (C) void Notification_maxActions_Set(JsHandle, uint);
extern (C) uint Notification_maxActions_Get(JsHandle);
extern (C) void Notification_onclick_Set(JsHandle, EventHandler);
extern (C) EventHandler Notification_onclick_Get(JsHandle);
extern (C) void Notification_onshow_Set(JsHandle, EventHandler);
extern (C) EventHandler Notification_onshow_Get(JsHandle);
extern (C) void Notification_onerror_Set(JsHandle, EventHandler);
extern (C) EventHandler Notification_onerror_Get(JsHandle);
extern (C) void Notification_onclose_Set(JsHandle, EventHandler);
extern (C) EventHandler Notification_onclose_Get(JsHandle);
extern (C) string Notification_title_Get(JsHandle);
extern (C) NotificationDirection Notification_dir_Get(JsHandle);
extern (C) string Notification_lang_Get(JsHandle);
extern (C) string Notification_body_Get(JsHandle);
extern (C) string Notification_tag_Get(JsHandle);
extern (C) string Notification_image_Get(JsHandle);
extern (C) string Notification_icon_Get(JsHandle);
extern (C) string Notification_badge_Get(JsHandle);
extern (C) JsHandle Notification_vibrate_Get(JsHandle);
extern (C) ulong Notification_timestamp_Get(JsHandle);
extern (C) bool Notification_renotify_Get(JsHandle);
extern (C) bool Notification_silent_Get(JsHandle);
extern (C) bool Notification_requireInteraction_Get(JsHandle);
extern (C) JsHandle Notification_data_Get(JsHandle);
extern (C) JsHandle Notification_actions_Get(JsHandle);
extern (C) void Notification_close(JsHandle);
extern (C) void NotificationAction_action_Set(JsHandle, string);
extern (C) string NotificationAction_action_Get(JsHandle);
extern (C) void NotificationAction_title_Set(JsHandle, string);
extern (C) string NotificationAction_title_Get(JsHandle);
extern (C) void NotificationAction_icon_Set(JsHandle, string);
extern (C) string NotificationAction_icon_Get(JsHandle);
extern (C) JsHandle NotificationEvent_notification_Get(JsHandle);
extern (C) string NotificationEvent_action_Get(JsHandle);
extern (C) void NotificationEventInit_notification_Set(JsHandle, JsHandle);
extern (C) JsHandle NotificationEventInit_notification_Get(JsHandle);
extern (C) void NotificationEventInit_action_Set(JsHandle, string);
extern (C) string NotificationEventInit_action_Get(JsHandle);
extern (C) void NotificationOptions_dir_Set(JsHandle, NotificationDirection);
extern (C) NotificationDirection NotificationOptions_dir_Get(JsHandle);
extern (C) void NotificationOptions_lang_Set(JsHandle, string);
extern (C) string NotificationOptions_lang_Get(JsHandle);
extern (C) void NotificationOptions_body_Set(JsHandle, string);
extern (C) string NotificationOptions_body_Get(JsHandle);
extern (C) void NotificationOptions_tag_Set(JsHandle, string);
extern (C) string NotificationOptions_tag_Get(JsHandle);
extern (C) void NotificationOptions_image_Set(JsHandle, string);
extern (C) string NotificationOptions_image_Get(JsHandle);
extern (C) void NotificationOptions_icon_Set(JsHandle, string);
extern (C) string NotificationOptions_icon_Get(JsHandle);
extern (C) void NotificationOptions_badge_Set(JsHandle, string);
extern (C) string NotificationOptions_badge_Get(JsHandle);
extern (C) void NotificationOptions_vibrate_Set(JsHandle, VibratePattern);
extern (C) VibratePattern NotificationOptions_vibrate_Get(JsHandle);
extern (C) void NotificationOptions_timestamp_Set(JsHandle, ulong);
extern (C) ulong NotificationOptions_timestamp_Get(JsHandle);
extern (C) void NotificationOptions_renotify_Set(JsHandle, bool);
extern (C) bool NotificationOptions_renotify_Get(JsHandle);
extern (C) void NotificationOptions_silent_Set(JsHandle, bool);
extern (C) bool NotificationOptions_silent_Get(JsHandle);
extern (C) void NotificationOptions_requireInteraction_Set(JsHandle, bool);
extern (C) bool NotificationOptions_requireInteraction_Get(JsHandle);
extern (C) void NotificationOptions_data_Set(JsHandle, JsHandle);
extern (C) JsHandle NotificationOptions_data_Get(JsHandle);
extern (C) void NotificationOptions_actions_Set(JsHandle, JsHandle);
extern (C) JsHandle NotificationOptions_actions_Get(JsHandle);