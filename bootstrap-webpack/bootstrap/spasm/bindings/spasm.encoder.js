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
      isEmpty = (val) => (val == undefined || val == null),
      handle = (ptr, val) => { setUInt(ptr, spasm.addObject(val); ),}
      string = spasm.encoders.string;
const AudioContextLatencyCategory = (ptr, val)=>{
    const vals = ["balanced", "interactive", "playback"];
    setInt(ptr, vals.indexOf(val))
  },
  Handle = handle,
  bool = setUInt,
  double = setDouble,
  object = handle,
  record = handle,
  sequence = handle,
  uint = setUInt,
  ulong = (ptr, val)=>{
    setUInt(ptr, val & 0xffffffff);
    setUInt(ptr+4, val >> 32);
  },
  union10_Int8Array_Int16Array_Int32Array_Uint8Array_Uint16Array_Uint32Array_Uint8ClampedArray_Float32Array_Float64Array_DataView = (ptr, val)=>{
    if (val instanceof Int8Array) {
      setInt(ptr, 0);
      Handle(ptr+4, val);
    } else if (val instanceof Int16Array) {
      setInt(ptr, 1);
      Handle(ptr+4, val);
    } else if (val instanceof Int32Array) {
      setInt(ptr, 2);
      Handle(ptr+4, val);
    } else if (val instanceof Uint8Array) {
      setInt(ptr, 3);
      Handle(ptr+4, val);
    } else if (val instanceof Uint16Array) {
      setInt(ptr, 4);
      Handle(ptr+4, val);
    } else if (val instanceof Uint32Array) {
      setInt(ptr, 5);
      Handle(ptr+4, val);
    } else if (val instanceof Uint8ClampedArray) {
      setInt(ptr, 6);
      Handle(ptr+4, val);
    } else if (val instanceof Float32Array) {
      setInt(ptr, 7);
      Handle(ptr+4, val);
    } else if (val instanceof Float64Array) {
      setInt(ptr, 8);
      Handle(ptr+4, val);
    } else if (val instanceof DataView) {
      setInt(ptr, 9);
      Handle(ptr+4, val);
    }
  },
  union2_ArrayBufferView_ArrayBuffer = (ptr, val)=>{
    if (val instanceof ArrayBufferView) {
      setInt(ptr, 0);
      Handle(ptr+4, val);
    } else if (val instanceof ArrayBuffer) {
      setInt(ptr, 1);
      Handle(ptr+4, val);
    }
  },
  union2_Element_ProcessingInstruction = (ptr, val)=>{
    if (val instanceof Element) {
      setInt(ptr, 0);
      Handle(ptr+4, val);
    } else if (val instanceof ProcessingInstruction) {
      setInt(ptr, 1);
      Handle(ptr+4, val);
    }
  },
  union2_File_string = (ptr, val)=>{
    if (val instanceof File) {
      setInt(ptr, 0);
      Handle(ptr+4, val);
    } else if (val instanceof USVString) {
      setInt(ptr, 1);
      string(ptr+4, val);
    }
  },
  union2_HTMLCollection_Element = (ptr, val)=>{
    if (val instanceof HTMLCollection) {
      setInt(ptr, 0);
      Handle(ptr+4, val);
    } else if (val instanceof Element) {
      setInt(ptr, 1);
      Handle(ptr+4, val);
    }
  },
  union2_HTMLScriptElement_SVGScriptElement = (ptr, val)=>{
    if (val instanceof HTMLScriptElement) {
      setInt(ptr, 0);
      Handle(ptr+4, val);
    } else if (val instanceof SVGScriptElement) {
      setInt(ptr, 1);
      Handle(ptr+4, val);
    }
  },
  union2_RadioNodeList_Element = (ptr, val)=>{
    if (val instanceof RadioNodeList) {
      setInt(ptr, 0);
      Handle(ptr+4, val);
    } else if (val instanceof Element) {
      setInt(ptr, 1);
      Handle(ptr+4, val);
    }
  },
  union2_bool_ConstrainBooleanParameters = (ptr, val)=>{
    if (val instanceof boolean) {
      setInt(ptr, 0);
      bool(ptr+4, val);
    } else if (val instanceof ConstrainBooleanParameters) {
      setInt(ptr, 1);
      Handle(ptr+4, val);
    }
  },
  union2_double_ConstrainDoubleRange = (ptr, val)=>{
    if (val instanceof double) {
      setInt(ptr, 0);
      double(ptr+4, val);
    } else if (val instanceof ConstrainDoubleRange) {
      setInt(ptr, 1);
      Handle(ptr+4, val);
    }
  },
  union2_sequence_record = (ptr, val)=>{
    if (val instanceof sequence) {
      setInt(ptr, 0);
      sequence(ptr+4, val);
    } else if (val instanceof record) {
      setInt(ptr, 1);
      record(ptr+4, val);
    }
  },
  union2_string_ArrayBuffer = (ptr, val)=>{
    if (val instanceof DOMString) {
      setInt(ptr, 0);
      string(ptr+4, val);
    } else if (val instanceof ArrayBuffer) {
      setInt(ptr, 1);
      Handle(ptr+4, val);
    }
  },
  union2_string_sequence = (ptr, val)=>{
    if (val instanceof DOMString) {
      setInt(ptr, 0);
      string(ptr+4, val);
    } else if (val instanceof sequence) {
      setInt(ptr, 1);
      sequence(ptr+4, val);
    }
  },
  union2_uint_ConstrainULongRange = (ptr, val)=>{
    if (val instanceof unsigned) {
      setInt(ptr, 0);
      uint(ptr+4, val);
    } else if (val instanceof ConstrainULongRange) {
      setInt(ptr, 1);
      Handle(ptr+4, val);
    }
  },
  union2_uint_sequence = (ptr, val)=>{
    if (val instanceof unsigned) {
      setInt(ptr, 0);
      uint(ptr+4, val);
    } else if (val instanceof sequence) {
      setInt(ptr, 1);
      sequence(ptr+4, val);
    }
  },
  union3_Client_ServiceWorker_MessagePort = (ptr, val)=>{
    if (val instanceof Client) {
      setInt(ptr, 0);
      Handle(ptr+4, val);
    } else if (val instanceof ServiceWorker) {
      setInt(ptr, 1);
      Handle(ptr+4, val);
    } else if (val instanceof MessagePort) {
      setInt(ptr, 2);
      Handle(ptr+4, val);
    }
  },
  union3_IDBObjectStore_IDBIndex_IDBCursor = (ptr, val)=>{
    if (val instanceof IDBObjectStore) {
      setInt(ptr, 0);
      Handle(ptr+4, val);
    } else if (val instanceof IDBIndex) {
      setInt(ptr, 1);
      Handle(ptr+4, val);
    } else if (val instanceof IDBCursor) {
      setInt(ptr, 2);
      Handle(ptr+4, val);
    }
  },
  union3_MediaStream_MediaSource_Blob = (ptr, val)=>{
    if (val instanceof MediaStream) {
      setInt(ptr, 0);
      Handle(ptr+4, val);
    } else if (val instanceof MediaSource) {
      setInt(ptr, 1);
      Handle(ptr+4, val);
    } else if (val instanceof Blob) {
      setInt(ptr, 2);
      Handle(ptr+4, val);
    }
  },
  union3_OffscreenCanvasRenderingContext2D_WebGLRenderingContext_WebGL2RenderingContext = (ptr, val)=>{
    if (val instanceof OffscreenCanvasRenderingContext2D) {
      setInt(ptr, 0);
      Handle(ptr+4, val);
    } else if (val instanceof WebGLRenderingContext) {
      setInt(ptr, 1);
      Handle(ptr+4, val);
    } else if (val instanceof WebGL2RenderingContext) {
      setInt(ptr, 2);
      Handle(ptr+4, val);
    }
  },
  union3_VideoTrack_AudioTrack_TextTrack = (ptr, val)=>{
    if (val instanceof VideoTrack) {
      setInt(ptr, 0);
      Handle(ptr+4, val);
    } else if (val instanceof AudioTrack) {
      setInt(ptr, 1);
      Handle(ptr+4, val);
    } else if (val instanceof TextTrack) {
      setInt(ptr, 2);
      Handle(ptr+4, val);
    }
  },
  union3_Window_MessagePort_ServiceWorker = (ptr, val)=>{
    if (val instanceof WindowProxy) {
      setInt(ptr, 0);
      Handle(ptr+4, val);
    } else if (val instanceof MessagePort) {
      setInt(ptr, 1);
      Handle(ptr+4, val);
    } else if (val instanceof ServiceWorker) {
      setInt(ptr, 2);
      Handle(ptr+4, val);
    }
  },
  union3_string_sequence_ConstrainDOMStringParameters = (ptr, val)=>{
    if (val instanceof DOMString) {
      setInt(ptr, 0);
      string(ptr+4, val);
    } else if (val instanceof sequence) {
      setInt(ptr, 1);
      sequence(ptr+4, val);
    } else if (val instanceof ConstrainDOMStringParameters) {
      setInt(ptr, 2);
      Handle(ptr+4, val);
    }
  },
  union4_CanvasRenderingContext2D_ImageBitmapRenderingContext_WebGLRenderingContext_WebGL2RenderingContext = (ptr, val)=>{
    if (val instanceof CanvasRenderingContext2D) {
      setInt(ptr, 0);
      Handle(ptr+4, val);
    } else if (val instanceof ImageBitmapRenderingContext) {
      setInt(ptr, 1);
      Handle(ptr+4, val);
    } else if (val instanceof WebGLRenderingContext) {
      setInt(ptr, 2);
      Handle(ptr+4, val);
    } else if (val instanceof WebGL2RenderingContext) {
      setInt(ptr, 3);
      Handle(ptr+4, val);
    }
  },
  union6_Blob_BufferSource_FormData_URLSearchParams_ReadableStream_string = (ptr, val)=>{
    if (val instanceof Blob) {
      setInt(ptr, 0);
      Handle(ptr+4, val);
    } else if (val instanceof BufferSource) {
      setInt(ptr, 1);
      Handle(ptr+4, val);
    } else if (val instanceof FormData) {
      setInt(ptr, 2);
      Handle(ptr+4, val);
    } else if (val instanceof URLSearchParams) {
      setInt(ptr, 3);
      Handle(ptr+4, val);
    } else if (val instanceof ReadableStream) {
      setInt(ptr, 4);
      Handle(ptr+4, val);
    } else if (val instanceof USVString) {
      setInt(ptr, 5);
      string(ptr+4, val);
    }
  };
export default {
  encoders: {
    AppendMode: (ptr, val)=>{
      const vals = ["segments", "sequence"];
      setInt(ptr, vals.indexOf(val))
    },
    AudioContextState: (ptr, val)=>{
      const vals = ["suspended", "running", "closed"];
      setInt(ptr, vals.indexOf(val))
    },
    AutomationRate: (ptr, val)=>{
      const vals = ["a-rate", "k-rate"];
      setInt(ptr, vals.indexOf(val))
    },
    BinaryType: (ptr, val)=>{
      const vals = ["blob", "arraybuffer"];
      setInt(ptr, vals.indexOf(val))
    },
    BiquadFilterType: (ptr, val)=>{
      const vals = ["lowpass", "highpass", "bandpass", "lowshelf", "highshelf", "peaking", "notch", "allpass"];
      setInt(ptr, vals.indexOf(val))
    },
    CanPlayTypeResult: (ptr, val)=>{
      const vals = ["", "maybe", "probably"];
      setInt(ptr, vals.indexOf(val))
    },
    ChannelCountMode: (ptr, val)=>{
      const vals = ["max", "clamped-max", "explicit"];
      setInt(ptr, vals.indexOf(val))
    },
    ChannelInterpretation: (ptr, val)=>{
      const vals = ["speakers", "discrete"];
      setInt(ptr, vals.indexOf(val))
    },
    ClientType: (ptr, val)=>{
      const vals = ["window", "worker", "sharedworker", "all"];
      setInt(ptr, vals.indexOf(val))
    },
    ColorSpaceConversion: (ptr, val)=>{
      const vals = ["none", "default"];
      setInt(ptr, vals.indexOf(val))
    },
    ConstrainBoolean: (ptr, val)=>{
      union2_bool_ConstrainBooleanParameters(ptr, val);
    },
    ConstrainDOMString: (ptr, val)=>{
      union3_string_sequence_ConstrainDOMStringParameters(ptr, val);
    },
    ConstrainDouble: (ptr, val)=>{
      union2_double_ConstrainDoubleRange(ptr, val);
    },
    ConstrainULong: (ptr, val)=>{
      union2_uint_ConstrainULongRange(ptr, val);
    },
    DistanceModelType: (ptr, val)=>{
      const vals = ["linear", "inverse", "exponential"];
      setInt(ptr, vals.indexOf(val))
    },
    DocumentReadyState: (ptr, val)=>{
      const vals = ["loading", "interactive", "complete"];
      setInt(ptr, vals.indexOf(val))
    },
    EndingType: (ptr, val)=>{
      const vals = ["transparent", "native"];
      setInt(ptr, vals.indexOf(val))
    },
    FrameType: (ptr, val)=>{
      const vals = ["auxiliary", "top-level", "nested", "none"];
      setInt(ptr, vals.indexOf(val))
    },
    FullscreenNavigationUI: (ptr, val)=>{
      const vals = ["auto", "show", "hide"];
      setInt(ptr, vals.indexOf(val))
    },
    HeadersInit: (ptr, val)=>{
      union2_sequence_record(ptr, val);
    },
    IDBCursorDirection: (ptr, val)=>{
      const vals = ["next", "nextunique", "prev", "prevunique"];
      setInt(ptr, vals.indexOf(val))
    },
    IDBRequestReadyState: (ptr, val)=>{
      const vals = ["pending", "done"];
      setInt(ptr, vals.indexOf(val))
    },
    IDBTransactionMode: (ptr, val)=>{
      const vals = ["readonly", "readwrite", "versionchange"];
      setInt(ptr, vals.indexOf(val))
    },
    ImageOrientation: (ptr, val)=>{
      const vals = ["none", "flipY"];
      setInt(ptr, vals.indexOf(val))
    },
    MediaDeviceKind: (ptr, val)=>{
      const vals = ["audioinput", "audiooutput", "videoinput"];
      setInt(ptr, vals.indexOf(val))
    },
    MediaStreamTrackState: (ptr, val)=>{
      const vals = ["live", "ended"];
      setInt(ptr, vals.indexOf(val))
    },
    NotificationDirection: (ptr, val)=>{
      const vals = ["auto", "ltr", "rtl"];
      setInt(ptr, vals.indexOf(val))
    },
    NotificationPermission: (ptr, val)=>{
      const vals = ["default", "denied", "granted"];
      setInt(ptr, vals.indexOf(val))
    },
    OscillatorType: (ptr, val)=>{
      const vals = ["sine", "square", "sawtooth", "triangle", "custom"];
      setInt(ptr, vals.indexOf(val))
    },
    OverSampleType: (ptr, val)=>{
      const vals = ["none", "2x", "4x"];
      setInt(ptr, vals.indexOf(val))
    },
    PanningModelType: (ptr, val)=>{
      const vals = ["equalpower", "HRTF"];
      setInt(ptr, vals.indexOf(val))
    },
    PermissionName: (ptr, val)=>{
      const vals = ["geolocation", "notifications", "push", "midi", "camera", "microphone", "speaker", "device-info", "background-fetch", "background-sync", "bluetooth", "persistent-storage", "ambient-light-sensor", "accelerometer", "gyroscope", "magnetometer", "clipboard", "display"];
      setInt(ptr, vals.indexOf(val))
    },
    PermissionState: (ptr, val)=>{
      const vals = ["granted", "denied", "prompt"];
      setInt(ptr, vals.indexOf(val))
    },
    PremultiplyAlpha: (ptr, val)=>{
      const vals = ["none", "premultiply", "default"];
      setInt(ptr, vals.indexOf(val))
    },
    ReadyState: (ptr, val)=>{
      const vals = ["closed", "open", "ended"];
      setInt(ptr, vals.indexOf(val))
    },
    ReferrerPolicy: (ptr, val)=>{
      const vals = ["", "no-referrer", "no-referrer-when-downgrade", "same-origin", "origin", "strict-origin", "origin-when-cross-origin", "strict-origin-when-cross-origin", "unsafe-url"];
      setInt(ptr, vals.indexOf(val))
    },
    RequestCache: (ptr, val)=>{
      const vals = ["default", "no-store", "reload", "no-cache", "force-cache", "only-if-cached"];
      setInt(ptr, vals.indexOf(val))
    },
    RequestCredentials: (ptr, val)=>{
      const vals = ["omit", "same-origin", "include"];
      setInt(ptr, vals.indexOf(val))
    },
    RequestDestination: (ptr, val)=>{
      const vals = ["", "audio", "audioworklet", "document", "embed", "font", "image", "manifest", "object", "paintworklet", "report", "script", "sharedworker", "style", "track", "video", "worker", "xslt"];
      setInt(ptr, vals.indexOf(val))
    },
    RequestMode: (ptr, val)=>{
      const vals = ["navigate", "same-origin", "no-cors", "cors"];
      setInt(ptr, vals.indexOf(val))
    },
    RequestRedirect: (ptr, val)=>{
      const vals = ["follow", "error", "manual"];
      setInt(ptr, vals.indexOf(val))
    },
    ResizeQuality: (ptr, val)=>{
      const vals = ["pixelated", "low", "medium", "high"];
      setInt(ptr, vals.indexOf(val))
    },
    ResponseType: (ptr, val)=>{
      const vals = ["basic", "cors", "default", "error", "opaque", "opaqueredirect"];
      setInt(ptr, vals.indexOf(val))
    },
    ScrollRestoration: (ptr, val)=>{
      const vals = ["auto", "manual"];
      setInt(ptr, vals.indexOf(val))
    },
    ServiceWorkerState: (ptr, val)=>{
      const vals = ["installing", "installed", "activating", "activated", "redundant"];
      setInt(ptr, vals.indexOf(val))
    },
    ServiceWorkerUpdateViaCache: (ptr, val)=>{
      const vals = ["imports", "all", "none"];
      setInt(ptr, vals.indexOf(val))
    },
    ShadowRootMode: (ptr, val)=>{
      const vals = ["open", "closed"];
      setInt(ptr, vals.indexOf(val))
    },
    TextTrackKind: (ptr, val)=>{
      const vals = ["subtitles", "captions", "descriptions", "chapters", "metadata"];
      setInt(ptr, vals.indexOf(val))
    },
    TextTrackMode: (ptr, val)=>{
      const vals = ["disabled", "hidden", "showing"];
      setInt(ptr, vals.indexOf(val))
    },
    TouchType: (ptr, val)=>{
      const vals = ["direct", "stylus"];
      setInt(ptr, vals.indexOf(val))
    },
    VibratePattern: (ptr, val)=>{
      union2_uint_sequence(ptr, val);
    },
    VisibilityState: (ptr, val)=>{
      const vals = ["hidden", "visible"];
      setInt(ptr, vals.indexOf(val))
    },
    WorkerType: (ptr, val)=>{
      const vals = ["classic", "module"];
      setInt(ptr, vals.indexOf(val))
    },
    XMLHttpRequestResponseType: (ptr, val)=>{
      const vals = ["", "arraybuffer", "blob", "document", "json", "text"];
      setInt(ptr, vals.indexOf(val))
    },
    optional_BodyInit: (ptr, val)=>{
      if (!setBool(ptr+12, isEmpty(val))) {
        union6_Blob_BufferSource_FormData_URLSearchParams_ReadableStream_string(ptr, val);
      }
    },
    optional_FormDataEntryValue: (ptr, val)=>{
      if (!setBool(ptr+12, isEmpty(val))) {
        union2_File_string(ptr, val);
      }
    },
    optional_HTMLOrSVGScriptElement: (ptr, val)=>{
      if (!setBool(ptr+8, isEmpty(val))) {
        union2_HTMLScriptElement_SVGScriptElement(ptr, val);
      }
    },
    optional_Handle: (ptr, val)=>{
      if (!setBool(ptr+4, isEmpty(val))) {
        Handle(ptr, val);
      }
    },
    optional_MediaProvider: (ptr, val)=>{
      if (!setBool(ptr+8, isEmpty(val))) {
        union3_MediaStream_MediaSource_Blob(ptr, val);
      }
    },
    optional_MessageEventSource: (ptr, val)=>{
      if (!setBool(ptr+8, isEmpty(val))) {
        union3_Window_MessagePort_ServiceWorker(ptr, val);
      }
    },
    optional_OffscreenRenderingContext: (ptr, val)=>{
      if (!setBool(ptr+8, isEmpty(val))) {
        union3_OffscreenCanvasRenderingContext2D_WebGLRenderingContext_WebGL2RenderingContext(ptr, val);
      }
    },
    optional_RenderingContext: (ptr, val)=>{
      if (!setBool(ptr+8, isEmpty(val))) {
        union4_CanvasRenderingContext2D_ImageBitmapRenderingContext_WebGLRenderingContext_WebGL2RenderingContext(ptr, val);
      }
    },
    optional_sequence: (ptr, val)=>{
      if (!setBool(ptr+4, isEmpty(val))) {
        sequence(ptr, val);
      }
    },
    optional_string: (ptr, val)=>{
      if (!setBool(ptr+8, isEmpty(val))) {
        string(ptr, val);
      }
    },
    optional_uint: (ptr, val)=>{
      if (!setBool(ptr+4, isEmpty(val))) {
        uint(ptr, val);
      }
    },
    optional_ulong: (ptr, val)=>{
      if (!setBool(ptr+8, isEmpty(val))) {
        ulong(ptr, val);
      }
    },
    optional_union2_Element_ProcessingInstruction: (ptr, val)=>{
      if (!setBool(ptr+8, isEmpty(val))) {
        union2_Element_ProcessingInstruction(ptr, val);
      }
    },
    optional_union2_HTMLCollection_Element: (ptr, val)=>{
      if (!setBool(ptr+8, isEmpty(val))) {
        union2_HTMLCollection_Element(ptr, val);
      }
    },
    optional_union2_RadioNodeList_Element: (ptr, val)=>{
      if (!setBool(ptr+8, isEmpty(val))) {
        union2_RadioNodeList_Element(ptr, val);
      }
    },
    optional_union2_string_ArrayBuffer: (ptr, val)=>{
      if (!setBool(ptr+12, isEmpty(val))) {
        union2_string_ArrayBuffer(ptr, val);
      }
    },
    optional_union2_string_sequence: (ptr, val)=>{
      if (!setBool(ptr+12, isEmpty(val))) {
        union2_string_sequence(ptr, val);
      }
    },
    optional_union3_Client_ServiceWorker_MessagePort: (ptr, val)=>{
      if (!setBool(ptr+8, isEmpty(val))) {
        union3_Client_ServiceWorker_MessagePort(ptr, val);
      }
    },
    optional_union3_IDBObjectStore_IDBIndex_IDBCursor: (ptr, val)=>{
      if (!setBool(ptr+8, isEmpty(val))) {
        union3_IDBObjectStore_IDBIndex_IDBCursor(ptr, val);
      }
    },
    optional_union3_VideoTrack_AudioTrack_TextTrack: (ptr, val)=>{
      if (!setBool(ptr+8, isEmpty(val))) {
        union3_VideoTrack_AudioTrack_TextTrack(ptr, val);
      }
    },
    union2_AudioContextLatencyCategory_double: (ptr, val)=>{
      if (val instanceof AudioContextLatencyCategory) {
        setInt(ptr, 0);
        AudioContextLatencyCategory(ptr+4, val);
      } else if (val instanceof double) {
        setInt(ptr, 1);
        double(ptr+4, val);
      }
    },
    union2_IDBObjectStore_IDBIndex: (ptr, val)=>{
      if (val instanceof IDBObjectStore) {
        setInt(ptr, 0);
        Handle(ptr+4, val);
      } else if (val instanceof IDBIndex) {
        setInt(ptr, 1);
        Handle(ptr+4, val);
      }
    },
    union2_bool_MediaTrackConstraints: (ptr, val)=>{
      if (val instanceof boolean) {
        setInt(ptr, 0);
        bool(ptr+4, val);
      } else if (val instanceof MediaTrackConstraints) {
        setInt(ptr, 1);
        Handle(ptr+4, val);
      }
    }
  }}