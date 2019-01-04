module spasm.bindings.notifications;

import spasm.types;
import spasm.bindings.common : DOMTimeStamp;
import spasm.bindings.html : EventHandler;

struct GetNotificationOptions {
  JsHandle handle;
  alias handle this;
  void tag(string tag) {
    GetNotificationOptions_tag_Set(handle, tag);
  }
  string tag() {
    return GetNotificationOptions_tag_Get(handle);
  }
}
struct Notification {
  EventTarget _parent;
  alias _parent this;
  void permission(NotificationPermission permission) {
    Notification_permission_Set(handle, permission);
  }
  NotificationPermission permission() {
    return Notification_permission_Get(handle);
  }
  Promise!(NotificationPermission) requestPermission(NotificationPermissionCallback deprecatedCallback) {
    return Promise!(NotificationPermission)(Notification_requestPermission(handle, deprecatedCallback));
  }
  void maxActions(uint maxActions) {
    Notification_maxActions_Set(handle, maxActions);
  }
  uint maxActions() {
    return Notification_maxActions_Get(handle);
  }
  void onclick(EventHandler onclick) {
    Notification_onclick_Set(handle, !onclick.empty, onclick.value);
  }
  EventHandler onclick() {
    return Notification_onclick_Get(handle);
  }
  void onshow(EventHandler onshow) {
    Notification_onshow_Set(handle, !onshow.empty, onshow.value);
  }
  EventHandler onshow() {
    return Notification_onshow_Get(handle);
  }
  void onerror(EventHandler onerror) {
    Notification_onerror_Set(handle, !onerror.empty, onerror.value);
  }
  EventHandler onerror() {
    return Notification_onerror_Get(handle);
  }
  void onclose(EventHandler onclose) {
    Notification_onclose_Set(handle, !onclose.empty, onclose.value);
  }
  EventHandler onclose() {
    return Notification_onclose_Get(handle);
  }
  string title() {
    return Notification_title_Get(handle);
  }
  NotificationDirection dir() {
    return Notification_dir_Get(handle);
  }
  string lang() {
    return Notification_lang_Get(handle);
  }
  string body_() {
    return Notification_body_Get(handle);
  }
  string tag() {
    return Notification_tag_Get(handle);
  }
  USVString image() {
    return USVString(Notification_image_Get(handle));
  }
  USVString icon() {
    return USVString(Notification_icon_Get(handle));
  }
  USVString badge() {
    return USVString(Notification_badge_Get(handle));
  }
  FrozenArray!(uint) vibrate() {
    return FrozenArray!(uint)(Notification_vibrate_Get(handle));
  }
  ulong timestamp() {
    return Notification_timestamp_Get(handle);
  }
  bool renotify() {
    return Notification_renotify_Get(handle);
  }
  bool silent() {
    return Notification_silent_Get(handle);
  }
  bool requireInteraction() {
    return Notification_requireInteraction_Get(handle);
  }
  Any data() {
    return Any(Notification_data_Get(handle));
  }
  FrozenArray!(NotificationAction) actions() {
    return FrozenArray!(NotificationAction)(Notification_actions_Get(handle));
  }
  void close() {
    Notification_close(handle);
  }
}
struct NotificationAction {
  JsHandle handle;
  alias handle this;
  void action(string action) {
    NotificationAction_action_Set(handle, action);
  }
  string action() {
    return NotificationAction_action_Get(handle);
  }
  void title(string title) {
    NotificationAction_title_Set(handle, title);
  }
  string title() {
    return NotificationAction_title_Get(handle);
  }
  void icon(USVString icon) {
    NotificationAction_icon_Set(handle, icon.handle);
  }
  USVString icon() {
    return USVString(NotificationAction_icon_Get(handle));
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
  Notification notification() {
    return Notification(NotificationEvent_notification_Get(handle));
  }
  string action() {
    return NotificationEvent_action_Get(handle);
  }
}
struct NotificationEventInit {
  ExtendableEventInit _parent;
  alias _parent this;
  void notification(Notification notification) {
    NotificationEventInit_notification_Set(handle, notification.handle);
  }
  Notification notification() {
    return Notification(NotificationEventInit_notification_Get(handle));
  }
  void action(string action) {
    NotificationEventInit_action_Set(handle, action);
  }
  string action() {
    return NotificationEventInit_action_Get(handle);
  }
}
struct NotificationOptions {
  JsHandle handle;
  alias handle this;
  void dir(NotificationDirection dir) {
    NotificationOptions_dir_Set(handle, dir);
  }
  NotificationDirection dir() {
    return NotificationOptions_dir_Get(handle);
  }
  void lang(string lang) {
    NotificationOptions_lang_Set(handle, lang);
  }
  string lang() {
    return NotificationOptions_lang_Get(handle);
  }
  void body_(string body_) {
    NotificationOptions_body_Set(handle, body_);
  }
  string body_() {
    return NotificationOptions_body_Get(handle);
  }
  void tag(string tag) {
    NotificationOptions_tag_Set(handle, tag);
  }
  string tag() {
    return NotificationOptions_tag_Get(handle);
  }
  void image(USVString image) {
    NotificationOptions_image_Set(handle, image.handle);
  }
  USVString image() {
    return USVString(NotificationOptions_image_Get(handle));
  }
  void icon(USVString icon) {
    NotificationOptions_icon_Set(handle, icon.handle);
  }
  USVString icon() {
    return USVString(NotificationOptions_icon_Get(handle));
  }
  void badge(USVString badge) {
    NotificationOptions_badge_Set(handle, badge.handle);
  }
  USVString badge() {
    return USVString(NotificationOptions_badge_Get(handle));
  }
  void vibrate(VibratePattern vibrate) {
    NotificationOptions_vibrate_Set(handle, vibrate.handle);
  }
  VibratePattern vibrate() {
    return VibratePattern(NotificationOptions_vibrate_Get(handle));
  }
  void timestamp(ulong timestamp) {
    NotificationOptions_timestamp_Set(handle, timestamp);
  }
  ulong timestamp() {
    return NotificationOptions_timestamp_Get(handle);
  }
  void renotify(bool renotify) {
    NotificationOptions_renotify_Set(handle, renotify);
  }
  bool renotify() {
    return NotificationOptions_renotify_Get(handle);
  }
  void silent(bool silent) {
    NotificationOptions_silent_Set(handle, silent);
  }
  bool silent() {
    return NotificationOptions_silent_Get(handle);
  }
  void requireInteraction(bool requireInteraction) {
    NotificationOptions_requireInteraction_Set(handle, requireInteraction);
  }
  bool requireInteraction() {
    return NotificationOptions_requireInteraction_Get(handle);
  }
  void data(Any data) {
    NotificationOptions_data_Set(handle, data.handle);
  }
  Any data() {
    return Any(NotificationOptions_data_Get(handle));
  }
  void actions(Sequence!(NotificationAction) actions) {
    NotificationOptions_actions_Set(handle, actions.handle);
  }
  Sequence!(NotificationAction) actions() {
    return Sequence!(NotificationAction)(NotificationOptions_actions_Get(handle));
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
extern (C) JsHandle Notification_image_Get(JsHandle);
extern (C) JsHandle Notification_icon_Get(JsHandle);
extern (C) JsHandle Notification_badge_Get(JsHandle);
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
extern (C) void NotificationAction_icon_Set(JsHandle, JsHandle);
extern (C) JsHandle NotificationAction_icon_Get(JsHandle);
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
extern (C) void NotificationOptions_image_Set(JsHandle, JsHandle);
extern (C) JsHandle NotificationOptions_image_Get(JsHandle);
extern (C) void NotificationOptions_icon_Set(JsHandle, JsHandle);
extern (C) JsHandle NotificationOptions_icon_Get(JsHandle);
extern (C) void NotificationOptions_badge_Set(JsHandle, JsHandle);
extern (C) JsHandle NotificationOptions_badge_Get(JsHandle);
extern (C) void NotificationOptions_vibrate_Set(JsHandle, JsHandle);
extern (C) JsHandle NotificationOptions_vibrate_Get(JsHandle);
extern (C) void NotificationOptions_timestamp_Set(JsHandle, ulong);
extern (C) ulong NotificationOptions_timestamp_Get(JsHandle);
extern (C) void NotificationOptions_renotify_Set(JsHandle, bool);
extern (C) bool NotificationOptions_renotify_Get(JsHandle);
extern (C) void NotificationOptions_silent_Set(JsHandle, bool);
extern (C) bool NotificationOptions_silent_Get(JsHandle);
extern (C) void NotificationOptions_requireInteraction_Set(JsHandle, bool);
extern (C) bool NotificationOptions_requireInteraction_Get(JsHandle);
extern (C) void NotificationOptions_data_Set(JsHandle, Any);
extern (C) JsHandle NotificationOptions_data_Get(JsHandle);
extern (C) void NotificationOptions_actions_Set(JsHandle, JsHandle);
extern (C) JsHandle NotificationOptions_actions_Get(JsHandle);