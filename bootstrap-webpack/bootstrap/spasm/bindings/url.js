import spasm from './spasm.js';
export default {
  jsExports: {
    URL_href_Set: function(ctx, hrefLen, hrefPtr) {
      spasm.objects[ctx].href = spasm.decode_string(hrefLen, hrefPtr);
    },
    URL_href_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].href);
    },
    URL_origin_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].origin);
    },
    URL_protocol_Set: function(ctx, protocolLen, protocolPtr) {
      spasm.objects[ctx].protocol = spasm.decode_string(protocolLen, protocolPtr);
    },
    URL_protocol_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].protocol);
    },
    URL_username_Set: function(ctx, usernameLen, usernamePtr) {
      spasm.objects[ctx].username = spasm.decode_string(usernameLen, usernamePtr);
    },
    URL_username_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].username);
    },
    URL_password_Set: function(ctx, passwordLen, passwordPtr) {
      spasm.objects[ctx].password = spasm.decode_string(passwordLen, passwordPtr);
    },
    URL_password_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].password);
    },
    URL_host_Set: function(ctx, hostLen, hostPtr) {
      spasm.objects[ctx].host = spasm.decode_string(hostLen, hostPtr);
    },
    URL_host_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].host);
    },
    URL_hostname_Set: function(ctx, hostnameLen, hostnamePtr) {
      spasm.objects[ctx].hostname = spasm.decode_string(hostnameLen, hostnamePtr);
    },
    URL_hostname_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].hostname);
    },
    URL_port_Set: function(ctx, portLen, portPtr) {
      spasm.objects[ctx].port = spasm.decode_string(portLen, portPtr);
    },
    URL_port_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].port);
    },
    URL_pathname_Set: function(ctx, pathnameLen, pathnamePtr) {
      spasm.objects[ctx].pathname = spasm.decode_string(pathnameLen, pathnamePtr);
    },
    URL_pathname_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].pathname);
    },
    URL_search_Set: function(ctx, searchLen, searchPtr) {
      spasm.objects[ctx].search = spasm.decode_string(searchLen, searchPtr);
    },
    URL_search_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].search);
    },
    URL_searchParams_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].searchParams);
    },
    URL_hash_Set: function(ctx, hashLen, hashPtr) {
      spasm.objects[ctx].hash = spasm.decode_string(hashLen, hashPtr);
    },
    URL_hash_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].hash);
    },
    URL_toJSON: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].toJSON());
    },
    URL_createObjectURL: function(rawResult, ctx, blob) {
      spasm.encode_string(rawResult, spasm.objects[ctx].createObjectURL(spasm.objects[blob]));
    },
    URL_revokeObjectURL: function(ctx, urlLen, urlPtr) {
      spasm.objects[ctx].revokeObjectURL(spasm.decode_string(urlLen, urlPtr));
    },
    URLSearchParams_append: function(ctx, nameLen, namePtr, valueLen, valuePtr) {
      spasm.objects[ctx].append(spasm.decode_string(nameLen, namePtr), spasm.decode_string(valueLen, valuePtr));
    },
    URLSearchParams_delete: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].delete(spasm.decode_string(nameLen, namePtr));
    },
    URLSearchParams_get: function(rawResult, ctx, nameLen, namePtr) {
      spasm.encode_optional_string(rawResult, spasm.objects[ctx].get(spasm.decode_string(nameLen, namePtr)));
    },
    URLSearchParams_getAll: function(ctx, nameLen, namePtr) {
      return spasm.addObject(spasm.objects[ctx].getAll(spasm.decode_string(nameLen, namePtr)));
    },
    URLSearchParams_has: function(ctx, nameLen, namePtr) {
      return spasm.objects[ctx].has(spasm.decode_string(nameLen, namePtr));
    },
    URLSearchParams_set: function(ctx, nameLen, namePtr, valueLen, valuePtr) {
      spasm.objects[ctx].set(spasm.decode_string(nameLen, namePtr), spasm.decode_string(valueLen, valuePtr));
    },
    URLSearchParams_sort: function(ctx) {
      spasm.objects[ctx].sort();
    },
  }
}