module webidl.binding.test;

import webidl.binding.generator;
import std.stdio;
import webidl.grammar;
import pegged.grammar : ParseTree;

import std.array : appender, array, Appender;
import std.algorithm : each, sort, schwartzSort, filter, uniq, sum, max, maxElement, copy;
import std.algorithm : each, joiner, map;
import std.range : chain, enumerate;
import std.conv : text, to;
import std.range : zip, only;

version (unittest) {
  import unit_threaded;
  static this() {
    updateMethods();
  }
  auto getGenerator(string input) {
    auto semantics = new Semantics();
    auto document = WebIDL(input);
    if (!document.successful)
      writeln(document);
    document.successful.shouldEqual(true);
    semantics.analyse("mod",document);
    struct Helper {
      IR ir;
      Module module_;
      Semantics semantics;
      string generateDBindings() { return ir.generateDBindings(module_); }
      string generateDImports() { return ir.generateDImports(module_); }
      string generateJsExports() { return ir.generateJsExports(module_); }
    }
    return Helper(semantics.toIr(), semantics.modules["mod"], semantics);
  }
  void shouldBeLike(string a, string b, in string file = __FILE__, in size_t line = __LINE__) {
    import std.string : lineSplitter, strip;
    import std.algorithm : map, filter, equal;
    import std.range : empty;
    auto as = a.lineSplitter.map!(l => l.strip).filter!(l => !l.empty);
    auto bs = b.lineSplitter.map!(l => l.strip).filter!(l => !l.empty);
    while (!as.empty && !bs.empty) {
      if (!as.front.equal(bs.front))
        a.shouldEqual(b, file, line);
      as.popFront();
      bs.popFront();
    }
    if (as.empty != bs.empty)
      a.shouldEqual(b);
  }
}

@("default")
unittest {
  auto gen = getGenerator(q{
      interface Event {
        DelayNode createDelay (optional double maxDelayTime = 1.0);
      };
    });
  gen.generateDBindings.shouldBeLike(q{
      struct Event {
        JsHandle handle;
        alias handle this;
        DelayNode createDelay(double maxDelayTime /* = 1.0 */) {
          return DelayNode(Event_createDelay(handle, maxDelayTime));
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) JsHandle Event_createDelay(JsHandle, double);
    });
}

@("test-b")
unittest {
  auto gen = getGenerator(q{
      [Constructor(DOMString type, optional EventInit eventInitDict),
       Exposed=(Window,Worker,AudioWorklet)]
      interface Event {
        readonly attribute DOMString type;
        attribute EventTarget? target;
        sequence<EventTarget> composedPath();

        const unsigned short NONE = 0;
        attribute unsigned short eventPhase;
      };
    });
  // TODO: optional JsHandle don't need empty when we have an invalid JsHandle number 
  gen.generateDBindings.shouldBeLike(q{
      struct Event {
        JsHandle handle;
        alias handle this;
        string type() {
          return Event_type_Get(handle);
        }
        void target(Optional!(EventTarget) target) {
          Event_target_Set(handle, !target.empty, target.front.handle);
        }
        Optional!(EventTarget) target() {
          return Event_target_Get(handle);
        }
        Sequence!(EventTarget) composedPath() {
          return Sequence!(EventTarget)(Event_composedPath(handle));
        }
        enum ushort NONE = 0;
        void eventPhase(ushort eventPhase) {
          Event_eventPhase_Set(handle, eventPhase);
        }
        ushort eventPhase() {
          return Event_eventPhase_Get(handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) string Event_type_Get(JsHandle);
      extern (C) void Event_target_Set(JsHandle, bool, JsHandle);
      extern (C) Optional!(EventTarget) Event_target_Get(JsHandle);
      extern (C) JsHandle Event_composedPath(JsHandle);
      extern (C) void Event_eventPhase_Set(JsHandle, ushort);
      extern (C) ushort Event_eventPhase_Get(JsHandle);
    });
  gen.generateJsExports.shouldBeLike("
      import spasm from './spasm.js';
      export default {
        jsExports: {
          Event_type_Get: function(rawResult, ctx) {
            spasm.encode_string(rawResult, spasm.objects[ctx].type);
          },
          Event_target_Set: function(ctx, targetDefined, target) {
            spasm.objects[ctx].target = targetDefined ? spasm.objects[target] : undefined;
          },
          Event_target_Get: function(rawResult, ctx) {
            spasm.encode_optional_JsHandle(rawResult, spasm.objects[ctx].target);
          },
          Event_composedPath: function(ctx) {
            return spasm.addObject(spasm.objects[ctx].composedPath());
          },
          Event_eventPhase_Set: function(ctx, eventPhase) {
            spasm.objects[ctx].eventPhase = eventPhase;
          },
          Event_eventPhase_Get: function(ctx) {
            return spasm.objects[ctx].eventPhase;
          },
        }
      }");
}

@("enum")
unittest {
  auto gen = getGenerator(q{
      enum ImageOrientation { "none", "flipY", "with-hypen" };
      interface Foo {
        attribute ImageOrientation orientation;
        ImageOrientation needs();
        void wants(ImageOrientation o);
      };
    });

  gen.generateDBindings.shouldBeLike(q{
      struct Foo {
        JsHandle handle;
        alias handle this;
        void orientation(ImageOrientation orientation) {
          Foo_orientation_Set(handle, orientation);
        }
        ImageOrientation orientation() {
          return Foo_orientation_Get(handle);
        }
        ImageOrientation needs() {
          return Foo_needs(handle);
        }
        void wants(ImageOrientation o) {
          Foo_wants(handle, o);
        }
      }
      enum ImageOrientation {
        none,
        flipY,
        with_hypen
      }
  });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void Foo_orientation_Set(JsHandle, ImageOrientation);
      extern (C) ImageOrientation Foo_orientation_Get(JsHandle);
      extern (C) ImageOrientation Foo_needs(JsHandle);
      extern (C) void Foo_wants(JsHandle, ImageOrientation);
    });
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
    Foo_orientation_Set: function(ctx, orientation) {
      spasm.objects[ctx].orientation = spasm.decode_ImageOrientation(orientation);
    },
    Foo_orientation_Get: function(ctx) {
      return spasm.encode_ImageOrientation(spasm.objects[ctx].orientation);
    },
    Foo_needs: function(ctx) {
      return spasm.encode_ImageOrientation(spasm.objects[ctx].needs());
    },
    Foo_wants: function(ctx, o) {
      spasm.objects[ctx].wants(spasm.decode_ImageOrientation(o));
    },
  }
}");
}

unittest {
  auto gen = getGenerator(q{
      callback SomethingCallback = DOMString (DOMString msg, boolean v);
      callback DecodeErrorCallback = void (DOMException error);
    });
  gen.generateDBindings.shouldBeLike(q{
      alias DecodeErrorCallback = void delegate(DOMException);
      alias SomethingCallback = string delegate(string, bool);
    });
  gen.generateDImports.shouldBeEmpty;
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
  }
}");

}

@("sequence")
unittest {
  auto gen = getGenerator(q{
      interface BaseAudioContext : EventTarget {
        PeriodicWave createPeriodicWave (sequence<float> real, optional PeriodicWaveConstraints constraints);
      };
    });
  gen.generateDBindings.shouldBeLike(q{
      struct BaseAudioContext {
        EventTarget _parent;
        alias _parent this;
        this(JsHandle h) {
          _parent = EventTarget(h);
        }
        PeriodicWave createPeriodicWave(Sequence!(float) real_, PeriodicWaveConstraints constraints) {
          return PeriodicWave(BaseAudioContext_createPeriodicWave(handle, real_.handle, constraints.handle));
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) JsHandle BaseAudioContext_createPeriodicWave(JsHandle, JsHandle, JsHandle);
    });
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
    BaseAudioContext_createPeriodicWave: function(ctx, real, constraints) {
      return spasm.addObject(spasm.objects[ctx].createPeriodicWave(spasm.objects[real], spasm.objects[constraints]));
    },
  }
}");
}

@("optional")
unittest {
  auto gen = getGenerator(q{
      interface Foo {
        void bar (optional unsigned long number);
      };
    });
  gen.generateDBindings.shouldBeLike(q{
      struct Foo {
        JsHandle handle;
        alias handle this;
        void bar(uint number) {
          Foo_bar(handle, number);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void Foo_bar(JsHandle, uint);
    });
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
    Foo_bar: function(ctx, number) {
      spasm.objects[ctx].bar(number);
    },
  }
}");
}

@("null")
unittest {
  auto gen = getGenerator(q{
      interface Foo {
        void bar (unsigned long? number, Bar? constraints);
      };
    });
  gen.generateDBindings.shouldBeLike(q{
      struct Foo {
        JsHandle handle;
        alias handle this;
        void bar(Optional!(uint) number, Optional!(Bar) constraints) {
          Foo_bar(handle, !number.empty, number.front, !constraints.empty, constraints.front.handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void Foo_bar(JsHandle, bool, uint, bool, JsHandle);
    });
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
    Foo_bar: function(ctx, numberDefined, number, constraintsDefined, constraints) {
      spasm.objects[ctx].bar(numberDefined ? number : undefined, constraintsDefined ? spasm.objects[constraints] : undefined);
    },
  }
}");
}

@("interface.callback")
unittest {
  auto gen = getGenerator(q{
      callback DecodeErrorCallback = void (DOMException error);
      callback DecodeSuccessCallback = void (AudioBuffer decodedData);
      interface BaseAudioContext : EventTarget {
        Promise<AudioBuffer> decodeAudioData (ArrayBuffer audioData, optional DecodeSuccessCallback? successCallback, optional DecodeErrorCallback? errorCallback);
      };
    });
  gen.generateDBindings.shouldBeLike(q{
      struct BaseAudioContext {
        EventTarget _parent;
        alias _parent this;
        this(JsHandle h) {
          _parent = EventTarget(h);
        }
        Promise!(AudioBuffer) decodeAudioData(ArrayBuffer audioData, Optional!(DecodeSuccessCallback) successCallback, Optional!(DecodeErrorCallback) errorCallback) {
          return Promise!(AudioBuffer)(BaseAudioContext_decodeAudioData(handle, audioData.handle, !successCallback.empty, successCallback.front, !errorCallback.empty, errorCallback.front));
        }
      }
      alias DecodeErrorCallback = void delegate(DOMException);
      alias DecodeSuccessCallback = void delegate(AudioBuffer);
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) JsHandle BaseAudioContext_decodeAudioData(JsHandle, JsHandle, bool, DecodeSuccessCallback, bool, DecodeErrorCallback);
    });
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
    BaseAudioContext_decodeAudioData: function(ctx, audioData, successCallbackDefined, successCallbackCtx, successCallbackPtr, errorCallbackDefined, errorCallbackCtx, errorCallbackPtr) {
      return spasm.addObject(spasm.objects[ctx].decodeAudioData(spasm.objects[audioData], successCallbackDefined ? (decodedData)=>{spasm.callback_void_JsHandle(successCallbackCtx, successCallbackPtr, spasm.addObject(decodedData))} : undefined, errorCallbackDefined ? (error)=>{spasm.callback_void_JsHandle(errorCallbackCtx, errorCallbackPtr, spasm.addObject(error))} : undefined));
    },
  }
}"
);
}

@("sumType.interface")
unittest {
  auto gen = getGenerator(q{
      enum AudioContextLatencyCategory { "balanced", "interactive", "playback" };
      interface AudioContextOptions {
        attribute (AudioContextLatencyCategory or double) latencyHint;
        attribute (boolean or double)? sampleRate;
        (DOMString or AudioContextLatencyCategory) fooBar();
      };
    });
  gen.generateDBindings.shouldBeLike(q{
      enum AudioContextLatencyCategory {
        balanced,
        interactive,
        playback
      }
      struct AudioContextOptions {
        JsHandle handle;
        alias handle this;
        void latencyHint(SumType!(AudioContextLatencyCategory, double) latencyHint) {
          AudioContextOptions_latencyHint_Set(handle, latencyHint);
        }
        SumType!(AudioContextLatencyCategory, double) latencyHint() {
          return AudioContextOptions_latencyHint_Get(handle);
        }
        void sampleRate(Optional!(SumType!(bool, double)) sampleRate) {
          AudioContextOptions_sampleRate_Set(handle, !sampleRate.empty, sampleRate.front);
        }
        Optional!(SumType!(bool, double)) sampleRate() {
          return AudioContextOptions_sampleRate_Get(handle);
        }
        SumType!(string, AudioContextLatencyCategory) fooBar() {
          return AudioContextOptions_fooBar(handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void AudioContextOptions_latencyHint_Set(JsHandle, SumType!(AudioContextLatencyCategory, double));
      extern (C) SumType!(AudioContextLatencyCategory, double) AudioContextOptions_latencyHint_Get(JsHandle);
      extern (C) void AudioContextOptions_sampleRate_Set(JsHandle, bool, SumType!(bool, double));
      extern (C) Optional!(SumType!(bool, double)) AudioContextOptions_sampleRate_Get(JsHandle);
      extern (C) SumType!(string, AudioContextLatencyCategory) AudioContextOptions_fooBar(JsHandle);
    });
  // TODO: the optionals and unions returned from js should probably be stored in first extra param
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
    AudioContextOptions_latencyHint_Set: function(ctx, latencyHint) {
      spasm.objects[ctx].latencyHint = spasm.decode_union2_AudioContextLatencyCategory_double(latencyHint);
    },
    AudioContextOptions_latencyHint_Get: function(rawResult, ctx) {
      spasm.encode_union2_AudioContextLatencyCategory_double(rawResult, spasm.objects[ctx].latencyHint);
    },
    AudioContextOptions_sampleRate_Set: function(ctx, sampleRateDefined, sampleRate) {
      spasm.objects[ctx].sampleRate = sampleRateDefined ? spasm.decode_union2_bool_double(sampleRate) : undefined;
    },
    AudioContextOptions_sampleRate_Get: function(rawResult, ctx) {
      spasm.encode_optional_union2_bool_double(rawResult, spasm.objects[ctx].sampleRate);
    },
    AudioContextOptions_fooBar: function(rawResult, ctx) {
      spasm.encode_union2_string_AudioContextLatencyCategory(rawResult, spasm.objects[ctx].fooBar());
    },
  }
}");
}

@("sumType.dictionary")
unittest {
  auto gen = getGenerator(q{
      enum AudioContextLatencyCategory { "balanced", "interactive", "playback" };
      dictionary AudioContextOptions {
        (AudioContextLatencyCategory or double) latencyHint = "interactive";
        (boolean or double)? sampleRate;
      };
    });
  gen.generateDBindings.shouldBeLike(q{
      enum AudioContextLatencyCategory {
        balanced,
        interactive,
        playback
      }
      struct AudioContextOptions {
        JsHandle handle;
        alias handle this;
        void latencyHint(SumType!(AudioContextLatencyCategory, double) latencyHint) {
          AudioContextOptions_latencyHint_Set(handle, latencyHint);
        }
        SumType!(AudioContextLatencyCategory, double) latencyHint() {
          return AudioContextOptions_latencyHint_Get(handle);
        }
        void sampleRate(Optional!(SumType!(bool, double)) sampleRate) {
          AudioContextOptions_sampleRate_Set(handle, !sampleRate.empty, sampleRate.front);
        }
        Optional!(SumType!(bool, double)) sampleRate() {
          return AudioContextOptions_sampleRate_Get(handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void AudioContextOptions_latencyHint_Set(JsHandle, SumType!(AudioContextLatencyCategory, double));
      extern (C) SumType!(AudioContextLatencyCategory, double) AudioContextOptions_latencyHint_Get(JsHandle);
      extern (C) void AudioContextOptions_sampleRate_Set(JsHandle, bool, SumType!(bool, double));
      extern (C) Optional!(SumType!(bool, double)) AudioContextOptions_sampleRate_Get(JsHandle);
    });
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
    AudioContextOptions_latencyHint_Set: function(ctx, latencyHint) {
      spasm.objects[ctx].latencyHint = spasm.decode_union2_AudioContextLatencyCategory_double(latencyHint);
    },
    AudioContextOptions_latencyHint_Get: function(rawResult, ctx) {
      spasm.encode_union2_AudioContextLatencyCategory_double(rawResult, spasm.objects[ctx].latencyHint);
    },
    AudioContextOptions_sampleRate_Set: function(ctx, sampleRateDefined, sampleRate) {
      spasm.objects[ctx].sampleRate = sampleRateDefined ? spasm.decode_union2_bool_double(sampleRate) : undefined;
    },
    AudioContextOptions_sampleRate_Get: function(rawResult, ctx) {
      spasm.encode_optional_union2_bool_double(rawResult, spasm.objects[ctx].sampleRate);
    },
  }
}");

}

@("partial")
unittest {
  // TODO: test partial interface with an optional attribute
}

@("partial.friendlyName")
unittest {
  auto gen = getGenerator(q{
      interface double {
      };
      partial interface double {
        [CEReactions] attribute DOMString real;
      };
    });
  gen.generateDBindings.shouldBeLike(q{
      struct double_ {
        JsHandle handle;
        alias handle this;
        void real_(string real_) {
          double_real_Set(handle, real_);
        }
        string real_() {
          return double_real_Get(handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void double_real_Set(JsHandle, string);
      extern (C) string double_real_Get(JsHandle);
    });
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
    double_real_Set: function(ctx, realLen, realPtr) {
      spasm.objects[ctx].real = spasm.decode_string(realLen, realPtr);
    },
    double_real_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].real);
    },
  }
}");
}

@("dictionary.primitives")
unittest {
  auto gen = getGenerator(q{
      dictionary AudioTimestamp {
        double contextTime;
      };
    });
  gen.generateDBindings.shouldBeLike(q{
      struct AudioTimestamp {
        JsHandle handle;
        alias handle this;
        void contextTime(double contextTime) {
          AudioTimestamp_contextTime_Set(handle, contextTime);
        }
        double contextTime() {
          return AudioTimestamp_contextTime_Get(handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void AudioTimestamp_contextTime_Set(JsHandle, double);
      extern (C) double AudioTimestamp_contextTime_Get(JsHandle);
    });
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
    AudioTimestamp_contextTime_Set: function(ctx, contextTime) {
      spasm.objects[ctx].contextTime = contextTime;
    },
    AudioTimestamp_contextTime_Get: function(ctx) {
      return spasm.objects[ctx].contextTime;
    },
  }
}");
}

@("dictionary.inheritance")
unittest {
  auto gen = getGenerator(q{
      dictionary AudioWorkletNodeOptions : AudioNodeOptions {
      };
    });
  gen.generateDBindings.shouldBeLike(q{
      struct AudioWorkletNodeOptions {
        AudioNodeOptions _parent;
        alias _parent this;
        this(JsHandle h) {
          _parent = AudioNodeOptions(h);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{});
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
  }
}");
}

@("interface.friendlyName")
unittest {
  auto gen = getGenerator(q{
      interface double {
        attribute double real;
      };
    });
  gen.generateDBindings.shouldBeLike(q{
      struct double_ {
        JsHandle handle;
        alias handle this;
        void real_(double real_) {
          double_real_Set(handle, real_);
        }
        double real_() {
          return double_real_Get(handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void double_real_Set(JsHandle, double);
      extern (C) double double_real_Get(JsHandle);
    });
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
    double_real_Set: function(ctx, real) {
      spasm.objects[ctx].real = real;
    },
    double_real_Get: function(ctx) {
      return spasm.objects[ctx].real;
    },
  }
}");
}

@("dictionary.record")
unittest {
  auto gen = getGenerator(q{
      dictionary AudioWorkletNodeOptions {
        record<DOMString, double> real;
      };
    });
  gen.generateDBindings.shouldBeLike(q{
      struct AudioWorkletNodeOptions {
        JsHandle handle;
        alias handle this;
        void real_(Record!(string, double) real_) {
          AudioWorkletNodeOptions_real_Set(handle, real_.handle);
        }
        Record!(string, double) real_() {
          return Record!(string, double)(AudioWorkletNodeOptions_real_Get(handle));
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void AudioWorkletNodeOptions_real_Set(JsHandle, JsHandle);
      extern (C) JsHandle AudioWorkletNodeOptions_real_Get(JsHandle);
    });
  // TODO: jsExports
}

@("dictionary.float")
unittest {
  auto gen = getGenerator(q{
      dictionary AudioParamDescriptor {
        float maxValue = 3.4028235e38;
        float minValue = -3.4028235e38;
      };
    });
  gen.generateDBindings.shouldBeLike(q{
      struct AudioParamDescriptor {
        JsHandle handle;
        alias handle this;
        void maxValue(float maxValue) {
          AudioParamDescriptor_maxValue_Set(handle, maxValue);
        }
        float maxValue() {
          return AudioParamDescriptor_maxValue_Get(handle);
        }
        void minValue(float minValue) {
          AudioParamDescriptor_minValue_Set(handle, minValue);
        }
        float minValue() {
          return AudioParamDescriptor_minValue_Get(handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void AudioParamDescriptor_maxValue_Set(JsHandle, float);
      extern (C) float AudioParamDescriptor_maxValue_Get(JsHandle);
      extern (C) void AudioParamDescriptor_minValue_Set(JsHandle, float);
      extern (C) float AudioParamDescriptor_minValue_Get(JsHandle);
    });
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
    AudioParamDescriptor_maxValue_Set: function(ctx, maxValue) {
      spasm.objects[ctx].maxValue = maxValue;
    },
    AudioParamDescriptor_maxValue_Get: function(ctx) {
      return spasm.objects[ctx].maxValue;
    },
    AudioParamDescriptor_minValue_Set: function(ctx, minValue) {
      spasm.objects[ctx].minValue = minValue;
    },
    AudioParamDescriptor_minValue_Get: function(ctx) {
      return spasm.objects[ctx].minValue;
    },
  }
}");
}

@("interface.maplike")
unittest {
  auto gen = getGenerator(q{
      [Exposed=Window]
      interface AudioParamMap {
        readonly maplike<DOMString, AudioParam>;
      };
    });
  // TODO: a readonly maplike should probably not have clear, set, delete, etc.
  gen.generateDBindings.shouldBeLike(q{
      struct AudioParamMap {
        JsHandle handle;
        alias handle this;
        uint size() {
          return Maplike_string_JsHandle_size(handle);
        }
        void clear() {
          Maplike_string_JsHandle_clear(handle);
        }
        void delete_(string key) {
          Maplike_string_JsHandle_delete(handle, key);
        }
        Iterator!(ArrayPair!(string, AudioParam)) entries() {
          return Iterator!(ArrayPair!(string, AudioParam))(Maplike_string_JsHandle_entries(handle));
        }
        extern(C) void forEach(void delegate(string, JsHandle, JsHandle) callback) {
          Maplike_string_JsHandle_forEach(handle, callback);
        }
        AudioParam get(string key) {
          return AudioParam(Maplike_string_JsHandle_get(handle, key));
        }
        bool has(string key) {
          return Maplike_string_JsHandle_has(handle, key);
        }
        Iterator!(string) keys() {
          return Iterator!(string)(Maplike_string_JsHandle_keys(handle));
        }
        void set(string key, AudioParam value) {
          Maplike_string_JsHandle_set(handle, key, value.handle);
        }
        Iterator!(AudioParam) values() {
          return Iterator!(AudioParam)(Maplike_string_JsHandle_values(handle));
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) uint Maplike_string_JsHandle_size(JsHandle);
      extern (C) void Maplike_string_JsHandle_clear(JsHandle);
      extern (C) void Maplike_string_JsHandle_delete(JsHandle, string key);
      extern (C) JsHandle Maplike_string_JsHandle_entries(JsHandle);
      extern (C) void Maplike_string_JsHandle_forEach(JsHandle, void delegate(string, JsHandle, JsHandle));
      extern (C) AudioParam Maplike_string_JsHandle_get(JsHandle, string);
      extern (C) bool Maplike_string_JsHandle_has(JsHandle, string);
      extern (C) JsHandle Maplike_string_JsHandle_keys(JsHandle);
      extern (C) void Maplike_string_JsHandle_set(JsHandle, string key, JsHandle value);
      extern (C) JsHandle Maplike_string_JsHandle_values(JsHandle);
    });
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
  }
}");
}

@("friendlyName")
unittest {
  "real".friendlyName.shouldEqual("real_");
  "with-hypen".friendlyName.shouldEqual("with_hypen");
  "0with-number".friendlyName.shouldEqual("_0with_number");
}

@("putCamelCase")
unittest {
  {
    auto app = appender!string;
    app.putCamelCase("HTMLAnchorElement");
    app.data.shouldEqual("htmlAnchorElement");
  }
  {
    auto app = appender!string;
    app.putCamelCase("HtmlAnchorElement");
    app.data.shouldEqual("htmlAnchorElement");
  }
  {
    auto app = appender!string;
    app.putCamelCase("htmlAnchorElement");
    app.data.shouldEqual("htmlAnchorElement");
  }
}

@("optional.string")
unittest {
  auto gen = getGenerator(q{
      interface BaseAudioContext : EventTarget {
        DOMString? createPeriodicWave();
        attribute DOMString? name;
        void foo(DOMString? title);
      };
    });
  gen.generateDBindings.shouldBeLike(q{
      struct BaseAudioContext {
        EventTarget _parent;
        alias _parent this;
        this(JsHandle h) {
          _parent = EventTarget(h);
        }
        Optional!(string) createPeriodicWave() {
          return BaseAudioContext_createPeriodicWave(handle);
        }
        void name(Optional!(string) name) {
          BaseAudioContext_name_Set(handle, !name.empty, name.front);
        }
        Optional!(string) name() {
          return BaseAudioContext_name_Get(handle);
        }
        void foo(Optional!(string) title) {
          BaseAudioContext_foo(handle, !title.empty, title.front);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) Optional!(string) BaseAudioContext_createPeriodicWave(JsHandle);
      extern (C) void BaseAudioContext_name_Set(JsHandle, bool, string);
      extern (C) Optional!(string) BaseAudioContext_name_Get(JsHandle);
      extern (C) void BaseAudioContext_foo(JsHandle, bool, string);
    });
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
    BaseAudioContext_createPeriodicWave: function(rawResult, ctx) {
      spasm.encode_optional_string(rawResult, spasm.objects[ctx].createPeriodicWave());
    },
    BaseAudioContext_name_Set: function(ctx, nameDefined, nameLen, namePtr) {
      spasm.objects[ctx].name = nameDefined ? spasm.decode_string(nameLen, namePtr) : undefined;
    },
    BaseAudioContext_name_Get: function(rawResult, ctx) {
      spasm.encode_optional_string(rawResult, spasm.objects[ctx].name);
    },
    BaseAudioContext_foo: function(ctx, titleDefined, titleLen, titlePtr) {
      spasm.objects[ctx].foo(titleDefined ? spasm.decode_string(titleLen, titlePtr) : undefined);
    },
  }
}");
}

@("interface.nullable")
unittest {
  auto gen = getGenerator(q{
      interface ClipboardEvent : Event {
        readonly attribute DataTransfer? clipboardData;
      };
    });
  gen.generateDBindings.shouldBeLike(q{
      struct ClipboardEvent {
        Event _parent;
        alias _parent this;
        this(JsHandle h) {
          _parent = Event(h);
        }
        Optional!(DataTransfer) clipboardData() {
          return ClipboardEvent_clipboardData_Get(handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) Optional!(DataTransfer) ClipboardEvent_clipboardData_Get(JsHandle);
    });
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
    ClipboardEvent_clipboardData_Get: function(rawResult, ctx) {
      spasm.encode_optional_JsHandle(rawResult, spasm.objects[ctx].clipboardData);
    },
  }
}");
}

@("dictionary.nullable")
unittest {
  auto gen = getGenerator(q{
      dictionary FocusEventInit {
        EventTarget? relatedTarget = null;
      };
    });
  gen.generateDBindings.shouldBeLike(q{
      struct FocusEventInit {
        JsHandle handle;
        alias handle this;
        void relatedTarget(Optional!(EventTarget) relatedTarget) {
          FocusEventInit_relatedTarget_Set(handle, !relatedTarget.empty, relatedTarget.front.handle);
        }
        Optional!(EventTarget) relatedTarget() {
          return FocusEventInit_relatedTarget_Get(handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void FocusEventInit_relatedTarget_Set(JsHandle, bool, JsHandle);
      extern (C) Optional!(EventTarget) FocusEventInit_relatedTarget_Get(JsHandle);
    });
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
    FocusEventInit_relatedTarget_Set: function(ctx, relatedTargetDefined, relatedTarget) {
      spasm.objects[ctx].relatedTarget = relatedTargetDefined ? spasm.objects[relatedTarget] : undefined;
    },
    FocusEventInit_relatedTarget_Get: function(rawResult, ctx) {
      spasm.encode_optional_JsHandle(rawResult, spasm.objects[ctx].relatedTarget);
    },
  }
}");
}

@("interface.mixin")
unittest {
  auto gen = getGenerator(q{
      interface mixin GenericTransformStream {
        readonly attribute WritableStream writable;
        readonly attribute ReadbleStream readable;
      };
      interface TextDecoderStream {
      };
      TextDecoderStream includes GenericTransformStream;
    });
  gen.generateDBindings.shouldBeLike(q{
      struct TextDecoderStream {
        JsHandle handle;
        alias handle this;
        WritableStream writable() {
          return WritableStream(GenericTransformStream_writable_Get(handle));
        }
        ReadbleStream readable() {
          return ReadbleStream(GenericTransformStream_readable_Get(handle));
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) JsHandle GenericTransformStream_writable_Get(JsHandle);
      extern (C) JsHandle GenericTransformStream_readable_Get(JsHandle);
    });
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
    GenericTransformStream_writable_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].writable);
    },
    GenericTransformStream_readable_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].readable);
    },
  }
}
");
}

@("interface.ExtendedAttribute")
unittest {
  auto gen = getGenerator(q{
      interface HTMLOrSVGElement {
        [SameObject] readonly attribute DOMStringMap datacube;
      };
    });
  gen.generateDBindings.shouldBeLike(q{
      struct HTMLOrSVGElement {
        JsHandle handle;
        alias handle this;
        DOMStringMap datacube() {
          return DOMStringMap(HTMLOrSVGElement_datacube_Get(handle));
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) JsHandle HTMLOrSVGElement_datacube_Get(JsHandle);
    });
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
    HTMLOrSVGElement_datacube_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].datacube);
    },
  }
}
");
}

@("interface.special")
unittest {
  auto gen = getGenerator(q{
      [Exposed=Window,
       OverrideBuiltins]
      interface DOMStringMap {
        getter DOMString (DOMString name);
        [CEReactions] setter void (DOMString name, DOMString value);
        [CEReactions] deleter void (DOMString name);
        getter DOMString byKey(DOMString name);
        [CEReactions] setter void byKey(DOMString name, DOMString value);
      };
    });
  gen.generateDBindings.shouldBeLike(q{
      struct DOMStringMap {
        JsHandle handle;
        alias handle this;
        string opIndex(string name) {
          return DOMStringMap_getter__string(handle, name);
        }
        string opDispatch(string name)() {
          return DOMStringMap_getter__string(handle, name);
        }
        void opIndexAssign(string value, string name) {
          DOMStringMap_setter__string_string(handle, name, value);
        }
        void opDispatch(string name)(string value) {
          DOMStringMap_setter__string_string(handle, name, value);
        }
        void remove(string name) {
          DOMStringMap_deleter(handle, name);
        }
        string byKey(string name) {
          return DOMStringMap_byKey_getter(handle, name);
        }
        void byKey(string name, string value) {
          DOMStringMap_byKey_setter(handle, name, value);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) string DOMStringMap_getter__string(JsHandle, string);
      extern (C) void DOMStringMap_setter__string_string(JsHandle, string, string);
      extern (C) void DOMStringMap_deleter(JsHandle, string);
      extern (C) string DOMStringMap_byKey_getter(JsHandle, string);
      extern (C) void DOMStringMap_byKey_setter(JsHandle, string, string);
    });
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
    DOMStringMap_getter__string: function(rawResult, ctx, nameLen, namePtr) {
      spasm.encode_string(rawResult, spasm.objects[ctx][spasm.decode_string(nameLen, namePtr)]);
    },
    DOMStringMap_setter__string_string: function(ctx, nameLen, namePtr, valueLen, valuePtr) {
      spasm.objects[ctx][spasm.decode_string(nameLen, namePtr)] = spasm.decode_string(valueLen, valuePtr);
    },
    DOMStringMap_deleter: function(ctx, nameLen, namePtr) {
      delete spasm.objects[ctx][spasm.decode_string(nameLen, namePtr)];
    },
    DOMStringMap_byKey_getter: function(rawResult, ctx, nameLen, namePtr) {
      spasm.encode_string(rawResult, spasm.objects[ctx].byKey(spasm.decode_string(nameLen, namePtr)));
    },
    DOMStringMap_byKey_setter: function(ctx, nameLen, namePtr, valueLen, valuePtr) {
      spasm.objects[ctx].byKey(spasm.decode_string(nameLen, namePtr), spasm.decode_string(valueLen, valuePtr));
    },
}
}");
}

@("interface.extendedAttributeList")
unittest {
  getGenerator(q{
      [Constructor(DOMString type, ErrorEventInit eventInitDict, symbolBar bar, any thing)]
      interface ErrorEvent : Event {
      };
    });
}

@("interface.mixin.required")
unittest {
  getGenerator(q{
      interface mixin SVGTests {
        [SameObject] readonly attribute Foo requiredExtensions;
      };
    });
}

@("comments")
unittest {
  getGenerator(q{
      interface Foo {
    /* AlphaFunction (not supported in ES20) */
    /*      NEVER */
    /*      LESS */
    /*      EQUAL */
    /*      LEQUAL */
      };
    });
}

@("typedef.callback")
unittest {
  auto gen = getGenerator(q{
      typedef double DOMHighResTimeStamp;
      callback FrameRequestCallback = void (DOMHighResTimeStamp time);

      interface AnimationFrameProvider {
        unsigned long requestAnimationFrame(FrameRequestCallback callback);
      };
    });
  gen.generateDBindings.shouldBeLike(q{
      struct AnimationFrameProvider {
        JsHandle handle;
        alias handle this;
        uint requestAnimationFrame(FrameRequestCallback callback) {
          return AnimationFrameProvider_requestAnimationFrame(handle, callback);
        }
      }
      alias DOMHighResTimeStamp = double;
      alias FrameRequestCallback = void delegate(double);
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) uint AnimationFrameProvider_requestAnimationFrame(JsHandle, FrameRequestCallback);
    });
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
    AnimationFrameProvider_requestAnimationFrame: function(ctx, callbackCtx, callbackPtr) {
      return spasm.objects[ctx].requestAnimationFrame((time)=>{spasm.callback_void_double(callbackCtx, callbackPtr, time)});
    },
  }
}");
}

@("typedef.interface")
unittest {
  auto gen = getGenerator(q{
      interface TextDecoder {
        USVString decode(optional BufferSource input, optional TextDecodeOptions options);
        BufferSource encode(optional TextDecodeOptions options);
      };
      typedef (ArrayBufferView or ArrayBuffer) BufferSource;
    });
  gen.generateDBindings.shouldBeLike(q{
      alias BufferSource = SumType!(ArrayBufferView, ArrayBuffer);
      struct TextDecoder {
        JsHandle handle;
        alias handle this;
        string decode(BufferSource input, TextDecodeOptions options) {
          return TextDecoder_decode(handle, input, options.handle);
        }
        BufferSource encode(TextDecodeOptions options) {
          return TextDecoder_encode(handle, options.handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) string TextDecoder_decode(JsHandle, BufferSource, JsHandle);
      extern (C) BufferSource TextDecoder_encode(JsHandle, JsHandle);
    });
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
    TextDecoder_decode: function(rawResult, ctx, input, options) {
      spasm.encode_string(rawResult, spasm.objects[ctx].decode(spasm.decode_BufferSource(input), spasm.objects[options]));
    },
    TextDecoder_encode: function(rawResult, ctx, options) {
      spasm.encode_BufferSource(rawResult, spasm.objects[ctx].encode(spasm.objects[options]));
    },
  }
}");
}

@("typedef.nullable")
unittest {
  auto gen = getGenerator(q{
      typedef (Blob or BufferSource or FormData or URLSearchParams or ReadableStream or USVString) BodyInit;
      dictionary RequestInit {
        BodyInit? body;
      };
    });
  gen.generateDBindings.shouldBeLike(q{
      alias BodyInit = SumType!(Blob, BufferSource, FormData, URLSearchParams, ReadableStream, string);
      struct RequestInit {
        JsHandle handle;
        alias handle this;
        void body_(Optional!(BodyInit) body_) {
          RequestInit_body_Set(handle, !body_.empty, body_.front);
        }
        Optional!(BodyInit) body_() {
          return RequestInit_body_Get(handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void RequestInit_body_Set(JsHandle, bool, BodyInit);
      extern (C) Optional!(BodyInit) RequestInit_body_Get(JsHandle);    });
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
    RequestInit_body_Set: function(ctx, bodyDefined, body) {
      spasm.objects[ctx].body = bodyDefined ? spasm.decode_BodyInit(body) : undefined;
    },
    RequestInit_body_Get: function(rawResult, ctx) {
      spasm.encode_optional_BodyInit(rawResult, spasm.objects[ctx].body);
    },
  }
}"
);
}


@("sequence.nullable")
unittest {
  auto gen = getGenerator(q{
      interface Foo {
        sequence<long>? bar(sequence<DOMString> names);
      };
    });
  gen.generateDBindings.shouldBeLike(q{
      struct Foo {
        JsHandle handle;
        alias handle this;
        Optional!(Sequence!(int)) bar(Sequence!(string) names) {
          return Foo_bar(handle, names.handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) Optional!(Sequence!(int)) Foo_bar(JsHandle, JsHandle);
    });
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
    Foo_bar: function(rawResult, ctx, names) {
      spasm.encode_optional_sequence_int(rawResult, spasm.objects[ctx].bar(spasm.objects[names]));
    },
  }
}"
);
}

@("return.nullable")
unittest {
  auto gen = getGenerator(q{
      interface Foo {
        getter File? item(unsigned long index);
      };
    });
  // TODO: also opIndex
  gen.generateDBindings.shouldBeLike(q{
      struct Foo {
        JsHandle handle;
        alias handle this;
        Optional!(File) item(uint index) {
          return Foo_item_getter(handle, index);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) Optional!(File) Foo_item_getter(JsHandle, uint);
    });
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
    Foo_item_getter: function(rawResult, ctx, index) {
      spasm.encode_optional_JsHandle(rawResult, spasm.objects[ctx].item(index));
    },
  }
}"
);
}

@("partial.mixin")
unittest {
  auto gen = getGenerator(q{
      interface mixin Foo {
        DOMString name();
        readonly attribute boolean fatal;
      };
      partial interface Foo {
        long long size();
      };
      interface Bar {
      };
      Bar includes Foo;
    });
  gen.generateDBindings.shouldBeLike(q{
      struct Bar {
        JsHandle handle;
        alias handle this;
        string name() {
          return Foo_name(handle);
        }
        bool fatal() {
          return Foo_fatal_Get(handle);
        }
        long size() {
          return Foo_size(handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) string Foo_name(JsHandle);
      extern (C) bool Foo_fatal_Get(JsHandle);
      extern (C) long Foo_size(JsHandle);
    });
  gen.generateJsExports.shouldBeLike("
import spasm from './spasm.js';
export default {
  jsExports: {
    Foo_name: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].name());
    },
    Foo_fatal_Get: function(ctx) {
      return spasm.objects[ctx].fatal;
    },
    Foo_size: function(ctx) {
      return spasm.objects[ctx].size();
    },
  }
}"
);
}


@("namespace")
unittest {
  auto gen = getGenerator(q{
      namespace console {
        void clear();
      };
    });
  auto funcs = gen.semantics.toIr();
  gen.generateDBindings.shouldBeLike(q{
      struct console {
      static:
        void clear() {
          console_clear();
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void console_clear();
    });
  gen.generateJsExports.shouldBeLike("import spasm from './spasm.js';
export default {
  jsExports: {
    console_clear: function() {
      console.clear();
    },
  }
}");
}

@("callback.sumtype")
unittest {
  auto gen = getGenerator(q{
      callback OnErrorEventHandlerNonNull = any ((Event or DOMString) event, optional DOMString source, optional unsigned long lineno, optional unsigned long colno, optional any error);
    });
  gen.generateDBindings.shouldBeLike(q{
      alias OnErrorEventHandlerNonNull = Any delegate(SumType!(Event, string), string, uint, uint, Any);
    });
}

@("module.imports.mixin")
unittest {
  auto semantics = new Semantics();
  auto documentA = WebIDL(q{
      interface Foo {
      };
      Foo includes Bar;
    });
  auto documentB = WebIDL(q{
      interface mixin Bar {
        Hup get();
      };
      interface Hup {
      };
    });
  documentA.successful.shouldBeTrue;
  documentB.successful.shouldBeTrue;
  auto moduleA = semantics.analyse("a",documentA);
  auto moduleB = semantics.analyse("b",documentB);
  auto ir = semantics.toIr();
  ir.getImports(moduleA).shouldEqual(["import spasm.bindings.b;"]);
  ir.getImports(moduleB).shouldEqual([]);
}

@("module.imports.mixin.indirect")
unittest {
  auto semantics = new Semantics();
  auto documentA = WebIDL(q{
      interface Foo {
      };
      Foo includes Bar;
    });
  auto documentB = WebIDL(q{
      interface mixin Bar {
        Hup get();
      };
    });
  auto documentC = WebIDL(q{
      interface Hup {
      };
    });
  documentA.successful.shouldBeTrue;
  documentB.successful.shouldBeTrue;
  documentC.successful.shouldBeTrue;
  auto moduleA = semantics.analyse("a",documentA);
  auto moduleB = semantics.analyse("b",documentB);
  auto moduleC = semantics.analyse("c",documentC);
  auto ir = semantics.toIr();
  ir.getImports(moduleA).shouldEqual(["import spasm.bindings.b;","import spasm.bindings.c;"]);
  ir.getImports(moduleB).shouldEqual(["import spasm.bindings.c;"]);
  ir.generateDImports(moduleB).shouldBeLike("extern (C) JsHandle Bar_get(JsHandle);");
}

@("module.imports.partial")
unittest {
  auto semantics = new Semantics();
  auto documentA = WebIDL(q{
      interface Foo {
      };
    });
  auto documentB = WebIDL(q{
      partial interface Foo {
        Hup get();
      };
      interface Hup {
      };
    });
  documentA.successful.shouldBeTrue;
  documentB.successful.shouldBeTrue;
  auto moduleA = semantics.analyse("a",documentA);
  auto moduleB = semantics.analyse("b",documentB);
  auto ir = semantics.toIr();
  ir.getImports(moduleA).shouldEqual(["import spasm.bindings.b;"]);
  ir.getImports(moduleB).shouldEqual([]);
}

@("module.imports.partial.indirect")
unittest {
  auto semantics = new Semantics();
  auto documentA = WebIDL(q{
      interface Foo {
      };
    });
  auto documentB = WebIDL(q{
      partial interface Foo {
        Hup get();
      };
    });
  auto documentC = WebIDL(q{
      interface Hup {
      };
    });
  documentA.successful.shouldBeTrue;
  documentB.successful.shouldBeTrue;
  documentC.successful.shouldBeTrue;
  auto moduleA = semantics.analyse("a",documentA);
  auto moduleB = semantics.analyse("b",documentB);
  auto moduleC = semantics.analyse("c",documentC);
  auto ir = semantics.toIr();
  ir.generateDImports(moduleA).shouldBeLike("extern (C) JsHandle Foo_get(JsHandle);");
  ir.getImports(moduleA).shouldEqual(["import spasm.bindings.c;"]);
  // TODO: we don't need to import c
  ir.getImports(moduleB).shouldEqual(["import spasm.bindings.c;"]);
}

@("any")
unittest {
  auto gen = getGenerator(q{
      [Exposed=(Window,Worker,Worklet)]
      namespace foo {
        void log(any data);
        any get();
      };
    });
  auto funcs = gen.semantics.toIr();
  gen.generateDBindings.shouldBeLike(q{
      struct foo {
      static:
        void log(Any data) {
          foo_log(data.handle);
        }
        Any get() {
          return Any(foo_get());
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void foo_log(JsHandle);
      extern (C) JsHandle foo_get();
    });
  gen.generateJsExports.shouldBeLike("import spasm from './spasm.js';
export default {
  jsExports: {
    foo_log: function(data) {
      foo.log(spasm.objects[data]);
    },
    foo_get: function() {
      return spasm.addObject(foo.get());
    },
  }
}");
}

@("optional.typedef")
unittest {
  auto gen = getGenerator(q{
      callback OnErrorEventHandlerNonNull = any ((Event or DOMString) event, optional DOMString source, optional unsigned long lineno, optional unsigned long colno, optional any error);
      typedef OnErrorEventHandlerNonNull? OnErrorEventHandler;
      interface WorkerGlobalScope : EventTarget {
        attribute OnErrorEventHandler onerror;
      };
    });
  gen.generateDBindings.shouldBeLike(q{
      alias OnErrorEventHandler = Optional!(OnErrorEventHandlerNonNull);
      alias OnErrorEventHandlerNonNull = Any delegate(SumType!(Event, string), string, uint, uint, Any);
      struct WorkerGlobalScope {
        EventTarget _parent;
        alias _parent this;
        this(JsHandle h) {
          _parent = EventTarget(h);
        }
        void onerror(OnErrorEventHandler onerror) {
          WorkerGlobalScope_onerror_Set(this._parent, !onerror.empty, onerror.front);
        }
        OnErrorEventHandler onerror() {
          return WorkerGlobalScope_onerror_Get(this._parent);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void WorkerGlobalScope_onerror_Set(JsHandle, bool, OnErrorEventHandlerNonNull);
      extern (C) OnErrorEventHandler WorkerGlobalScope_onerror_Get(JsHandle);
    });
  gen.generateJsExports.shouldBeLike("import spasm from './spasm.js';
export default {
  jsExports: {
    WorkerGlobalScope_onerror_Set: function(ctx, onerrorDefined, onerror) {
      spasm.objects[ctx].onerror = onerrorDefined ? onerror : undefined;
    },
    WorkerGlobalScope_onerror_Get: function(rawResult, ctx) {
      spasm.encode_optional_JsHandle(rawResult, spasm.objects[ctx].onerror);
    },
  }
}");
}

@("sumtype.nested")
unittest {
  auto gen = getGenerator(q{
      interface XMLHttpRequest : XMLHttpRequestEventTarget {
        void send(optional (Document or BodyInit)? body = null);
      };
      typedef (Blob or BufferSource or FormData or URLSearchParams or ReadableStream or USVString) BodyInit;
    });
  gen.generateDBindings.shouldBeLike(q{
      alias BodyInit = SumType!(Blob, BufferSource, FormData, URLSearchParams, ReadableStream, string);
      struct XMLHttpRequest {
        XMLHttpRequestEventTarget _parent;
        alias _parent this;
        this(JsHandle h) {
          _parent = XMLHttpRequestEventTarget(h);
        }
        void send(Optional!(SumType!(Document, BodyInit)) body_ /* = no!(SumType!(Document, BodyInit)) */) {
          XMLHttpRequest_send(this._parent, !body_.empty, body_.front);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void XMLHttpRequest_send(JsHandle, bool, SumType!(Document, BodyInit));
    });
  gen.generateJsExports.shouldBeLike("import spasm from './spasm.js';
export default {
  jsExports: {
    XMLHttpRequest_send: function(ctx, bodyDefined, body) {
      spasm.objects[ctx].send(bodyDefined ? spasm.decode_union2_Document_BodyInit(body) : undefined);
    },
  }
}");
}

