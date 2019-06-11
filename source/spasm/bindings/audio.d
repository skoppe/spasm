module spasm.bindings.audio;

import spasm.types;
import spasm.bindings.common;
import spasm.bindings.dom;
import spasm.bindings.domhighrestimestamp;
import spasm.bindings.html;
import spasm.bindings.mediastream;
import spasm.bindings.worklet;

nothrow:
struct AnalyserNode {
  nothrow:
  spasm.bindings.audio.AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNode(h);
  }
  void getFloatFrequencyData(Float32Array array) {
    AnalyserNode_getFloatFrequencyData(this._parent, array.handle);
  }
  void getByteFrequencyData(Uint8Array array) {
    AnalyserNode_getByteFrequencyData(this._parent, array.handle);
  }
  void getFloatTimeDomainData(Float32Array array) {
    AnalyserNode_getFloatTimeDomainData(this._parent, array.handle);
  }
  void getByteTimeDomainData(Uint8Array array) {
    AnalyserNode_getByteTimeDomainData(this._parent, array.handle);
  }
  void fftSize(uint fftSize) {
    AnalyserNode_fftSize_Set(this._parent, fftSize);
  }
  auto fftSize() {
    return AnalyserNode_fftSize_Get(this._parent);
  }
  auto frequencyBinCount() {
    return AnalyserNode_frequencyBinCount_Get(this._parent);
  }
  void minDecibels(double minDecibels) {
    AnalyserNode_minDecibels_Set(this._parent, minDecibels);
  }
  auto minDecibels() {
    return AnalyserNode_minDecibels_Get(this._parent);
  }
  void maxDecibels(double maxDecibels) {
    AnalyserNode_maxDecibels_Set(this._parent, maxDecibels);
  }
  auto maxDecibels() {
    return AnalyserNode_maxDecibels_Get(this._parent);
  }
  void smoothingTimeConstant(double smoothingTimeConstant) {
    AnalyserNode_smoothingTimeConstant_Set(this._parent, smoothingTimeConstant);
  }
  auto smoothingTimeConstant() {
    return AnalyserNode_smoothingTimeConstant_Get(this._parent);
  }
}
struct AnalyserOptions {
  nothrow:
  spasm.bindings.audio.AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNodeOptions(h);
  }
  static auto create() {
    return AnalyserOptions(JsHandle(spasm_add__object()));
  }
  void fftSize(uint fftSize) {
    AnalyserOptions_fftSize_Set(this._parent, fftSize);
  }
  auto fftSize() {
    return AnalyserOptions_fftSize_Get(this._parent);
  }
  void maxDecibels(double maxDecibels) {
    AnalyserOptions_maxDecibels_Set(this._parent, maxDecibels);
  }
  auto maxDecibels() {
    return AnalyserOptions_maxDecibels_Get(this._parent);
  }
  void minDecibels(double minDecibels) {
    AnalyserOptions_minDecibels_Set(this._parent, minDecibels);
  }
  auto minDecibels() {
    return AnalyserOptions_minDecibels_Get(this._parent);
  }
  void smoothingTimeConstant(double smoothingTimeConstant) {
    AnalyserOptions_smoothingTimeConstant_Set(this._parent, smoothingTimeConstant);
  }
  auto smoothingTimeConstant() {
    return AnalyserOptions_smoothingTimeConstant_Get(this._parent);
  }
}
struct AudioBuffer {
  nothrow:
  JsHandle handle;
  alias handle this;
  auto sampleRate() {
    return AudioBuffer_sampleRate_Get(this.handle);
  }
  auto length() {
    return AudioBuffer_length_Get(this.handle);
  }
  auto duration() {
    return AudioBuffer_duration_Get(this.handle);
  }
  auto numberOfChannels() {
    return AudioBuffer_numberOfChannels_Get(this.handle);
  }
  auto getChannelData(uint channel) {
    return Float32Array(JsHandle(AudioBuffer_getChannelData(this.handle, channel)));
  }
  void copyFromChannel(Float32Array destination, uint channelNumber, uint startInChannel /* = 0 */) {
    AudioBuffer_copyFromChannel(this.handle, destination.handle, channelNumber, startInChannel);
  }
  void copyFromChannel(Float32Array destination, uint channelNumber) {
    AudioBuffer_copyFromChannel_0(this.handle, destination.handle, channelNumber);
  }
  void copyToChannel(Float32Array source, uint channelNumber, uint startInChannel /* = 0 */) {
    AudioBuffer_copyToChannel(this.handle, source.handle, channelNumber, startInChannel);
  }
  void copyToChannel(Float32Array source, uint channelNumber) {
    AudioBuffer_copyToChannel_0(this.handle, source.handle, channelNumber);
  }
}
struct AudioBufferOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  static auto create() {
    return AudioBufferOptions(JsHandle(spasm_add__object()));
  }
  void numberOfChannels(uint numberOfChannels) {
    AudioBufferOptions_numberOfChannels_Set(this.handle, numberOfChannels);
  }
  auto numberOfChannels() {
    return AudioBufferOptions_numberOfChannels_Get(this.handle);
  }
  void length(uint length) {
    AudioBufferOptions_length_Set(this.handle, length);
  }
  auto length() {
    return AudioBufferOptions_length_Get(this.handle);
  }
  void sampleRate(float sampleRate) {
    AudioBufferOptions_sampleRate_Set(this.handle, sampleRate);
  }
  auto sampleRate() {
    return AudioBufferOptions_sampleRate_Get(this.handle);
  }
}
struct AudioBufferSourceNode {
  nothrow:
  spasm.bindings.audio.AudioScheduledSourceNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioScheduledSourceNode(h);
  }
  void buffer(Optional!(AudioBuffer) buffer) {
    AudioBufferSourceNode_buffer_Set(this._parent, !buffer.empty, buffer.front.handle);
  }
  auto buffer() {
    return AudioBufferSourceNode_buffer_Get(this._parent);
  }
  auto playbackRate() {
    return AudioParam(JsHandle(AudioBufferSourceNode_playbackRate_Get(this._parent)));
  }
  auto detune() {
    return AudioParam(JsHandle(AudioBufferSourceNode_detune_Get(this._parent)));
  }
  void loop(bool loop) {
    AudioBufferSourceNode_loop_Set(this._parent, loop);
  }
  auto loop() {
    return AudioBufferSourceNode_loop_Get(this._parent);
  }
  void loopStart(double loopStart) {
    AudioBufferSourceNode_loopStart_Set(this._parent, loopStart);
  }
  auto loopStart() {
    return AudioBufferSourceNode_loopStart_Get(this._parent);
  }
  void loopEnd(double loopEnd) {
    AudioBufferSourceNode_loopEnd_Set(this._parent, loopEnd);
  }
  auto loopEnd() {
    return AudioBufferSourceNode_loopEnd_Get(this._parent);
  }
  void start(double when /* = 0 */, double offset, double duration) {
    AudioBufferSourceNode_start(this._parent, when, offset, duration);
  }
  void start(double when /* = 0 */, double offset) {
    AudioBufferSourceNode_start_0(this._parent, when, offset);
  }
  void start(double when /* = 0 */) {
    AudioBufferSourceNode_start_1(this._parent, when);
  }
  void start() {
    AudioBufferSourceNode_start_2(this._parent);
  }
}
struct AudioBufferSourceOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  static auto create() {
    return AudioBufferSourceOptions(JsHandle(spasm_add__object()));
  }
  void buffer(Optional!(AudioBuffer) buffer) {
    AudioBufferSourceOptions_buffer_Set(this.handle, !buffer.empty, buffer.front.handle);
  }
  auto buffer() {
    return AudioBufferSourceOptions_buffer_Get(this.handle);
  }
  void detune(float detune) {
    AudioBufferSourceOptions_detune_Set(this.handle, detune);
  }
  auto detune() {
    return AudioBufferSourceOptions_detune_Get(this.handle);
  }
  void loop(bool loop) {
    AudioBufferSourceOptions_loop_Set(this.handle, loop);
  }
  auto loop() {
    return AudioBufferSourceOptions_loop_Get(this.handle);
  }
  void loopEnd(double loopEnd) {
    AudioBufferSourceOptions_loopEnd_Set(this.handle, loopEnd);
  }
  auto loopEnd() {
    return AudioBufferSourceOptions_loopEnd_Get(this.handle);
  }
  void loopStart(double loopStart) {
    AudioBufferSourceOptions_loopStart_Set(this.handle, loopStart);
  }
  auto loopStart() {
    return AudioBufferSourceOptions_loopStart_Get(this.handle);
  }
  void playbackRate(float playbackRate) {
    AudioBufferSourceOptions_playbackRate_Set(this.handle, playbackRate);
  }
  auto playbackRate() {
    return AudioBufferSourceOptions_playbackRate_Get(this.handle);
  }
}
struct AudioContext {
  nothrow:
  spasm.bindings.audio.BaseAudioContext _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .BaseAudioContext(h);
  }
  auto baseLatency() {
    return AudioContext_baseLatency_Get(this._parent);
  }
  auto outputLatency() {
    return AudioContext_outputLatency_Get(this._parent);
  }
  auto getOutputTimestamp() {
    return AudioTimestamp(JsHandle(AudioContext_getOutputTimestamp(this._parent)));
  }
  auto resume() {
    return Promise!(void)(JsHandle(AudioContext_resume(this._parent)));
  }
  auto suspend() {
    return Promise!(void)(JsHandle(AudioContext_suspend(this._parent)));
  }
  auto close() {
    return Promise!(void)(JsHandle(AudioContext_close(this._parent)));
  }
  auto createMediaElementSource(HTMLMediaElement mediaElement) {
    return MediaElementAudioSourceNode(JsHandle(AudioContext_createMediaElementSource(this._parent, mediaElement._parent)));
  }
  auto createMediaStreamSource(MediaStream mediaStream) {
    return MediaStreamAudioSourceNode(JsHandle(AudioContext_createMediaStreamSource(this._parent, mediaStream._parent)));
  }
  auto createMediaStreamTrackSource(MediaStreamTrack mediaStreamTrack) {
    return MediaStreamTrackAudioSourceNode(JsHandle(AudioContext_createMediaStreamTrackSource(this._parent, mediaStreamTrack._parent)));
  }
  auto createMediaStreamDestination() {
    return MediaStreamAudioDestinationNode(JsHandle(AudioContext_createMediaStreamDestination(this._parent)));
  }
}
enum AudioContextLatencyCategory {
  balanced,
  interactive,
  playback
}
struct AudioContextOptions {
  nothrow:
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
  void sampleRate(float sampleRate) {
    AudioContextOptions_sampleRate_Set(this.handle, sampleRate);
  }
  auto sampleRate() {
    return AudioContextOptions_sampleRate_Get(this.handle);
  }
}
enum AudioContextState {
  suspended,
  running,
  closed
}
struct AudioDestinationNode {
  nothrow:
  spasm.bindings.audio.AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNode(h);
  }
  auto maxChannelCount() {
    return AudioDestinationNode_maxChannelCount_Get(this._parent);
  }
}
struct AudioListener {
  nothrow:
  JsHandle handle;
  alias handle this;
  auto positionX() {
    return AudioParam(JsHandle(AudioListener_positionX_Get(this.handle)));
  }
  auto positionY() {
    return AudioParam(JsHandle(AudioListener_positionY_Get(this.handle)));
  }
  auto positionZ() {
    return AudioParam(JsHandle(AudioListener_positionZ_Get(this.handle)));
  }
  auto forwardX() {
    return AudioParam(JsHandle(AudioListener_forwardX_Get(this.handle)));
  }
  auto forwardY() {
    return AudioParam(JsHandle(AudioListener_forwardY_Get(this.handle)));
  }
  auto forwardZ() {
    return AudioParam(JsHandle(AudioListener_forwardZ_Get(this.handle)));
  }
  auto upX() {
    return AudioParam(JsHandle(AudioListener_upX_Get(this.handle)));
  }
  auto upY() {
    return AudioParam(JsHandle(AudioListener_upY_Get(this.handle)));
  }
  auto upZ() {
    return AudioParam(JsHandle(AudioListener_upZ_Get(this.handle)));
  }
  void setPosition(float x, float y, float z) {
    AudioListener_setPosition(this.handle, x, y, z);
  }
  void setOrientation(float x, float y, float z, float xUp, float yUp, float zUp) {
    AudioListener_setOrientation(this.handle, x, y, z, xUp, yUp, zUp);
  }
}
struct AudioNode {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .EventTarget(h);
  }
  auto connect(AudioNode destinationNode, uint output /* = 0 */, uint input /* = 0 */) {
    return AudioNode(JsHandle(AudioNode_connect__Handle_uint_uint(this._parent, destinationNode._parent, output, input)));
  }
  auto connect(AudioNode destinationNode, uint output /* = 0 */) {
    return AudioNode(JsHandle(AudioNode_connect_0_Handle_uint(this._parent, destinationNode._parent, output)));
  }
  auto connect(AudioNode destinationNode) {
    return AudioNode(JsHandle(AudioNode_connect_1(this._parent, destinationNode._parent)));
  }
  void connect(AudioParam destinationParam, uint output /* = 0 */) {
    AudioNode_connect__Handle_uint(this._parent, destinationParam.handle, output);
  }
  void connect(AudioParam destinationParam) {
    AudioNode_connect_0_Handle(this._parent, destinationParam.handle);
  }
  void disconnect() {
    AudioNode_disconnect__(this._parent);
  }
  void disconnect(uint output) {
    AudioNode_disconnect__uint(this._parent, output);
  }
  void disconnect(AudioNode destinationNode) {
    AudioNode_disconnect__Handle(this._parent, destinationNode._parent);
  }
  void disconnect(AudioNode destinationNode, uint output) {
    AudioNode_disconnect__Handle_uint(this._parent, destinationNode._parent, output);
  }
  void disconnect(AudioNode destinationNode, uint output, uint input) {
    AudioNode_disconnect__Handle_uint_uint(this._parent, destinationNode._parent, output, input);
  }
  void disconnect(AudioParam destinationParam) {
    AudioNode_disconnect__Handle(this._parent, destinationParam.handle);
  }
  void disconnect(AudioParam destinationParam, uint output) {
    AudioNode_disconnect__Handle_uint(this._parent, destinationParam.handle, output);
  }
  auto context() {
    return BaseAudioContext(JsHandle(AudioNode_context_Get(this._parent)));
  }
  auto numberOfInputs() {
    return AudioNode_numberOfInputs_Get(this._parent);
  }
  auto numberOfOutputs() {
    return AudioNode_numberOfOutputs_Get(this._parent);
  }
  void channelCount(uint channelCount) {
    AudioNode_channelCount_Set(this._parent, channelCount);
  }
  auto channelCount() {
    return AudioNode_channelCount_Get(this._parent);
  }
  void channelCountMode(ChannelCountMode channelCountMode) {
    AudioNode_channelCountMode_Set(this._parent, channelCountMode);
  }
  auto channelCountMode() {
    return AudioNode_channelCountMode_Get(this._parent);
  }
  void channelInterpretation(ChannelInterpretation channelInterpretation) {
    AudioNode_channelInterpretation_Set(this._parent, channelInterpretation);
  }
  auto channelInterpretation() {
    return AudioNode_channelInterpretation_Get(this._parent);
  }
}
struct AudioNodeOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  static auto create() {
    return AudioNodeOptions(JsHandle(spasm_add__object()));
  }
  void channelCount(uint channelCount) {
    AudioNodeOptions_channelCount_Set(this.handle, channelCount);
  }
  auto channelCount() {
    return AudioNodeOptions_channelCount_Get(this.handle);
  }
  void channelCountMode(ChannelCountMode channelCountMode) {
    AudioNodeOptions_channelCountMode_Set(this.handle, channelCountMode);
  }
  auto channelCountMode() {
    return AudioNodeOptions_channelCountMode_Get(this.handle);
  }
  void channelInterpretation(ChannelInterpretation channelInterpretation) {
    AudioNodeOptions_channelInterpretation_Set(this.handle, channelInterpretation);
  }
  auto channelInterpretation() {
    return AudioNodeOptions_channelInterpretation_Get(this.handle);
  }
}
struct AudioParam {
  nothrow:
  JsHandle handle;
  alias handle this;
  void value(float value) {
    AudioParam_value_Set(this.handle, value);
  }
  auto value() {
    return AudioParam_value_Get(this.handle);
  }
  void automationRate(AutomationRate automationRate) {
    AudioParam_automationRate_Set(this.handle, automationRate);
  }
  auto automationRate() {
    return AudioParam_automationRate_Get(this.handle);
  }
  auto defaultValue() {
    return AudioParam_defaultValue_Get(this.handle);
  }
  auto minValue() {
    return AudioParam_minValue_Get(this.handle);
  }
  auto maxValue() {
    return AudioParam_maxValue_Get(this.handle);
  }
  auto setValueAtTime(float value, double startTime) {
    return AudioParam(JsHandle(AudioParam_setValueAtTime(this.handle, value, startTime)));
  }
  auto linearRampToValueAtTime(float value, double endTime) {
    return AudioParam(JsHandle(AudioParam_linearRampToValueAtTime(this.handle, value, endTime)));
  }
  auto exponentialRampToValueAtTime(float value, double endTime) {
    return AudioParam(JsHandle(AudioParam_exponentialRampToValueAtTime(this.handle, value, endTime)));
  }
  auto setTargetAtTime(float target, double startTime, float timeConstant) {
    return AudioParam(JsHandle(AudioParam_setTargetAtTime(this.handle, target, startTime, timeConstant)));
  }
  auto setValueCurveAtTime(Sequence!(float) values, double startTime, double duration) {
    return AudioParam(JsHandle(AudioParam_setValueCurveAtTime(this.handle, values.handle, startTime, duration)));
  }
  auto cancelScheduledValues(double cancelTime) {
    return AudioParam(JsHandle(AudioParam_cancelScheduledValues(this.handle, cancelTime)));
  }
  auto cancelAndHoldAtTime(double cancelTime) {
    return AudioParam(JsHandle(AudioParam_cancelAndHoldAtTime(this.handle, cancelTime)));
  }
}
struct AudioParamDescriptor {
  nothrow:
  JsHandle handle;
  alias handle this;
  static auto create() {
    return AudioParamDescriptor(JsHandle(spasm_add__object()));
  }
  void name(string name) {
    AudioParamDescriptor_name_Set(this.handle, name);
  }
  auto name() {
    return AudioParamDescriptor_name_Get(this.handle);
  }
  void defaultValue(float defaultValue) {
    AudioParamDescriptor_defaultValue_Set(this.handle, defaultValue);
  }
  auto defaultValue() {
    return AudioParamDescriptor_defaultValue_Get(this.handle);
  }
  void minValue(float minValue) {
    AudioParamDescriptor_minValue_Set(this.handle, minValue);
  }
  auto minValue() {
    return AudioParamDescriptor_minValue_Get(this.handle);
  }
  void maxValue(float maxValue) {
    AudioParamDescriptor_maxValue_Set(this.handle, maxValue);
  }
  auto maxValue() {
    return AudioParamDescriptor_maxValue_Get(this.handle);
  }
  void automationRate(AutomationRate automationRate) {
    AudioParamDescriptor_automationRate_Set(this.handle, automationRate);
  }
  auto automationRate() {
    return AudioParamDescriptor_automationRate_Get(this.handle);
  }
}
struct AudioParamMap {
  nothrow:
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
struct AudioProcessingEvent {
  nothrow:
  spasm.bindings.dom.Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .Event(h);
  }
  auto playbackTime() {
    return AudioProcessingEvent_playbackTime_Get(this._parent);
  }
  auto inputBuffer() {
    return AudioBuffer(JsHandle(AudioProcessingEvent_inputBuffer_Get(this._parent)));
  }
  auto outputBuffer() {
    return AudioBuffer(JsHandle(AudioProcessingEvent_outputBuffer_Get(this._parent)));
  }
}
struct AudioProcessingEventInit {
  nothrow:
  spasm.bindings.dom.EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .EventInit(h);
  }
  static auto create() {
    return AudioProcessingEventInit(JsHandle(spasm_add__object()));
  }
  void playbackTime(double playbackTime) {
    AudioProcessingEventInit_playbackTime_Set(this._parent, playbackTime);
  }
  auto playbackTime() {
    return AudioProcessingEventInit_playbackTime_Get(this._parent);
  }
  void inputBuffer(AudioBuffer inputBuffer) {
    AudioProcessingEventInit_inputBuffer_Set(this._parent, inputBuffer.handle);
  }
  auto inputBuffer() {
    return AudioBuffer(JsHandle(AudioProcessingEventInit_inputBuffer_Get(this._parent)));
  }
  void outputBuffer(AudioBuffer outputBuffer) {
    AudioProcessingEventInit_outputBuffer_Set(this._parent, outputBuffer.handle);
  }
  auto outputBuffer() {
    return AudioBuffer(JsHandle(AudioProcessingEventInit_outputBuffer_Get(this._parent)));
  }
}
struct AudioScheduledSourceNode {
  nothrow:
  spasm.bindings.audio.AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNode(h);
  }
  void onended(EventHandler onended) {
    AudioScheduledSourceNode_onended_Set(this._parent, onended);
  }
  auto onended() {
    return AudioScheduledSourceNode_onended_Get(this._parent);
  }
  void start(double when /* = 0 */) {
    AudioScheduledSourceNode_start(this._parent, when);
  }
  void start() {
    AudioScheduledSourceNode_start_0(this._parent);
  }
  void stop(double when /* = 0 */) {
    AudioScheduledSourceNode_stop(this._parent, when);
  }
  void stop() {
    AudioScheduledSourceNode_stop_0(this._parent);
  }
}
struct AudioTimestamp {
  nothrow:
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
  void performanceTime(double performanceTime) {
    AudioTimestamp_performanceTime_Set(this.handle, performanceTime);
  }
  auto performanceTime() {
    return AudioTimestamp_performanceTime_Get(this.handle);
  }
}
struct AudioWorklet {
  nothrow:
  spasm.bindings.worklet.Worklet _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .Worklet(h);
  }
  auto Event(string type, EventInit eventInitDict) {
    return .Event(JsHandle(AudioWorklet_Event(this._parent, type, eventInitDict.handle)));
  }
  auto EventTarget() {
    return .EventTarget(JsHandle(AudioWorklet_EventTarget(this._parent)));
  }
  auto MessageEvent(string type, MessageEventInit eventInitDict) {
    return .MessageEvent(JsHandle(AudioWorklet_MessageEvent(this._parent, type, eventInitDict._parent)));
  }
}
struct AudioWorkletGlobalScope {
  nothrow:
  spasm.bindings.worklet.WorkletGlobalScope _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .WorkletGlobalScope(h);
  }
  void registerProcessor(string name, VoidFunction processorCtor) {
    AudioWorkletGlobalScope_registerProcessor(this._parent, name, processorCtor);
  }
  auto currentFrame() {
    return AudioWorkletGlobalScope_currentFrame_Get(this._parent);
  }
  auto currentTime() {
    return AudioWorkletGlobalScope_currentTime_Get(this._parent);
  }
  auto sampleRate() {
    return AudioWorkletGlobalScope_sampleRate_Get(this._parent);
  }
}
struct AudioWorkletNode {
  nothrow:
  spasm.bindings.audio.AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNode(h);
  }
  auto parameters() {
    return AudioParamMap(JsHandle(AudioWorkletNode_parameters_Get(this._parent)));
  }
  auto port() {
    return MessagePort(JsHandle(AudioWorkletNode_port_Get(this._parent)));
  }
  void onprocessorerror(EventHandler onprocessorerror) {
    AudioWorkletNode_onprocessorerror_Set(this._parent, onprocessorerror);
  }
  auto onprocessorerror() {
    return AudioWorkletNode_onprocessorerror_Get(this._parent);
  }
}
struct AudioWorkletNodeOptions {
  nothrow:
  spasm.bindings.audio.AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNodeOptions(h);
  }
  static auto create() {
    return AudioWorkletNodeOptions(JsHandle(spasm_add__object()));
  }
  void numberOfInputs(uint numberOfInputs) {
    AudioWorkletNodeOptions_numberOfInputs_Set(this._parent, numberOfInputs);
  }
  auto numberOfInputs() {
    return AudioWorkletNodeOptions_numberOfInputs_Get(this._parent);
  }
  void numberOfOutputs(uint numberOfOutputs) {
    AudioWorkletNodeOptions_numberOfOutputs_Set(this._parent, numberOfOutputs);
  }
  auto numberOfOutputs() {
    return AudioWorkletNodeOptions_numberOfOutputs_Get(this._parent);
  }
  void outputChannelCount(Sequence!(uint) outputChannelCount) {
    AudioWorkletNodeOptions_outputChannelCount_Set(this._parent, outputChannelCount.handle);
  }
  auto outputChannelCount() {
    return Sequence!(uint)(JsHandle(AudioWorkletNodeOptions_outputChannelCount_Get(this._parent)));
  }
  void parameterData(Record!(string, double) parameterData) {
    AudioWorkletNodeOptions_parameterData_Set(this._parent, parameterData.handle);
  }
  auto parameterData() {
    return Record!(string, double)(JsHandle(AudioWorkletNodeOptions_parameterData_Get(this._parent)));
  }
  void processorOptions(Optional!(JsObject) processorOptions) {
    AudioWorkletNodeOptions_processorOptions_Set(this._parent, !processorOptions.empty, processorOptions.front.handle);
  }
  auto processorOptions() {
    return AudioWorkletNodeOptions_processorOptions_Get(this._parent);
  }
}
struct AudioWorkletProcessor {
  nothrow:
  JsHandle handle;
  alias handle this;
  auto port() {
    return MessagePort(JsHandle(AudioWorkletProcessor_port_Get(this.handle)));
  }
}
enum AutomationRate {
  a_rate,
  k_rate
}
struct BaseAudioContext {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .EventTarget(h);
  }
  auto destination() {
    return AudioDestinationNode(JsHandle(BaseAudioContext_destination_Get(this._parent)));
  }
  auto sampleRate() {
    return BaseAudioContext_sampleRate_Get(this._parent);
  }
  auto currentTime() {
    return BaseAudioContext_currentTime_Get(this._parent);
  }
  auto listener() {
    return AudioListener(JsHandle(BaseAudioContext_listener_Get(this._parent)));
  }
  auto state() {
    return BaseAudioContext_state_Get(this._parent);
  }
  auto audioWorklet() {
    return AudioWorklet(JsHandle(BaseAudioContext_audioWorklet_Get(this._parent)));
  }
  void onstatechange(EventHandler onstatechange) {
    BaseAudioContext_onstatechange_Set(this._parent, onstatechange);
  }
  auto onstatechange() {
    return BaseAudioContext_onstatechange_Get(this._parent);
  }
  auto createAnalyser() {
    return AnalyserNode(JsHandle(BaseAudioContext_createAnalyser(this._parent)));
  }
  auto createBiquadFilter() {
    return BiquadFilterNode(JsHandle(BaseAudioContext_createBiquadFilter(this._parent)));
  }
  auto createBuffer(uint numberOfChannels, uint length, float sampleRate) {
    return AudioBuffer(JsHandle(BaseAudioContext_createBuffer(this._parent, numberOfChannels, length, sampleRate)));
  }
  auto createBufferSource() {
    return AudioBufferSourceNode(JsHandle(BaseAudioContext_createBufferSource(this._parent)));
  }
  auto createChannelMerger(uint numberOfInputs /* = 6 */) {
    return ChannelMergerNode(JsHandle(BaseAudioContext_createChannelMerger(this._parent, numberOfInputs)));
  }
  auto createChannelMerger() {
    return ChannelMergerNode(JsHandle(BaseAudioContext_createChannelMerger_0(this._parent)));
  }
  auto createChannelSplitter(uint numberOfOutputs /* = 6 */) {
    return ChannelSplitterNode(JsHandle(BaseAudioContext_createChannelSplitter(this._parent, numberOfOutputs)));
  }
  auto createChannelSplitter() {
    return ChannelSplitterNode(JsHandle(BaseAudioContext_createChannelSplitter_0(this._parent)));
  }
  auto createConstantSource() {
    return ConstantSourceNode(JsHandle(BaseAudioContext_createConstantSource(this._parent)));
  }
  auto createConvolver() {
    return ConvolverNode(JsHandle(BaseAudioContext_createConvolver(this._parent)));
  }
  auto createDelay(double maxDelayTime /* = 1.0 */) {
    return DelayNode(JsHandle(BaseAudioContext_createDelay(this._parent, maxDelayTime)));
  }
  auto createDelay() {
    return DelayNode(JsHandle(BaseAudioContext_createDelay_0(this._parent)));
  }
  auto createDynamicsCompressor() {
    return DynamicsCompressorNode(JsHandle(BaseAudioContext_createDynamicsCompressor(this._parent)));
  }
  auto createGain() {
    return GainNode(JsHandle(BaseAudioContext_createGain(this._parent)));
  }
  auto createIIRFilter(Sequence!(double) feedforward, Sequence!(double) feedback) {
    return IIRFilterNode(JsHandle(BaseAudioContext_createIIRFilter(this._parent, feedforward.handle, feedback.handle)));
  }
  auto createOscillator() {
    return OscillatorNode(JsHandle(BaseAudioContext_createOscillator(this._parent)));
  }
  auto createPanner() {
    return PannerNode(JsHandle(BaseAudioContext_createPanner(this._parent)));
  }
  auto createPeriodicWave(Sequence!(float) real_, Sequence!(float) imag, PeriodicWaveConstraints constraints) {
    return PeriodicWave(JsHandle(BaseAudioContext_createPeriodicWave(this._parent, real_.handle, imag.handle, constraints.handle)));
  }
  auto createPeriodicWave(Sequence!(float) real_, Sequence!(float) imag) {
    return PeriodicWave(JsHandle(BaseAudioContext_createPeriodicWave_0(this._parent, real_.handle, imag.handle)));
  }
  auto createScriptProcessor(uint bufferSize /* = 0 */, uint numberOfInputChannels /* = 2 */, uint numberOfOutputChannels /* = 2 */) {
    return ScriptProcessorNode(JsHandle(BaseAudioContext_createScriptProcessor(this._parent, bufferSize, numberOfInputChannels, numberOfOutputChannels)));
  }
  auto createScriptProcessor(uint bufferSize /* = 0 */, uint numberOfInputChannels /* = 2 */) {
    return ScriptProcessorNode(JsHandle(BaseAudioContext_createScriptProcessor_0(this._parent, bufferSize, numberOfInputChannels)));
  }
  auto createScriptProcessor(uint bufferSize /* = 0 */) {
    return ScriptProcessorNode(JsHandle(BaseAudioContext_createScriptProcessor_1(this._parent, bufferSize)));
  }
  auto createScriptProcessor() {
    return ScriptProcessorNode(JsHandle(BaseAudioContext_createScriptProcessor_2(this._parent)));
  }
  auto createStereoPanner() {
    return StereoPannerNode(JsHandle(BaseAudioContext_createStereoPanner(this._parent)));
  }
  auto createWaveShaper() {
    return WaveShaperNode(JsHandle(BaseAudioContext_createWaveShaper(this._parent)));
  }
  auto decodeAudioData(ArrayBuffer audioData, Optional!(DecodeSuccessCallback) successCallback, Optional!(DecodeErrorCallback) errorCallback) {
    return Promise!(AudioBuffer)(JsHandle(BaseAudioContext_decodeAudioData(this._parent, audioData.handle, !successCallback.empty, successCallback.front, !errorCallback.empty, errorCallback.front)));
  }
  auto decodeAudioData(ArrayBuffer audioData, Optional!(DecodeSuccessCallback) successCallback) {
    return Promise!(AudioBuffer)(JsHandle(BaseAudioContext_decodeAudioData_0(this._parent, audioData.handle, !successCallback.empty, successCallback.front)));
  }
  auto decodeAudioData(ArrayBuffer audioData) {
    return Promise!(AudioBuffer)(JsHandle(BaseAudioContext_decodeAudioData_1(this._parent, audioData.handle)));
  }
}
struct BiquadFilterNode {
  nothrow:
  spasm.bindings.audio.AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNode(h);
  }
  void type(BiquadFilterType type) {
    BiquadFilterNode_type_Set(this._parent, type);
  }
  auto type() {
    return BiquadFilterNode_type_Get(this._parent);
  }
  auto frequency() {
    return AudioParam(JsHandle(BiquadFilterNode_frequency_Get(this._parent)));
  }
  auto detune() {
    return AudioParam(JsHandle(BiquadFilterNode_detune_Get(this._parent)));
  }
  auto Q() {
    return AudioParam(JsHandle(BiquadFilterNode_Q_Get(this._parent)));
  }
  auto gain() {
    return AudioParam(JsHandle(BiquadFilterNode_gain_Get(this._parent)));
  }
  void getFrequencyResponse(Float32Array frequencyHz, Float32Array magResponse, Float32Array phaseResponse) {
    BiquadFilterNode_getFrequencyResponse(this._parent, frequencyHz.handle, magResponse.handle, phaseResponse.handle);
  }
}
struct BiquadFilterOptions {
  nothrow:
  spasm.bindings.audio.AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNodeOptions(h);
  }
  static auto create() {
    return BiquadFilterOptions(JsHandle(spasm_add__object()));
  }
  void type(BiquadFilterType type) {
    BiquadFilterOptions_type_Set(this._parent, type);
  }
  auto type() {
    return BiquadFilterOptions_type_Get(this._parent);
  }
  void Q(float q) {
    BiquadFilterOptions_Q_Set(this._parent, Q);
  }
  auto Q() {
    return BiquadFilterOptions_Q_Get(this._parent);
  }
  void detune(float detune) {
    BiquadFilterOptions_detune_Set(this._parent, detune);
  }
  auto detune() {
    return BiquadFilterOptions_detune_Get(this._parent);
  }
  void frequency(float frequency) {
    BiquadFilterOptions_frequency_Set(this._parent, frequency);
  }
  auto frequency() {
    return BiquadFilterOptions_frequency_Get(this._parent);
  }
  void gain(float gain) {
    BiquadFilterOptions_gain_Set(this._parent, gain);
  }
  auto gain() {
    return BiquadFilterOptions_gain_Get(this._parent);
  }
}
enum BiquadFilterType {
  lowpass,
  highpass,
  bandpass,
  lowshelf,
  highshelf,
  peaking,
  notch,
  allpass
}
enum ChannelCountMode {
  max,
  clamped_max,
  explicit
}
enum ChannelInterpretation {
  speakers,
  discrete
}
struct ChannelMergerNode {
  nothrow:
  spasm.bindings.audio.AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNode(h);
  }
}
struct ChannelMergerOptions {
  nothrow:
  spasm.bindings.audio.AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNodeOptions(h);
  }
  static auto create() {
    return ChannelMergerOptions(JsHandle(spasm_add__object()));
  }
  void numberOfInputs(uint numberOfInputs) {
    ChannelMergerOptions_numberOfInputs_Set(this._parent, numberOfInputs);
  }
  auto numberOfInputs() {
    return ChannelMergerOptions_numberOfInputs_Get(this._parent);
  }
}
struct ChannelSplitterNode {
  nothrow:
  spasm.bindings.audio.AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNode(h);
  }
}
struct ChannelSplitterOptions {
  nothrow:
  spasm.bindings.audio.AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNodeOptions(h);
  }
  static auto create() {
    return ChannelSplitterOptions(JsHandle(spasm_add__object()));
  }
  void numberOfOutputs(uint numberOfOutputs) {
    ChannelSplitterOptions_numberOfOutputs_Set(this._parent, numberOfOutputs);
  }
  auto numberOfOutputs() {
    return ChannelSplitterOptions_numberOfOutputs_Get(this._parent);
  }
}
struct ConstantSourceNode {
  nothrow:
  spasm.bindings.audio.AudioScheduledSourceNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioScheduledSourceNode(h);
  }
  auto offset() {
    return AudioParam(JsHandle(ConstantSourceNode_offset_Get(this._parent)));
  }
}
struct ConstantSourceOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  static auto create() {
    return ConstantSourceOptions(JsHandle(spasm_add__object()));
  }
  void offset(float offset) {
    ConstantSourceOptions_offset_Set(this.handle, offset);
  }
  auto offset() {
    return ConstantSourceOptions_offset_Get(this.handle);
  }
}
struct ConvolverNode {
  nothrow:
  spasm.bindings.audio.AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNode(h);
  }
  void buffer(Optional!(AudioBuffer) buffer) {
    ConvolverNode_buffer_Set(this._parent, !buffer.empty, buffer.front.handle);
  }
  auto buffer() {
    return ConvolverNode_buffer_Get(this._parent);
  }
  void normalize(bool normalize) {
    ConvolverNode_normalize_Set(this._parent, normalize);
  }
  auto normalize() {
    return ConvolverNode_normalize_Get(this._parent);
  }
}
struct ConvolverOptions {
  nothrow:
  spasm.bindings.audio.AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNodeOptions(h);
  }
  static auto create() {
    return ConvolverOptions(JsHandle(spasm_add__object()));
  }
  void buffer(Optional!(AudioBuffer) buffer) {
    ConvolverOptions_buffer_Set(this._parent, !buffer.empty, buffer.front.handle);
  }
  auto buffer() {
    return ConvolverOptions_buffer_Get(this._parent);
  }
  void disableNormalization(bool disableNormalization) {
    ConvolverOptions_disableNormalization_Set(this._parent, disableNormalization);
  }
  auto disableNormalization() {
    return ConvolverOptions_disableNormalization_Get(this._parent);
  }
}
alias DecodeErrorCallback = void delegate(DOMException);
alias DecodeSuccessCallback = void delegate(AudioBuffer);
struct DelayNode {
  nothrow:
  spasm.bindings.audio.AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNode(h);
  }
  auto delayTime() {
    return AudioParam(JsHandle(DelayNode_delayTime_Get(this._parent)));
  }
}
struct DelayOptions {
  nothrow:
  spasm.bindings.audio.AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNodeOptions(h);
  }
  static auto create() {
    return DelayOptions(JsHandle(spasm_add__object()));
  }
  void maxDelayTime(double maxDelayTime) {
    DelayOptions_maxDelayTime_Set(this._parent, maxDelayTime);
  }
  auto maxDelayTime() {
    return DelayOptions_maxDelayTime_Get(this._parent);
  }
  void delayTime(double delayTime) {
    DelayOptions_delayTime_Set(this._parent, delayTime);
  }
  auto delayTime() {
    return DelayOptions_delayTime_Get(this._parent);
  }
}
enum DistanceModelType {
  linear,
  inverse,
  exponential
}
struct DynamicsCompressorNode {
  nothrow:
  spasm.bindings.audio.AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNode(h);
  }
  auto threshold() {
    return AudioParam(JsHandle(DynamicsCompressorNode_threshold_Get(this._parent)));
  }
  auto knee() {
    return AudioParam(JsHandle(DynamicsCompressorNode_knee_Get(this._parent)));
  }
  auto ratio() {
    return AudioParam(JsHandle(DynamicsCompressorNode_ratio_Get(this._parent)));
  }
  auto reduction() {
    return DynamicsCompressorNode_reduction_Get(this._parent);
  }
  auto attack() {
    return AudioParam(JsHandle(DynamicsCompressorNode_attack_Get(this._parent)));
  }
  auto release() {
    return AudioParam(JsHandle(DynamicsCompressorNode_release_Get(this._parent)));
  }
}
struct DynamicsCompressorOptions {
  nothrow:
  spasm.bindings.audio.AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNodeOptions(h);
  }
  static auto create() {
    return DynamicsCompressorOptions(JsHandle(spasm_add__object()));
  }
  void attack(float attack) {
    DynamicsCompressorOptions_attack_Set(this._parent, attack);
  }
  auto attack() {
    return DynamicsCompressorOptions_attack_Get(this._parent);
  }
  void knee(float knee) {
    DynamicsCompressorOptions_knee_Set(this._parent, knee);
  }
  auto knee() {
    return DynamicsCompressorOptions_knee_Get(this._parent);
  }
  void ratio(float ratio) {
    DynamicsCompressorOptions_ratio_Set(this._parent, ratio);
  }
  auto ratio() {
    return DynamicsCompressorOptions_ratio_Get(this._parent);
  }
  void release(float release) {
    DynamicsCompressorOptions_release_Set(this._parent, release);
  }
  auto release() {
    return DynamicsCompressorOptions_release_Get(this._parent);
  }
  void threshold(float threshold) {
    DynamicsCompressorOptions_threshold_Set(this._parent, threshold);
  }
  auto threshold() {
    return DynamicsCompressorOptions_threshold_Get(this._parent);
  }
}
struct GainNode {
  nothrow:
  spasm.bindings.audio.AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNode(h);
  }
  auto gain() {
    return AudioParam(JsHandle(GainNode_gain_Get(this._parent)));
  }
}
struct GainOptions {
  nothrow:
  spasm.bindings.audio.AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNodeOptions(h);
  }
  static auto create() {
    return GainOptions(JsHandle(spasm_add__object()));
  }
  void gain(float gain) {
    GainOptions_gain_Set(this._parent, gain);
  }
  auto gain() {
    return GainOptions_gain_Get(this._parent);
  }
}
struct IIRFilterNode {
  nothrow:
  spasm.bindings.audio.AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNode(h);
  }
  void getFrequencyResponse(Float32Array frequencyHz, Float32Array magResponse, Float32Array phaseResponse) {
    IIRFilterNode_getFrequencyResponse(this._parent, frequencyHz.handle, magResponse.handle, phaseResponse.handle);
  }
}
struct IIRFilterOptions {
  nothrow:
  spasm.bindings.audio.AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNodeOptions(h);
  }
  static auto create() {
    return IIRFilterOptions(JsHandle(spasm_add__object()));
  }
  void feedforward(Sequence!(double) feedforward) {
    IIRFilterOptions_feedforward_Set(this._parent, feedforward.handle);
  }
  auto feedforward() {
    return Sequence!(double)(JsHandle(IIRFilterOptions_feedforward_Get(this._parent)));
  }
  void feedback(Sequence!(double) feedback) {
    IIRFilterOptions_feedback_Set(this._parent, feedback.handle);
  }
  auto feedback() {
    return Sequence!(double)(JsHandle(IIRFilterOptions_feedback_Get(this._parent)));
  }
}
struct MediaElementAudioSourceNode {
  nothrow:
  spasm.bindings.audio.AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNode(h);
  }
  auto mediaElement() {
    return HTMLMediaElement(JsHandle(MediaElementAudioSourceNode_mediaElement_Get(this._parent)));
  }
}
struct MediaElementAudioSourceOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  static auto create() {
    return MediaElementAudioSourceOptions(JsHandle(spasm_add__object()));
  }
  void mediaElement(HTMLMediaElement mediaElement) {
    MediaElementAudioSourceOptions_mediaElement_Set(this.handle, mediaElement.handle);
  }
  auto mediaElement() {
    return HTMLMediaElement(JsHandle(MediaElementAudioSourceOptions_mediaElement_Get(this.handle)));
  }
}
struct MediaStreamAudioDestinationNode {
  nothrow:
  spasm.bindings.audio.AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNode(h);
  }
  auto stream() {
    return MediaStream(JsHandle(MediaStreamAudioDestinationNode_stream_Get(this._parent)));
  }
}
struct MediaStreamAudioSourceNode {
  nothrow:
  spasm.bindings.audio.AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNode(h);
  }
  auto mediaStream() {
    return MediaStream(JsHandle(MediaStreamAudioSourceNode_mediaStream_Get(this._parent)));
  }
}
struct MediaStreamAudioSourceOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  static auto create() {
    return MediaStreamAudioSourceOptions(JsHandle(spasm_add__object()));
  }
  void mediaStream(MediaStream mediaStream) {
    MediaStreamAudioSourceOptions_mediaStream_Set(this.handle, mediaStream.handle);
  }
  auto mediaStream() {
    return MediaStream(JsHandle(MediaStreamAudioSourceOptions_mediaStream_Get(this.handle)));
  }
}
struct MediaStreamTrackAudioSourceNode {
  nothrow:
  spasm.bindings.audio.AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNode(h);
  }
}
struct MediaStreamTrackAudioSourceOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  static auto create() {
    return MediaStreamTrackAudioSourceOptions(JsHandle(spasm_add__object()));
  }
  void mediaStreamTrack(MediaStreamTrack mediaStreamTrack) {
    MediaStreamTrackAudioSourceOptions_mediaStreamTrack_Set(this.handle, mediaStreamTrack.handle);
  }
  auto mediaStreamTrack() {
    return MediaStreamTrack(JsHandle(MediaStreamTrackAudioSourceOptions_mediaStreamTrack_Get(this.handle)));
  }
}
struct OfflineAudioCompletionEvent {
  nothrow:
  spasm.bindings.dom.Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .Event(h);
  }
  auto renderedBuffer() {
    return AudioBuffer(JsHandle(OfflineAudioCompletionEvent_renderedBuffer_Get(this._parent)));
  }
}
struct OfflineAudioCompletionEventInit {
  nothrow:
  spasm.bindings.dom.EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .EventInit(h);
  }
  static auto create() {
    return OfflineAudioCompletionEventInit(JsHandle(spasm_add__object()));
  }
  void renderedBuffer(AudioBuffer renderedBuffer) {
    OfflineAudioCompletionEventInit_renderedBuffer_Set(this._parent, renderedBuffer.handle);
  }
  auto renderedBuffer() {
    return AudioBuffer(JsHandle(OfflineAudioCompletionEventInit_renderedBuffer_Get(this._parent)));
  }
}
struct OfflineAudioContext {
  nothrow:
  spasm.bindings.audio.BaseAudioContext _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .BaseAudioContext(h);
  }
  auto startRendering() {
    return Promise!(AudioBuffer)(JsHandle(OfflineAudioContext_startRendering(this._parent)));
  }
  auto resume() {
    return Promise!(void)(JsHandle(OfflineAudioContext_resume(this._parent)));
  }
  auto suspend(double suspendTime) {
    return Promise!(void)(JsHandle(OfflineAudioContext_suspend(this._parent, suspendTime)));
  }
  auto length() {
    return OfflineAudioContext_length_Get(this._parent);
  }
  void oncomplete(EventHandler oncomplete) {
    OfflineAudioContext_oncomplete_Set(this._parent, oncomplete);
  }
  auto oncomplete() {
    return OfflineAudioContext_oncomplete_Get(this._parent);
  }
}
struct OfflineAudioContextOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  static auto create() {
    return OfflineAudioContextOptions(JsHandle(spasm_add__object()));
  }
  void numberOfChannels(uint numberOfChannels) {
    OfflineAudioContextOptions_numberOfChannels_Set(this.handle, numberOfChannels);
  }
  auto numberOfChannels() {
    return OfflineAudioContextOptions_numberOfChannels_Get(this.handle);
  }
  void length(uint length) {
    OfflineAudioContextOptions_length_Set(this.handle, length);
  }
  auto length() {
    return OfflineAudioContextOptions_length_Get(this.handle);
  }
  void sampleRate(float sampleRate) {
    OfflineAudioContextOptions_sampleRate_Set(this.handle, sampleRate);
  }
  auto sampleRate() {
    return OfflineAudioContextOptions_sampleRate_Get(this.handle);
  }
}
struct OscillatorNode {
  nothrow:
  spasm.bindings.audio.AudioScheduledSourceNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioScheduledSourceNode(h);
  }
  void type(OscillatorType type) {
    OscillatorNode_type_Set(this._parent, type);
  }
  auto type() {
    return OscillatorNode_type_Get(this._parent);
  }
  auto frequency() {
    return AudioParam(JsHandle(OscillatorNode_frequency_Get(this._parent)));
  }
  auto detune() {
    return AudioParam(JsHandle(OscillatorNode_detune_Get(this._parent)));
  }
  void setPeriodicWave(PeriodicWave periodicWave) {
    OscillatorNode_setPeriodicWave(this._parent, periodicWave.handle);
  }
}
struct OscillatorOptions {
  nothrow:
  spasm.bindings.audio.AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNodeOptions(h);
  }
  static auto create() {
    return OscillatorOptions(JsHandle(spasm_add__object()));
  }
  void type(OscillatorType type) {
    OscillatorOptions_type_Set(this._parent, type);
  }
  auto type() {
    return OscillatorOptions_type_Get(this._parent);
  }
  void frequency(float frequency) {
    OscillatorOptions_frequency_Set(this._parent, frequency);
  }
  auto frequency() {
    return OscillatorOptions_frequency_Get(this._parent);
  }
  void detune(float detune) {
    OscillatorOptions_detune_Set(this._parent, detune);
  }
  auto detune() {
    return OscillatorOptions_detune_Get(this._parent);
  }
  void periodicWave(PeriodicWave periodicWave) {
    OscillatorOptions_periodicWave_Set(this._parent, periodicWave.handle);
  }
  auto periodicWave() {
    return PeriodicWave(JsHandle(OscillatorOptions_periodicWave_Get(this._parent)));
  }
}
enum OscillatorType {
  sine,
  square,
  sawtooth,
  triangle,
  custom
}
enum OverSampleType {
  none,
  _2x,
  _4x
}
struct PannerNode {
  nothrow:
  spasm.bindings.audio.AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNode(h);
  }
  void panningModel(PanningModelType panningModel) {
    PannerNode_panningModel_Set(this._parent, panningModel);
  }
  auto panningModel() {
    return PannerNode_panningModel_Get(this._parent);
  }
  auto positionX() {
    return AudioParam(JsHandle(PannerNode_positionX_Get(this._parent)));
  }
  auto positionY() {
    return AudioParam(JsHandle(PannerNode_positionY_Get(this._parent)));
  }
  auto positionZ() {
    return AudioParam(JsHandle(PannerNode_positionZ_Get(this._parent)));
  }
  auto orientationX() {
    return AudioParam(JsHandle(PannerNode_orientationX_Get(this._parent)));
  }
  auto orientationY() {
    return AudioParam(JsHandle(PannerNode_orientationY_Get(this._parent)));
  }
  auto orientationZ() {
    return AudioParam(JsHandle(PannerNode_orientationZ_Get(this._parent)));
  }
  void distanceModel(DistanceModelType distanceModel) {
    PannerNode_distanceModel_Set(this._parent, distanceModel);
  }
  auto distanceModel() {
    return PannerNode_distanceModel_Get(this._parent);
  }
  void refDistance(double refDistance) {
    PannerNode_refDistance_Set(this._parent, refDistance);
  }
  auto refDistance() {
    return PannerNode_refDistance_Get(this._parent);
  }
  void maxDistance(double maxDistance) {
    PannerNode_maxDistance_Set(this._parent, maxDistance);
  }
  auto maxDistance() {
    return PannerNode_maxDistance_Get(this._parent);
  }
  void rolloffFactor(double rolloffFactor) {
    PannerNode_rolloffFactor_Set(this._parent, rolloffFactor);
  }
  auto rolloffFactor() {
    return PannerNode_rolloffFactor_Get(this._parent);
  }
  void coneInnerAngle(double coneInnerAngle) {
    PannerNode_coneInnerAngle_Set(this._parent, coneInnerAngle);
  }
  auto coneInnerAngle() {
    return PannerNode_coneInnerAngle_Get(this._parent);
  }
  void coneOuterAngle(double coneOuterAngle) {
    PannerNode_coneOuterAngle_Set(this._parent, coneOuterAngle);
  }
  auto coneOuterAngle() {
    return PannerNode_coneOuterAngle_Get(this._parent);
  }
  void coneOuterGain(double coneOuterGain) {
    PannerNode_coneOuterGain_Set(this._parent, coneOuterGain);
  }
  auto coneOuterGain() {
    return PannerNode_coneOuterGain_Get(this._parent);
  }
  void setPosition(float x, float y, float z) {
    PannerNode_setPosition(this._parent, x, y, z);
  }
  void setOrientation(float x, float y, float z) {
    PannerNode_setOrientation(this._parent, x, y, z);
  }
}
struct PannerOptions {
  nothrow:
  spasm.bindings.audio.AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNodeOptions(h);
  }
  static auto create() {
    return PannerOptions(JsHandle(spasm_add__object()));
  }
  void panningModel(PanningModelType panningModel) {
    PannerOptions_panningModel_Set(this._parent, panningModel);
  }
  auto panningModel() {
    return PannerOptions_panningModel_Get(this._parent);
  }
  void distanceModel(DistanceModelType distanceModel) {
    PannerOptions_distanceModel_Set(this._parent, distanceModel);
  }
  auto distanceModel() {
    return PannerOptions_distanceModel_Get(this._parent);
  }
  void positionX(float positionX) {
    PannerOptions_positionX_Set(this._parent, positionX);
  }
  auto positionX() {
    return PannerOptions_positionX_Get(this._parent);
  }
  void positionY(float positionY) {
    PannerOptions_positionY_Set(this._parent, positionY);
  }
  auto positionY() {
    return PannerOptions_positionY_Get(this._parent);
  }
  void positionZ(float positionZ) {
    PannerOptions_positionZ_Set(this._parent, positionZ);
  }
  auto positionZ() {
    return PannerOptions_positionZ_Get(this._parent);
  }
  void orientationX(float orientationX) {
    PannerOptions_orientationX_Set(this._parent, orientationX);
  }
  auto orientationX() {
    return PannerOptions_orientationX_Get(this._parent);
  }
  void orientationY(float orientationY) {
    PannerOptions_orientationY_Set(this._parent, orientationY);
  }
  auto orientationY() {
    return PannerOptions_orientationY_Get(this._parent);
  }
  void orientationZ(float orientationZ) {
    PannerOptions_orientationZ_Set(this._parent, orientationZ);
  }
  auto orientationZ() {
    return PannerOptions_orientationZ_Get(this._parent);
  }
  void refDistance(double refDistance) {
    PannerOptions_refDistance_Set(this._parent, refDistance);
  }
  auto refDistance() {
    return PannerOptions_refDistance_Get(this._parent);
  }
  void maxDistance(double maxDistance) {
    PannerOptions_maxDistance_Set(this._parent, maxDistance);
  }
  auto maxDistance() {
    return PannerOptions_maxDistance_Get(this._parent);
  }
  void rolloffFactor(double rolloffFactor) {
    PannerOptions_rolloffFactor_Set(this._parent, rolloffFactor);
  }
  auto rolloffFactor() {
    return PannerOptions_rolloffFactor_Get(this._parent);
  }
  void coneInnerAngle(double coneInnerAngle) {
    PannerOptions_coneInnerAngle_Set(this._parent, coneInnerAngle);
  }
  auto coneInnerAngle() {
    return PannerOptions_coneInnerAngle_Get(this._parent);
  }
  void coneOuterAngle(double coneOuterAngle) {
    PannerOptions_coneOuterAngle_Set(this._parent, coneOuterAngle);
  }
  auto coneOuterAngle() {
    return PannerOptions_coneOuterAngle_Get(this._parent);
  }
  void coneOuterGain(double coneOuterGain) {
    PannerOptions_coneOuterGain_Set(this._parent, coneOuterGain);
  }
  auto coneOuterGain() {
    return PannerOptions_coneOuterGain_Get(this._parent);
  }
}
enum PanningModelType {
  equalpower,
  HRTF
}
struct PeriodicWave {
  nothrow:
  JsHandle handle;
  alias handle this;
}
struct PeriodicWaveConstraints {
  nothrow:
  JsHandle handle;
  alias handle this;
  static auto create() {
    return PeriodicWaveConstraints(JsHandle(spasm_add__object()));
  }
  void disableNormalization(bool disableNormalization) {
    PeriodicWaveConstraints_disableNormalization_Set(this.handle, disableNormalization);
  }
  auto disableNormalization() {
    return PeriodicWaveConstraints_disableNormalization_Get(this.handle);
  }
}
struct PeriodicWaveOptions {
  nothrow:
  spasm.bindings.audio.PeriodicWaveConstraints _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .PeriodicWaveConstraints(h);
  }
  static auto create() {
    return PeriodicWaveOptions(JsHandle(spasm_add__object()));
  }
  void real_(Sequence!(float) real_) {
    PeriodicWaveOptions_real_Set(this._parent, real_.handle);
  }
  auto real_() {
    return Sequence!(float)(JsHandle(PeriodicWaveOptions_real_Get(this._parent)));
  }
  void imag(Sequence!(float) imag) {
    PeriodicWaveOptions_imag_Set(this._parent, imag.handle);
  }
  auto imag() {
    return Sequence!(float)(JsHandle(PeriodicWaveOptions_imag_Get(this._parent)));
  }
}
struct ScriptProcessorNode {
  nothrow:
  spasm.bindings.audio.AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNode(h);
  }
  void onaudioprocess(EventHandler onaudioprocess) {
    ScriptProcessorNode_onaudioprocess_Set(this._parent, onaudioprocess);
  }
  auto onaudioprocess() {
    return ScriptProcessorNode_onaudioprocess_Get(this._parent);
  }
  auto bufferSize() {
    return ScriptProcessorNode_bufferSize_Get(this._parent);
  }
}
struct StereoPannerNode {
  nothrow:
  spasm.bindings.audio.AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNode(h);
  }
  auto pan() {
    return AudioParam(JsHandle(StereoPannerNode_pan_Get(this._parent)));
  }
}
struct StereoPannerOptions {
  nothrow:
  spasm.bindings.audio.AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNodeOptions(h);
  }
  static auto create() {
    return StereoPannerOptions(JsHandle(spasm_add__object()));
  }
  void pan(float pan) {
    StereoPannerOptions_pan_Set(this._parent, pan);
  }
  auto pan() {
    return StereoPannerOptions_pan_Get(this._parent);
  }
}
struct WaveShaperNode {
  nothrow:
  spasm.bindings.audio.AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNode(h);
  }
  void curve(Optional!(Float32Array) curve) {
    WaveShaperNode_curve_Set(this._parent, !curve.empty, curve.front.handle);
  }
  auto curve() {
    return WaveShaperNode_curve_Get(this._parent);
  }
  void oversample(OverSampleType oversample) {
    WaveShaperNode_oversample_Set(this._parent, oversample);
  }
  auto oversample() {
    return WaveShaperNode_oversample_Get(this._parent);
  }
}
struct WaveShaperOptions {
  nothrow:
  spasm.bindings.audio.AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .AudioNodeOptions(h);
  }
  static auto create() {
    return WaveShaperOptions(JsHandle(spasm_add__object()));
  }
  void curve(Sequence!(float) curve) {
    WaveShaperOptions_curve_Set(this._parent, curve.handle);
  }
  auto curve() {
    return Sequence!(float)(JsHandle(WaveShaperOptions_curve_Get(this._parent)));
  }
  void oversample(OverSampleType oversample) {
    WaveShaperOptions_oversample_Set(this._parent, oversample);
  }
  auto oversample() {
    return WaveShaperOptions_oversample_Get(this._parent);
  }
}


extern (C) void AnalyserNode_getFloatFrequencyData(Handle, Handle);
extern (C) void AnalyserNode_getByteFrequencyData(Handle, Handle);
extern (C) void AnalyserNode_getFloatTimeDomainData(Handle, Handle);
extern (C) void AnalyserNode_getByteTimeDomainData(Handle, Handle);
extern (C) void AnalyserNode_fftSize_Set(Handle, uint);
extern (C) uint AnalyserNode_fftSize_Get(Handle);
extern (C) uint AnalyserNode_frequencyBinCount_Get(Handle);
extern (C) void AnalyserNode_minDecibels_Set(Handle, double);
extern (C) double AnalyserNode_minDecibels_Get(Handle);
extern (C) void AnalyserNode_maxDecibels_Set(Handle, double);
extern (C) double AnalyserNode_maxDecibels_Get(Handle);
extern (C) void AnalyserNode_smoothingTimeConstant_Set(Handle, double);
extern (C) double AnalyserNode_smoothingTimeConstant_Get(Handle);
extern (C) void AnalyserOptions_fftSize_Set(Handle, uint);
extern (C) uint AnalyserOptions_fftSize_Get(Handle);
extern (C) void AnalyserOptions_maxDecibels_Set(Handle, double);
extern (C) double AnalyserOptions_maxDecibels_Get(Handle);
extern (C) void AnalyserOptions_minDecibels_Set(Handle, double);
extern (C) double AnalyserOptions_minDecibels_Get(Handle);
extern (C) void AnalyserOptions_smoothingTimeConstant_Set(Handle, double);
extern (C) double AnalyserOptions_smoothingTimeConstant_Get(Handle);
extern (C) float AudioBuffer_sampleRate_Get(Handle);
extern (C) uint AudioBuffer_length_Get(Handle);
extern (C) double AudioBuffer_duration_Get(Handle);
extern (C) uint AudioBuffer_numberOfChannels_Get(Handle);
extern (C) Handle AudioBuffer_getChannelData(Handle, uint);
extern (C) void AudioBuffer_copyFromChannel(Handle, Handle, uint, uint);
extern (C) void AudioBuffer_copyFromChannel_0(Handle, Handle, uint);
extern (C) void AudioBuffer_copyToChannel(Handle, Handle, uint, uint);
extern (C) void AudioBuffer_copyToChannel_0(Handle, Handle, uint);
extern (C) void AudioBufferOptions_numberOfChannels_Set(Handle, uint);
extern (C) uint AudioBufferOptions_numberOfChannels_Get(Handle);
extern (C) void AudioBufferOptions_length_Set(Handle, uint);
extern (C) uint AudioBufferOptions_length_Get(Handle);
extern (C) void AudioBufferOptions_sampleRate_Set(Handle, float);
extern (C) float AudioBufferOptions_sampleRate_Get(Handle);
extern (C) void AudioBufferSourceNode_buffer_Set(Handle, bool, Handle);
extern (C) Optional!(AudioBuffer) AudioBufferSourceNode_buffer_Get(Handle);
extern (C) Handle AudioBufferSourceNode_playbackRate_Get(Handle);
extern (C) Handle AudioBufferSourceNode_detune_Get(Handle);
extern (C) void AudioBufferSourceNode_loop_Set(Handle, bool);
extern (C) bool AudioBufferSourceNode_loop_Get(Handle);
extern (C) void AudioBufferSourceNode_loopStart_Set(Handle, double);
extern (C) double AudioBufferSourceNode_loopStart_Get(Handle);
extern (C) void AudioBufferSourceNode_loopEnd_Set(Handle, double);
extern (C) double AudioBufferSourceNode_loopEnd_Get(Handle);
extern (C) void AudioBufferSourceNode_start(Handle, double, double, double);
extern (C) void AudioBufferSourceNode_start_0(Handle, double, double);
extern (C) void AudioBufferSourceNode_start_1(Handle, double);
extern (C) void AudioBufferSourceNode_start_2(Handle);
extern (C) void AudioBufferSourceOptions_buffer_Set(Handle, bool, Handle);
extern (C) Optional!(AudioBuffer) AudioBufferSourceOptions_buffer_Get(Handle);
extern (C) void AudioBufferSourceOptions_detune_Set(Handle, float);
extern (C) float AudioBufferSourceOptions_detune_Get(Handle);
extern (C) void AudioBufferSourceOptions_loop_Set(Handle, bool);
extern (C) bool AudioBufferSourceOptions_loop_Get(Handle);
extern (C) void AudioBufferSourceOptions_loopEnd_Set(Handle, double);
extern (C) double AudioBufferSourceOptions_loopEnd_Get(Handle);
extern (C) void AudioBufferSourceOptions_loopStart_Set(Handle, double);
extern (C) double AudioBufferSourceOptions_loopStart_Get(Handle);
extern (C) void AudioBufferSourceOptions_playbackRate_Set(Handle, float);
extern (C) float AudioBufferSourceOptions_playbackRate_Get(Handle);
extern (C) double AudioContext_baseLatency_Get(Handle);
extern (C) double AudioContext_outputLatency_Get(Handle);
extern (C) Handle AudioContext_getOutputTimestamp(Handle);
extern (C) Handle AudioContext_resume(Handle);
extern (C) Handle AudioContext_suspend(Handle);
extern (C) Handle AudioContext_close(Handle);
extern (C) Handle AudioContext_createMediaElementSource(Handle, Handle);
extern (C) Handle AudioContext_createMediaStreamSource(Handle, Handle);
extern (C) Handle AudioContext_createMediaStreamTrackSource(Handle, Handle);
extern (C) Handle AudioContext_createMediaStreamDestination(Handle);
extern (C) void AudioContextOptions_latencyHint_Set(Handle, SumType!(AudioContextLatencyCategory, double));
extern (C) SumType!(AudioContextLatencyCategory, double) AudioContextOptions_latencyHint_Get(Handle);
extern (C) void AudioContextOptions_sampleRate_Set(Handle, float);
extern (C) float AudioContextOptions_sampleRate_Get(Handle);
extern (C) uint AudioDestinationNode_maxChannelCount_Get(Handle);
extern (C) Handle AudioListener_positionX_Get(Handle);
extern (C) Handle AudioListener_positionY_Get(Handle);
extern (C) Handle AudioListener_positionZ_Get(Handle);
extern (C) Handle AudioListener_forwardX_Get(Handle);
extern (C) Handle AudioListener_forwardY_Get(Handle);
extern (C) Handle AudioListener_forwardZ_Get(Handle);
extern (C) Handle AudioListener_upX_Get(Handle);
extern (C) Handle AudioListener_upY_Get(Handle);
extern (C) Handle AudioListener_upZ_Get(Handle);
extern (C) void AudioListener_setPosition(Handle, float, float, float);
extern (C) void AudioListener_setOrientation(Handle, float, float, float, float, float, float);
extern (C) Handle AudioNode_connect__Handle_uint_uint(Handle, Handle, uint, uint);
extern (C) Handle AudioNode_connect_0_Handle_uint(Handle, Handle, uint);
extern (C) Handle AudioNode_connect_1(Handle, Handle);
extern (C) void AudioNode_connect__Handle_uint(Handle, Handle, uint);
extern (C) void AudioNode_connect_0_Handle(Handle, Handle);
extern (C) void AudioNode_disconnect__(Handle);
extern (C) void AudioNode_disconnect__uint(Handle, uint);
extern (C) void AudioNode_disconnect__Handle(Handle, Handle);
extern (C) void AudioNode_disconnect__Handle_uint(Handle, Handle, uint);
extern (C) void AudioNode_disconnect__Handle_uint_uint(Handle, Handle, uint, uint);
extern (C) Handle AudioNode_context_Get(Handle);
extern (C) uint AudioNode_numberOfInputs_Get(Handle);
extern (C) uint AudioNode_numberOfOutputs_Get(Handle);
extern (C) void AudioNode_channelCount_Set(Handle, uint);
extern (C) uint AudioNode_channelCount_Get(Handle);
extern (C) void AudioNode_channelCountMode_Set(Handle, ChannelCountMode);
extern (C) ChannelCountMode AudioNode_channelCountMode_Get(Handle);
extern (C) void AudioNode_channelInterpretation_Set(Handle, ChannelInterpretation);
extern (C) ChannelInterpretation AudioNode_channelInterpretation_Get(Handle);
extern (C) void AudioNodeOptions_channelCount_Set(Handle, uint);
extern (C) uint AudioNodeOptions_channelCount_Get(Handle);
extern (C) void AudioNodeOptions_channelCountMode_Set(Handle, ChannelCountMode);
extern (C) ChannelCountMode AudioNodeOptions_channelCountMode_Get(Handle);
extern (C) void AudioNodeOptions_channelInterpretation_Set(Handle, ChannelInterpretation);
extern (C) ChannelInterpretation AudioNodeOptions_channelInterpretation_Get(Handle);
extern (C) void AudioParam_value_Set(Handle, float);
extern (C) float AudioParam_value_Get(Handle);
extern (C) void AudioParam_automationRate_Set(Handle, AutomationRate);
extern (C) AutomationRate AudioParam_automationRate_Get(Handle);
extern (C) float AudioParam_defaultValue_Get(Handle);
extern (C) float AudioParam_minValue_Get(Handle);
extern (C) float AudioParam_maxValue_Get(Handle);
extern (C) Handle AudioParam_setValueAtTime(Handle, float, double);
extern (C) Handle AudioParam_linearRampToValueAtTime(Handle, float, double);
extern (C) Handle AudioParam_exponentialRampToValueAtTime(Handle, float, double);
extern (C) Handle AudioParam_setTargetAtTime(Handle, float, double, float);
extern (C) Handle AudioParam_setValueCurveAtTime(Handle, Handle, double, double);
extern (C) Handle AudioParam_cancelScheduledValues(Handle, double);
extern (C) Handle AudioParam_cancelAndHoldAtTime(Handle, double);
extern (C) void AudioParamDescriptor_name_Set(Handle, string);
extern (C) string AudioParamDescriptor_name_Get(Handle);
extern (C) void AudioParamDescriptor_defaultValue_Set(Handle, float);
extern (C) float AudioParamDescriptor_defaultValue_Get(Handle);
extern (C) void AudioParamDescriptor_minValue_Set(Handle, float);
extern (C) float AudioParamDescriptor_minValue_Get(Handle);
extern (C) void AudioParamDescriptor_maxValue_Set(Handle, float);
extern (C) float AudioParamDescriptor_maxValue_Get(Handle);
extern (C) void AudioParamDescriptor_automationRate_Set(Handle, AutomationRate);
extern (C) AutomationRate AudioParamDescriptor_automationRate_Get(Handle);
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
extern (C) double AudioProcessingEvent_playbackTime_Get(Handle);
extern (C) Handle AudioProcessingEvent_inputBuffer_Get(Handle);
extern (C) Handle AudioProcessingEvent_outputBuffer_Get(Handle);
extern (C) void AudioProcessingEventInit_playbackTime_Set(Handle, double);
extern (C) double AudioProcessingEventInit_playbackTime_Get(Handle);
extern (C) void AudioProcessingEventInit_inputBuffer_Set(Handle, Handle);
extern (C) Handle AudioProcessingEventInit_inputBuffer_Get(Handle);
extern (C) void AudioProcessingEventInit_outputBuffer_Set(Handle, Handle);
extern (C) Handle AudioProcessingEventInit_outputBuffer_Get(Handle);
extern (C) void AudioScheduledSourceNode_onended_Set(Handle, EventHandler);
extern (C) EventHandler AudioScheduledSourceNode_onended_Get(Handle);
extern (C) void AudioScheduledSourceNode_start(Handle, double);
extern (C) void AudioScheduledSourceNode_start_0(Handle);
extern (C) void AudioScheduledSourceNode_stop(Handle, double);
extern (C) void AudioScheduledSourceNode_stop_0(Handle);
extern (C) void AudioTimestamp_contextTime_Set(Handle, double);
extern (C) double AudioTimestamp_contextTime_Get(Handle);
extern (C) void AudioTimestamp_performanceTime_Set(Handle, double);
extern (C) double AudioTimestamp_performanceTime_Get(Handle);
extern (C) Handle AudioWorklet_Event(Handle, string, Handle);
extern (C) Handle AudioWorklet_EventTarget(Handle);
extern (C) Handle AudioWorklet_MessageEvent(Handle, string, Handle);
extern (C) void AudioWorkletGlobalScope_registerProcessor(Handle, string, VoidFunction);
extern (C) ulong AudioWorkletGlobalScope_currentFrame_Get(Handle);
extern (C) double AudioWorkletGlobalScope_currentTime_Get(Handle);
extern (C) float AudioWorkletGlobalScope_sampleRate_Get(Handle);
extern (C) Handle AudioWorkletNode_parameters_Get(Handle);
extern (C) Handle AudioWorkletNode_port_Get(Handle);
extern (C) void AudioWorkletNode_onprocessorerror_Set(Handle, EventHandler);
extern (C) EventHandler AudioWorkletNode_onprocessorerror_Get(Handle);
extern (C) void AudioWorkletNodeOptions_numberOfInputs_Set(Handle, uint);
extern (C) uint AudioWorkletNodeOptions_numberOfInputs_Get(Handle);
extern (C) void AudioWorkletNodeOptions_numberOfOutputs_Set(Handle, uint);
extern (C) uint AudioWorkletNodeOptions_numberOfOutputs_Get(Handle);
extern (C) void AudioWorkletNodeOptions_outputChannelCount_Set(Handle, Handle);
extern (C) Handle AudioWorkletNodeOptions_outputChannelCount_Get(Handle);
extern (C) void AudioWorkletNodeOptions_parameterData_Set(Handle, Handle);
extern (C) Handle AudioWorkletNodeOptions_parameterData_Get(Handle);
extern (C) void AudioWorkletNodeOptions_processorOptions_Set(Handle, bool, Handle);
extern (C) Optional!(JsObject) AudioWorkletNodeOptions_processorOptions_Get(Handle);
extern (C) Handle AudioWorkletProcessor_port_Get(Handle);
extern (C) Handle BaseAudioContext_destination_Get(Handle);
extern (C) float BaseAudioContext_sampleRate_Get(Handle);
extern (C) double BaseAudioContext_currentTime_Get(Handle);
extern (C) Handle BaseAudioContext_listener_Get(Handle);
extern (C) AudioContextState BaseAudioContext_state_Get(Handle);
extern (C) Handle BaseAudioContext_audioWorklet_Get(Handle);
extern (C) void BaseAudioContext_onstatechange_Set(Handle, EventHandler);
extern (C) EventHandler BaseAudioContext_onstatechange_Get(Handle);
extern (C) Handle BaseAudioContext_createAnalyser(Handle);
extern (C) Handle BaseAudioContext_createBiquadFilter(Handle);
extern (C) Handle BaseAudioContext_createBuffer(Handle, uint, uint, float);
extern (C) Handle BaseAudioContext_createBufferSource(Handle);
extern (C) Handle BaseAudioContext_createChannelMerger(Handle, uint);
extern (C) Handle BaseAudioContext_createChannelMerger_0(Handle);
extern (C) Handle BaseAudioContext_createChannelSplitter(Handle, uint);
extern (C) Handle BaseAudioContext_createChannelSplitter_0(Handle);
extern (C) Handle BaseAudioContext_createConstantSource(Handle);
extern (C) Handle BaseAudioContext_createConvolver(Handle);
extern (C) Handle BaseAudioContext_createDelay(Handle, double);
extern (C) Handle BaseAudioContext_createDelay_0(Handle);
extern (C) Handle BaseAudioContext_createDynamicsCompressor(Handle);
extern (C) Handle BaseAudioContext_createGain(Handle);
extern (C) Handle BaseAudioContext_createIIRFilter(Handle, Handle, Handle);
extern (C) Handle BaseAudioContext_createOscillator(Handle);
extern (C) Handle BaseAudioContext_createPanner(Handle);
extern (C) Handle BaseAudioContext_createPeriodicWave(Handle, Handle, Handle, Handle);
extern (C) Handle BaseAudioContext_createPeriodicWave_0(Handle, Handle, Handle);
extern (C) Handle BaseAudioContext_createScriptProcessor(Handle, uint, uint, uint);
extern (C) Handle BaseAudioContext_createScriptProcessor_0(Handle, uint, uint);
extern (C) Handle BaseAudioContext_createScriptProcessor_1(Handle, uint);
extern (C) Handle BaseAudioContext_createScriptProcessor_2(Handle);
extern (C) Handle BaseAudioContext_createStereoPanner(Handle);
extern (C) Handle BaseAudioContext_createWaveShaper(Handle);
extern (C) Handle BaseAudioContext_decodeAudioData(Handle, Handle, bool, DecodeSuccessCallback, bool, DecodeErrorCallback);
extern (C) Handle BaseAudioContext_decodeAudioData_0(Handle, Handle, bool, DecodeSuccessCallback);
extern (C) Handle BaseAudioContext_decodeAudioData_1(Handle, Handle);
extern (C) void BiquadFilterNode_type_Set(Handle, BiquadFilterType);
extern (C) BiquadFilterType BiquadFilterNode_type_Get(Handle);
extern (C) Handle BiquadFilterNode_frequency_Get(Handle);
extern (C) Handle BiquadFilterNode_detune_Get(Handle);
extern (C) Handle BiquadFilterNode_Q_Get(Handle);
extern (C) Handle BiquadFilterNode_gain_Get(Handle);
extern (C) void BiquadFilterNode_getFrequencyResponse(Handle, Handle, Handle, Handle);
extern (C) void BiquadFilterOptions_type_Set(Handle, BiquadFilterType);
extern (C) BiquadFilterType BiquadFilterOptions_type_Get(Handle);
extern (C) void BiquadFilterOptions_Q_Set(Handle, float);
extern (C) float BiquadFilterOptions_Q_Get(Handle);
extern (C) void BiquadFilterOptions_detune_Set(Handle, float);
extern (C) float BiquadFilterOptions_detune_Get(Handle);
extern (C) void BiquadFilterOptions_frequency_Set(Handle, float);
extern (C) float BiquadFilterOptions_frequency_Get(Handle);
extern (C) void BiquadFilterOptions_gain_Set(Handle, float);
extern (C) float BiquadFilterOptions_gain_Get(Handle);
extern (C) void ChannelMergerOptions_numberOfInputs_Set(Handle, uint);
extern (C) uint ChannelMergerOptions_numberOfInputs_Get(Handle);
extern (C) void ChannelSplitterOptions_numberOfOutputs_Set(Handle, uint);
extern (C) uint ChannelSplitterOptions_numberOfOutputs_Get(Handle);
extern (C) Handle ConstantSourceNode_offset_Get(Handle);
extern (C) void ConstantSourceOptions_offset_Set(Handle, float);
extern (C) float ConstantSourceOptions_offset_Get(Handle);
extern (C) void ConvolverNode_buffer_Set(Handle, bool, Handle);
extern (C) Optional!(AudioBuffer) ConvolverNode_buffer_Get(Handle);
extern (C) void ConvolverNode_normalize_Set(Handle, bool);
extern (C) bool ConvolverNode_normalize_Get(Handle);
extern (C) void ConvolverOptions_buffer_Set(Handle, bool, Handle);
extern (C) Optional!(AudioBuffer) ConvolverOptions_buffer_Get(Handle);
extern (C) void ConvolverOptions_disableNormalization_Set(Handle, bool);
extern (C) bool ConvolverOptions_disableNormalization_Get(Handle);
extern (C) Handle DelayNode_delayTime_Get(Handle);
extern (C) void DelayOptions_maxDelayTime_Set(Handle, double);
extern (C) double DelayOptions_maxDelayTime_Get(Handle);
extern (C) void DelayOptions_delayTime_Set(Handle, double);
extern (C) double DelayOptions_delayTime_Get(Handle);
extern (C) Handle DynamicsCompressorNode_threshold_Get(Handle);
extern (C) Handle DynamicsCompressorNode_knee_Get(Handle);
extern (C) Handle DynamicsCompressorNode_ratio_Get(Handle);
extern (C) float DynamicsCompressorNode_reduction_Get(Handle);
extern (C) Handle DynamicsCompressorNode_attack_Get(Handle);
extern (C) Handle DynamicsCompressorNode_release_Get(Handle);
extern (C) void DynamicsCompressorOptions_attack_Set(Handle, float);
extern (C) float DynamicsCompressorOptions_attack_Get(Handle);
extern (C) void DynamicsCompressorOptions_knee_Set(Handle, float);
extern (C) float DynamicsCompressorOptions_knee_Get(Handle);
extern (C) void DynamicsCompressorOptions_ratio_Set(Handle, float);
extern (C) float DynamicsCompressorOptions_ratio_Get(Handle);
extern (C) void DynamicsCompressorOptions_release_Set(Handle, float);
extern (C) float DynamicsCompressorOptions_release_Get(Handle);
extern (C) void DynamicsCompressorOptions_threshold_Set(Handle, float);
extern (C) float DynamicsCompressorOptions_threshold_Get(Handle);
extern (C) Handle GainNode_gain_Get(Handle);
extern (C) void GainOptions_gain_Set(Handle, float);
extern (C) float GainOptions_gain_Get(Handle);
extern (C) void IIRFilterNode_getFrequencyResponse(Handle, Handle, Handle, Handle);
extern (C) void IIRFilterOptions_feedforward_Set(Handle, Handle);
extern (C) Handle IIRFilterOptions_feedforward_Get(Handle);
extern (C) void IIRFilterOptions_feedback_Set(Handle, Handle);
extern (C) Handle IIRFilterOptions_feedback_Get(Handle);
extern (C) Handle MediaElementAudioSourceNode_mediaElement_Get(Handle);
extern (C) void MediaElementAudioSourceOptions_mediaElement_Set(Handle, Handle);
extern (C) Handle MediaElementAudioSourceOptions_mediaElement_Get(Handle);
extern (C) Handle MediaStreamAudioDestinationNode_stream_Get(Handle);
extern (C) Handle MediaStreamAudioSourceNode_mediaStream_Get(Handle);
extern (C) void MediaStreamAudioSourceOptions_mediaStream_Set(Handle, Handle);
extern (C) Handle MediaStreamAudioSourceOptions_mediaStream_Get(Handle);
extern (C) void MediaStreamTrackAudioSourceOptions_mediaStreamTrack_Set(Handle, Handle);
extern (C) Handle MediaStreamTrackAudioSourceOptions_mediaStreamTrack_Get(Handle);
extern (C) Handle OfflineAudioCompletionEvent_renderedBuffer_Get(Handle);
extern (C) void OfflineAudioCompletionEventInit_renderedBuffer_Set(Handle, Handle);
extern (C) Handle OfflineAudioCompletionEventInit_renderedBuffer_Get(Handle);
extern (C) Handle OfflineAudioContext_startRendering(Handle);
extern (C) Handle OfflineAudioContext_resume(Handle);
extern (C) Handle OfflineAudioContext_suspend(Handle, double);
extern (C) uint OfflineAudioContext_length_Get(Handle);
extern (C) void OfflineAudioContext_oncomplete_Set(Handle, EventHandler);
extern (C) EventHandler OfflineAudioContext_oncomplete_Get(Handle);
extern (C) void OfflineAudioContextOptions_numberOfChannels_Set(Handle, uint);
extern (C) uint OfflineAudioContextOptions_numberOfChannels_Get(Handle);
extern (C) void OfflineAudioContextOptions_length_Set(Handle, uint);
extern (C) uint OfflineAudioContextOptions_length_Get(Handle);
extern (C) void OfflineAudioContextOptions_sampleRate_Set(Handle, float);
extern (C) float OfflineAudioContextOptions_sampleRate_Get(Handle);
extern (C) void OscillatorNode_type_Set(Handle, OscillatorType);
extern (C) OscillatorType OscillatorNode_type_Get(Handle);
extern (C) Handle OscillatorNode_frequency_Get(Handle);
extern (C) Handle OscillatorNode_detune_Get(Handle);
extern (C) void OscillatorNode_setPeriodicWave(Handle, Handle);
extern (C) void OscillatorOptions_type_Set(Handle, OscillatorType);
extern (C) OscillatorType OscillatorOptions_type_Get(Handle);
extern (C) void OscillatorOptions_frequency_Set(Handle, float);
extern (C) float OscillatorOptions_frequency_Get(Handle);
extern (C) void OscillatorOptions_detune_Set(Handle, float);
extern (C) float OscillatorOptions_detune_Get(Handle);
extern (C) void OscillatorOptions_periodicWave_Set(Handle, Handle);
extern (C) Handle OscillatorOptions_periodicWave_Get(Handle);
extern (C) void PannerNode_panningModel_Set(Handle, PanningModelType);
extern (C) PanningModelType PannerNode_panningModel_Get(Handle);
extern (C) Handle PannerNode_positionX_Get(Handle);
extern (C) Handle PannerNode_positionY_Get(Handle);
extern (C) Handle PannerNode_positionZ_Get(Handle);
extern (C) Handle PannerNode_orientationX_Get(Handle);
extern (C) Handle PannerNode_orientationY_Get(Handle);
extern (C) Handle PannerNode_orientationZ_Get(Handle);
extern (C) void PannerNode_distanceModel_Set(Handle, DistanceModelType);
extern (C) DistanceModelType PannerNode_distanceModel_Get(Handle);
extern (C) void PannerNode_refDistance_Set(Handle, double);
extern (C) double PannerNode_refDistance_Get(Handle);
extern (C) void PannerNode_maxDistance_Set(Handle, double);
extern (C) double PannerNode_maxDistance_Get(Handle);
extern (C) void PannerNode_rolloffFactor_Set(Handle, double);
extern (C) double PannerNode_rolloffFactor_Get(Handle);
extern (C) void PannerNode_coneInnerAngle_Set(Handle, double);
extern (C) double PannerNode_coneInnerAngle_Get(Handle);
extern (C) void PannerNode_coneOuterAngle_Set(Handle, double);
extern (C) double PannerNode_coneOuterAngle_Get(Handle);
extern (C) void PannerNode_coneOuterGain_Set(Handle, double);
extern (C) double PannerNode_coneOuterGain_Get(Handle);
extern (C) void PannerNode_setPosition(Handle, float, float, float);
extern (C) void PannerNode_setOrientation(Handle, float, float, float);
extern (C) void PannerOptions_panningModel_Set(Handle, PanningModelType);
extern (C) PanningModelType PannerOptions_panningModel_Get(Handle);
extern (C) void PannerOptions_distanceModel_Set(Handle, DistanceModelType);
extern (C) DistanceModelType PannerOptions_distanceModel_Get(Handle);
extern (C) void PannerOptions_positionX_Set(Handle, float);
extern (C) float PannerOptions_positionX_Get(Handle);
extern (C) void PannerOptions_positionY_Set(Handle, float);
extern (C) float PannerOptions_positionY_Get(Handle);
extern (C) void PannerOptions_positionZ_Set(Handle, float);
extern (C) float PannerOptions_positionZ_Get(Handle);
extern (C) void PannerOptions_orientationX_Set(Handle, float);
extern (C) float PannerOptions_orientationX_Get(Handle);
extern (C) void PannerOptions_orientationY_Set(Handle, float);
extern (C) float PannerOptions_orientationY_Get(Handle);
extern (C) void PannerOptions_orientationZ_Set(Handle, float);
extern (C) float PannerOptions_orientationZ_Get(Handle);
extern (C) void PannerOptions_refDistance_Set(Handle, double);
extern (C) double PannerOptions_refDistance_Get(Handle);
extern (C) void PannerOptions_maxDistance_Set(Handle, double);
extern (C) double PannerOptions_maxDistance_Get(Handle);
extern (C) void PannerOptions_rolloffFactor_Set(Handle, double);
extern (C) double PannerOptions_rolloffFactor_Get(Handle);
extern (C) void PannerOptions_coneInnerAngle_Set(Handle, double);
extern (C) double PannerOptions_coneInnerAngle_Get(Handle);
extern (C) void PannerOptions_coneOuterAngle_Set(Handle, double);
extern (C) double PannerOptions_coneOuterAngle_Get(Handle);
extern (C) void PannerOptions_coneOuterGain_Set(Handle, double);
extern (C) double PannerOptions_coneOuterGain_Get(Handle);
extern (C) void PeriodicWaveConstraints_disableNormalization_Set(Handle, bool);
extern (C) bool PeriodicWaveConstraints_disableNormalization_Get(Handle);
extern (C) void PeriodicWaveOptions_real_Set(Handle, Handle);
extern (C) Handle PeriodicWaveOptions_real_Get(Handle);
extern (C) void PeriodicWaveOptions_imag_Set(Handle, Handle);
extern (C) Handle PeriodicWaveOptions_imag_Get(Handle);
extern (C) void ScriptProcessorNode_onaudioprocess_Set(Handle, EventHandler);
extern (C) EventHandler ScriptProcessorNode_onaudioprocess_Get(Handle);
extern (C) int ScriptProcessorNode_bufferSize_Get(Handle);
extern (C) Handle StereoPannerNode_pan_Get(Handle);
extern (C) void StereoPannerOptions_pan_Set(Handle, float);
extern (C) float StereoPannerOptions_pan_Get(Handle);
extern (C) void WaveShaperNode_curve_Set(Handle, bool, Handle);
extern (C) Optional!(Float32Array) WaveShaperNode_curve_Get(Handle);
extern (C) void WaveShaperNode_oversample_Set(Handle, OverSampleType);
extern (C) OverSampleType WaveShaperNode_oversample_Get(Handle);
extern (C) void WaveShaperOptions_curve_Set(Handle, Handle);
extern (C) Handle WaveShaperOptions_curve_Get(Handle);
extern (C) void WaveShaperOptions_oversample_Set(Handle, OverSampleType);
extern (C) OverSampleType WaveShaperOptions_oversample_Get(Handle);