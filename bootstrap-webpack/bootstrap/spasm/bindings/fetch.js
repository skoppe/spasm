import spasm from './spasm.js';
export default {
  jsExports: {
    Headers_append: function(ctx, nameLen, namePtr, valueLen, valuePtr) {
      spasm.objects[ctx].append(spasm.decode_string(nameLen, namePtr), spasm.decode_string(valueLen, valuePtr));
    },
    Headers_delete: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].delete(spasm.decode_string(nameLen, namePtr));
    },
    Headers_get: function(rawResult, ctx, nameLen, namePtr) {
      spasm.encode_optional_string(rawResult, spasm.objects[ctx].get(spasm.decode_string(nameLen, namePtr)));
    },
    Headers_has: function(ctx, nameLen, namePtr) {
      return spasm.objects[ctx].has(spasm.decode_string(nameLen, namePtr));
    },
    Headers_set: function(ctx, nameLen, namePtr, valueLen, valuePtr) {
      spasm.objects[ctx].set(spasm.decode_string(nameLen, namePtr), spasm.decode_string(valueLen, valuePtr));
    },
    Request_method_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].method);
    },
    Request_url_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].url);
    },
    Request_headers_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].headers);
    },
    Request_destination_Get: function(ctx) {
      return spasm.encode_RequestDestination(spasm.objects[ctx].destination);
    },
    Request_referrer_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].referrer);
    },
    Request_referrerPolicy_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].referrerPolicy);
    },
    Request_mode_Get: function(ctx) {
      return spasm.encode_RequestMode(spasm.objects[ctx].mode);
    },
    Request_credentials_Get: function(ctx) {
      return spasm.encode_RequestCredentials(spasm.objects[ctx].credentials);
    },
    Request_cache_Get: function(ctx) {
      return spasm.encode_RequestCache(spasm.objects[ctx].cache);
    },
    Request_redirect_Get: function(ctx) {
      return spasm.encode_RequestRedirect(spasm.objects[ctx].redirect);
    },
    Request_integrity_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].integrity);
    },
    Request_keepalive_Get: function(ctx) {
      return spasm.objects[ctx].keepalive;
    },
    Request_isReloadNavigation_Get: function(ctx) {
      return spasm.objects[ctx].isReloadNavigation;
    },
    Request_isHistoryNavigation_Get: function(ctx) {
      return spasm.objects[ctx].isHistoryNavigation;
    },
    Request_signal_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].signal);
    },
    Request_clone: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].clone());
    },
    Body_body_Get: function(rawResult, ctx) {
      spasm.encode_optional_JsHandle(rawResult, spasm.objects[ctx].body);
    },
    Body_bodyUsed_Get: function(ctx) {
      return spasm.objects[ctx].bodyUsed;
    },
    Body_arrayBuffer: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].arrayBuffer());
    },
    Body_blob: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].blob());
    },
    Body_formData: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].formData());
    },
    Body_json: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].json());
    },
    Body_text: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].text());
    },
    RequestInit_method_Set: function(ctx, methodLen, methodPtr) {
      spasm.objects[ctx].method = spasm.decode_string(methodLen, methodPtr);
    },
    RequestInit_method_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].method);
    },
    RequestInit_headers_Set: function(ctx, headers) {
      spasm.objects[ctx].headers = spasm.decode_HeadersInit(headers);
    },
    RequestInit_headers_Get: function(rawResult, ctx) {
      spasm.encode_HeadersInit(rawResult, spasm.objects[ctx].headers);
    },
    RequestInit_body_Set: function(ctx, bodyDefined, body) {
      spasm.objects[ctx].body = bodyDefined ? spasm.decode_BodyInit(body) : undefined;
    },
    RequestInit_body_Get: function(rawResult, ctx) {
      spasm.encode_optional_BodyInit(rawResult, spasm.objects[ctx].body);
    },
    RequestInit_referrer_Set: function(ctx, referrerLen, referrerPtr) {
      spasm.objects[ctx].referrer = spasm.decode_string(referrerLen, referrerPtr);
    },
    RequestInit_referrer_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].referrer);
    },
    RequestInit_referrerPolicy_Set: function(ctx, referrerPolicy) {
      spasm.objects[ctx].referrerPolicy = spasm.objects[referrerPolicy];
    },
    RequestInit_referrerPolicy_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].referrerPolicy);
    },
    RequestInit_mode_Set: function(ctx, mode) {
      spasm.objects[ctx].mode = spasm.decode_RequestMode(mode);
    },
    RequestInit_mode_Get: function(ctx) {
      return spasm.encode_RequestMode(spasm.objects[ctx].mode);
    },
    RequestInit_credentials_Set: function(ctx, credentials) {
      spasm.objects[ctx].credentials = spasm.decode_RequestCredentials(credentials);
    },
    RequestInit_credentials_Get: function(ctx) {
      return spasm.encode_RequestCredentials(spasm.objects[ctx].credentials);
    },
    RequestInit_cache_Set: function(ctx, cache) {
      spasm.objects[ctx].cache = spasm.decode_RequestCache(cache);
    },
    RequestInit_cache_Get: function(ctx) {
      return spasm.encode_RequestCache(spasm.objects[ctx].cache);
    },
    RequestInit_redirect_Set: function(ctx, redirect) {
      spasm.objects[ctx].redirect = spasm.decode_RequestRedirect(redirect);
    },
    RequestInit_redirect_Get: function(ctx) {
      return spasm.encode_RequestRedirect(spasm.objects[ctx].redirect);
    },
    RequestInit_integrity_Set: function(ctx, integrityLen, integrityPtr) {
      spasm.objects[ctx].integrity = spasm.decode_string(integrityLen, integrityPtr);
    },
    RequestInit_integrity_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].integrity);
    },
    RequestInit_keepalive_Set: function(ctx, keepalive) {
      spasm.objects[ctx].keepalive = keepalive;
    },
    RequestInit_keepalive_Get: function(ctx) {
      return spasm.objects[ctx].keepalive;
    },
    RequestInit_signal_Set: function(ctx, signalDefined, signal) {
      spasm.objects[ctx].signal = signalDefined ? spasm.objects[signal] : undefined;
    },
    RequestInit_signal_Get: function(rawResult, ctx) {
      spasm.encode_optional_JsHandle(rawResult, spasm.objects[ctx].signal);
    },
    RequestInit_window_Set: function(ctx, window) {
      spasm.objects[ctx].window = spasm.objects[window];
    },
    RequestInit_window_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].window);
    },
    Response_error: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].error());
    },
    Response_redirect: function(ctx, urlLen, urlPtr, status) {
      return spasm.addObject(spasm.objects[ctx].redirect(spasm.decode_string(urlLen, urlPtr), status));
    },
    Response_type_Get: function(ctx) {
      return spasm.encode_ResponseType(spasm.objects[ctx].type);
    },
    Response_url_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].url);
    },
    Response_redirected_Get: function(ctx) {
      return spasm.objects[ctx].redirected;
    },
    Response_status_Get: function(ctx) {
      return spasm.objects[ctx].status;
    },
    Response_ok_Get: function(ctx) {
      return spasm.objects[ctx].ok;
    },
    Response_statusText_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].statusText);
    },
    Response_headers_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].headers);
    },
    Response_trailer_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].trailer);
    },
    Response_clone: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].clone());
    },
    Body_body_Get: function(rawResult, ctx) {
      spasm.encode_optional_JsHandle(rawResult, spasm.objects[ctx].body);
    },
    Body_bodyUsed_Get: function(ctx) {
      return spasm.objects[ctx].bodyUsed;
    },
    Body_arrayBuffer: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].arrayBuffer());
    },
    Body_blob: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].blob());
    },
    Body_formData: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].formData());
    },
    Body_json: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].json());
    },
    Body_text: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].text());
    },
    ResponseInit_status_Set: function(ctx, status) {
      spasm.objects[ctx].status = status;
    },
    ResponseInit_status_Get: function(ctx) {
      return spasm.objects[ctx].status;
    },
    ResponseInit_statusText_Set: function(ctx, statusTextLen, statusTextPtr) {
      spasm.objects[ctx].statusText = spasm.decode_string(statusTextLen, statusTextPtr);
    },
    ResponseInit_statusText_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].statusText);
    },
    ResponseInit_headers_Set: function(ctx, headers) {
      spasm.objects[ctx].headers = spasm.decode_HeadersInit(headers);
    },
    ResponseInit_headers_Get: function(rawResult, ctx) {
      spasm.encode_HeadersInit(rawResult, spasm.objects[ctx].headers);
    },
  }
}