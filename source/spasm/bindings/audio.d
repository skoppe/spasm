module spasm.bindings.audio;

import spasm.types;
import spasm.bindings.common;
import spasm.bindings.dom;
import spasm.bindings.domhighrestimestamp;
import spasm.bindings.html;
import spasm.bindings.mediastream;
import spasm.bindings.worklet;

struct AnalyserNode {
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
  auto getFloatFrequencyData(Float32Array array) {
    AnalyserNode_getFloatFrequencyData(this._parent, array.handle);
  }
  auto getByteFrequencyData(Uint8Array array) {
    AnalyserNode_getByteFrequencyData(this._parent, array.handle);
  }
  auto getFloatTimeDomainData(Float32Array array) {
    AnalyserNode_getFloatTimeDomainData(this._parent, array.handle);
  }
  auto getByteTimeDomainData(Uint8Array array) {
    AnalyserNode_getByteTimeDomainData(this._parent, array.handle);
  }
  auto fftSize(uint fftSize) {
    AnalyserNode_fftSize_Set(this._parent, fftSize);
  }
  auto fftSize() {
    auto result = AnalyserNode_fftSize_Get(this._parent);
    return result;
  }
  auto frequencyBinCount() {
    auto result = AnalyserNode_frequencyBinCount_Get(this._parent);
    return result;
  }
  auto minDecibels(double minDecibels) {
    AnalyserNode_minDecibels_Set(this._parent, minDecibels);
  }
  auto minDecibels() {
    auto result = AnalyserNode_minDecibels_Get(this._parent);
    return result;
  }
  auto maxDecibels(double maxDecibels) {
    AnalyserNode_maxDecibels_Set(this._parent, maxDecibels);
  }
  auto maxDecibels() {
    auto result = AnalyserNode_maxDecibels_Get(this._parent);
    return result;
  }
  auto smoothingTimeConstant(double smoothingTimeConstant) {
    AnalyserNode_smoothingTimeConstant_Set(this._parent, smoothingTimeConstant);
  }
  auto smoothingTimeConstant() {
    auto result = AnalyserNode_smoothingTimeConstant_Get(this._parent);
    return result;
  }
}
struct AnalyserOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNodeOptions(h);
  }
  static auto create() {
    return AnalyserOptions(JsHandle(spasm_add__object()));
  }
  auto fftSize(uint fftSize) {
    AnalyserOptions_fftSize_Set(this._parent, fftSize);
  }
  auto fftSize() {
    auto result = AnalyserOptions_fftSize_Get(this._parent);
    return result;
  }
  auto maxDecibels(double maxDecibels) {
    AnalyserOptions_maxDecibels_Set(this._parent, maxDecibels);
  }
  auto maxDecibels() {
    auto result = AnalyserOptions_maxDecibels_Get(this._parent);
    return result;
  }
  auto minDecibels(double minDecibels) {
    AnalyserOptions_minDecibels_Set(this._parent, minDecibels);
  }
  auto minDecibels() {
    auto result = AnalyserOptions_minDecibels_Get(this._parent);
    return result;
  }
  auto smoothingTimeConstant(double smoothingTimeConstant) {
    AnalyserOptions_smoothingTimeConstant_Set(this._parent, smoothingTimeConstant);
  }
  auto smoothingTimeConstant() {
    auto result = AnalyserOptions_smoothingTimeConstant_Get(this._parent);
    return result;
  }
}
struct AudioBuffer {
  JsHandle handle;
  alias handle this;
  auto sampleRate() {
    auto result = AudioBuffer_sampleRate_Get(this.handle);
    return result;
  }
  auto length() {
    auto result = AudioBuffer_length_Get(this.handle);
    return result;
  }
  auto duration() {
    auto result = AudioBuffer_duration_Get(this.handle);
    return result;
  }
  auto numberOfChannels() {
    auto result = AudioBuffer_numberOfChannels_Get(this.handle);
    return result;
  }
  auto getChannelData(uint channel) {
    auto result = Float32Array(JsHandle(AudioBuffer_getChannelData(this.handle, channel)));
    return result;
  }
  auto copyFromChannel(Float32Array destination, uint channelNumber, uint startInChannel /* = 0 */) {
    AudioBuffer_copyFromChannel(this.handle, destination.handle, channelNumber, startInChannel);
  }
  auto copyToChannel(Float32Array source, uint channelNumber, uint startInChannel /* = 0 */) {
    AudioBuffer_copyToChannel(this.handle, source.handle, channelNumber, startInChannel);
  }
}
struct AudioBufferOptions {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return AudioBufferOptions(JsHandle(spasm_add__object()));
  }
  auto numberOfChannels(uint numberOfChannels) {
    AudioBufferOptions_numberOfChannels_Set(this.handle, numberOfChannels);
  }
  auto numberOfChannels() {
    auto result = AudioBufferOptions_numberOfChannels_Get(this.handle);
    return result;
  }
  auto length(uint length) {
    AudioBufferOptions_length_Set(this.handle, length);
  }
  auto length() {
    auto result = AudioBufferOptions_length_Get(this.handle);
    return result;
  }
  auto sampleRate(float sampleRate) {
    AudioBufferOptions_sampleRate_Set(this.handle, sampleRate);
  }
  auto sampleRate() {
    auto result = AudioBufferOptions_sampleRate_Get(this.handle);
    return result;
  }
}
struct AudioBufferSourceNode {
  AudioScheduledSourceNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioScheduledSourceNode(h);
  }
  auto buffer(Optional!(AudioBuffer) buffer) {
    AudioBufferSourceNode_buffer_Set(this._parent, !buffer.empty, buffer.front.handle);
  }
  auto buffer() {
    auto result = AudioBufferSourceNode_buffer_Get(this._parent);
    return result;
  }
  auto playbackRate() {
    auto result = AudioParam(JsHandle(AudioBufferSourceNode_playbackRate_Get(this._parent)));
    return result;
  }
  auto detune() {
    auto result = AudioParam(JsHandle(AudioBufferSourceNode_detune_Get(this._parent)));
    return result;
  }
  auto loop(bool loop) {
    AudioBufferSourceNode_loop_Set(this._parent, loop);
  }
  auto loop() {
    auto result = AudioBufferSourceNode_loop_Get(this._parent);
    return result;
  }
  auto loopStart(double loopStart) {
    AudioBufferSourceNode_loopStart_Set(this._parent, loopStart);
  }
  auto loopStart() {
    auto result = AudioBufferSourceNode_loopStart_Get(this._parent);
    return result;
  }
  auto loopEnd(double loopEnd) {
    AudioBufferSourceNode_loopEnd_Set(this._parent, loopEnd);
  }
  auto loopEnd() {
    auto result = AudioBufferSourceNode_loopEnd_Get(this._parent);
    return result;
  }
  auto start(double when /* = 0 */, double offset, double duration) {
    AudioBufferSourceNode_start(this._parent, when, offset, duration);
  }
}
struct AudioBufferSourceOptions {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return AudioBufferSourceOptions(JsHandle(spasm_add__object()));
  }
  auto buffer(Optional!(AudioBuffer) buffer) {
    AudioBufferSourceOptions_buffer_Set(this.handle, !buffer.empty, buffer.front.handle);
  }
  auto buffer() {
    auto result = AudioBufferSourceOptions_buffer_Get(this.handle);
    return result;
  }
  auto detune(float detune) {
    AudioBufferSourceOptions_detune_Set(this.handle, detune);
  }
  auto detune() {
    auto result = AudioBufferSourceOptions_detune_Get(this.handle);
    return result;
  }
  auto loop(bool loop) {
    AudioBufferSourceOptions_loop_Set(this.handle, loop);
  }
  auto loop() {
    auto result = AudioBufferSourceOptions_loop_Get(this.handle);
    return result;
  }
  auto loopEnd(double loopEnd) {
    AudioBufferSourceOptions_loopEnd_Set(this.handle, loopEnd);
  }
  auto loopEnd() {
    auto result = AudioBufferSourceOptions_loopEnd_Get(this.handle);
    return result;
  }
  auto loopStart(double loopStart) {
    AudioBufferSourceOptions_loopStart_Set(this.handle, loopStart);
  }
  auto loopStart() {
    auto result = AudioBufferSourceOptions_loopStart_Get(this.handle);
    return result;
  }
  auto playbackRate(float playbackRate) {
    AudioBufferSourceOptions_playbackRate_Set(this.handle, playbackRate);
  }
  auto playbackRate() {
    auto result = AudioBufferSourceOptions_playbackRate_Get(this.handle);
    return result;
  }
}
struct AudioContext {
  BaseAudioContext _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = BaseAudioContext(h);
  }
  auto baseLatency() {
    auto result = AudioContext_baseLatency_Get(this._parent);
    return result;
  }
  auto outputLatency() {
    auto result = AudioContext_outputLatency_Get(this._parent);
    return result;
  }
  auto getOutputTimestamp() {
    auto result = AudioTimestamp(JsHandle(AudioContext_getOutputTimestamp(this._parent)));
    return result;
  }
  auto resume() {
    auto result = Promise!(void)(JsHandle(AudioContext_resume(this._parent)));
    return result;
  }
  auto suspend() {
    auto result = Promise!(void)(JsHandle(AudioContext_suspend(this._parent)));
    return result;
  }
  auto close() {
    auto result = Promise!(void)(JsHandle(AudioContext_close(this._parent)));
    return result;
  }
  auto createMediaElementSource(HTMLMediaElement mediaElement) {
    auto result = MediaElementAudioSourceNode(JsHandle(AudioContext_createMediaElementSource(this._parent, mediaElement.handle)));
    return result;
  }
  auto createMediaStreamSource(MediaStream mediaStream) {
    auto result = MediaStreamAudioSourceNode(JsHandle(AudioContext_createMediaStreamSource(this._parent, mediaStream.handle)));
    return result;
  }
  auto createMediaStreamTrackSource(MediaStreamTrack mediaStreamTrack) {
    auto result = MediaStreamTrackAudioSourceNode(JsHandle(AudioContext_createMediaStreamTrackSource(this._parent, mediaStreamTrack.handle)));
    return result;
  }
  auto createMediaStreamDestination() {
    auto result = MediaStreamAudioDestinationNode(JsHandle(AudioContext_createMediaStreamDestination(this._parent)));
    return result;
  }
}
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
  auto latencyHint(SumType!(AudioContextLatencyCategory, double) latencyHint) {
    AudioContextOptions_latencyHint_Set(this.handle, latencyHint);
  }
  auto latencyHint() {
    auto result = AudioContextOptions_latencyHint_Get(this.handle);
    return result;
  }
  auto sampleRate(float sampleRate) {
    AudioContextOptions_sampleRate_Set(this.handle, sampleRate);
  }
  auto sampleRate() {
    auto result = AudioContextOptions_sampleRate_Get(this.handle);
    return result;
  }
}
enum AudioContextState {
  suspended,
  running,
  closed
}
struct AudioDestinationNode {
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
  auto maxChannelCount() {
    auto result = AudioDestinationNode_maxChannelCount_Get(this._parent);
    return result;
  }
}
struct AudioListener {
  JsHandle handle;
  alias handle this;
  auto positionX() {
    auto result = AudioParam(JsHandle(AudioListener_positionX_Get(this.handle)));
    return result;
  }
  auto positionY() {
    auto result = AudioParam(JsHandle(AudioListener_positionY_Get(this.handle)));
    return result;
  }
  auto positionZ() {
    auto result = AudioParam(JsHandle(AudioListener_positionZ_Get(this.handle)));
    return result;
  }
  auto forwardX() {
    auto result = AudioParam(JsHandle(AudioListener_forwardX_Get(this.handle)));
    return result;
  }
  auto forwardY() {
    auto result = AudioParam(JsHandle(AudioListener_forwardY_Get(this.handle)));
    return result;
  }
  auto forwardZ() {
    auto result = AudioParam(JsHandle(AudioListener_forwardZ_Get(this.handle)));
    return result;
  }
  auto upX() {
    auto result = AudioParam(JsHandle(AudioListener_upX_Get(this.handle)));
    return result;
  }
  auto upY() {
    auto result = AudioParam(JsHandle(AudioListener_upY_Get(this.handle)));
    return result;
  }
  auto upZ() {
    auto result = AudioParam(JsHandle(AudioListener_upZ_Get(this.handle)));
    return result;
  }
  auto setPosition(float x, float y, float z) {
    AudioListener_setPosition(this.handle, x, y, z);
  }
  auto setOrientation(float x, float y, float z, float xUp, float yUp, float zUp) {
    AudioListener_setOrientation(this.handle, x, y, z, xUp, yUp, zUp);
  }
}
struct AudioNode {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto connect(AudioNode destinationNode, uint output /* = 0 */, uint input /* = 0 */) {
    auto result = AudioNode(JsHandle(AudioNode_connect__Handle_uint_uint(this._parent, destinationNode.handle, output, input)));
    return result;
  }
  auto connect(AudioParam destinationParam, uint output /* = 0 */) {
    AudioNode_connect__Handle_uint(this._parent, destinationParam.handle, output);
  }
  auto disconnect() {
    AudioNode_disconnect__(this._parent);
  }
  auto disconnect(uint output) {
    AudioNode_disconnect__uint(this._parent, output);
  }
  auto disconnect(AudioNode destinationNode) {
    AudioNode_disconnect__Handle(this._parent, destinationNode.handle);
  }
  auto disconnect(AudioNode destinationNode, uint output) {
    AudioNode_disconnect__Handle_uint(this._parent, destinationNode.handle, output);
  }
  auto disconnect(AudioNode destinationNode, uint output, uint input) {
    AudioNode_disconnect__Handle_uint_uint(this._parent, destinationNode.handle, output, input);
  }
  auto disconnect(AudioParam destinationParam) {
    AudioNode_disconnect__Handle(this._parent, destinationParam.handle);
  }
  auto disconnect(AudioParam destinationParam, uint output) {
    AudioNode_disconnect__Handle_uint(this._parent, destinationParam.handle, output);
  }
  auto context() {
    auto result = BaseAudioContext(JsHandle(AudioNode_context_Get(this._parent)));
    return result;
  }
  auto numberOfInputs() {
    auto result = AudioNode_numberOfInputs_Get(this._parent);
    return result;
  }
  auto numberOfOutputs() {
    auto result = AudioNode_numberOfOutputs_Get(this._parent);
    return result;
  }
  auto channelCount(uint channelCount) {
    AudioNode_channelCount_Set(this._parent, channelCount);
  }
  auto channelCount() {
    auto result = AudioNode_channelCount_Get(this._parent);
    return result;
  }
  auto channelCountMode(ChannelCountMode channelCountMode) {
    AudioNode_channelCountMode_Set(this._parent, channelCountMode);
  }
  auto channelCountMode() {
    auto result = AudioNode_channelCountMode_Get(this._parent);
    return result;
  }
  auto channelInterpretation(ChannelInterpretation channelInterpretation) {
    AudioNode_channelInterpretation_Set(this._parent, channelInterpretation);
  }
  auto channelInterpretation() {
    auto result = AudioNode_channelInterpretation_Get(this._parent);
    return result;
  }
}
struct AudioNodeOptions {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return AudioNodeOptions(JsHandle(spasm_add__object()));
  }
  auto channelCount(uint channelCount) {
    AudioNodeOptions_channelCount_Set(this.handle, channelCount);
  }
  auto channelCount() {
    auto result = AudioNodeOptions_channelCount_Get(this.handle);
    return result;
  }
  auto channelCountMode(ChannelCountMode channelCountMode) {
    AudioNodeOptions_channelCountMode_Set(this.handle, channelCountMode);
  }
  auto channelCountMode() {
    auto result = AudioNodeOptions_channelCountMode_Get(this.handle);
    return result;
  }
  auto channelInterpretation(ChannelInterpretation channelInterpretation) {
    AudioNodeOptions_channelInterpretation_Set(this.handle, channelInterpretation);
  }
  auto channelInterpretation() {
    auto result = AudioNodeOptions_channelInterpretation_Get(this.handle);
    return result;
  }
}
struct AudioParam {
  JsHandle handle;
  alias handle this;
  auto value(float value) {
    AudioParam_value_Set(this.handle, value);
  }
  auto value() {
    auto result = AudioParam_value_Get(this.handle);
    return result;
  }
  auto automationRate(AutomationRate automationRate) {
    AudioParam_automationRate_Set(this.handle, automationRate);
  }
  auto automationRate() {
    auto result = AudioParam_automationRate_Get(this.handle);
    return result;
  }
  auto defaultValue() {
    auto result = AudioParam_defaultValue_Get(this.handle);
    return result;
  }
  auto minValue() {
    auto result = AudioParam_minValue_Get(this.handle);
    return result;
  }
  auto maxValue() {
    auto result = AudioParam_maxValue_Get(this.handle);
    return result;
  }
  auto setValueAtTime(float value, double startTime) {
    auto result = AudioParam(JsHandle(AudioParam_setValueAtTime(this.handle, value, startTime)));
    return result;
  }
  auto linearRampToValueAtTime(float value, double endTime) {
    auto result = AudioParam(JsHandle(AudioParam_linearRampToValueAtTime(this.handle, value, endTime)));
    return result;
  }
  auto exponentialRampToValueAtTime(float value, double endTime) {
    auto result = AudioParam(JsHandle(AudioParam_exponentialRampToValueAtTime(this.handle, value, endTime)));
    return result;
  }
  auto setTargetAtTime(float target, double startTime, float timeConstant) {
    auto result = AudioParam(JsHandle(AudioParam_setTargetAtTime(this.handle, target, startTime, timeConstant)));
    return result;
  }
  auto setValueCurveAtTime(Sequence!(float) values, double startTime, double duration) {
    auto result = AudioParam(JsHandle(AudioParam_setValueCurveAtTime(this.handle, values.handle, startTime, duration)));
    return result;
  }
  auto cancelScheduledValues(double cancelTime) {
    auto result = AudioParam(JsHandle(AudioParam_cancelScheduledValues(this.handle, cancelTime)));
    return result;
  }
  auto cancelAndHoldAtTime(double cancelTime) {
    auto result = AudioParam(JsHandle(AudioParam_cancelAndHoldAtTime(this.handle, cancelTime)));
    return result;
  }
}
struct AudioParamDescriptor {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return AudioParamDescriptor(JsHandle(spasm_add__object()));
  }
  auto name(string name) {
    AudioParamDescriptor_name_Set(this.handle, name);
  }
  auto name() {
    auto result = AudioParamDescriptor_name_Get(this.handle);
    return result;
  }
  auto defaultValue(float defaultValue) {
    AudioParamDescriptor_defaultValue_Set(this.handle, defaultValue);
  }
  auto defaultValue() {
    auto result = AudioParamDescriptor_defaultValue_Get(this.handle);
    return result;
  }
  auto minValue(float minValue) {
    AudioParamDescriptor_minValue_Set(this.handle, minValue);
  }
  auto minValue() {
    auto result = AudioParamDescriptor_minValue_Get(this.handle);
    return result;
  }
  auto maxValue(float maxValue) {
    AudioParamDescriptor_maxValue_Set(this.handle, maxValue);
  }
  auto maxValue() {
    auto result = AudioParamDescriptor_maxValue_Get(this.handle);
    return result;
  }
  auto automationRate(AutomationRate automationRate) {
    AudioParamDescriptor_automationRate_Set(this.handle, automationRate);
  }
  auto automationRate() {
    auto result = AudioParamDescriptor_automationRate_Get(this.handle);
    return result;
  }
}
struct AudioParamMap {
  JsHandle handle;
  alias handle this;
  uint size() {
    return Maplike_string_Handle_size(handle);
  }
  void clear() {
    Maplike_string_Handle_clear(handle);
  }
  void delete_(string key) {
    Maplike_string_Handle_delete(handle, key);
  }
  Iterator!(ArrayPair!(string, AudioParam)) entries() {
    return Iterator!(ArrayPair!(string, AudioParam))(JsHandle(Maplike_string_Handle_entries(handle)));
  }
  extern(C) void forEach(void delegate(string, Handle, Handle) callback) {
    Maplike_string_Handle_forEach(handle, callback);
  }
  AudioParam get(string key) {
    return AudioParam(JsHandle(Maplike_string_Handle_get(handle, key)));
  }
  bool has(string key) {
    return Maplike_string_Handle_has(handle, key);
  }
  Iterator!(string) keys() {
    return Iterator!(string)(JsHandle(Maplike_string_Handle_keys(handle)));
  }
  void set(string key, AudioParam value) {
    Maplike_string_Handle_set(handle, key, value.handle);
  }
  Iterator!(AudioParam) values() {
    return Iterator!(AudioParam)(JsHandle(Maplike_string_Handle_values(handle)));
  }
}
struct AudioProcessingEvent {
  Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Event(h);
  }
  auto playbackTime() {
    auto result = AudioProcessingEvent_playbackTime_Get(this._parent);
    return result;
  }
  auto inputBuffer() {
    auto result = AudioBuffer(JsHandle(AudioProcessingEvent_inputBuffer_Get(this._parent)));
    return result;
  }
  auto outputBuffer() {
    auto result = AudioBuffer(JsHandle(AudioProcessingEvent_outputBuffer_Get(this._parent)));
    return result;
  }
}
struct AudioProcessingEventInit {
  EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventInit(h);
  }
  static auto create() {
    return AudioProcessingEventInit(JsHandle(spasm_add__object()));
  }
  auto playbackTime(double playbackTime) {
    AudioProcessingEventInit_playbackTime_Set(this._parent, playbackTime);
  }
  auto playbackTime() {
    auto result = AudioProcessingEventInit_playbackTime_Get(this._parent);
    return result;
  }
  auto inputBuffer(AudioBuffer inputBuffer) {
    AudioProcessingEventInit_inputBuffer_Set(this._parent, inputBuffer.handle);
  }
  auto inputBuffer() {
    auto result = AudioBuffer(JsHandle(AudioProcessingEventInit_inputBuffer_Get(this._parent)));
    return result;
  }
  auto outputBuffer(AudioBuffer outputBuffer) {
    AudioProcessingEventInit_outputBuffer_Set(this._parent, outputBuffer.handle);
  }
  auto outputBuffer() {
    auto result = AudioBuffer(JsHandle(AudioProcessingEventInit_outputBuffer_Get(this._parent)));
    return result;
  }
}
struct AudioScheduledSourceNode {
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
  auto onended(EventHandler onended) {
    AudioScheduledSourceNode_onended_Set(this._parent, onended);
  }
  auto onended() {
    auto result = AudioScheduledSourceNode_onended_Get(this._parent);
    return result;
  }
  auto start(double when /* = 0 */) {
    AudioScheduledSourceNode_start(this._parent, when);
  }
  auto stop(double when /* = 0 */) {
    AudioScheduledSourceNode_stop(this._parent, when);
  }
}
struct AudioTimestamp {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return AudioTimestamp(JsHandle(spasm_add__object()));
  }
  auto contextTime(double contextTime) {
    AudioTimestamp_contextTime_Set(this.handle, contextTime);
  }
  auto contextTime() {
    auto result = AudioTimestamp_contextTime_Get(this.handle);
    return result;
  }
  auto performanceTime(double performanceTime) {
    AudioTimestamp_performanceTime_Set(this.handle, performanceTime);
  }
  auto performanceTime() {
    auto result = AudioTimestamp_performanceTime_Get(this.handle);
    return result;
  }
}
struct AudioWorklet {
  Worklet _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Worklet(h);
  }
}
struct AudioWorkletGlobalScope {
  WorkletGlobalScope _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = WorkletGlobalScope(h);
  }
  auto registerProcessor(string name, VoidFunction processorCtor) {
    AudioWorkletGlobalScope_registerProcessor(this._parent, name, processorCtor);
  }
  auto currentFrame() {
    auto result = AudioWorkletGlobalScope_currentFrame_Get(this._parent);
    return result;
  }
  auto currentTime() {
    auto result = AudioWorkletGlobalScope_currentTime_Get(this._parent);
    return result;
  }
  auto sampleRate() {
    auto result = AudioWorkletGlobalScope_sampleRate_Get(this._parent);
    return result;
  }
}
struct AudioWorkletNode {
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
  auto parameters() {
    auto result = AudioParamMap(JsHandle(AudioWorkletNode_parameters_Get(this._parent)));
    return result;
  }
  auto port() {
    auto result = MessagePort(JsHandle(AudioWorkletNode_port_Get(this._parent)));
    return result;
  }
  auto onprocessorerror(EventHandler onprocessorerror) {
    AudioWorkletNode_onprocessorerror_Set(this._parent, onprocessorerror);
  }
  auto onprocessorerror() {
    auto result = AudioWorkletNode_onprocessorerror_Get(this._parent);
    return result;
  }
}
struct AudioWorkletNodeOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNodeOptions(h);
  }
  static auto create() {
    return AudioWorkletNodeOptions(JsHandle(spasm_add__object()));
  }
  auto numberOfInputs(uint numberOfInputs) {
    AudioWorkletNodeOptions_numberOfInputs_Set(this._parent, numberOfInputs);
  }
  auto numberOfInputs() {
    auto result = AudioWorkletNodeOptions_numberOfInputs_Get(this._parent);
    return result;
  }
  auto numberOfOutputs(uint numberOfOutputs) {
    AudioWorkletNodeOptions_numberOfOutputs_Set(this._parent, numberOfOutputs);
  }
  auto numberOfOutputs() {
    auto result = AudioWorkletNodeOptions_numberOfOutputs_Get(this._parent);
    return result;
  }
  auto outputChannelCount(Sequence!(uint) outputChannelCount) {
    AudioWorkletNodeOptions_outputChannelCount_Set(this._parent, outputChannelCount.handle);
  }
  auto outputChannelCount() {
    auto result = Sequence!(uint)(JsHandle(AudioWorkletNodeOptions_outputChannelCount_Get(this._parent)));
    return result;
  }
  auto parameterData(Record!(string, double) parameterData) {
    AudioWorkletNodeOptions_parameterData_Set(this._parent, parameterData.handle);
  }
  auto parameterData() {
    auto result = Record!(string, double)(JsHandle(AudioWorkletNodeOptions_parameterData_Get(this._parent)));
    return result;
  }
  auto processorOptions(Optional!(JsObject) processorOptions) {
    AudioWorkletNodeOptions_processorOptions_Set(this._parent, !processorOptions.empty, processorOptions.front.handle);
  }
  auto processorOptions() {
    auto result = AudioWorkletNodeOptions_processorOptions_Get(this._parent);
    return result;
  }
}
struct AudioWorkletProcessor {
  JsHandle handle;
  alias handle this;
  auto port() {
    auto result = MessagePort(JsHandle(AudioWorkletProcessor_port_Get(this.handle)));
    return result;
  }
}
enum AutomationRate {
  a_rate,
  k_rate
}
struct BaseAudioContext {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto destination() {
    auto result = AudioDestinationNode(JsHandle(BaseAudioContext_destination_Get(this._parent)));
    return result;
  }
  auto sampleRate() {
    auto result = BaseAudioContext_sampleRate_Get(this._parent);
    return result;
  }
  auto currentTime() {
    auto result = BaseAudioContext_currentTime_Get(this._parent);
    return result;
  }
  auto listener() {
    auto result = AudioListener(JsHandle(BaseAudioContext_listener_Get(this._parent)));
    return result;
  }
  auto state() {
    auto result = BaseAudioContext_state_Get(this._parent);
    return result;
  }
  auto audioWorklet() {
    auto result = AudioWorklet(JsHandle(BaseAudioContext_audioWorklet_Get(this._parent)));
    return result;
  }
  auto onstatechange(EventHandler onstatechange) {
    BaseAudioContext_onstatechange_Set(this._parent, onstatechange);
  }
  auto onstatechange() {
    auto result = BaseAudioContext_onstatechange_Get(this._parent);
    return result;
  }
  auto createAnalyser() {
    auto result = AnalyserNode(JsHandle(BaseAudioContext_createAnalyser(this._parent)));
    return result;
  }
  auto createBiquadFilter() {
    auto result = BiquadFilterNode(JsHandle(BaseAudioContext_createBiquadFilter(this._parent)));
    return result;
  }
  auto createBuffer(uint numberOfChannels, uint length, float sampleRate) {
    auto result = AudioBuffer(JsHandle(BaseAudioContext_createBuffer(this._parent, numberOfChannels, length, sampleRate)));
    return result;
  }
  auto createBufferSource() {
    auto result = AudioBufferSourceNode(JsHandle(BaseAudioContext_createBufferSource(this._parent)));
    return result;
  }
  auto createChannelMerger(uint numberOfInputs /* = 6 */) {
    auto result = ChannelMergerNode(JsHandle(BaseAudioContext_createChannelMerger(this._parent, numberOfInputs)));
    return result;
  }
  auto createChannelSplitter(uint numberOfOutputs /* = 6 */) {
    auto result = ChannelSplitterNode(JsHandle(BaseAudioContext_createChannelSplitter(this._parent, numberOfOutputs)));
    return result;
  }
  auto createConstantSource() {
    auto result = ConstantSourceNode(JsHandle(BaseAudioContext_createConstantSource(this._parent)));
    return result;
  }
  auto createConvolver() {
    auto result = ConvolverNode(JsHandle(BaseAudioContext_createConvolver(this._parent)));
    return result;
  }
  auto createDelay(double maxDelayTime /* = 1.0 */) {
    auto result = DelayNode(JsHandle(BaseAudioContext_createDelay(this._parent, maxDelayTime)));
    return result;
  }
  auto createDynamicsCompressor() {
    auto result = DynamicsCompressorNode(JsHandle(BaseAudioContext_createDynamicsCompressor(this._parent)));
    return result;
  }
  auto createGain() {
    auto result = GainNode(JsHandle(BaseAudioContext_createGain(this._parent)));
    return result;
  }
  auto createIIRFilter(Sequence!(double) feedforward, Sequence!(double) feedback) {
    auto result = IIRFilterNode(JsHandle(BaseAudioContext_createIIRFilter(this._parent, feedforward.handle, feedback.handle)));
    return result;
  }
  auto createOscillator() {
    auto result = OscillatorNode(JsHandle(BaseAudioContext_createOscillator(this._parent)));
    return result;
  }
  auto createPanner() {
    auto result = PannerNode(JsHandle(BaseAudioContext_createPanner(this._parent)));
    return result;
  }
  auto createPeriodicWave(Sequence!(float) real_, Sequence!(float) imag, PeriodicWaveConstraints constraints) {
    auto result = PeriodicWave(JsHandle(BaseAudioContext_createPeriodicWave(this._parent, real_.handle, imag.handle, constraints.handle)));
    return result;
  }
  auto createScriptProcessor(uint bufferSize /* = 0 */, uint numberOfInputChannels /* = 2 */, uint numberOfOutputChannels /* = 2 */) {
    auto result = ScriptProcessorNode(JsHandle(BaseAudioContext_createScriptProcessor(this._parent, bufferSize, numberOfInputChannels, numberOfOutputChannels)));
    return result;
  }
  auto createStereoPanner() {
    auto result = StereoPannerNode(JsHandle(BaseAudioContext_createStereoPanner(this._parent)));
    return result;
  }
  auto createWaveShaper() {
    auto result = WaveShaperNode(JsHandle(BaseAudioContext_createWaveShaper(this._parent)));
    return result;
  }
  auto decodeAudioData(ArrayBuffer audioData, Optional!(DecodeSuccessCallback) successCallback, Optional!(DecodeErrorCallback) errorCallback) {
    auto result = Promise!(AudioBuffer)(JsHandle(BaseAudioContext_decodeAudioData(this._parent, audioData.handle, !successCallback.empty, successCallback.front, !errorCallback.empty, errorCallback.front)));
    return result;
  }
}
struct BiquadFilterNode {
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
  auto type(BiquadFilterType type) {
    BiquadFilterNode_type_Set(this._parent, type);
  }
  auto type() {
    auto result = BiquadFilterNode_type_Get(this._parent);
    return result;
  }
  auto frequency() {
    auto result = AudioParam(JsHandle(BiquadFilterNode_frequency_Get(this._parent)));
    return result;
  }
  auto detune() {
    auto result = AudioParam(JsHandle(BiquadFilterNode_detune_Get(this._parent)));
    return result;
  }
  auto Q() {
    auto result = AudioParam(JsHandle(BiquadFilterNode_Q_Get(this._parent)));
    return result;
  }
  auto gain() {
    auto result = AudioParam(JsHandle(BiquadFilterNode_gain_Get(this._parent)));
    return result;
  }
  auto getFrequencyResponse(Float32Array frequencyHz, Float32Array magResponse, Float32Array phaseResponse) {
    BiquadFilterNode_getFrequencyResponse(this._parent, frequencyHz.handle, magResponse.handle, phaseResponse.handle);
  }
}
struct BiquadFilterOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNodeOptions(h);
  }
  static auto create() {
    return BiquadFilterOptions(JsHandle(spasm_add__object()));
  }
  auto type(BiquadFilterType type) {
    BiquadFilterOptions_type_Set(this._parent, type);
  }
  auto type() {
    auto result = BiquadFilterOptions_type_Get(this._parent);
    return result;
  }
  auto Q(float q) {
    BiquadFilterOptions_Q_Set(this._parent, Q);
  }
  auto Q() {
    auto result = BiquadFilterOptions_Q_Get(this._parent);
    return result;
  }
  auto detune(float detune) {
    BiquadFilterOptions_detune_Set(this._parent, detune);
  }
  auto detune() {
    auto result = BiquadFilterOptions_detune_Get(this._parent);
    return result;
  }
  auto frequency(float frequency) {
    BiquadFilterOptions_frequency_Set(this._parent, frequency);
  }
  auto frequency() {
    auto result = BiquadFilterOptions_frequency_Get(this._parent);
    return result;
  }
  auto gain(float gain) {
    BiquadFilterOptions_gain_Set(this._parent, gain);
  }
  auto gain() {
    auto result = BiquadFilterOptions_gain_Get(this._parent);
    return result;
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
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
}
struct ChannelMergerOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNodeOptions(h);
  }
  static auto create() {
    return ChannelMergerOptions(JsHandle(spasm_add__object()));
  }
  auto numberOfInputs(uint numberOfInputs) {
    ChannelMergerOptions_numberOfInputs_Set(this._parent, numberOfInputs);
  }
  auto numberOfInputs() {
    auto result = ChannelMergerOptions_numberOfInputs_Get(this._parent);
    return result;
  }
}
struct ChannelSplitterNode {
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
}
struct ChannelSplitterOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNodeOptions(h);
  }
  static auto create() {
    return ChannelSplitterOptions(JsHandle(spasm_add__object()));
  }
  auto numberOfOutputs(uint numberOfOutputs) {
    ChannelSplitterOptions_numberOfOutputs_Set(this._parent, numberOfOutputs);
  }
  auto numberOfOutputs() {
    auto result = ChannelSplitterOptions_numberOfOutputs_Get(this._parent);
    return result;
  }
}
struct ConstantSourceNode {
  AudioScheduledSourceNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioScheduledSourceNode(h);
  }
  auto offset() {
    auto result = AudioParam(JsHandle(ConstantSourceNode_offset_Get(this._parent)));
    return result;
  }
}
struct ConstantSourceOptions {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return ConstantSourceOptions(JsHandle(spasm_add__object()));
  }
  auto offset(float offset) {
    ConstantSourceOptions_offset_Set(this.handle, offset);
  }
  auto offset() {
    auto result = ConstantSourceOptions_offset_Get(this.handle);
    return result;
  }
}
struct ConvolverNode {
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
  auto buffer(Optional!(AudioBuffer) buffer) {
    ConvolverNode_buffer_Set(this._parent, !buffer.empty, buffer.front.handle);
  }
  auto buffer() {
    auto result = ConvolverNode_buffer_Get(this._parent);
    return result;
  }
  auto normalize(bool normalize) {
    ConvolverNode_normalize_Set(this._parent, normalize);
  }
  auto normalize() {
    auto result = ConvolverNode_normalize_Get(this._parent);
    return result;
  }
}
struct ConvolverOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNodeOptions(h);
  }
  static auto create() {
    return ConvolverOptions(JsHandle(spasm_add__object()));
  }
  auto buffer(Optional!(AudioBuffer) buffer) {
    ConvolverOptions_buffer_Set(this._parent, !buffer.empty, buffer.front.handle);
  }
  auto buffer() {
    auto result = ConvolverOptions_buffer_Get(this._parent);
    return result;
  }
  auto disableNormalization(bool disableNormalization) {
    ConvolverOptions_disableNormalization_Set(this._parent, disableNormalization);
  }
  auto disableNormalization() {
    auto result = ConvolverOptions_disableNormalization_Get(this._parent);
    return result;
  }
}
alias DecodeErrorCallback = void delegate(DOMException);
alias DecodeSuccessCallback = void delegate(AudioBuffer);
struct DelayNode {
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
  auto delayTime() {
    auto result = AudioParam(JsHandle(DelayNode_delayTime_Get(this._parent)));
    return result;
  }
}
struct DelayOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNodeOptions(h);
  }
  static auto create() {
    return DelayOptions(JsHandle(spasm_add__object()));
  }
  auto maxDelayTime(double maxDelayTime) {
    DelayOptions_maxDelayTime_Set(this._parent, maxDelayTime);
  }
  auto maxDelayTime() {
    auto result = DelayOptions_maxDelayTime_Get(this._parent);
    return result;
  }
  auto delayTime(double delayTime) {
    DelayOptions_delayTime_Set(this._parent, delayTime);
  }
  auto delayTime() {
    auto result = DelayOptions_delayTime_Get(this._parent);
    return result;
  }
}
enum DistanceModelType {
  linear,
  inverse,
  exponential
}
struct DynamicsCompressorNode {
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
  auto threshold() {
    auto result = AudioParam(JsHandle(DynamicsCompressorNode_threshold_Get(this._parent)));
    return result;
  }
  auto knee() {
    auto result = AudioParam(JsHandle(DynamicsCompressorNode_knee_Get(this._parent)));
    return result;
  }
  auto ratio() {
    auto result = AudioParam(JsHandle(DynamicsCompressorNode_ratio_Get(this._parent)));
    return result;
  }
  auto reduction() {
    auto result = DynamicsCompressorNode_reduction_Get(this._parent);
    return result;
  }
  auto attack() {
    auto result = AudioParam(JsHandle(DynamicsCompressorNode_attack_Get(this._parent)));
    return result;
  }
  auto release() {
    auto result = AudioParam(JsHandle(DynamicsCompressorNode_release_Get(this._parent)));
    return result;
  }
}
struct DynamicsCompressorOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNodeOptions(h);
  }
  static auto create() {
    return DynamicsCompressorOptions(JsHandle(spasm_add__object()));
  }
  auto attack(float attack) {
    DynamicsCompressorOptions_attack_Set(this._parent, attack);
  }
  auto attack() {
    auto result = DynamicsCompressorOptions_attack_Get(this._parent);
    return result;
  }
  auto knee(float knee) {
    DynamicsCompressorOptions_knee_Set(this._parent, knee);
  }
  auto knee() {
    auto result = DynamicsCompressorOptions_knee_Get(this._parent);
    return result;
  }
  auto ratio(float ratio) {
    DynamicsCompressorOptions_ratio_Set(this._parent, ratio);
  }
  auto ratio() {
    auto result = DynamicsCompressorOptions_ratio_Get(this._parent);
    return result;
  }
  auto release(float release) {
    DynamicsCompressorOptions_release_Set(this._parent, release);
  }
  auto release() {
    auto result = DynamicsCompressorOptions_release_Get(this._parent);
    return result;
  }
  auto threshold(float threshold) {
    DynamicsCompressorOptions_threshold_Set(this._parent, threshold);
  }
  auto threshold() {
    auto result = DynamicsCompressorOptions_threshold_Get(this._parent);
    return result;
  }
}
struct GainNode {
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
  auto gain() {
    auto result = AudioParam(JsHandle(GainNode_gain_Get(this._parent)));
    return result;
  }
}
struct GainOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNodeOptions(h);
  }
  static auto create() {
    return GainOptions(JsHandle(spasm_add__object()));
  }
  auto gain(float gain) {
    GainOptions_gain_Set(this._parent, gain);
  }
  auto gain() {
    auto result = GainOptions_gain_Get(this._parent);
    return result;
  }
}
struct IIRFilterNode {
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
  auto getFrequencyResponse(Float32Array frequencyHz, Float32Array magResponse, Float32Array phaseResponse) {
    IIRFilterNode_getFrequencyResponse(this._parent, frequencyHz.handle, magResponse.handle, phaseResponse.handle);
  }
}
struct IIRFilterOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNodeOptions(h);
  }
  static auto create() {
    return IIRFilterOptions(JsHandle(spasm_add__object()));
  }
  auto feedforward(Sequence!(double) feedforward) {
    IIRFilterOptions_feedforward_Set(this._parent, feedforward.handle);
  }
  auto feedforward() {
    auto result = Sequence!(double)(JsHandle(IIRFilterOptions_feedforward_Get(this._parent)));
    return result;
  }
  auto feedback(Sequence!(double) feedback) {
    IIRFilterOptions_feedback_Set(this._parent, feedback.handle);
  }
  auto feedback() {
    auto result = Sequence!(double)(JsHandle(IIRFilterOptions_feedback_Get(this._parent)));
    return result;
  }
}
struct MediaElementAudioSourceNode {
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
  auto mediaElement() {
    auto result = HTMLMediaElement(JsHandle(MediaElementAudioSourceNode_mediaElement_Get(this._parent)));
    return result;
  }
}
struct MediaElementAudioSourceOptions {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return MediaElementAudioSourceOptions(JsHandle(spasm_add__object()));
  }
  auto mediaElement(HTMLMediaElement mediaElement) {
    MediaElementAudioSourceOptions_mediaElement_Set(this.handle, mediaElement.handle);
  }
  auto mediaElement() {
    auto result = HTMLMediaElement(JsHandle(MediaElementAudioSourceOptions_mediaElement_Get(this.handle)));
    return result;
  }
}
struct MediaStreamAudioDestinationNode {
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
  auto stream() {
    auto result = MediaStream(JsHandle(MediaStreamAudioDestinationNode_stream_Get(this._parent)));
    return result;
  }
}
struct MediaStreamAudioSourceNode {
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
  auto mediaStream() {
    auto result = MediaStream(JsHandle(MediaStreamAudioSourceNode_mediaStream_Get(this._parent)));
    return result;
  }
}
struct MediaStreamAudioSourceOptions {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return MediaStreamAudioSourceOptions(JsHandle(spasm_add__object()));
  }
  auto mediaStream(MediaStream mediaStream) {
    MediaStreamAudioSourceOptions_mediaStream_Set(this.handle, mediaStream.handle);
  }
  auto mediaStream() {
    auto result = MediaStream(JsHandle(MediaStreamAudioSourceOptions_mediaStream_Get(this.handle)));
    return result;
  }
}
struct MediaStreamTrackAudioSourceNode {
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
}
struct MediaStreamTrackAudioSourceOptions {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return MediaStreamTrackAudioSourceOptions(JsHandle(spasm_add__object()));
  }
  auto mediaStreamTrack(MediaStreamTrack mediaStreamTrack) {
    MediaStreamTrackAudioSourceOptions_mediaStreamTrack_Set(this.handle, mediaStreamTrack.handle);
  }
  auto mediaStreamTrack() {
    auto result = MediaStreamTrack(JsHandle(MediaStreamTrackAudioSourceOptions_mediaStreamTrack_Get(this.handle)));
    return result;
  }
}
struct OfflineAudioCompletionEvent {
  Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Event(h);
  }
  auto renderedBuffer() {
    auto result = AudioBuffer(JsHandle(OfflineAudioCompletionEvent_renderedBuffer_Get(this._parent)));
    return result;
  }
}
struct OfflineAudioCompletionEventInit {
  EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventInit(h);
  }
  static auto create() {
    return OfflineAudioCompletionEventInit(JsHandle(spasm_add__object()));
  }
  auto renderedBuffer(AudioBuffer renderedBuffer) {
    OfflineAudioCompletionEventInit_renderedBuffer_Set(this._parent, renderedBuffer.handle);
  }
  auto renderedBuffer() {
    auto result = AudioBuffer(JsHandle(OfflineAudioCompletionEventInit_renderedBuffer_Get(this._parent)));
    return result;
  }
}
struct OfflineAudioContext {
  BaseAudioContext _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = BaseAudioContext(h);
  }
  auto startRendering() {
    auto result = Promise!(AudioBuffer)(JsHandle(OfflineAudioContext_startRendering(this._parent)));
    return result;
  }
  auto resume() {
    auto result = Promise!(void)(JsHandle(OfflineAudioContext_resume(this._parent)));
    return result;
  }
  auto suspend(double suspendTime) {
    auto result = Promise!(void)(JsHandle(OfflineAudioContext_suspend(this._parent, suspendTime)));
    return result;
  }
  auto length() {
    auto result = OfflineAudioContext_length_Get(this._parent);
    return result;
  }
  auto oncomplete(EventHandler oncomplete) {
    OfflineAudioContext_oncomplete_Set(this._parent, oncomplete);
  }
  auto oncomplete() {
    auto result = OfflineAudioContext_oncomplete_Get(this._parent);
    return result;
  }
}
struct OfflineAudioContextOptions {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return OfflineAudioContextOptions(JsHandle(spasm_add__object()));
  }
  auto numberOfChannels(uint numberOfChannels) {
    OfflineAudioContextOptions_numberOfChannels_Set(this.handle, numberOfChannels);
  }
  auto numberOfChannels() {
    auto result = OfflineAudioContextOptions_numberOfChannels_Get(this.handle);
    return result;
  }
  auto length(uint length) {
    OfflineAudioContextOptions_length_Set(this.handle, length);
  }
  auto length() {
    auto result = OfflineAudioContextOptions_length_Get(this.handle);
    return result;
  }
  auto sampleRate(float sampleRate) {
    OfflineAudioContextOptions_sampleRate_Set(this.handle, sampleRate);
  }
  auto sampleRate() {
    auto result = OfflineAudioContextOptions_sampleRate_Get(this.handle);
    return result;
  }
}
struct OscillatorNode {
  AudioScheduledSourceNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioScheduledSourceNode(h);
  }
  auto type(OscillatorType type) {
    OscillatorNode_type_Set(this._parent, type);
  }
  auto type() {
    auto result = OscillatorNode_type_Get(this._parent);
    return result;
  }
  auto frequency() {
    auto result = AudioParam(JsHandle(OscillatorNode_frequency_Get(this._parent)));
    return result;
  }
  auto detune() {
    auto result = AudioParam(JsHandle(OscillatorNode_detune_Get(this._parent)));
    return result;
  }
  auto setPeriodicWave(PeriodicWave periodicWave) {
    OscillatorNode_setPeriodicWave(this._parent, periodicWave.handle);
  }
}
struct OscillatorOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNodeOptions(h);
  }
  static auto create() {
    return OscillatorOptions(JsHandle(spasm_add__object()));
  }
  auto type(OscillatorType type) {
    OscillatorOptions_type_Set(this._parent, type);
  }
  auto type() {
    auto result = OscillatorOptions_type_Get(this._parent);
    return result;
  }
  auto frequency(float frequency) {
    OscillatorOptions_frequency_Set(this._parent, frequency);
  }
  auto frequency() {
    auto result = OscillatorOptions_frequency_Get(this._parent);
    return result;
  }
  auto detune(float detune) {
    OscillatorOptions_detune_Set(this._parent, detune);
  }
  auto detune() {
    auto result = OscillatorOptions_detune_Get(this._parent);
    return result;
  }
  auto periodicWave(PeriodicWave periodicWave) {
    OscillatorOptions_periodicWave_Set(this._parent, periodicWave.handle);
  }
  auto periodicWave() {
    auto result = PeriodicWave(JsHandle(OscillatorOptions_periodicWave_Get(this._parent)));
    return result;
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
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
  auto panningModel(PanningModelType panningModel) {
    PannerNode_panningModel_Set(this._parent, panningModel);
  }
  auto panningModel() {
    auto result = PannerNode_panningModel_Get(this._parent);
    return result;
  }
  auto positionX() {
    auto result = AudioParam(JsHandle(PannerNode_positionX_Get(this._parent)));
    return result;
  }
  auto positionY() {
    auto result = AudioParam(JsHandle(PannerNode_positionY_Get(this._parent)));
    return result;
  }
  auto positionZ() {
    auto result = AudioParam(JsHandle(PannerNode_positionZ_Get(this._parent)));
    return result;
  }
  auto orientationX() {
    auto result = AudioParam(JsHandle(PannerNode_orientationX_Get(this._parent)));
    return result;
  }
  auto orientationY() {
    auto result = AudioParam(JsHandle(PannerNode_orientationY_Get(this._parent)));
    return result;
  }
  auto orientationZ() {
    auto result = AudioParam(JsHandle(PannerNode_orientationZ_Get(this._parent)));
    return result;
  }
  auto distanceModel(DistanceModelType distanceModel) {
    PannerNode_distanceModel_Set(this._parent, distanceModel);
  }
  auto distanceModel() {
    auto result = PannerNode_distanceModel_Get(this._parent);
    return result;
  }
  auto refDistance(double refDistance) {
    PannerNode_refDistance_Set(this._parent, refDistance);
  }
  auto refDistance() {
    auto result = PannerNode_refDistance_Get(this._parent);
    return result;
  }
  auto maxDistance(double maxDistance) {
    PannerNode_maxDistance_Set(this._parent, maxDistance);
  }
  auto maxDistance() {
    auto result = PannerNode_maxDistance_Get(this._parent);
    return result;
  }
  auto rolloffFactor(double rolloffFactor) {
    PannerNode_rolloffFactor_Set(this._parent, rolloffFactor);
  }
  auto rolloffFactor() {
    auto result = PannerNode_rolloffFactor_Get(this._parent);
    return result;
  }
  auto coneInnerAngle(double coneInnerAngle) {
    PannerNode_coneInnerAngle_Set(this._parent, coneInnerAngle);
  }
  auto coneInnerAngle() {
    auto result = PannerNode_coneInnerAngle_Get(this._parent);
    return result;
  }
  auto coneOuterAngle(double coneOuterAngle) {
    PannerNode_coneOuterAngle_Set(this._parent, coneOuterAngle);
  }
  auto coneOuterAngle() {
    auto result = PannerNode_coneOuterAngle_Get(this._parent);
    return result;
  }
  auto coneOuterGain(double coneOuterGain) {
    PannerNode_coneOuterGain_Set(this._parent, coneOuterGain);
  }
  auto coneOuterGain() {
    auto result = PannerNode_coneOuterGain_Get(this._parent);
    return result;
  }
  auto setPosition(float x, float y, float z) {
    PannerNode_setPosition(this._parent, x, y, z);
  }
  auto setOrientation(float x, float y, float z) {
    PannerNode_setOrientation(this._parent, x, y, z);
  }
}
struct PannerOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNodeOptions(h);
  }
  static auto create() {
    return PannerOptions(JsHandle(spasm_add__object()));
  }
  auto panningModel(PanningModelType panningModel) {
    PannerOptions_panningModel_Set(this._parent, panningModel);
  }
  auto panningModel() {
    auto result = PannerOptions_panningModel_Get(this._parent);
    return result;
  }
  auto distanceModel(DistanceModelType distanceModel) {
    PannerOptions_distanceModel_Set(this._parent, distanceModel);
  }
  auto distanceModel() {
    auto result = PannerOptions_distanceModel_Get(this._parent);
    return result;
  }
  auto positionX(float positionX) {
    PannerOptions_positionX_Set(this._parent, positionX);
  }
  auto positionX() {
    auto result = PannerOptions_positionX_Get(this._parent);
    return result;
  }
  auto positionY(float positionY) {
    PannerOptions_positionY_Set(this._parent, positionY);
  }
  auto positionY() {
    auto result = PannerOptions_positionY_Get(this._parent);
    return result;
  }
  auto positionZ(float positionZ) {
    PannerOptions_positionZ_Set(this._parent, positionZ);
  }
  auto positionZ() {
    auto result = PannerOptions_positionZ_Get(this._parent);
    return result;
  }
  auto orientationX(float orientationX) {
    PannerOptions_orientationX_Set(this._parent, orientationX);
  }
  auto orientationX() {
    auto result = PannerOptions_orientationX_Get(this._parent);
    return result;
  }
  auto orientationY(float orientationY) {
    PannerOptions_orientationY_Set(this._parent, orientationY);
  }
  auto orientationY() {
    auto result = PannerOptions_orientationY_Get(this._parent);
    return result;
  }
  auto orientationZ(float orientationZ) {
    PannerOptions_orientationZ_Set(this._parent, orientationZ);
  }
  auto orientationZ() {
    auto result = PannerOptions_orientationZ_Get(this._parent);
    return result;
  }
  auto refDistance(double refDistance) {
    PannerOptions_refDistance_Set(this._parent, refDistance);
  }
  auto refDistance() {
    auto result = PannerOptions_refDistance_Get(this._parent);
    return result;
  }
  auto maxDistance(double maxDistance) {
    PannerOptions_maxDistance_Set(this._parent, maxDistance);
  }
  auto maxDistance() {
    auto result = PannerOptions_maxDistance_Get(this._parent);
    return result;
  }
  auto rolloffFactor(double rolloffFactor) {
    PannerOptions_rolloffFactor_Set(this._parent, rolloffFactor);
  }
  auto rolloffFactor() {
    auto result = PannerOptions_rolloffFactor_Get(this._parent);
    return result;
  }
  auto coneInnerAngle(double coneInnerAngle) {
    PannerOptions_coneInnerAngle_Set(this._parent, coneInnerAngle);
  }
  auto coneInnerAngle() {
    auto result = PannerOptions_coneInnerAngle_Get(this._parent);
    return result;
  }
  auto coneOuterAngle(double coneOuterAngle) {
    PannerOptions_coneOuterAngle_Set(this._parent, coneOuterAngle);
  }
  auto coneOuterAngle() {
    auto result = PannerOptions_coneOuterAngle_Get(this._parent);
    return result;
  }
  auto coneOuterGain(double coneOuterGain) {
    PannerOptions_coneOuterGain_Set(this._parent, coneOuterGain);
  }
  auto coneOuterGain() {
    auto result = PannerOptions_coneOuterGain_Get(this._parent);
    return result;
  }
}
enum PanningModelType {
  equalpower,
  HRTF
}
struct PeriodicWave {
  JsHandle handle;
  alias handle this;
}
struct PeriodicWaveConstraints {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return PeriodicWaveConstraints(JsHandle(spasm_add__object()));
  }
  auto disableNormalization(bool disableNormalization) {
    PeriodicWaveConstraints_disableNormalization_Set(this.handle, disableNormalization);
  }
  auto disableNormalization() {
    auto result = PeriodicWaveConstraints_disableNormalization_Get(this.handle);
    return result;
  }
}
struct PeriodicWaveOptions {
  PeriodicWaveConstraints _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = PeriodicWaveConstraints(h);
  }
  static auto create() {
    return PeriodicWaveOptions(JsHandle(spasm_add__object()));
  }
  auto real_(Sequence!(float) real_) {
    PeriodicWaveOptions_real_Set(this._parent, real_.handle);
  }
  auto real_() {
    auto result = Sequence!(float)(JsHandle(PeriodicWaveOptions_real_Get(this._parent)));
    return result;
  }
  auto imag(Sequence!(float) imag) {
    PeriodicWaveOptions_imag_Set(this._parent, imag.handle);
  }
  auto imag() {
    auto result = Sequence!(float)(JsHandle(PeriodicWaveOptions_imag_Get(this._parent)));
    return result;
  }
}
struct ScriptProcessorNode {
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
  auto onaudioprocess(EventHandler onaudioprocess) {
    ScriptProcessorNode_onaudioprocess_Set(this._parent, onaudioprocess);
  }
  auto onaudioprocess() {
    auto result = ScriptProcessorNode_onaudioprocess_Get(this._parent);
    return result;
  }
  auto bufferSize() {
    auto result = ScriptProcessorNode_bufferSize_Get(this._parent);
    return result;
  }
}
struct StereoPannerNode {
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
  auto pan() {
    auto result = AudioParam(JsHandle(StereoPannerNode_pan_Get(this._parent)));
    return result;
  }
}
struct StereoPannerOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNodeOptions(h);
  }
  static auto create() {
    return StereoPannerOptions(JsHandle(spasm_add__object()));
  }
  auto pan(float pan) {
    StereoPannerOptions_pan_Set(this._parent, pan);
  }
  auto pan() {
    auto result = StereoPannerOptions_pan_Get(this._parent);
    return result;
  }
}
struct WaveShaperNode {
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
  auto curve(Optional!(Float32Array) curve) {
    WaveShaperNode_curve_Set(this._parent, !curve.empty, curve.front.handle);
  }
  auto curve() {
    auto result = WaveShaperNode_curve_Get(this._parent);
    return result;
  }
  auto oversample(OverSampleType oversample) {
    WaveShaperNode_oversample_Set(this._parent, oversample);
  }
  auto oversample() {
    auto result = WaveShaperNode_oversample_Get(this._parent);
    return result;
  }
}
struct WaveShaperOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNodeOptions(h);
  }
  static auto create() {
    return WaveShaperOptions(JsHandle(spasm_add__object()));
  }
  auto curve(Sequence!(float) curve) {
    WaveShaperOptions_curve_Set(this._parent, curve.handle);
  }
  auto curve() {
    auto result = Sequence!(float)(JsHandle(WaveShaperOptions_curve_Get(this._parent)));
    return result;
  }
  auto oversample(OverSampleType oversample) {
    WaveShaperOptions_oversample_Set(this._parent, oversample);
  }
  auto oversample() {
    auto result = WaveShaperOptions_oversample_Get(this._parent);
    return result;
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
extern (C) void AnalyserOptions_create(Handle);
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
extern (C) void AudioBuffer_copyToChannel(Handle, Handle, uint, uint);
extern (C) void AudioBufferOptions_create(Handle);
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
extern (C) void AudioBufferSourceOptions_create(Handle);
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
extern (C) void AudioContextOptions_create(Handle);
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
extern (C) void AudioNode_connect__Handle_uint(Handle, Handle, uint);
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
extern (C) void AudioNodeOptions_create(Handle);
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
extern (C) void AudioParamDescriptor_create(Handle);
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
extern (C) void AudioProcessingEventInit_create(Handle);
extern (C) void AudioProcessingEventInit_playbackTime_Set(Handle, double);
extern (C) double AudioProcessingEventInit_playbackTime_Get(Handle);
extern (C) void AudioProcessingEventInit_inputBuffer_Set(Handle, Handle);
extern (C) Handle AudioProcessingEventInit_inputBuffer_Get(Handle);
extern (C) void AudioProcessingEventInit_outputBuffer_Set(Handle, Handle);
extern (C) Handle AudioProcessingEventInit_outputBuffer_Get(Handle);
extern (C) void AudioScheduledSourceNode_onended_Set(Handle, EventHandler);
extern (C) EventHandler AudioScheduledSourceNode_onended_Get(Handle);
extern (C) void AudioScheduledSourceNode_start(Handle, double);
extern (C) void AudioScheduledSourceNode_stop(Handle, double);
extern (C) void AudioTimestamp_create(Handle);
extern (C) void AudioTimestamp_contextTime_Set(Handle, double);
extern (C) double AudioTimestamp_contextTime_Get(Handle);
extern (C) void AudioTimestamp_performanceTime_Set(Handle, double);
extern (C) double AudioTimestamp_performanceTime_Get(Handle);
extern (C) void AudioWorkletGlobalScope_registerProcessor(Handle, string, VoidFunction);
extern (C) ulong AudioWorkletGlobalScope_currentFrame_Get(Handle);
extern (C) double AudioWorkletGlobalScope_currentTime_Get(Handle);
extern (C) float AudioWorkletGlobalScope_sampleRate_Get(Handle);
extern (C) Handle AudioWorkletNode_parameters_Get(Handle);
extern (C) Handle AudioWorkletNode_port_Get(Handle);
extern (C) void AudioWorkletNode_onprocessorerror_Set(Handle, EventHandler);
extern (C) EventHandler AudioWorkletNode_onprocessorerror_Get(Handle);
extern (C) void AudioWorkletNodeOptions_create(Handle);
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
extern (C) Handle BaseAudioContext_createChannelSplitter(Handle, uint);
extern (C) Handle BaseAudioContext_createConstantSource(Handle);
extern (C) Handle BaseAudioContext_createConvolver(Handle);
extern (C) Handle BaseAudioContext_createDelay(Handle, double);
extern (C) Handle BaseAudioContext_createDynamicsCompressor(Handle);
extern (C) Handle BaseAudioContext_createGain(Handle);
extern (C) Handle BaseAudioContext_createIIRFilter(Handle, Handle, Handle);
extern (C) Handle BaseAudioContext_createOscillator(Handle);
extern (C) Handle BaseAudioContext_createPanner(Handle);
extern (C) Handle BaseAudioContext_createPeriodicWave(Handle, Handle, Handle, Handle);
extern (C) Handle BaseAudioContext_createScriptProcessor(Handle, uint, uint, uint);
extern (C) Handle BaseAudioContext_createStereoPanner(Handle);
extern (C) Handle BaseAudioContext_createWaveShaper(Handle);
extern (C) Handle BaseAudioContext_decodeAudioData(Handle, Handle, bool, DecodeSuccessCallback, bool, DecodeErrorCallback);
extern (C) void BiquadFilterNode_type_Set(Handle, BiquadFilterType);
extern (C) BiquadFilterType BiquadFilterNode_type_Get(Handle);
extern (C) Handle BiquadFilterNode_frequency_Get(Handle);
extern (C) Handle BiquadFilterNode_detune_Get(Handle);
extern (C) Handle BiquadFilterNode_Q_Get(Handle);
extern (C) Handle BiquadFilterNode_gain_Get(Handle);
extern (C) void BiquadFilterNode_getFrequencyResponse(Handle, Handle, Handle, Handle);
extern (C) void BiquadFilterOptions_create(Handle);
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
extern (C) void ChannelMergerOptions_create(Handle);
extern (C) void ChannelMergerOptions_numberOfInputs_Set(Handle, uint);
extern (C) uint ChannelMergerOptions_numberOfInputs_Get(Handle);
extern (C) void ChannelSplitterOptions_create(Handle);
extern (C) void ChannelSplitterOptions_numberOfOutputs_Set(Handle, uint);
extern (C) uint ChannelSplitterOptions_numberOfOutputs_Get(Handle);
extern (C) Handle ConstantSourceNode_offset_Get(Handle);
extern (C) void ConstantSourceOptions_create(Handle);
extern (C) void ConstantSourceOptions_offset_Set(Handle, float);
extern (C) float ConstantSourceOptions_offset_Get(Handle);
extern (C) void ConvolverNode_buffer_Set(Handle, bool, Handle);
extern (C) Optional!(AudioBuffer) ConvolverNode_buffer_Get(Handle);
extern (C) void ConvolverNode_normalize_Set(Handle, bool);
extern (C) bool ConvolverNode_normalize_Get(Handle);
extern (C) void ConvolverOptions_create(Handle);
extern (C) void ConvolverOptions_buffer_Set(Handle, bool, Handle);
extern (C) Optional!(AudioBuffer) ConvolverOptions_buffer_Get(Handle);
extern (C) void ConvolverOptions_disableNormalization_Set(Handle, bool);
extern (C) bool ConvolverOptions_disableNormalization_Get(Handle);
extern (C) Handle DelayNode_delayTime_Get(Handle);
extern (C) void DelayOptions_create(Handle);
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
extern (C) void DynamicsCompressorOptions_create(Handle);
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
extern (C) void GainOptions_create(Handle);
extern (C) void GainOptions_gain_Set(Handle, float);
extern (C) float GainOptions_gain_Get(Handle);
extern (C) void IIRFilterNode_getFrequencyResponse(Handle, Handle, Handle, Handle);
extern (C) void IIRFilterOptions_create(Handle);
extern (C) void IIRFilterOptions_feedforward_Set(Handle, Handle);
extern (C) Handle IIRFilterOptions_feedforward_Get(Handle);
extern (C) void IIRFilterOptions_feedback_Set(Handle, Handle);
extern (C) Handle IIRFilterOptions_feedback_Get(Handle);
extern (C) Handle MediaElementAudioSourceNode_mediaElement_Get(Handle);
extern (C) void MediaElementAudioSourceOptions_create(Handle);
extern (C) void MediaElementAudioSourceOptions_mediaElement_Set(Handle, Handle);
extern (C) Handle MediaElementAudioSourceOptions_mediaElement_Get(Handle);
extern (C) Handle MediaStreamAudioDestinationNode_stream_Get(Handle);
extern (C) Handle MediaStreamAudioSourceNode_mediaStream_Get(Handle);
extern (C) void MediaStreamAudioSourceOptions_create(Handle);
extern (C) void MediaStreamAudioSourceOptions_mediaStream_Set(Handle, Handle);
extern (C) Handle MediaStreamAudioSourceOptions_mediaStream_Get(Handle);
extern (C) void MediaStreamTrackAudioSourceOptions_create(Handle);
extern (C) void MediaStreamTrackAudioSourceOptions_mediaStreamTrack_Set(Handle, Handle);
extern (C) Handle MediaStreamTrackAudioSourceOptions_mediaStreamTrack_Get(Handle);
extern (C) Handle OfflineAudioCompletionEvent_renderedBuffer_Get(Handle);
extern (C) void OfflineAudioCompletionEventInit_create(Handle);
extern (C) void OfflineAudioCompletionEventInit_renderedBuffer_Set(Handle, Handle);
extern (C) Handle OfflineAudioCompletionEventInit_renderedBuffer_Get(Handle);
extern (C) Handle OfflineAudioContext_startRendering(Handle);
extern (C) Handle OfflineAudioContext_resume(Handle);
extern (C) Handle OfflineAudioContext_suspend(Handle, double);
extern (C) uint OfflineAudioContext_length_Get(Handle);
extern (C) void OfflineAudioContext_oncomplete_Set(Handle, EventHandler);
extern (C) EventHandler OfflineAudioContext_oncomplete_Get(Handle);
extern (C) void OfflineAudioContextOptions_create(Handle);
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
extern (C) void OscillatorOptions_create(Handle);
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
extern (C) void PannerOptions_create(Handle);
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
extern (C) void PeriodicWaveConstraints_create(Handle);
extern (C) void PeriodicWaveConstraints_disableNormalization_Set(Handle, bool);
extern (C) bool PeriodicWaveConstraints_disableNormalization_Get(Handle);
extern (C) void PeriodicWaveOptions_create(Handle);
extern (C) void PeriodicWaveOptions_real_Set(Handle, Handle);
extern (C) Handle PeriodicWaveOptions_real_Get(Handle);
extern (C) void PeriodicWaveOptions_imag_Set(Handle, Handle);
extern (C) Handle PeriodicWaveOptions_imag_Get(Handle);
extern (C) void ScriptProcessorNode_onaudioprocess_Set(Handle, EventHandler);
extern (C) EventHandler ScriptProcessorNode_onaudioprocess_Get(Handle);
extern (C) int ScriptProcessorNode_bufferSize_Get(Handle);
extern (C) Handle StereoPannerNode_pan_Get(Handle);
extern (C) void StereoPannerOptions_create(Handle);
extern (C) void StereoPannerOptions_pan_Set(Handle, float);
extern (C) float StereoPannerOptions_pan_Get(Handle);
extern (C) void WaveShaperNode_curve_Set(Handle, bool, Handle);
extern (C) Optional!(Float32Array) WaveShaperNode_curve_Get(Handle);
extern (C) void WaveShaperNode_oversample_Set(Handle, OverSampleType);
extern (C) OverSampleType WaveShaperNode_oversample_Get(Handle);
extern (C) void WaveShaperOptions_create(Handle);
extern (C) void WaveShaperOptions_curve_Set(Handle, Handle);
extern (C) Handle WaveShaperOptions_curve_Get(Handle);
extern (C) void WaveShaperOptions_oversample_Set(Handle, OverSampleType);
extern (C) OverSampleType WaveShaperOptions_oversample_Get(Handle);