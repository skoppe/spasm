import spasm from './spasm.js';
const setBool = (ptr, val) => (spasm.heapi32u[ptr/4] = +val),
      setInt = (ptr, val) => (spasm.heapi32s[ptr/4] = val),
      setUInt = (ptr, val) => (spasm.heapi32u[ptr/4] = val),
      setShort = (ptr, val) => (spasm.heapi16s[ptr/2] = val),
      setUShort = (ptr, val) => (spasm.heapi16u[ptr/2] = val),
      setByte = (ptr, val) => (spasm.heapi8s[ptr] = val),
      setUByte = (ptr, val) => (spasm.heapi8u[ptr] = val),
      setFloat = (ptr, val) => (spasm.heapf32[ptr/4] = val),
      setDouble = (ptr, val) => (spasm.heapf64[ptr/8] = val),
      isEmpty = (val) => (val == undefined || val == null);
const encode_AudioContextLatencyCategory = (ptr, val)=>{
    // other
  },
  encode_JsHandle = (ptr, val)=>{
    // other
  },
  encode_double = (ptr, val)=>{
    // other
  },
  encode_optional_JsHandle = (ptr, val)=>{
    // other
  },
  encode_sequence_JsHandle = (ptr, val)=>{
    // other
  },
  encode_sequence_sequence_string = (ptr, val)=>{
    // other
  },
  encode_sequence_string = (ptr, val)=>{
    // other
  },
  encode_sequence_uint = (ptr, val)=>{
    // other
  },
  encode_string = (ptr, val)=>{
    // other
  },
  encode_stringstring = (ptr, val)=>{
    // other
  },
  encode_uint = (ptr, val)=>{
    // other
  },
  encode_ulong = (ptr, val)=>{
    // other
  },
  encode_union10_Int8Array_Int16Array_Int32Array_Uint8Array_Uint16Array_Uint32Array_Uint8ClampedArray_Float32Array_Float64Array_DataView = (ptr, val)=>{
    if (val instanceof Int8Array) {
      setInt(ptr, 0);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof Int16Array) {
      setInt(ptr, 1);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof Int32Array) {
      setInt(ptr, 2);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof Uint8Array) {
      setInt(ptr, 3);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof Uint16Array) {
      setInt(ptr, 4);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof Uint32Array) {
      setInt(ptr, 5);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof Uint8ClampedArray) {
      setInt(ptr, 6);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof Float32Array) {
      setInt(ptr, 7);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof Float64Array) {
      setInt(ptr, 8);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof DataView) {
      setInt(ptr, 9);
      encode_JsHandle(ptr+4, val);
    }
  },
  encode_union2_ArrayBufferView_ArrayBuffer = (ptr, val)=>{
    if (val instanceof ArrayBufferView) {
      setInt(ptr, 0);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof ArrayBuffer) {
      setInt(ptr, 1);
      encode_JsHandle(ptr+4, val);
    }
  },
  encode_union2_Element_ProcessingInstruction = (ptr, val)=>{
    if (val instanceof Element) {
      setInt(ptr, 0);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof ProcessingInstruction) {
      setInt(ptr, 1);
      encode_JsHandle(ptr+4, val);
    }
  },
  encode_union2_File_string = (ptr, val)=>{
    if (val instanceof File) {
      setInt(ptr, 0);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof USVString) {
      setInt(ptr, 1);
      encode_string(ptr+4, val);
    }
  },
  encode_union2_HTMLCollection_Element = (ptr, val)=>{
    if (val instanceof HTMLCollection) {
      setInt(ptr, 0);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof Element) {
      setInt(ptr, 1);
      encode_JsHandle(ptr+4, val);
    }
  },
  encode_union2_HTMLScriptElement_SVGScriptElement = (ptr, val)=>{
    if (val instanceof HTMLScriptElement) {
      setInt(ptr, 0);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof SVGScriptElement) {
      setInt(ptr, 1);
      encode_JsHandle(ptr+4, val);
    }
  },
  encode_union2_sequence_sequence_string_stringstring = (ptr, val)=>{
    if (val instanceof sequence) {
      setInt(ptr, 0);
      encode_sequence_sequence_string(ptr+4, val);
    } else if (val instanceof record) {
      setInt(ptr, 1);
      encode_stringstring(ptr+4, val);
    }
  },
  encode_union2_string_ArrayBuffer = (ptr, val)=>{
    if (val instanceof DOMString) {
      setInt(ptr, 0);
      encode_string(ptr+4, val);
    } else if (val instanceof ArrayBuffer) {
      setInt(ptr, 1);
      encode_JsHandle(ptr+4, val);
    }
  },
  encode_union2_string_sequence_string = (ptr, val)=>{
    if (val instanceof DOMString) {
      setInt(ptr, 0);
      encode_string(ptr+4, val);
    } else if (val instanceof sequence) {
      setInt(ptr, 1);
      encode_sequence_string(ptr+4, val);
    }
  },
  encode_union3_IDBObjectStore_IDBIndex_IDBCursor = (ptr, val)=>{
    if (val instanceof IDBObjectStore) {
      setInt(ptr, 0);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof IDBIndex) {
      setInt(ptr, 1);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof IDBCursor) {
      setInt(ptr, 2);
      encode_JsHandle(ptr+4, val);
    }
  },
  encode_union3_MediaStream_MediaSource_Blob = (ptr, val)=>{
    if (val instanceof MediaStream) {
      setInt(ptr, 0);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof MediaSource) {
      setInt(ptr, 1);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof Blob) {
      setInt(ptr, 2);
      encode_JsHandle(ptr+4, val);
    }
  },
  encode_union3_OffscreenCanvasRenderingContext2D_WebGLRenderingContext_WebGL2RenderingContext = (ptr, val)=>{
    if (val instanceof OffscreenCanvasRenderingContext2D) {
      setInt(ptr, 0);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof WebGLRenderingContext) {
      setInt(ptr, 1);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof WebGL2RenderingContext) {
      setInt(ptr, 2);
      encode_JsHandle(ptr+4, val);
    }
  },
  encode_union3_VideoTrack_AudioTrack_TextTrack = (ptr, val)=>{
    if (val instanceof VideoTrack) {
      setInt(ptr, 0);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof AudioTrack) {
      setInt(ptr, 1);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof TextTrack) {
      setInt(ptr, 2);
      encode_JsHandle(ptr+4, val);
    }
  },
  encode_union3_WindowProxy_MessagePort_ServiceWorker = (ptr, val)=>{
    if (val instanceof WindowProxy) {
      setInt(ptr, 0);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof MessagePort) {
      setInt(ptr, 1);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof ServiceWorker) {
      setInt(ptr, 2);
      encode_JsHandle(ptr+4, val);
    }
  },
  encode_union4_CanvasRenderingContext2D_ImageBitmapRenderingContext_WebGLRenderingContext_WebGL2RenderingContext = (ptr, val)=>{
    if (val instanceof CanvasRenderingContext2D) {
      setInt(ptr, 0);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof ImageBitmapRenderingContext) {
      setInt(ptr, 1);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof WebGLRenderingContext) {
      setInt(ptr, 2);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof WebGL2RenderingContext) {
      setInt(ptr, 3);
      encode_JsHandle(ptr+4, val);
    }
  },
  encode_union6_Blob_BufferSource_FormData_URLSearchParams_ReadableStream_string = (ptr, val)=>{
    if (val instanceof Blob) {
      setInt(ptr, 0);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof BufferSource) {
      setInt(ptr, 1);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof FormData) {
      setInt(ptr, 2);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof URLSearchParams) {
      setInt(ptr, 3);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof ReadableStream) {
      setInt(ptr, 4);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof USVString) {
      setInt(ptr, 5);
      encode_string(ptr+4, val);
    }
  },
  ;
export default {
  encode_AudioContextState: (ptr, val)=>{
    const vals = ["suspended", "running", "closed"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_AutomationRate: (ptr, val)=>{
    const vals = ["a-rate", "k-rate"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_BinaryType: (ptr, val)=>{
    const vals = ["blob", "arraybuffer"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_BiquadFilterType: (ptr, val)=>{
    const vals = ["lowpass", "highpass", "bandpass", "lowshelf", "highshelf", "peaking", "notch", "allpass"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_CanPlayTypeResult: (ptr, val)=>{
    const vals = ["", "maybe", "probably"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_ChannelCountMode: (ptr, val)=>{
    const vals = ["max", "clamped-max", "explicit"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_ChannelInterpretation: (ptr, val)=>{
    const vals = ["speakers", "discrete"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_ColorSpaceConversion: (ptr, val)=>{
    const vals = ["none", "default"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_DistanceModelType: (ptr, val)=>{
    const vals = ["linear", "inverse", "exponential"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_DocumentReadyState: (ptr, val)=>{
    const vals = ["loading", "interactive", "complete"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_EndingType: (ptr, val)=>{
    const vals = ["transparent", "native"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_EventHandler: (ptr, val)=>{
    encode_optional_JsHandle(ptr, val);
  },
  encode_FullscreenNavigationUI: (ptr, val)=>{
    const vals = ["auto", "show", "hide"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_HeadersInit: (ptr, val)=>{
    encode_union2_sequence_sequence_string_stringstring(ptr, val);
  },
  encode_IDBCursorDirection: (ptr, val)=>{
    const vals = ["next", "nextunique", "prev", "prevunique"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_IDBRequestReadyState: (ptr, val)=>{
    const vals = ["pending", "done"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_IDBTransactionMode: (ptr, val)=>{
    const vals = ["readonly", "readwrite", "versionchange"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_ImageOrientation: (ptr, val)=>{
    const vals = ["none", "flipY"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_NotificationDirection: (ptr, val)=>{
    const vals = ["auto", "ltr", "rtl"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_NotificationPermission: (ptr, val)=>{
    const vals = ["default", "denied", "granted"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_OscillatorType: (ptr, val)=>{
    const vals = ["sine", "square", "sawtooth", "triangle", "custom"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_OverSampleType: (ptr, val)=>{
    const vals = ["none", "2x", "4x"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_PanningModelType: (ptr, val)=>{
    const vals = ["equalpower", "HRTF"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_PremultiplyAlpha: (ptr, val)=>{
    const vals = ["none", "premultiply", "default"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_RequestCache: (ptr, val)=>{
    const vals = ["default", "no-store", "reload", "no-cache", "force-cache", "only-if-cached"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_RequestCredentials: (ptr, val)=>{
    const vals = ["omit", "same-origin", "include"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_RequestDestination: (ptr, val)=>{
    const vals = ["", "audio", "audioworklet", "document", "embed", "font", "image", "manifest", "object", "paintworklet", "report", "script", "sharedworker", "style", "track", "video", "worker", "xslt"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_RequestMode: (ptr, val)=>{
    const vals = ["navigate", "same-origin", "no-cors", "cors"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_RequestRedirect: (ptr, val)=>{
    const vals = ["follow", "error", "manual"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_ResizeQuality: (ptr, val)=>{
    const vals = ["pixelated", "low", "medium", "high"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_ResponseType: (ptr, val)=>{
    const vals = ["basic", "cors", "default", "error", "opaque", "opaqueredirect"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_ScrollRestoration: (ptr, val)=>{
    const vals = ["auto", "manual"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_ShadowRootMode: (ptr, val)=>{
    const vals = ["open", "closed"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_TextTrackKind: (ptr, val)=>{
    const vals = ["subtitles", "captions", "descriptions", "chapters", "metadata"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_TextTrackMode: (ptr, val)=>{
    const vals = ["disabled", "hidden", "showing"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_TouchType: (ptr, val)=>{
    const vals = ["direct", "stylus"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_WorkerType: (ptr, val)=>{
    const vals = ["classic", "module"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_XMLHttpRequestResponseType: (ptr, val)=>{
    const vals = ["", "arraybuffer", "blob", "document", "json", "text"];
    setInt(ptr, vals.indexOf(val))
  },
  encode_object: (ptr, val)=>{
    // other
  },
  encode_optional_BodyInit: (ptr, val)=>{
    if (!setBool(ptr+12, isEmpty(val))) {
      encode_union6_Blob_BufferSource_FormData_URLSearchParams_ReadableStream_string(ptr, val);
    }
  },
  encode_optional_FormDataEntryValue: (ptr, val)=>{
    if (!setBool(ptr+12, isEmpty(val))) {
      encode_union2_File_string(ptr, val);
    }
  },
  encode_optional_HTMLOrSVGScriptElement: (ptr, val)=>{
    if (!setBool(ptr+8, isEmpty(val))) {
      encode_union2_HTMLScriptElement_SVGScriptElement(ptr, val);
    }
  },
  encode_optional_MediaProvider: (ptr, val)=>{
    if (!setBool(ptr+8, isEmpty(val))) {
      encode_union3_MediaStream_MediaSource_Blob(ptr, val);
    }
  },
  encode_optional_MessageEventSource: (ptr, val)=>{
    if (!setBool(ptr+8, isEmpty(val))) {
      encode_union3_WindowProxy_MessagePort_ServiceWorker(ptr, val);
    }
  },
  encode_optional_OffscreenRenderingContext: (ptr, val)=>{
    if (!setBool(ptr+8, isEmpty(val))) {
      encode_union3_OffscreenCanvasRenderingContext2D_WebGLRenderingContext_WebGL2RenderingContext(ptr, val);
    }
  },
  encode_optional_RenderingContext: (ptr, val)=>{
    if (!setBool(ptr+8, isEmpty(val))) {
      encode_union4_CanvasRenderingContext2D_ImageBitmapRenderingContext_WebGLRenderingContext_WebGL2RenderingContext(ptr, val);
    }
  },
  encode_optional_sequence_JsHandle: (ptr, val)=>{
    // other
  },
  encode_optional_sequence_string: (ptr, val)=>{
    // other
  },
  encode_optional_sequence_uint: (ptr, val)=>{
    // other
  },
  encode_optional_string: (ptr, val)=>{
    // other
  },
  encode_optional_uint: (ptr, val)=>{
    // other
  },
  encode_optional_ulong: (ptr, val)=>{
    // other
  },
  encode_optional_union2_Element_ProcessingInstruction: (ptr, val)=>{
    if (val instanceof Element) {
      setInt(ptr, 0);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof ProcessingInstruction) {
      setInt(ptr, 1);
      encode_JsHandle(ptr+4, val);
    }
  },
  encode_optional_union2_HTMLCollection_Element: (ptr, val)=>{
    if (val instanceof HTMLCollection) {
      setInt(ptr, 0);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof Element) {
      setInt(ptr, 1);
      encode_JsHandle(ptr+4, val);
    }
  },
  encode_optional_union2_RadioNodeList_Element: (ptr, val)=>{
    if (val instanceof RadioNodeList) {
      setInt(ptr, 0);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof Element) {
      setInt(ptr, 1);
      encode_JsHandle(ptr+4, val);
    }
  },
  encode_optional_union2_string_ArrayBuffer: (ptr, val)=>{
    if (val instanceof DOMString) {
      setInt(ptr, 0);
      encode_string(ptr+4, val);
    } else if (val instanceof ArrayBuffer) {
      setInt(ptr, 1);
      encode_JsHandle(ptr+4, val);
    }
  },
  encode_optional_union2_string_sequence_string: (ptr, val)=>{
    if (val instanceof DOMString) {
      setInt(ptr, 0);
      encode_string(ptr+4, val);
    } else if (val instanceof sequence) {
      setInt(ptr, 1);
      encode_sequence_string(ptr+4, val);
    }
  },
  encode_optional_union3_IDBObjectStore_IDBIndex_IDBCursor: (ptr, val)=>{
    if (val instanceof IDBObjectStore) {
      setInt(ptr, 0);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof IDBIndex) {
      setInt(ptr, 1);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof IDBCursor) {
      setInt(ptr, 2);
      encode_JsHandle(ptr+4, val);
    }
  },
  encode_optional_union3_VideoTrack_AudioTrack_TextTrack: (ptr, val)=>{
    if (val instanceof VideoTrack) {
      setInt(ptr, 0);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof AudioTrack) {
      setInt(ptr, 1);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof TextTrack) {
      setInt(ptr, 2);
      encode_JsHandle(ptr+4, val);
    }
  },
  encode_union2_AudioContextLatencyCategory_double: (ptr, val)=>{
    if (val instanceof AudioContextLatencyCategory) {
      setInt(ptr, 0);
      encode_AudioContextLatencyCategory(ptr+4, val);
    } else if (val instanceof double) {
      setInt(ptr, 1);
      encode_double(ptr+4, val);
    }
  },
  encode_union2_IDBObjectStore_IDBIndex: (ptr, val)=>{
    if (val instanceof IDBObjectStore) {
      setInt(ptr, 0);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof IDBIndex) {
      setInt(ptr, 1);
      encode_JsHandle(ptr+4, val);
    }
  },
  encode_union2_RadioNodeList_Element: (ptr, val)=>{
    if (val instanceof RadioNodeList) {
      setInt(ptr, 0);
      encode_JsHandle(ptr+4, val);
    } else if (val instanceof Element) {
      setInt(ptr, 1);
      encode_JsHandle(ptr+4, val);
    }
  },
}