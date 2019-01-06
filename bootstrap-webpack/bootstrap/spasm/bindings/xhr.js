import spasm from './spasm.js';
export default {
  jsExports: {
    FormData_append__string_string: function(ctx, nameLen, namePtr, valueLen, valuePtr) {
      spasm.objects[ctx].append(spasm.decode_string(nameLen, namePtr), spasm.decode_string(valueLen, valuePtr));
    },
    FormData_append__string_JsHandle_string: function(ctx, nameLen, namePtr, blobValue, filenameLen, filenamePtr) {
      spasm.objects[ctx].append(spasm.decode_string(nameLen, namePtr), spasm.objects[blobValue], spasm.decode_string(filenameLen, filenamePtr));
    },
    FormData_delete: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].delete(spasm.decode_string(nameLen, namePtr));
    },
    FormData_get: function(rawResult, ctx, nameLen, namePtr) {
      spasm.encode_optional_FormDataEntryValue(rawResult, spasm.objects[ctx].get(spasm.decode_string(nameLen, namePtr)));
    },
    FormData_getAll: function(ctx, nameLen, namePtr) {
      return spasm.addObject(spasm.objects[ctx].getAll(spasm.decode_string(nameLen, namePtr)));
    },
    FormData_has: function(ctx, nameLen, namePtr) {
      return spasm.objects[ctx].has(spasm.decode_string(nameLen, namePtr));
    },
    FormData_set__string_string: function(ctx, nameLen, namePtr, valueLen, valuePtr) {
      spasm.objects[ctx].set(spasm.decode_string(nameLen, namePtr), spasm.decode_string(valueLen, valuePtr));
    },
    FormData_set__string_JsHandle_string: function(ctx, nameLen, namePtr, blobValue, filenameLen, filenamePtr) {
      spasm.objects[ctx].set(spasm.decode_string(nameLen, namePtr), spasm.objects[blobValue], spasm.decode_string(filenameLen, filenamePtr));
    },
    ProgressEvent_lengthComputable_Get: function(ctx) {
      return spasm.objects[ctx].lengthComputable;
    },
    ProgressEvent_loaded_Get: function(ctx) {
      return spasm.objects[ctx].loaded;
    },
    ProgressEvent_total_Get: function(ctx) {
      return spasm.objects[ctx].total;
    },
    ProgressEventInit_lengthComputable_Set: function(ctx, lengthComputable) {
      spasm.objects[ctx].lengthComputable = lengthComputable;
    },
    ProgressEventInit_lengthComputable_Get: function(ctx) {
      return spasm.objects[ctx].lengthComputable;
    },
    ProgressEventInit_loaded_Set: function(ctx, loaded) {
      spasm.objects[ctx].loaded = loaded;
    },
    ProgressEventInit_loaded_Get: function(ctx) {
      return spasm.objects[ctx].loaded;
    },
    ProgressEventInit_total_Set: function(ctx, total) {
      spasm.objects[ctx].total = total;
    },
    ProgressEventInit_total_Get: function(ctx) {
      return spasm.objects[ctx].total;
    },
    XMLHttpRequest_onreadystatechange_Set: function(ctx, onreadystatechange) {
      spasm.objects[ctx].onreadystatechange = onreadystatechange;
    },
    XMLHttpRequest_onreadystatechange_Get: function(ctx) {
      return spasm.objects[ctx].onreadystatechange;
    },
    XMLHttpRequest_readyState_Get: function(ctx) {
      return spasm.objects[ctx].readyState;
    },
    XMLHttpRequest_open__string_string: function(ctx, methodLen, methodPtr, urlLen, urlPtr) {
      spasm.objects[ctx].open(spasm.decode_string(methodLen, methodPtr), spasm.decode_string(urlLen, urlPtr));
    },
    XMLHttpRequest_open__string_string_bool_optional_string_optional_string: function(ctx, methodLen, methodPtr, urlLen, urlPtr, async, usernameDefined, usernameLen, usernamePtr, passwordDefined, passwordLen, passwordPtr) {
      spasm.objects[ctx].open(spasm.decode_string(methodLen, methodPtr), spasm.decode_string(urlLen, urlPtr), async, usernameDefined ? spasm.decode_string(usernameLen, usernamePtr) : undefined, passwordDefined ? spasm.decode_string(passwordLen, passwordPtr) : undefined);
    },
    XMLHttpRequest_setRequestHeader: function(ctx, nameLen, namePtr, valueLen, valuePtr) {
      spasm.objects[ctx].setRequestHeader(spasm.decode_string(nameLen, namePtr), spasm.decode_string(valueLen, valuePtr));
    },
    XMLHttpRequest_timeout_Set: function(ctx, timeout) {
      spasm.objects[ctx].timeout = timeout;
    },
    XMLHttpRequest_timeout_Get: function(ctx) {
      return spasm.objects[ctx].timeout;
    },
    XMLHttpRequest_withCredentials_Set: function(ctx, withCredentials) {
      spasm.objects[ctx].withCredentials = withCredentials;
    },
    XMLHttpRequest_withCredentials_Get: function(ctx) {
      return spasm.objects[ctx].withCredentials;
    },
    XMLHttpRequest_upload_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].upload);
    },
    XMLHttpRequest_send: function(ctx, bodyDefined, body) {
      spasm.objects[ctx].send(bodyDefined ? spasm.decode_union2_Document_BodyInit(body) : undefined);
    },
    XMLHttpRequest_abort: function(ctx) {
      spasm.objects[ctx].abort();
    },
    XMLHttpRequest_responseURL_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].responseURL);
    },
    XMLHttpRequest_status_Get: function(ctx) {
      return spasm.objects[ctx].status;
    },
    XMLHttpRequest_statusText_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].statusText);
    },
    XMLHttpRequest_getResponseHeader: function(rawResult, ctx, nameLen, namePtr) {
      spasm.encode_optional_string(rawResult, spasm.objects[ctx].getResponseHeader(spasm.decode_string(nameLen, namePtr)));
    },
    XMLHttpRequest_getAllResponseHeaders: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].getAllResponseHeaders());
    },
    XMLHttpRequest_overrideMimeType: function(ctx, mimeLen, mimePtr) {
      spasm.objects[ctx].overrideMimeType(spasm.decode_string(mimeLen, mimePtr));
    },
    XMLHttpRequest_responseType_Set: function(ctx, responseType) {
      spasm.objects[ctx].responseType = spasm.decode_XMLHttpRequestResponseType(responseType);
    },
    XMLHttpRequest_responseType_Get: function(ctx) {
      return spasm.encode_XMLHttpRequestResponseType(spasm.objects[ctx].responseType);
    },
    XMLHttpRequest_response_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].response);
    },
    XMLHttpRequest_responseText_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].responseText);
    },
    XMLHttpRequest_responseXML_Get: function(rawResult, ctx) {
      spasm.encode_optional_JsHandle(rawResult, spasm.objects[ctx].responseXML);
    },
    XMLHttpRequestEventTarget_onloadstart_Set: function(ctx, onloadstart) {
      spasm.objects[ctx].onloadstart = onloadstart;
    },
    XMLHttpRequestEventTarget_onloadstart_Get: function(ctx) {
      return spasm.objects[ctx].onloadstart;
    },
    XMLHttpRequestEventTarget_onprogress_Set: function(ctx, onprogress) {
      spasm.objects[ctx].onprogress = onprogress;
    },
    XMLHttpRequestEventTarget_onprogress_Get: function(ctx) {
      return spasm.objects[ctx].onprogress;
    },
    XMLHttpRequestEventTarget_onabort_Set: function(ctx, onabort) {
      spasm.objects[ctx].onabort = onabort;
    },
    XMLHttpRequestEventTarget_onabort_Get: function(ctx) {
      return spasm.objects[ctx].onabort;
    },
    XMLHttpRequestEventTarget_onerror_Set: function(ctx, onerror) {
      spasm.objects[ctx].onerror = onerror;
    },
    XMLHttpRequestEventTarget_onerror_Get: function(ctx) {
      return spasm.objects[ctx].onerror;
    },
    XMLHttpRequestEventTarget_onload_Set: function(ctx, onload) {
      spasm.objects[ctx].onload = onload;
    },
    XMLHttpRequestEventTarget_onload_Get: function(ctx) {
      return spasm.objects[ctx].onload;
    },
    XMLHttpRequestEventTarget_ontimeout_Set: function(ctx, ontimeout) {
      spasm.objects[ctx].ontimeout = ontimeout;
    },
    XMLHttpRequestEventTarget_ontimeout_Get: function(ctx) {
      return spasm.objects[ctx].ontimeout;
    },
    XMLHttpRequestEventTarget_onloadend_Set: function(ctx, onloadend) {
      spasm.objects[ctx].onloadend = onloadend;
    },
    XMLHttpRequestEventTarget_onloadend_Get: function(ctx) {
      return spasm.objects[ctx].onloadend;
    },
  }
}