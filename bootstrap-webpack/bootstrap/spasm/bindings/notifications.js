import spasm from './spasm.js';
export default {
  jsExports: {
    GetNotificationOptions_tag_Set: function(ctx, tagLen, tagPtr) {
      spasm.objects[ctx].tag = spasm.decode_string(tagLen, tagPtr);
    },
    GetNotificationOptions_tag_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].tag);
    },
    Notification_permission_Set: function(ctx, permission) {
      spasm.objects[ctx].permission = spasm.decode_NotificationPermission(permission);
    },
    Notification_permission_Get: function(ctx) {
      return spasm.encode_NotificationPermission(spasm.objects[ctx].permission);
    },
    Notification_requestPermission: function(ctx, deprecatedCallbackCtx, deprecatedCallbackPtr) {
      return spasm.addObject(spasm.objects[ctx].requestPermission((permission)=>{spasm.callback_void_NotificationPermission(deprecatedCallbackCtx, deprecatedCallbackPtr, spasm.encode_NotificationPermission(permission))}));
    },
    Notification_maxActions_Set: function(ctx, maxActions) {
      spasm.objects[ctx].maxActions = maxActions;
    },
    Notification_maxActions_Get: function(ctx) {
      return spasm.objects[ctx].maxActions;
    },
    Notification_onclick_Set: function(ctx, onclick) {
      spasm.objects[ctx].onclick = onclick;
    },
    Notification_onclick_Get: function(ctx) {
      return spasm.objects[ctx].onclick;
    },
    Notification_onshow_Set: function(ctx, onshow) {
      spasm.objects[ctx].onshow = onshow;
    },
    Notification_onshow_Get: function(ctx) {
      return spasm.objects[ctx].onshow;
    },
    Notification_onerror_Set: function(ctx, onerror) {
      spasm.objects[ctx].onerror = onerror;
    },
    Notification_onerror_Get: function(ctx) {
      return spasm.objects[ctx].onerror;
    },
    Notification_onclose_Set: function(ctx, onclose) {
      spasm.objects[ctx].onclose = onclose;
    },
    Notification_onclose_Get: function(ctx) {
      return spasm.objects[ctx].onclose;
    },
    Notification_title_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].title);
    },
    Notification_dir_Get: function(ctx) {
      return spasm.encode_NotificationDirection(spasm.objects[ctx].dir);
    },
    Notification_lang_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].lang);
    },
    Notification_body_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].body);
    },
    Notification_tag_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].tag);
    },
    Notification_image_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].image);
    },
    Notification_icon_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].icon);
    },
    Notification_badge_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].badge);
    },
    Notification_vibrate_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].vibrate);
    },
    Notification_timestamp_Get: function(ctx) {
      return spasm.objects[ctx].timestamp;
    },
    Notification_renotify_Get: function(ctx) {
      return spasm.objects[ctx].renotify;
    },
    Notification_silent_Get: function(ctx) {
      return spasm.objects[ctx].silent;
    },
    Notification_requireInteraction_Get: function(ctx) {
      return spasm.objects[ctx].requireInteraction;
    },
    Notification_data_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].data);
    },
    Notification_actions_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].actions);
    },
    Notification_close: function(ctx) {
      spasm.objects[ctx].close();
    },
    NotificationAction_action_Set: function(ctx, actionLen, actionPtr) {
      spasm.objects[ctx].action = spasm.decode_string(actionLen, actionPtr);
    },
    NotificationAction_action_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].action);
    },
    NotificationAction_title_Set: function(ctx, titleLen, titlePtr) {
      spasm.objects[ctx].title = spasm.decode_string(titleLen, titlePtr);
    },
    NotificationAction_title_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].title);
    },
    NotificationAction_icon_Set: function(ctx, iconLen, iconPtr) {
      spasm.objects[ctx].icon = spasm.decode_string(iconLen, iconPtr);
    },
    NotificationAction_icon_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].icon);
    },
    NotificationEvent_notification_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].notification);
    },
    NotificationEvent_action_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].action);
    },
    NotificationEventInit_notification_Set: function(ctx, notification) {
      spasm.objects[ctx].notification = spasm.objects[notification];
    },
    NotificationEventInit_notification_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].notification);
    },
    NotificationEventInit_action_Set: function(ctx, actionLen, actionPtr) {
      spasm.objects[ctx].action = spasm.decode_string(actionLen, actionPtr);
    },
    NotificationEventInit_action_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].action);
    },
    NotificationOptions_dir_Set: function(ctx, dir) {
      spasm.objects[ctx].dir = spasm.decode_NotificationDirection(dir);
    },
    NotificationOptions_dir_Get: function(ctx) {
      return spasm.encode_NotificationDirection(spasm.objects[ctx].dir);
    },
    NotificationOptions_lang_Set: function(ctx, langLen, langPtr) {
      spasm.objects[ctx].lang = spasm.decode_string(langLen, langPtr);
    },
    NotificationOptions_lang_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].lang);
    },
    NotificationOptions_body_Set: function(ctx, bodyLen, bodyPtr) {
      spasm.objects[ctx].body = spasm.decode_string(bodyLen, bodyPtr);
    },
    NotificationOptions_body_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].body);
    },
    NotificationOptions_tag_Set: function(ctx, tagLen, tagPtr) {
      spasm.objects[ctx].tag = spasm.decode_string(tagLen, tagPtr);
    },
    NotificationOptions_tag_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].tag);
    },
    NotificationOptions_image_Set: function(ctx, imageLen, imagePtr) {
      spasm.objects[ctx].image = spasm.decode_string(imageLen, imagePtr);
    },
    NotificationOptions_image_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].image);
    },
    NotificationOptions_icon_Set: function(ctx, iconLen, iconPtr) {
      spasm.objects[ctx].icon = spasm.decode_string(iconLen, iconPtr);
    },
    NotificationOptions_icon_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].icon);
    },
    NotificationOptions_badge_Set: function(ctx, badgeLen, badgePtr) {
      spasm.objects[ctx].badge = spasm.decode_string(badgeLen, badgePtr);
    },
    NotificationOptions_badge_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].badge);
    },
    NotificationOptions_vibrate_Set: function(ctx, vibrate) {
      spasm.objects[ctx].vibrate = spasm.decode_VibratePattern(vibrate);
    },
    NotificationOptions_vibrate_Get: function(rawResult, ctx) {
      spasm.encode_VibratePattern(rawResult, spasm.objects[ctx].vibrate);
    },
    NotificationOptions_timestamp_Set: function(ctx, timestamp) {
      spasm.objects[ctx].timestamp = timestamp;
    },
    NotificationOptions_timestamp_Get: function(ctx) {
      return spasm.objects[ctx].timestamp;
    },
    NotificationOptions_renotify_Set: function(ctx, renotify) {
      spasm.objects[ctx].renotify = renotify;
    },
    NotificationOptions_renotify_Get: function(ctx) {
      return spasm.objects[ctx].renotify;
    },
    NotificationOptions_silent_Set: function(ctx, silent) {
      spasm.objects[ctx].silent = silent;
    },
    NotificationOptions_silent_Get: function(ctx) {
      return spasm.objects[ctx].silent;
    },
    NotificationOptions_requireInteraction_Set: function(ctx, requireInteraction) {
      spasm.objects[ctx].requireInteraction = requireInteraction;
    },
    NotificationOptions_requireInteraction_Get: function(ctx) {
      return spasm.objects[ctx].requireInteraction;
    },
    NotificationOptions_data_Set: function(ctx, data) {
      spasm.objects[ctx].data = spasm.objects[data];
    },
    NotificationOptions_data_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].data);
    },
    NotificationOptions_actions_Set: function(ctx, actions) {
      spasm.objects[ctx].actions = spasm.objects[actions];
    },
    NotificationOptions_actions_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].actions);
    },
  }
}