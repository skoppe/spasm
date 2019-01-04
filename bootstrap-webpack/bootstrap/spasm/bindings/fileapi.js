import spasm from './spasm.js';
export default {
  jsExports: {
    Blob_size_Get: function(ctx) {
      return spasm.objects[ctx].size;
    },
    Blob_type_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].type);
    },
    Blob_slice: function(ctx, start, end, contentTypeLen, contentTypePtr) {
      return spasm.addObject(spasm.objects[ctx].slice(start, end, spasm.decode_string(contentTypeLen, contentTypePtr)));
    },
    BlobPropertyBag_type_Set: function(ctx, typeLen, typePtr) {
      spasm.objects[ctx].type = spasm.decode_string(typeLen, typePtr);
    },
    BlobPropertyBag_type_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].type);
    },
    BlobPropertyBag_endings_Set: function(ctx, endings) {
      spasm.objects[ctx].endings = spasm.decode_EndingType(endings);
    },
    BlobPropertyBag_endings_Get: function(ctx) {
      return spasm.encode_EndingType(spasm.objects[ctx].endings);
    },
    File_name_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].name);
    },
    File_lastModified_Get: function(ctx) {
      return spasm.objects[ctx].lastModified;
    },
    FileList_item_getter: function(rawResult, ctx, index) {
      spasm.encode_optional_JsHandle(rawResult, spasm.objects[ctx].item(index));
    },
    FileList_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    FilePropertyBag_lastModified_Set: function(ctx, lastModified) {
      spasm.objects[ctx].lastModified = lastModified;
    },
    FilePropertyBag_lastModified_Get: function(ctx) {
      return spasm.objects[ctx].lastModified;
    },
    FileReader_readAsArrayBuffer: function(ctx, blob) {
      spasm.objects[ctx].readAsArrayBuffer(spasm.objects[blob]);
    },
    FileReader_readAsBinaryString: function(ctx, blob) {
      spasm.objects[ctx].readAsBinaryString(spasm.objects[blob]);
    },
    FileReader_readAsText: function(ctx, blob, encodingLen, encodingPtr) {
      spasm.objects[ctx].readAsText(spasm.objects[blob], spasm.decode_string(encodingLen, encodingPtr));
    },
    FileReader_readAsDataURL: function(ctx, blob) {
      spasm.objects[ctx].readAsDataURL(spasm.objects[blob]);
    },
    FileReader_abort: function(ctx) {
      spasm.objects[ctx].abort();
    },
    FileReader_readyState_Get: function(ctx) {
      return spasm.objects[ctx].readyState;
    },
    FileReader_result_Get: function(rawResult, ctx) {
      spasm.encode_optional_union2_string_ArrayBuffer(rawResult, spasm.objects[ctx].result);
    },
    FileReader_error_Get: function(rawResult, ctx) {
      spasm.encode_optional_JsHandle(rawResult, spasm.objects[ctx].error);
    },
    FileReader_onloadstart_Set: function(ctx, onloadstartDefined, onloadstart) {
      spasm.objects[ctx].onloadstart = onloadstartDefined ? onloadstart : undefined;
    },
    FileReader_onloadstart_Get: function(rawResult, ctx) {
      spasm.encode_EventHandler(rawResult, spasm.objects[ctx].onloadstart);
    },
    FileReader_onprogress_Set: function(ctx, onprogressDefined, onprogress) {
      spasm.objects[ctx].onprogress = onprogressDefined ? onprogress : undefined;
    },
    FileReader_onprogress_Get: function(rawResult, ctx) {
      spasm.encode_EventHandler(rawResult, spasm.objects[ctx].onprogress);
    },
    FileReader_onload_Set: function(ctx, onloadDefined, onload) {
      spasm.objects[ctx].onload = onloadDefined ? onload : undefined;
    },
    FileReader_onload_Get: function(rawResult, ctx) {
      spasm.encode_EventHandler(rawResult, spasm.objects[ctx].onload);
    },
    FileReader_onabort_Set: function(ctx, onabortDefined, onabort) {
      spasm.objects[ctx].onabort = onabortDefined ? onabort : undefined;
    },
    FileReader_onabort_Get: function(rawResult, ctx) {
      spasm.encode_EventHandler(rawResult, spasm.objects[ctx].onabort);
    },
    FileReader_onerror_Set: function(ctx, onerrorDefined, onerror) {
      spasm.objects[ctx].onerror = onerrorDefined ? onerror : undefined;
    },
    FileReader_onerror_Get: function(rawResult, ctx) {
      spasm.encode_EventHandler(rawResult, spasm.objects[ctx].onerror);
    },
    FileReader_onloadend_Set: function(ctx, onloadendDefined, onloadend) {
      spasm.objects[ctx].onloadend = onloadendDefined ? onloadend : undefined;
    },
    FileReader_onloadend_Get: function(rawResult, ctx) {
      spasm.encode_EventHandler(rawResult, spasm.objects[ctx].onloadend);
    },
    FileReaderSync_readAsArrayBuffer: function(ctx, blob) {
      return spasm.addObject(spasm.objects[ctx].readAsArrayBuffer(spasm.objects[blob]));
    },
    FileReaderSync_readAsBinaryString: function(rawResult, ctx, blob) {
      spasm.encode_string(rawResult, spasm.objects[ctx].readAsBinaryString(spasm.objects[blob]));
    },
    FileReaderSync_readAsText: function(rawResult, ctx, blob, encodingLen, encodingPtr) {
      spasm.encode_string(rawResult, spasm.objects[ctx].readAsText(spasm.objects[blob], spasm.decode_string(encodingLen, encodingPtr)));
    },
    FileReaderSync_readAsDataURL: function(rawResult, ctx, blob) {
      spasm.encode_string(rawResult, spasm.objects[ctx].readAsDataURL(spasm.objects[blob]));
    },
  }
}