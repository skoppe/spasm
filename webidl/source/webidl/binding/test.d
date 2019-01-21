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
      string generateJsExports(string[] filtered = []) {
        auto app = IndentedStringAppender();
        ir.nodes.each!(n => n.toJsExport(semantics, filtered, &app));
        return app.data;
      }
      string generateJsGlobalBindings(string[] filtered = []) {
        auto app = IndentedStringAppender();
        ir.generateJsGlobalBindings(filtered, app);
        return app.data;
      }
      string generateJsDecoders(string[] filtered = []) {
        auto decodedTypes = ir.generateDecodedTypes(filtered).sort!((a,b){return a.mangled < b.mangled;}).uniq!((a, b){return a.mangled == b.mangled;});
        bool first = true;
        auto app = IndentedStringAppender();
        foreach(decoder; decodedTypes.filter!(e => e.mangled != "string")) {
          if (!first)
            app.putLn(",");
          else
            first = false;
          decoder.generateJsDecoder(app, semantics, true);
        }
        return app.data;
      }
      string generateJsEncoders(string[] filtered = []) {
        auto encodedTypes = ir.generateEncodedTypes(filtered).sort!((a,b){return a.mangled < b.mangled;}).uniq!((a, b){return a.mangled == b.mangled;});
        bool first = true;
        auto app = IndentedStringAppender();
        foreach(encoder; encodedTypes.filter!(e => e.mangled != "string")) {
          if (!first)
            app.putLn(",");
          else
            first = false;
          encoder.generateJsEncoder(app, semantics, true);
        }
        return app.data;
      }
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
        auto createDelay(double maxDelayTime /* = 1.0 */) {
          return DelayNode(JsHandle(Event_createDelay(this.handle, maxDelayTime)));
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) Handle Event_createDelay(Handle, double);
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
      interface Window {
      };
      interface AudioWorklet {
      };
    });
  gen.generateDBindings.shouldBeLike(q{
      struct AudioWorklet {
        JsHandle handle;
        alias handle this;
        static auto Event(string type, EventInit eventInitDict) {
          return .Event(JsHandle(AudioWorklet_Event(type, eventInitDict.handle)));
        }
      }
      struct Event {
        JsHandle handle;
        alias handle this;
        auto type() {
          return Event_type_Get(this.handle);
        }
        void target(Optional!(EventTarget) target) {
          Event_target_Set(this.handle, !target.empty, target.front.handle);
        }
        auto target() {
          return Event_target_Get(this.handle);
        }
        auto composedPath() {
          return Sequence!(EventTarget)(JsHandle(Event_composedPath(this.handle)));
        }
        enum ushort NONE = 0;
        void eventPhase(ushort eventPhase) {
          Event_eventPhase_Set(this.handle, eventPhase);
        }
        auto eventPhase() {
          return Event_eventPhase_Get(this.handle);
        }
      }
      struct Window {
        JsHandle handle;
        alias handle this;
        static auto Event(string type, EventInit eventInitDict) {
          return .Event(JsHandle(Window_Event(type, eventInitDict.handle)));
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) Handle AudioWorklet_Event(string, Handle);
      extern (C) string Event_type_Get(Handle);
      extern (C) void Event_target_Set(Handle, bool, Handle);
      extern (C) Optional!(EventTarget) Event_target_Get(Handle);
      extern (C) Handle Event_composedPath(Handle);
      extern (C) void Event_eventPhase_Set(Handle, ushort);
      extern (C) ushort Event_eventPhase_Get(Handle);
      extern (C) Handle Window_Event(string, Handle);
    });
  gen.generateJsExports.shouldBeLike("
          AudioWorklet_Event: (typeLen, typePtr, eventInitDict) => {
            return spasm.addObject(new AudioWorklet.Event(spasm_decode_string(typeLen, typePtr), spasm.objects[eventInitDict]));
          },
          Event_type_Get: (rawResult, ctx) => {
            spasm_encode_string(rawResult, spasm.objects[ctx].type);
          },
          Event_target_Set: (ctx, targetDefined, target) => {
            spasm.objects[ctx].target = targetDefined ? spasm.objects[target] : undefined;
          },
          Event_target_Get: (rawResult, ctx) => {
            spasm_encode_optional_Handle(rawResult, spasm.objects[ctx].target);
          },
          Event_composedPath: (ctx) => {
            return spasm.addObject(spasm.objects[ctx].composedPath());
          },
          Event_eventPhase_Set: (ctx, eventPhase) => {
            spasm.objects[ctx].eventPhase = eventPhase;
          },
          Event_eventPhase_Get: (ctx) => {
            return spasm.objects[ctx].eventPhase;
          },
          Window_Event: (typeLen, typePtr, eventInitDict) => {
            return spasm.addObject(new Window.Event(spasm_decode_string(typeLen, typePtr), spasm.objects[eventInitDict]));
          },
      ");
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
          Foo_orientation_Set(this.handle, orientation);
        }
        auto orientation() {
          return Foo_orientation_Get(this.handle);
        }
        auto needs() {
          return Foo_needs(this.handle);
        }
        void wants(ImageOrientation o) {
          Foo_wants(this.handle, o);
        }
      }
      enum ImageOrientation {
        none,
        flipY,
        with_hypen
      }
  });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void Foo_orientation_Set(Handle, ImageOrientation);
      extern (C) ImageOrientation Foo_orientation_Get(Handle);
      extern (C) ImageOrientation Foo_needs(Handle);
      extern (C) void Foo_wants(Handle, ImageOrientation);
    });
  gen.generateJsExports.shouldBeLike("
    Foo_orientation_Set: (ctx, orientation) => {
      spasm.objects[ctx].orientation = spasm_decode_ImageOrientation(orientation);
    },
    Foo_orientation_Get: (ctx) => {
      return spasm_encode_ImageOrientation(spasm.objects[ctx].orientation);
    },
    Foo_needs: (ctx) => {
      return spasm_encode_ImageOrientation(spasm.objects[ctx].needs());
    },
    Foo_wants: (ctx, o) => {
      spasm.objects[ctx].wants(spasm_decode_ImageOrientation(o));
    },
");
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
  gen.generateJsExports.shouldBeLike("");
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
          _parent = .EventTarget(h);
        }
        auto createPeriodicWave(Sequence!(float) real_, PeriodicWaveConstraints constraints) {
          return PeriodicWave(JsHandle(BaseAudioContext_createPeriodicWave(this._parent, real_.handle, constraints.handle)));
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) Handle BaseAudioContext_createPeriodicWave(Handle, Handle, Handle);
    });
  gen.generateJsExports.shouldBeLike("
    BaseAudioContext_createPeriodicWave: (ctx, real, constraints) => {
      return spasm.addObject(spasm.objects[ctx].createPeriodicWave(spasm.objects[real], spasm.objects[constraints]));
    },
");
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
          Foo_bar(this.handle, number);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void Foo_bar(Handle, uint);
    });
  gen.generateJsExports.shouldBeLike("
    Foo_bar: (ctx, number) => {
      spasm.objects[ctx].bar(number);
    },
");
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
          Foo_bar(this.handle, !number.empty, number.front, !constraints.empty, constraints.front.handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void Foo_bar(Handle, bool, uint, bool, Handle);
    });
  gen.generateJsExports.shouldBeLike("
    Foo_bar: (ctx, numberDefined, number, constraintsDefined, constraints) => {
      spasm.objects[ctx].bar(numberDefined ? number : undefined, constraintsDefined ? spasm.objects[constraints] : undefined);
    },
");
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
          _parent = .EventTarget(h);
        }
        auto decodeAudioData(ArrayBuffer audioData, Optional!(DecodeSuccessCallback) successCallback, Optional!(DecodeErrorCallback) errorCallback) {
          return Promise!(AudioBuffer)(JsHandle(BaseAudioContext_decodeAudioData(this._parent, audioData.handle, !successCallback.empty, successCallback.front, !errorCallback.empty, errorCallback.front)));
        }
      }
      alias DecodeErrorCallback = void delegate(DOMException);
      alias DecodeSuccessCallback = void delegate(AudioBuffer);
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) Handle BaseAudioContext_decodeAudioData(Handle, Handle, bool, DecodeSuccessCallback, bool, DecodeErrorCallback);
    });
  gen.generateJsExports.shouldBeLike("
    BaseAudioContext_decodeAudioData: (ctx, audioData, successCallbackDefined, successCallbackCtx, successCallbackPtr, errorCallbackDefined, errorCallbackCtx, errorCallbackPtr) => {
      return spasm.addObject(spasm.objects[ctx].decodeAudioData(spasm.objects[audioData], successCallbackDefined ? (decodedData)=>{spasm.callback_void_Handle(successCallbackCtx, successCallbackPtr, spasm.addObject(decodedData))} : undefined, errorCallbackDefined ? (error)=>{spasm.callback_void_Handle(errorCallbackCtx, errorCallbackPtr, spasm.addObject(error))} : undefined));
    },
"
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
          AudioContextOptions_latencyHint_Set(this.handle, latencyHint);
        }
        auto latencyHint() {
          return AudioContextOptions_latencyHint_Get(this.handle);
        }
        void sampleRate(Optional!(SumType!(bool, double)) sampleRate) {
          AudioContextOptions_sampleRate_Set(this.handle, !sampleRate.empty, sampleRate.front);
        }
        auto sampleRate() {
          return AudioContextOptions_sampleRate_Get(this.handle);
        }
        auto fooBar() {
          return AudioContextOptions_fooBar(this.handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void AudioContextOptions_latencyHint_Set(Handle, SumType!(AudioContextLatencyCategory, double));
      extern (C) SumType!(AudioContextLatencyCategory, double) AudioContextOptions_latencyHint_Get(Handle);
      extern (C) void AudioContextOptions_sampleRate_Set(Handle, bool, SumType!(bool, double));
      extern (C) Optional!(SumType!(bool, double)) AudioContextOptions_sampleRate_Get(Handle);
      extern (C) SumType!(string, AudioContextLatencyCategory) AudioContextOptions_fooBar(Handle);
    });
  // TODO: the optionals and unions returned from js should probably be stored in first extra param
  gen.generateJsExports.shouldBeLike("
    AudioContextOptions_latencyHint_Set: (ctx, latencyHint) => {
      spasm.objects[ctx].latencyHint = spasm_decode_union2_AudioContextLatencyCategory_double(latencyHint);
    },
    AudioContextOptions_latencyHint_Get: (rawResult, ctx) => {
      spasm_encode_union2_AudioContextLatencyCategory_double(rawResult, spasm.objects[ctx].latencyHint);
    },
    AudioContextOptions_sampleRate_Set: (ctx, sampleRateDefined, sampleRate) => {
      spasm.objects[ctx].sampleRate = sampleRateDefined ? spasm_decode_union2_bool_double(sampleRate) : undefined;
    },
    AudioContextOptions_sampleRate_Get: (rawResult, ctx) => {
      spasm_encode_optional_union2_bool_double(rawResult, spasm.objects[ctx].sampleRate);
    },
    AudioContextOptions_fooBar: (rawResult, ctx) => {
      spasm_encode_union2_string_AudioContextLatencyCategory(rawResult, spasm.objects[ctx].fooBar());
    },
");
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
        static auto create() {
          return AudioContextOptions(JsHandle(spasm_add__object()));
        }
        void latencyHint(SumType!(AudioContextLatencyCategory, double) latencyHint) {
          AudioContextOptions_latencyHint_Set(this.handle, latencyHint);
        }
        auto latencyHint() {
          return AudioContextOptions_latencyHint_Get(this.handle);
        }
        void sampleRate(Optional!(SumType!(bool, double)) sampleRate) {
          AudioContextOptions_sampleRate_Set(this.handle, !sampleRate.empty, sampleRate.front);
        }
        auto sampleRate() {
          return AudioContextOptions_sampleRate_Get(this.handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void AudioContextOptions_latencyHint_Set(Handle, SumType!(AudioContextLatencyCategory, double));
      extern (C) SumType!(AudioContextLatencyCategory, double) AudioContextOptions_latencyHint_Get(Handle);
      extern (C) void AudioContextOptions_sampleRate_Set(Handle, bool, SumType!(bool, double));
      extern (C) Optional!(SumType!(bool, double)) AudioContextOptions_sampleRate_Get(Handle);
    });
  gen.generateJsExports.shouldBeLike("
    AudioContextOptions_latencyHint_Set: (ctx, latencyHint) => {
      spasm.objects[ctx].latencyHint = spasm_decode_union2_AudioContextLatencyCategory_double(latencyHint);
    },
    AudioContextOptions_latencyHint_Get: (rawResult, ctx) => {
      spasm_encode_union2_AudioContextLatencyCategory_double(rawResult, spasm.objects[ctx].latencyHint);
    },
    AudioContextOptions_sampleRate_Set: (ctx, sampleRateDefined, sampleRate) => {
      spasm.objects[ctx].sampleRate = sampleRateDefined ? spasm_decode_union2_bool_double(sampleRate) : undefined;
    },
    AudioContextOptions_sampleRate_Get: (rawResult, ctx) => {
      spasm_encode_optional_union2_bool_double(rawResult, spasm.objects[ctx].sampleRate);
    },
");

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
          double_real_Set(this.handle, real_);
        }
        auto real_() {
          return double_real_Get(this.handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void double_real_Set(Handle, string);
      extern (C) string double_real_Get(Handle);
    });
  gen.generateJsExports.shouldBeLike("
    double_real_Set: (ctx, realLen, realPtr) => {
      spasm.objects[ctx].real = spasm_decode_string(realLen, realPtr);
    },
    double_real_Get: (rawResult, ctx) => {
      spasm_encode_string(rawResult, spasm.objects[ctx].real);
    },
");
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
        static auto create() {
          return AudioTimestamp(JsHandle(spasm_add__object()));
        }
        void contextTime(double contextTime) {
          AudioTimestamp_contextTime_Set(this.handle, contextTime);
        }
        auto contextTime() {
          return AudioTimestamp_contextTime_Get(this.handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void AudioTimestamp_contextTime_Set(Handle, double);
      extern (C) double AudioTimestamp_contextTime_Get(Handle);
    });
  gen.generateJsExports.shouldBeLike("
    AudioTimestamp_contextTime_Set: (ctx, contextTime) => {
      spasm.objects[ctx].contextTime = contextTime;
    },
    AudioTimestamp_contextTime_Get: (ctx) => {
      return spasm.objects[ctx].contextTime;
    },
");
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
          _parent = .AudioNodeOptions(h);
        }
        static auto create() {
          return AudioWorkletNodeOptions(JsHandle(spasm_add__object()));
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{});
  gen.generateJsExports.shouldBeLike("");
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
          double_real_Set(this.handle, real_);
        }
        auto real_() {
          return double_real_Get(this.handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void double_real_Set(Handle, double);
      extern (C) double double_real_Get(Handle);
    });
  gen.generateJsExports.shouldBeLike("
    double_real_Set: (ctx, real) => {
      spasm.objects[ctx].real = real;
    },
    double_real_Get: (ctx) => {
      return spasm.objects[ctx].real;
    },
");
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
        static auto create() {
          return AudioWorkletNodeOptions(JsHandle(spasm_add__object()));
        }
        void real_(Record!(string, double) real_) {
          AudioWorkletNodeOptions_real_Set(this.handle, real_.handle);
        }
        auto real_() {
          return Record!(string, double)(JsHandle(AudioWorkletNodeOptions_real_Get(this.handle)));
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void AudioWorkletNodeOptions_real_Set(Handle, Handle);
      extern (C) Handle AudioWorkletNodeOptions_real_Get(Handle);
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
        static auto create() {
          return AudioParamDescriptor(JsHandle(spasm_add__object()));
        }
        void maxValue(float maxValue) {
          AudioParamDescriptor_maxValue_Set(this.handle, maxValue);
        }
        auto maxValue() {
          return AudioParamDescriptor_maxValue_Get(this.handle);
        }
        void minValue(float minValue) {
          AudioParamDescriptor_minValue_Set(this.handle, minValue);
        }
        auto minValue() {
          return AudioParamDescriptor_minValue_Get(this.handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void AudioParamDescriptor_maxValue_Set(Handle, float);
      extern (C) float AudioParamDescriptor_maxValue_Get(Handle);
      extern (C) void AudioParamDescriptor_minValue_Set(Handle, float);
      extern (C) float AudioParamDescriptor_minValue_Get(Handle);
    });
  gen.generateJsExports.shouldBeLike("
    AudioParamDescriptor_maxValue_Set: (ctx, maxValue) => {
      spasm.objects[ctx].maxValue = maxValue;
    },
    AudioParamDescriptor_maxValue_Get: (ctx) => {
      return spasm.objects[ctx].maxValue;
    },
    AudioParamDescriptor_minValue_Set: (ctx, minValue) => {
      spasm.objects[ctx].minValue = minValue;
    },
    AudioParamDescriptor_minValue_Get: (ctx) => {
      return spasm.objects[ctx].minValue;
    },
");
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
          return Maplike_string_Handle_size(this.handle);
        }
        void clear() {
          Maplike_string_Handle_clear(this.handle);
        }
        void delete_(string key) {
          Maplike_string_Handle_delete(this.handle, key);
        }
        Iterator!(ArrayPair!(string, AudioParam)) entries() {
          return Iterator!(ArrayPair!(string, AudioParam))(JsHandle(Maplike_string_Handle_entries(this.handle)));
        }
        extern(C) void forEach(void delegate(string, Handle, Handle) callback) {
          Maplike_string_Handle_forEach(this.handle, callback);
        }
        AudioParam get(string key) {
          return AudioParam(JsHandle(Maplike_string_Handle_get(this.handle, key)));
        }
        bool has(string key) {
          return Maplike_string_Handle_has(this.handle, key);
        }
        Iterator!(string) keys() {
          return Iterator!(string)(JsHandle(Maplike_string_Handle_keys(this.handle)));
        }
        void set(string key, AudioParam value) {
          Maplike_string_Handle_set(this.handle, key, value.handle);
        }
        Iterator!(AudioParam) values() {
          return Iterator!(AudioParam)(JsHandle(Maplike_string_Handle_values(this.handle)));
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) uint Maplike_string_Handle_size(Handle);
      extern (C) void Maplike_string_Handle_clear(Handle);
      extern (C) void Maplike_string_Handle_delete(Handle, string key);
      extern (C) Handle Maplike_string_Handle_entries(Handle);
      extern (C) void Maplike_string_Handle_forEach(Handle, void delegate(string, Handle, Handle));
      extern (C) AudioParam Maplike_string_Handle_get(Handle, string);
      extern (C) bool Maplike_string_Handle_has(Handle, string);
      extern (C) Handle Maplike_string_Handle_keys(Handle);
      extern (C) void Maplike_string_Handle_set(Handle, string key, Handle value);
      extern (C) Handle Maplike_string_Handle_values(Handle);
    });
  gen.generateJsExports.shouldBeLike("");
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
          _parent = .EventTarget(h);
        }
        auto createPeriodicWave() {
          return BaseAudioContext_createPeriodicWave(this._parent);
        }
        void name(Optional!(string) name) {
          BaseAudioContext_name_Set(this._parent, !name.empty, name.front);
        }
        auto name() {
          return BaseAudioContext_name_Get(this._parent);
        }
        void foo(Optional!(string) title) {
          BaseAudioContext_foo(this._parent, !title.empty, title.front);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) Optional!(string) BaseAudioContext_createPeriodicWave(Handle);
      extern (C) void BaseAudioContext_name_Set(Handle, bool, string);
      extern (C) Optional!(string) BaseAudioContext_name_Get(Handle);
      extern (C) void BaseAudioContext_foo(Handle, bool, string);
    });
  gen.generateJsExports.shouldBeLike("
    BaseAudioContext_createPeriodicWave: (rawResult, ctx) => {
      spasm_encode_optional_string(rawResult, spasm.objects[ctx].createPeriodicWave());
    },
    BaseAudioContext_name_Set: (ctx, nameDefined, nameLen, namePtr) => {
      spasm.objects[ctx].name = nameDefined ? spasm_decode_string(nameLen, namePtr) : undefined;
    },
    BaseAudioContext_name_Get: (rawResult, ctx) => {
      spasm_encode_optional_string(rawResult, spasm.objects[ctx].name);
    },
    BaseAudioContext_foo: (ctx, titleDefined, titleLen, titlePtr) => {
      spasm.objects[ctx].foo(titleDefined ? spasm_decode_string(titleLen, titlePtr) : undefined);
    },
");
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
          _parent = .Event(h);
        }
        auto clipboardData() {
          return ClipboardEvent_clipboardData_Get(this._parent);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) Optional!(DataTransfer) ClipboardEvent_clipboardData_Get(Handle);
    });
  gen.generateJsExports.shouldBeLike("
    ClipboardEvent_clipboardData_Get: (rawResult, ctx) => {
      spasm_encode_optional_Handle(rawResult, spasm.objects[ctx].clipboardData);
    },
");
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
        static auto create() {
          return FocusEventInit(JsHandle(spasm_add__object()));
        }
        void relatedTarget(Optional!(EventTarget) relatedTarget) {
          FocusEventInit_relatedTarget_Set(this.handle, !relatedTarget.empty, relatedTarget.front.handle);
        }
        auto relatedTarget() {
          return FocusEventInit_relatedTarget_Get(this.handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void FocusEventInit_relatedTarget_Set(Handle, bool, Handle);
      extern (C) Optional!(EventTarget) FocusEventInit_relatedTarget_Get(Handle);
    });
  gen.generateJsExports.shouldBeLike("
    FocusEventInit_relatedTarget_Set: (ctx, relatedTargetDefined, relatedTarget) => {
      spasm.objects[ctx].relatedTarget = relatedTargetDefined ? spasm.objects[relatedTarget] : undefined;
    },
    FocusEventInit_relatedTarget_Get: (rawResult, ctx) => {
      spasm_encode_optional_Handle(rawResult, spasm.objects[ctx].relatedTarget);
    },
");
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
        auto writable() {
          return WritableStream(JsHandle(GenericTransformStream_writable_Get(this.handle)));
        }
        auto readable() {
          return ReadbleStream(JsHandle(GenericTransformStream_readable_Get(this.handle)));
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) Handle GenericTransformStream_writable_Get(Handle);
      extern (C) Handle GenericTransformStream_readable_Get(Handle);
    });
  gen.generateJsExports.shouldBeLike("
    GenericTransformStream_writable_Get: (ctx) => {
      return spasm.addObject(spasm.objects[ctx].writable);
    },
    GenericTransformStream_readable_Get: (ctx) => {
      return spasm.addObject(spasm.objects[ctx].readable);
    },
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
        auto datacube() {
          return DOMStringMap(JsHandle(HTMLOrSVGElement_datacube_Get(this.handle)));
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) Handle HTMLOrSVGElement_datacube_Get(Handle);
    });
  gen.generateJsExports.shouldBeLike("
    HTMLOrSVGElement_datacube_Get: (ctx) => {
      return spasm.addObject(spasm.objects[ctx].datacube);
    },
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
        auto opIndex(string name) {
          return DOMStringMap_getter__string(this.handle, name);
        }
        auto opDispatch(string name)() {
          return DOMStringMap_getter__string(this.handle, name);
        }
        void opIndexAssign(string value, string name) {
          DOMStringMap_setter__string_string(this.handle, name, value);
        }
        void opDispatch(string name)(string value) {
          DOMStringMap_setter__string_string(this.handle, name, value);
        }
        void remove(string name) {
          DOMStringMap_deleter(this.handle, name);
        }
        auto byKey(string name) {
          return DOMStringMap_byKey_getter(this.handle, name);
        }
        void byKey(string name, string value) {
          DOMStringMap_byKey_setter(this.handle, name, value);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) string DOMStringMap_getter__string(Handle, string);
      extern (C) void DOMStringMap_setter__string_string(Handle, string, string);
      extern (C) void DOMStringMap_deleter(Handle, string);
      extern (C) string DOMStringMap_byKey_getter(Handle, string);
      extern (C) void DOMStringMap_byKey_setter(Handle, string, string);
    });
  gen.generateJsExports.shouldBeLike("
    DOMStringMap_getter__string: (rawResult, ctx, nameLen, namePtr) => {
      spasm_encode_string(rawResult, spasm.objects[ctx][spasm_decode_string(nameLen, namePtr)]);
    },
    DOMStringMap_setter__string_string: (ctx, nameLen, namePtr, valueLen, valuePtr) => {
      spasm.objects[ctx][spasm_decode_string(nameLen, namePtr)] = spasm_decode_string(valueLen, valuePtr);
    },
    DOMStringMap_deleter: (ctx, nameLen, namePtr) => {
      delete spasm.objects[ctx][spasm_decode_string(nameLen, namePtr)];
    },
    DOMStringMap_byKey_getter: (rawResult, ctx, nameLen, namePtr) => {
      spasm_encode_string(rawResult, spasm.objects[ctx].byKey(spasm_decode_string(nameLen, namePtr)));
    },
    DOMStringMap_byKey_setter: (ctx, nameLen, namePtr, valueLen, valuePtr) => {
      spasm.objects[ctx].byKey(spasm_decode_string(nameLen, namePtr), spasm_decode_string(valueLen, valuePtr));
    },
");
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
        auto requestAnimationFrame(FrameRequestCallback callback) {
          return AnimationFrameProvider_requestAnimationFrame(this.handle, callback);
        }
      }
      alias DOMHighResTimeStamp = double;
      alias FrameRequestCallback = void delegate(double);
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) uint AnimationFrameProvider_requestAnimationFrame(Handle, FrameRequestCallback);
    });
  gen.generateJsExports.shouldBeLike("
    AnimationFrameProvider_requestAnimationFrame: (ctx, callbackCtx, callbackPtr) => {
      return spasm.objects[ctx].requestAnimationFrame((time)=>{spasm.callback_void_double(callbackCtx, callbackPtr, time)});
    },");
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
        auto decode(BufferSource input, TextDecodeOptions options) {
          return TextDecoder_decode(this.handle, input, options.handle);
        }
        auto encode(TextDecodeOptions options) {
          return TextDecoder_encode(this.handle, options.handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) string TextDecoder_decode(Handle, BufferSource, Handle);
      extern (C) BufferSource TextDecoder_encode(Handle, Handle);
    });
  gen.generateJsExports.shouldBeLike("
    TextDecoder_decode: (rawResult, ctx, input, options) => {
      spasm_encode_string(rawResult, spasm.objects[ctx].decode(spasm_decode_BufferSource(input), spasm.objects[options]));
    },
    TextDecoder_encode: (rawResult, ctx, options) => {
      spasm_encode_BufferSource(rawResult, spasm.objects[ctx].encode(spasm.objects[options]));
    },
");
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
        static auto create() {
          return RequestInit(JsHandle(spasm_add__object()));
        }
        void body_(Optional!(BodyInit) body_) {
          RequestInit_body_Set(this.handle, !body_.empty, body_.front);
        }
        auto body_() {
          return RequestInit_body_Get(this.handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void RequestInit_body_Set(Handle, bool, BodyInit);
      extern (C) Optional!(BodyInit) RequestInit_body_Get(Handle);
    });
  gen.generateJsExports.shouldBeLike("
    RequestInit_body_Set: (ctx, bodyDefined, body) => {
      spasm.objects[ctx].body = bodyDefined ? spasm_decode_BodyInit(body) : undefined;
    },
    RequestInit_body_Get: (rawResult, ctx) => {
      spasm_encode_optional_BodyInit(rawResult, spasm.objects[ctx].body);
    },
");
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
        auto bar(Sequence!(string) names) {
          return Foo_bar(this.handle, names.handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) Optional!(Sequence!(int)) Foo_bar(Handle, Handle);
    });
  gen.generateJsExports.shouldBeLike("
    Foo_bar: (rawResult, ctx, names) => {
      spasm_encode_optional_sequence(rawResult, spasm.objects[ctx].bar(spasm.objects[names]));
    },
");
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
        auto item(uint index) {
          return Foo_item_getter(this.handle, index);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) Optional!(File) Foo_item_getter(Handle, uint);
    });
  gen.generateJsExports.shouldBeLike("
    Foo_item_getter: (rawResult, ctx, index) => {
      spasm_encode_optional_Handle(rawResult, spasm.objects[ctx].item(index));
    },
");
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
        auto name() {
          return Foo_name(this.handle);
        }
        auto fatal() {
          return Foo_fatal_Get(this.handle);
        }
        auto size() {
          return Foo_size(this.handle);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) string Foo_name(Handle);
      extern (C) bool Foo_fatal_Get(Handle);
      extern (C) long Foo_size(Handle);
    });
  gen.generateJsExports.shouldBeLike("
    Foo_name: (rawResult, ctx) => {
      spasm_encode_string(rawResult, spasm.objects[ctx].name());
    },
    Foo_fatal_Get: (ctx) => {
      return spasm.objects[ctx].fatal;
    },
    Foo_size: (ctx) => {
      return spasm.objects[ctx].size();
    },
");
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
  gen.generateJsExports.shouldBeLike("
    console_clear: () => {
      console.clear();
    },
");
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
  ir.generateDImports(moduleB).shouldBeLike("extern (C) Handle Bar_get(Handle);");
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
  ir.generateDImports(moduleA).shouldBeLike("extern (C) Handle Foo_get(Handle);");
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
        void log(T0)(T0 data) {
          Handle _handle_data = getOrCreateHandle(data);
          foo_log(_handle_data);
          dropHandle!(T0)(_handle_data);
        }
        auto get() {
          return Any(JsHandle(foo_get()));
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void foo_log(Handle);
      extern (C) Handle foo_get();
    });
  gen.generateJsExports.shouldBeLike("
    foo_log: (data) => {
      foo.log(spasm.objects[data]);
    },
    foo_get: () => {
      return spasm.addObject(foo.get());
    },
");
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
          _parent = .EventTarget(h);
        }
        void onerror(OnErrorEventHandler onerror) {
          WorkerGlobalScope_onerror_Set(this._parent, !onerror.empty, onerror.front);
        }
        auto onerror() {
          return WorkerGlobalScope_onerror_Get(this._parent);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void WorkerGlobalScope_onerror_Set(Handle, bool, OnErrorEventHandlerNonNull);
      extern (C) OnErrorEventHandler WorkerGlobalScope_onerror_Get(Handle);
    });
  gen.generateJsExports.shouldBeLike("
    WorkerGlobalScope_onerror_Set: (ctx, onerrorDefined, onerror) => {
      spasm.objects[ctx].onerror = onerrorDefined ? onerror : undefined;
    },
    WorkerGlobalScope_onerror_Get: (rawResult, ctx) => {
      spasm_encode_optional_Handle(rawResult, spasm.objects[ctx].onerror);
    },
");
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
          _parent = .XMLHttpRequestEventTarget(h);
        }
        void send(Optional!(SumType!(Document, BodyInit)) body_ /* = no!(SumType!(Document, BodyInit)) */) {
          XMLHttpRequest_send(this._parent, !body_.empty, body_.front);
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void XMLHttpRequest_send(Handle, bool, SumType!(Document, BodyInit));
    });
  gen.generateJsExports.shouldBeLike("
    XMLHttpRequest_send: (ctx, bodyDefined, body) => {
      spasm.objects[ctx].send(bodyDefined ? spasm_decode_union2_Document_BodyInit(body) : undefined);
    },
");
}

@("inheritance.mixin")
unittest {
  auto gen = getGenerator(q{
      interface mixin GenericTransformStream {
        readonly attribute WritableStream writable;
      };
      interface TextDecoderStream : Foo {
      };
      TextDecoderStream includes GenericTransformStream;
    });
  gen.generateDBindings.shouldBeLike(q{
      struct TextDecoderStream {
        Foo _parent;
        alias _parent this;
        this(JsHandle h) {
          _parent = .Foo(h);
        }
        auto writable() {
          return WritableStream(JsHandle(GenericTransformStream_writable_Get(this._parent)));
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) Handle GenericTransformStream_writable_Get(Handle);
    });
  gen.generateJsExports.shouldBeLike("
    GenericTransformStream_writable_Get: (ctx) => {
      return spasm.addObject(spasm.objects[ctx].writable);
    },
");
}

@("exposed.constructor.overloads")
unittest {
  auto gen = getGenerator(q{
      [Constructor(unsigned long sw, unsigned long sh),
       Constructor(Uint8ClampedArray data, unsigned long sw, optional unsigned long sh),
       Exposed=(Window,Worker),
       Serializable]
      interface ImageData {
      };
      interface Window {
        void stuff((ImageData or string) s);
      };
    });
  gen.generateDBindings.shouldBeLike(q{
      struct ImageData {
        JsHandle handle;
        alias handle this;
      }
      struct Window {
        JsHandle handle;
        alias handle this;
        void stuff(SumType!(.ImageData, string) s) {
          Window_stuff(this.handle, s);
        }
        static auto ImageData(uint sw, uint sh) {
          return .ImageData(JsHandle(Window_ImageData__uint_uint(sw, sh)));
        }
        static auto ImageData(Uint8ClampedArray data, uint sw, uint sh) {
          return .ImageData(JsHandle(Window_ImageData__Handle_uint_uint(data.handle, sw, sh)));
        }
      }
    });
  gen.generateDImports.shouldBeLike(q{
      extern (C) void Window_stuff(Handle, SumType!(ImageData, string));
      extern (C) Handle Window_ImageData__uint_uint(uint, uint);
      extern (C) Handle Window_ImageData__Handle_uint_uint(Handle, uint, uint);
    });
  gen.generateJsExports.shouldBeLike("
Window_stuff: (ctx, s) => {
  spasm.objects[ctx].stuff(spasm_decode_union2_ImageData_string(s));
},
Window_ImageData__uint_uint: (sw, sh) => {
  return spasm.addObject(new Window.ImageData(sw, sh));
},
Window_ImageData__Handle_uint_uint: (data, sw, sh) => {
  return spasm.addObject(new Window.ImageData(spasm.objects[data], sw, sh));
},
");
}
