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
    return AnalyserNode_fftSize_Get(this._parent);
  }
  auto frequencyBinCount() {
    return AnalyserNode_frequencyBinCount_Get(this._parent);
  }
  auto minDecibels(double minDecibels) {
    AnalyserNode_minDecibels_Set(this._parent, minDecibels);
  }
  auto minDecibels() {
    return AnalyserNode_minDecibels_Get(this._parent);
  }
  auto maxDecibels(double maxDecibels) {
    AnalyserNode_maxDecibels_Set(this._parent, maxDecibels);
  }
  auto maxDecibels() {
    return AnalyserNode_maxDecibels_Get(this._parent);
  }
  auto smoothingTimeConstant(double smoothingTimeConstant) {
    AnalyserNode_smoothingTimeConstant_Set(this._parent, smoothingTimeConstant);
  }
  auto smoothingTimeConstant() {
    return AnalyserNode_smoothingTimeConstant_Get(this._parent);
  }
}
struct AnalyserOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNodeOptions(h);
  }
  auto fftSize(uint fftSize) {
    AnalyserOptions_fftSize_Set(this._parent, fftSize);
  }
  auto fftSize() {
    return AnalyserOptions_fftSize_Get(this._parent);
  }
  auto maxDecibels(double maxDecibels) {
    AnalyserOptions_maxDecibels_Set(this._parent, maxDecibels);
  }
  auto maxDecibels() {
    return AnalyserOptions_maxDecibels_Get(this._parent);
  }
  auto minDecibels(double minDecibels) {
    AnalyserOptions_minDecibels_Set(this._parent, minDecibels);
  }
  auto minDecibels() {
    return AnalyserOptions_minDecibels_Get(this._parent);
  }
  auto smoothingTimeConstant(double smoothingTimeConstant) {
    AnalyserOptions_smoothingTimeConstant_Set(this._parent, smoothingTimeConstant);
  }
  auto smoothingTimeConstant() {
    return AnalyserOptions_smoothingTimeConstant_Get(this._parent);
  }
}
struct AudioBuffer {
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
    return Float32Array(AudioBuffer_getChannelData(this.handle, channel));
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
  auto numberOfChannels(uint numberOfChannels) {
    AudioBufferOptions_numberOfChannels_Set(this.handle, numberOfChannels);
  }
  auto numberOfChannels() {
    return AudioBufferOptions_numberOfChannels_Get(this.handle);
  }
  auto length(uint length) {
    AudioBufferOptions_length_Set(this.handle, length);
  }
  auto length() {
    return AudioBufferOptions_length_Get(this.handle);
  }
  auto sampleRate(float sampleRate) {
    AudioBufferOptions_sampleRate_Set(this.handle, sampleRate);
  }
  auto sampleRate() {
    return AudioBufferOptions_sampleRate_Get(this.handle);
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
    return AudioBufferSourceNode_buffer_Get(this._parent);
  }
  auto playbackRate() {
    return AudioParam(AudioBufferSourceNode_playbackRate_Get(this._parent));
  }
  auto detune() {
    return AudioParam(AudioBufferSourceNode_detune_Get(this._parent));
  }
  auto loop(bool loop) {
    AudioBufferSourceNode_loop_Set(this._parent, loop);
  }
  auto loop() {
    return AudioBufferSourceNode_loop_Get(this._parent);
  }
  auto loopStart(double loopStart) {
    AudioBufferSourceNode_loopStart_Set(this._parent, loopStart);
  }
  auto loopStart() {
    return AudioBufferSourceNode_loopStart_Get(this._parent);
  }
  auto loopEnd(double loopEnd) {
    AudioBufferSourceNode_loopEnd_Set(this._parent, loopEnd);
  }
  auto loopEnd() {
    return AudioBufferSourceNode_loopEnd_Get(this._parent);
  }
  auto start(double when /* = 0 */, double offset, double duration) {
    AudioBufferSourceNode_start(this._parent, when, offset, duration);
  }
}
struct AudioBufferSourceOptions {
  JsHandle handle;
  alias handle this;
  auto buffer(Optional!(AudioBuffer) buffer) {
    AudioBufferSourceOptions_buffer_Set(this.handle, !buffer.empty, buffer.front.handle);
  }
  auto buffer() {
    return AudioBufferSourceOptions_buffer_Get(this.handle);
  }
  auto detune(float detune) {
    AudioBufferSourceOptions_detune_Set(this.handle, detune);
  }
  auto detune() {
    return AudioBufferSourceOptions_detune_Get(this.handle);
  }
  auto loop(bool loop) {
    AudioBufferSourceOptions_loop_Set(this.handle, loop);
  }
  auto loop() {
    return AudioBufferSourceOptions_loop_Get(this.handle);
  }
  auto loopEnd(double loopEnd) {
    AudioBufferSourceOptions_loopEnd_Set(this.handle, loopEnd);
  }
  auto loopEnd() {
    return AudioBufferSourceOptions_loopEnd_Get(this.handle);
  }
  auto loopStart(double loopStart) {
    AudioBufferSourceOptions_loopStart_Set(this.handle, loopStart);
  }
  auto loopStart() {
    return AudioBufferSourceOptions_loopStart_Get(this.handle);
  }
  auto playbackRate(float playbackRate) {
    AudioBufferSourceOptions_playbackRate_Set(this.handle, playbackRate);
  }
  auto playbackRate() {
    return AudioBufferSourceOptions_playbackRate_Get(this.handle);
  }
}
struct AudioContext {
  BaseAudioContext _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = BaseAudioContext(h);
  }
  auto baseLatency() {
    return AudioContext_baseLatency_Get(this._parent);
  }
  auto outputLatency() {
    return AudioContext_outputLatency_Get(this._parent);
  }
  auto getOutputTimestamp() {
    return AudioTimestamp(AudioContext_getOutputTimestamp(this._parent));
  }
  auto resume() {
    return Promise!(void)(AudioContext_resume(this._parent));
  }
  auto suspend() {
    return Promise!(void)(AudioContext_suspend(this._parent));
  }
  auto close() {
    return Promise!(void)(AudioContext_close(this._parent));
  }
  auto createMediaElementSource(HTMLMediaElement mediaElement) {
    return MediaElementAudioSourceNode(AudioContext_createMediaElementSource(this._parent, mediaElement.handle));
  }
  auto createMediaStreamSource(MediaStream mediaStream) {
    return MediaStreamAudioSourceNode(AudioContext_createMediaStreamSource(this._parent, mediaStream.handle));
  }
  auto createMediaStreamTrackSource(MediaStreamTrack mediaStreamTrack) {
    return MediaStreamTrackAudioSourceNode(AudioContext_createMediaStreamTrackSource(this._parent, mediaStreamTrack.handle));
  }
  auto createMediaStreamDestination() {
    return MediaStreamAudioDestinationNode(AudioContext_createMediaStreamDestination(this._parent));
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
  auto latencyHint(SumType!(AudioContextLatencyCategory, double) latencyHint) {
    AudioContextOptions_latencyHint_Set(this.handle, latencyHint);
  }
  auto latencyHint() {
    return AudioContextOptions_latencyHint_Get(this.handle);
  }
  auto sampleRate(float sampleRate) {
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
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
  auto maxChannelCount() {
    return AudioDestinationNode_maxChannelCount_Get(this._parent);
  }
}
struct AudioListener {
  JsHandle handle;
  alias handle this;
  auto positionX() {
    return AudioParam(AudioListener_positionX_Get(this.handle));
  }
  auto positionY() {
    return AudioParam(AudioListener_positionY_Get(this.handle));
  }
  auto positionZ() {
    return AudioParam(AudioListener_positionZ_Get(this.handle));
  }
  auto forwardX() {
    return AudioParam(AudioListener_forwardX_Get(this.handle));
  }
  auto forwardY() {
    return AudioParam(AudioListener_forwardY_Get(this.handle));
  }
  auto forwardZ() {
    return AudioParam(AudioListener_forwardZ_Get(this.handle));
  }
  auto upX() {
    return AudioParam(AudioListener_upX_Get(this.handle));
  }
  auto upY() {
    return AudioParam(AudioListener_upY_Get(this.handle));
  }
  auto upZ() {
    return AudioParam(AudioListener_upZ_Get(this.handle));
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
    return AudioNode(AudioNode_connect__JsHandle_uint_uint(this._parent, destinationNode.handle, output, input));
  }
  auto connect(AudioParam destinationParam, uint output /* = 0 */) {
    AudioNode_connect__JsHandle_uint(this._parent, destinationParam.handle, output);
  }
  auto disconnect() {
    AudioNode_disconnect__(this._parent);
  }
  auto disconnect(uint output) {
    AudioNode_disconnect__uint(this._parent, output);
  }
  auto disconnect(AudioNode destinationNode) {
    AudioNode_disconnect__JsHandle(this._parent, destinationNode.handle);
  }
  auto disconnect(AudioNode destinationNode, uint output) {
    AudioNode_disconnect__JsHandle_uint(this._parent, destinationNode.handle, output);
  }
  auto disconnect(AudioNode destinationNode, uint output, uint input) {
    AudioNode_disconnect__JsHandle_uint_uint(this._parent, destinationNode.handle, output, input);
  }
  auto disconnect(AudioParam destinationParam) {
    AudioNode_disconnect__JsHandle(this._parent, destinationParam.handle);
  }
  auto disconnect(AudioParam destinationParam, uint output) {
    AudioNode_disconnect__JsHandle_uint(this._parent, destinationParam.handle, output);
  }
  auto context() {
    return BaseAudioContext(AudioNode_context_Get(this._parent));
  }
  auto numberOfInputs() {
    return AudioNode_numberOfInputs_Get(this._parent);
  }
  auto numberOfOutputs() {
    return AudioNode_numberOfOutputs_Get(this._parent);
  }
  auto channelCount(uint channelCount) {
    AudioNode_channelCount_Set(this._parent, channelCount);
  }
  auto channelCount() {
    return AudioNode_channelCount_Get(this._parent);
  }
  auto channelCountMode(ChannelCountMode channelCountMode) {
    AudioNode_channelCountMode_Set(this._parent, channelCountMode);
  }
  auto channelCountMode() {
    return AudioNode_channelCountMode_Get(this._parent);
  }
  auto channelInterpretation(ChannelInterpretation channelInterpretation) {
    AudioNode_channelInterpretation_Set(this._parent, channelInterpretation);
  }
  auto channelInterpretation() {
    return AudioNode_channelInterpretation_Get(this._parent);
  }
}
struct AudioNodeOptions {
  JsHandle handle;
  alias handle this;
  auto channelCount(uint channelCount) {
    AudioNodeOptions_channelCount_Set(this.handle, channelCount);
  }
  auto channelCount() {
    return AudioNodeOptions_channelCount_Get(this.handle);
  }
  auto channelCountMode(ChannelCountMode channelCountMode) {
    AudioNodeOptions_channelCountMode_Set(this.handle, channelCountMode);
  }
  auto channelCountMode() {
    return AudioNodeOptions_channelCountMode_Get(this.handle);
  }
  auto channelInterpretation(ChannelInterpretation channelInterpretation) {
    AudioNodeOptions_channelInterpretation_Set(this.handle, channelInterpretation);
  }
  auto channelInterpretation() {
    return AudioNodeOptions_channelInterpretation_Get(this.handle);
  }
}
struct AudioParam {
  JsHandle handle;
  alias handle this;
  auto value(float value) {
    AudioParam_value_Set(this.handle, value);
  }
  auto value() {
    return AudioParam_value_Get(this.handle);
  }
  auto automationRate(AutomationRate automationRate) {
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
    return AudioParam(AudioParam_setValueAtTime(this.handle, value, startTime));
  }
  auto linearRampToValueAtTime(float value, double endTime) {
    return AudioParam(AudioParam_linearRampToValueAtTime(this.handle, value, endTime));
  }
  auto exponentialRampToValueAtTime(float value, double endTime) {
    return AudioParam(AudioParam_exponentialRampToValueAtTime(this.handle, value, endTime));
  }
  auto setTargetAtTime(float target, double startTime, float timeConstant) {
    return AudioParam(AudioParam_setTargetAtTime(this.handle, target, startTime, timeConstant));
  }
  auto setValueCurveAtTime(Sequence!(float) values, double startTime, double duration) {
    return AudioParam(AudioParam_setValueCurveAtTime(this.handle, values.handle, startTime, duration));
  }
  auto cancelScheduledValues(double cancelTime) {
    return AudioParam(AudioParam_cancelScheduledValues(this.handle, cancelTime));
  }
  auto cancelAndHoldAtTime(double cancelTime) {
    return AudioParam(AudioParam_cancelAndHoldAtTime(this.handle, cancelTime));
  }
}
struct AudioParamDescriptor {
  JsHandle handle;
  alias handle this;
  auto name(string name) {
    AudioParamDescriptor_name_Set(this.handle, name);
  }
  auto name() {
    return AudioParamDescriptor_name_Get(this.handle);
  }
  auto defaultValue(float defaultValue) {
    AudioParamDescriptor_defaultValue_Set(this.handle, defaultValue);
  }
  auto defaultValue() {
    return AudioParamDescriptor_defaultValue_Get(this.handle);
  }
  auto minValue(float minValue) {
    AudioParamDescriptor_minValue_Set(this.handle, minValue);
  }
  auto minValue() {
    return AudioParamDescriptor_minValue_Get(this.handle);
  }
  auto maxValue(float maxValue) {
    AudioParamDescriptor_maxValue_Set(this.handle, maxValue);
  }
  auto maxValue() {
    return AudioParamDescriptor_maxValue_Get(this.handle);
  }
  auto automationRate(AutomationRate automationRate) {
    AudioParamDescriptor_automationRate_Set(this.handle, automationRate);
  }
  auto automationRate() {
    return AudioParamDescriptor_automationRate_Get(this.handle);
  }
}
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
struct AudioProcessingEvent {
  Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Event(h);
  }
  auto playbackTime() {
    return AudioProcessingEvent_playbackTime_Get(this._parent);
  }
  auto inputBuffer() {
    return AudioBuffer(AudioProcessingEvent_inputBuffer_Get(this._parent));
  }
  auto outputBuffer() {
    return AudioBuffer(AudioProcessingEvent_outputBuffer_Get(this._parent));
  }
}
struct AudioProcessingEventInit {
  EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventInit(h);
  }
  auto playbackTime(double playbackTime) {
    AudioProcessingEventInit_playbackTime_Set(this._parent, playbackTime);
  }
  auto playbackTime() {
    return AudioProcessingEventInit_playbackTime_Get(this._parent);
  }
  auto inputBuffer(AudioBuffer inputBuffer) {
    AudioProcessingEventInit_inputBuffer_Set(this._parent, inputBuffer.handle);
  }
  auto inputBuffer() {
    return AudioBuffer(AudioProcessingEventInit_inputBuffer_Get(this._parent));
  }
  auto outputBuffer(AudioBuffer outputBuffer) {
    AudioProcessingEventInit_outputBuffer_Set(this._parent, outputBuffer.handle);
  }
  auto outputBuffer() {
    return AudioBuffer(AudioProcessingEventInit_outputBuffer_Get(this._parent));
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
    return AudioScheduledSourceNode_onended_Get(this._parent);
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
  auto contextTime(double contextTime) {
    AudioTimestamp_contextTime_Set(this.handle, contextTime);
  }
  auto contextTime() {
    return AudioTimestamp_contextTime_Get(this.handle);
  }
  auto performanceTime(double performanceTime) {
    AudioTimestamp_performanceTime_Set(this.handle, performanceTime);
  }
  auto performanceTime() {
    return AudioTimestamp_performanceTime_Get(this.handle);
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
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
  auto parameters() {
    return AudioParamMap(AudioWorkletNode_parameters_Get(this._parent));
  }
  auto port() {
    return MessagePort(AudioWorkletNode_port_Get(this._parent));
  }
  auto onprocessorerror(EventHandler onprocessorerror) {
    AudioWorkletNode_onprocessorerror_Set(this._parent, onprocessorerror);
  }
  auto onprocessorerror() {
    return AudioWorkletNode_onprocessorerror_Get(this._parent);
  }
}
struct AudioWorkletNodeOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNodeOptions(h);
  }
  auto numberOfInputs(uint numberOfInputs) {
    AudioWorkletNodeOptions_numberOfInputs_Set(this._parent, numberOfInputs);
  }
  auto numberOfInputs() {
    return AudioWorkletNodeOptions_numberOfInputs_Get(this._parent);
  }
  auto numberOfOutputs(uint numberOfOutputs) {
    AudioWorkletNodeOptions_numberOfOutputs_Set(this._parent, numberOfOutputs);
  }
  auto numberOfOutputs() {
    return AudioWorkletNodeOptions_numberOfOutputs_Get(this._parent);
  }
  auto outputChannelCount(Sequence!(uint) outputChannelCount) {
    AudioWorkletNodeOptions_outputChannelCount_Set(this._parent, outputChannelCount.handle);
  }
  auto outputChannelCount() {
    return Sequence!(uint)(AudioWorkletNodeOptions_outputChannelCount_Get(this._parent));
  }
  auto parameterData(Record!(string, double) parameterData) {
    AudioWorkletNodeOptions_parameterData_Set(this._parent, parameterData.handle);
  }
  auto parameterData() {
    return Record!(string, double)(AudioWorkletNodeOptions_parameterData_Get(this._parent));
  }
  auto processorOptions(Optional!(JsObject) processorOptions) {
    AudioWorkletNodeOptions_processorOptions_Set(this._parent, !processorOptions.empty, processorOptions.front.handle);
  }
  auto processorOptions() {
    return AudioWorkletNodeOptions_processorOptions_Get(this._parent);
  }
}
struct AudioWorkletProcessor {
  JsHandle handle;
  alias handle this;
  auto port() {
    return MessagePort(AudioWorkletProcessor_port_Get(this.handle));
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
    return AudioDestinationNode(BaseAudioContext_destination_Get(this._parent));
  }
  auto sampleRate() {
    return BaseAudioContext_sampleRate_Get(this._parent);
  }
  auto currentTime() {
    return BaseAudioContext_currentTime_Get(this._parent);
  }
  auto listener() {
    return AudioListener(BaseAudioContext_listener_Get(this._parent));
  }
  auto state() {
    return BaseAudioContext_state_Get(this._parent);
  }
  auto audioWorklet() {
    return AudioWorklet(BaseAudioContext_audioWorklet_Get(this._parent));
  }
  auto onstatechange(EventHandler onstatechange) {
    BaseAudioContext_onstatechange_Set(this._parent, onstatechange);
  }
  auto onstatechange() {
    return BaseAudioContext_onstatechange_Get(this._parent);
  }
  auto createAnalyser() {
    return AnalyserNode(BaseAudioContext_createAnalyser(this._parent));
  }
  auto createBiquadFilter() {
    return BiquadFilterNode(BaseAudioContext_createBiquadFilter(this._parent));
  }
  auto createBuffer(uint numberOfChannels, uint length, float sampleRate) {
    return AudioBuffer(BaseAudioContext_createBuffer(this._parent, numberOfChannels, length, sampleRate));
  }
  auto createBufferSource() {
    return AudioBufferSourceNode(BaseAudioContext_createBufferSource(this._parent));
  }
  auto createChannelMerger(uint numberOfInputs /* = 6 */) {
    return ChannelMergerNode(BaseAudioContext_createChannelMerger(this._parent, numberOfInputs));
  }
  auto createChannelSplitter(uint numberOfOutputs /* = 6 */) {
    return ChannelSplitterNode(BaseAudioContext_createChannelSplitter(this._parent, numberOfOutputs));
  }
  auto createConstantSource() {
    return ConstantSourceNode(BaseAudioContext_createConstantSource(this._parent));
  }
  auto createConvolver() {
    return ConvolverNode(BaseAudioContext_createConvolver(this._parent));
  }
  auto createDelay(double maxDelayTime /* = 1.0 */) {
    return DelayNode(BaseAudioContext_createDelay(this._parent, maxDelayTime));
  }
  auto createDynamicsCompressor() {
    return DynamicsCompressorNode(BaseAudioContext_createDynamicsCompressor(this._parent));
  }
  auto createGain() {
    return GainNode(BaseAudioContext_createGain(this._parent));
  }
  auto createIIRFilter(Sequence!(double) feedforward, Sequence!(double) feedback) {
    return IIRFilterNode(BaseAudioContext_createIIRFilter(this._parent, feedforward.handle, feedback.handle));
  }
  auto createOscillator() {
    return OscillatorNode(BaseAudioContext_createOscillator(this._parent));
  }
  auto createPanner() {
    return PannerNode(BaseAudioContext_createPanner(this._parent));
  }
  auto createPeriodicWave(Sequence!(float) real_, Sequence!(float) imag, PeriodicWaveConstraints constraints) {
    return PeriodicWave(BaseAudioContext_createPeriodicWave(this._parent, real_.handle, imag.handle, constraints.handle));
  }
  auto createScriptProcessor(uint bufferSize /* = 0 */, uint numberOfInputChannels /* = 2 */, uint numberOfOutputChannels /* = 2 */) {
    return ScriptProcessorNode(BaseAudioContext_createScriptProcessor(this._parent, bufferSize, numberOfInputChannels, numberOfOutputChannels));
  }
  auto createStereoPanner() {
    return StereoPannerNode(BaseAudioContext_createStereoPanner(this._parent));
  }
  auto createWaveShaper() {
    return WaveShaperNode(BaseAudioContext_createWaveShaper(this._parent));
  }
  auto decodeAudioData(ArrayBuffer audioData, Optional!(DecodeSuccessCallback) successCallback, Optional!(DecodeErrorCallback) errorCallback) {
    return Promise!(AudioBuffer)(BaseAudioContext_decodeAudioData(this._parent, audioData.handle, !successCallback.empty, successCallback.front, !errorCallback.empty, errorCallback.front));
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
    return BiquadFilterNode_type_Get(this._parent);
  }
  auto frequency() {
    return AudioParam(BiquadFilterNode_frequency_Get(this._parent));
  }
  auto detune() {
    return AudioParam(BiquadFilterNode_detune_Get(this._parent));
  }
  auto Q() {
    return AudioParam(BiquadFilterNode_Q_Get(this._parent));
  }
  auto gain() {
    return AudioParam(BiquadFilterNode_gain_Get(this._parent));
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
  auto type(BiquadFilterType type) {
    BiquadFilterOptions_type_Set(this._parent, type);
  }
  auto type() {
    return BiquadFilterOptions_type_Get(this._parent);
  }
  auto Q(float q) {
    BiquadFilterOptions_Q_Set(this._parent, Q);
  }
  auto Q() {
    return BiquadFilterOptions_Q_Get(this._parent);
  }
  auto detune(float detune) {
    BiquadFilterOptions_detune_Set(this._parent, detune);
  }
  auto detune() {
    return BiquadFilterOptions_detune_Get(this._parent);
  }
  auto frequency(float frequency) {
    BiquadFilterOptions_frequency_Set(this._parent, frequency);
  }
  auto frequency() {
    return BiquadFilterOptions_frequency_Get(this._parent);
  }
  auto gain(float gain) {
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
  auto numberOfInputs(uint numberOfInputs) {
    ChannelMergerOptions_numberOfInputs_Set(this._parent, numberOfInputs);
  }
  auto numberOfInputs() {
    return ChannelMergerOptions_numberOfInputs_Get(this._parent);
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
  auto numberOfOutputs(uint numberOfOutputs) {
    ChannelSplitterOptions_numberOfOutputs_Set(this._parent, numberOfOutputs);
  }
  auto numberOfOutputs() {
    return ChannelSplitterOptions_numberOfOutputs_Get(this._parent);
  }
}
struct ConstantSourceNode {
  AudioScheduledSourceNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioScheduledSourceNode(h);
  }
  auto offset() {
    return AudioParam(ConstantSourceNode_offset_Get(this._parent));
  }
}
struct ConstantSourceOptions {
  JsHandle handle;
  alias handle this;
  auto offset(float offset) {
    ConstantSourceOptions_offset_Set(this.handle, offset);
  }
  auto offset() {
    return ConstantSourceOptions_offset_Get(this.handle);
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
    return ConvolverNode_buffer_Get(this._parent);
  }
  auto normalize(bool normalize) {
    ConvolverNode_normalize_Set(this._parent, normalize);
  }
  auto normalize() {
    return ConvolverNode_normalize_Get(this._parent);
  }
}
struct ConvolverOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNodeOptions(h);
  }
  auto buffer(Optional!(AudioBuffer) buffer) {
    ConvolverOptions_buffer_Set(this._parent, !buffer.empty, buffer.front.handle);
  }
  auto buffer() {
    return ConvolverOptions_buffer_Get(this._parent);
  }
  auto disableNormalization(bool disableNormalization) {
    ConvolverOptions_disableNormalization_Set(this._parent, disableNormalization);
  }
  auto disableNormalization() {
    return ConvolverOptions_disableNormalization_Get(this._parent);
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
    return AudioParam(DelayNode_delayTime_Get(this._parent));
  }
}
struct DelayOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNodeOptions(h);
  }
  auto maxDelayTime(double maxDelayTime) {
    DelayOptions_maxDelayTime_Set(this._parent, maxDelayTime);
  }
  auto maxDelayTime() {
    return DelayOptions_maxDelayTime_Get(this._parent);
  }
  auto delayTime(double delayTime) {
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
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
  auto threshold() {
    return AudioParam(DynamicsCompressorNode_threshold_Get(this._parent));
  }
  auto knee() {
    return AudioParam(DynamicsCompressorNode_knee_Get(this._parent));
  }
  auto ratio() {
    return AudioParam(DynamicsCompressorNode_ratio_Get(this._parent));
  }
  auto reduction() {
    return DynamicsCompressorNode_reduction_Get(this._parent);
  }
  auto attack() {
    return AudioParam(DynamicsCompressorNode_attack_Get(this._parent));
  }
  auto release() {
    return AudioParam(DynamicsCompressorNode_release_Get(this._parent));
  }
}
struct DynamicsCompressorOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNodeOptions(h);
  }
  auto attack(float attack) {
    DynamicsCompressorOptions_attack_Set(this._parent, attack);
  }
  auto attack() {
    return DynamicsCompressorOptions_attack_Get(this._parent);
  }
  auto knee(float knee) {
    DynamicsCompressorOptions_knee_Set(this._parent, knee);
  }
  auto knee() {
    return DynamicsCompressorOptions_knee_Get(this._parent);
  }
  auto ratio(float ratio) {
    DynamicsCompressorOptions_ratio_Set(this._parent, ratio);
  }
  auto ratio() {
    return DynamicsCompressorOptions_ratio_Get(this._parent);
  }
  auto release(float release) {
    DynamicsCompressorOptions_release_Set(this._parent, release);
  }
  auto release() {
    return DynamicsCompressorOptions_release_Get(this._parent);
  }
  auto threshold(float threshold) {
    DynamicsCompressorOptions_threshold_Set(this._parent, threshold);
  }
  auto threshold() {
    return DynamicsCompressorOptions_threshold_Get(this._parent);
  }
}
struct GainNode {
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
  auto gain() {
    return AudioParam(GainNode_gain_Get(this._parent));
  }
}
struct GainOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNodeOptions(h);
  }
  auto gain(float gain) {
    GainOptions_gain_Set(this._parent, gain);
  }
  auto gain() {
    return GainOptions_gain_Get(this._parent);
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
  auto feedforward(Sequence!(double) feedforward) {
    IIRFilterOptions_feedforward_Set(this._parent, feedforward.handle);
  }
  auto feedforward() {
    return Sequence!(double)(IIRFilterOptions_feedforward_Get(this._parent));
  }
  auto feedback(Sequence!(double) feedback) {
    IIRFilterOptions_feedback_Set(this._parent, feedback.handle);
  }
  auto feedback() {
    return Sequence!(double)(IIRFilterOptions_feedback_Get(this._parent));
  }
}
struct MediaElementAudioSourceNode {
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
  auto mediaElement() {
    return HTMLMediaElement(MediaElementAudioSourceNode_mediaElement_Get(this._parent));
  }
}
struct MediaElementAudioSourceOptions {
  JsHandle handle;
  alias handle this;
  auto mediaElement(HTMLMediaElement mediaElement) {
    MediaElementAudioSourceOptions_mediaElement_Set(this.handle, mediaElement.handle);
  }
  auto mediaElement() {
    return HTMLMediaElement(MediaElementAudioSourceOptions_mediaElement_Get(this.handle));
  }
}
struct MediaStreamAudioDestinationNode {
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
  auto stream() {
    return MediaStream(MediaStreamAudioDestinationNode_stream_Get(this._parent));
  }
}
struct MediaStreamAudioSourceNode {
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
  auto mediaStream() {
    return MediaStream(MediaStreamAudioSourceNode_mediaStream_Get(this._parent));
  }
}
struct MediaStreamAudioSourceOptions {
  JsHandle handle;
  alias handle this;
  auto mediaStream(MediaStream mediaStream) {
    MediaStreamAudioSourceOptions_mediaStream_Set(this.handle, mediaStream.handle);
  }
  auto mediaStream() {
    return MediaStream(MediaStreamAudioSourceOptions_mediaStream_Get(this.handle));
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
  auto mediaStreamTrack(MediaStreamTrack mediaStreamTrack) {
    MediaStreamTrackAudioSourceOptions_mediaStreamTrack_Set(this.handle, mediaStreamTrack.handle);
  }
  auto mediaStreamTrack() {
    return MediaStreamTrack(MediaStreamTrackAudioSourceOptions_mediaStreamTrack_Get(this.handle));
  }
}
struct OfflineAudioCompletionEvent {
  Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Event(h);
  }
  auto renderedBuffer() {
    return AudioBuffer(OfflineAudioCompletionEvent_renderedBuffer_Get(this._parent));
  }
}
struct OfflineAudioCompletionEventInit {
  EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventInit(h);
  }
  auto renderedBuffer(AudioBuffer renderedBuffer) {
    OfflineAudioCompletionEventInit_renderedBuffer_Set(this._parent, renderedBuffer.handle);
  }
  auto renderedBuffer() {
    return AudioBuffer(OfflineAudioCompletionEventInit_renderedBuffer_Get(this._parent));
  }
}
struct OfflineAudioContext {
  BaseAudioContext _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = BaseAudioContext(h);
  }
  auto startRendering() {
    return Promise!(AudioBuffer)(OfflineAudioContext_startRendering(this._parent));
  }
  auto resume() {
    return Promise!(void)(OfflineAudioContext_resume(this._parent));
  }
  auto suspend(double suspendTime) {
    return Promise!(void)(OfflineAudioContext_suspend(this._parent, suspendTime));
  }
  auto length() {
    return OfflineAudioContext_length_Get(this._parent);
  }
  auto oncomplete(EventHandler oncomplete) {
    OfflineAudioContext_oncomplete_Set(this._parent, oncomplete);
  }
  auto oncomplete() {
    return OfflineAudioContext_oncomplete_Get(this._parent);
  }
}
struct OfflineAudioContextOptions {
  JsHandle handle;
  alias handle this;
  auto numberOfChannels(uint numberOfChannels) {
    OfflineAudioContextOptions_numberOfChannels_Set(this.handle, numberOfChannels);
  }
  auto numberOfChannels() {
    return OfflineAudioContextOptions_numberOfChannels_Get(this.handle);
  }
  auto length(uint length) {
    OfflineAudioContextOptions_length_Set(this.handle, length);
  }
  auto length() {
    return OfflineAudioContextOptions_length_Get(this.handle);
  }
  auto sampleRate(float sampleRate) {
    OfflineAudioContextOptions_sampleRate_Set(this.handle, sampleRate);
  }
  auto sampleRate() {
    return OfflineAudioContextOptions_sampleRate_Get(this.handle);
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
    return OscillatorNode_type_Get(this._parent);
  }
  auto frequency() {
    return AudioParam(OscillatorNode_frequency_Get(this._parent));
  }
  auto detune() {
    return AudioParam(OscillatorNode_detune_Get(this._parent));
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
  auto type(OscillatorType type) {
    OscillatorOptions_type_Set(this._parent, type);
  }
  auto type() {
    return OscillatorOptions_type_Get(this._parent);
  }
  auto frequency(float frequency) {
    OscillatorOptions_frequency_Set(this._parent, frequency);
  }
  auto frequency() {
    return OscillatorOptions_frequency_Get(this._parent);
  }
  auto detune(float detune) {
    OscillatorOptions_detune_Set(this._parent, detune);
  }
  auto detune() {
    return OscillatorOptions_detune_Get(this._parent);
  }
  auto periodicWave(PeriodicWave periodicWave) {
    OscillatorOptions_periodicWave_Set(this._parent, periodicWave.handle);
  }
  auto periodicWave() {
    return PeriodicWave(OscillatorOptions_periodicWave_Get(this._parent));
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
    return PannerNode_panningModel_Get(this._parent);
  }
  auto positionX() {
    return AudioParam(PannerNode_positionX_Get(this._parent));
  }
  auto positionY() {
    return AudioParam(PannerNode_positionY_Get(this._parent));
  }
  auto positionZ() {
    return AudioParam(PannerNode_positionZ_Get(this._parent));
  }
  auto orientationX() {
    return AudioParam(PannerNode_orientationX_Get(this._parent));
  }
  auto orientationY() {
    return AudioParam(PannerNode_orientationY_Get(this._parent));
  }
  auto orientationZ() {
    return AudioParam(PannerNode_orientationZ_Get(this._parent));
  }
  auto distanceModel(DistanceModelType distanceModel) {
    PannerNode_distanceModel_Set(this._parent, distanceModel);
  }
  auto distanceModel() {
    return PannerNode_distanceModel_Get(this._parent);
  }
  auto refDistance(double refDistance) {
    PannerNode_refDistance_Set(this._parent, refDistance);
  }
  auto refDistance() {
    return PannerNode_refDistance_Get(this._parent);
  }
  auto maxDistance(double maxDistance) {
    PannerNode_maxDistance_Set(this._parent, maxDistance);
  }
  auto maxDistance() {
    return PannerNode_maxDistance_Get(this._parent);
  }
  auto rolloffFactor(double rolloffFactor) {
    PannerNode_rolloffFactor_Set(this._parent, rolloffFactor);
  }
  auto rolloffFactor() {
    return PannerNode_rolloffFactor_Get(this._parent);
  }
  auto coneInnerAngle(double coneInnerAngle) {
    PannerNode_coneInnerAngle_Set(this._parent, coneInnerAngle);
  }
  auto coneInnerAngle() {
    return PannerNode_coneInnerAngle_Get(this._parent);
  }
  auto coneOuterAngle(double coneOuterAngle) {
    PannerNode_coneOuterAngle_Set(this._parent, coneOuterAngle);
  }
  auto coneOuterAngle() {
    return PannerNode_coneOuterAngle_Get(this._parent);
  }
  auto coneOuterGain(double coneOuterGain) {
    PannerNode_coneOuterGain_Set(this._parent, coneOuterGain);
  }
  auto coneOuterGain() {
    return PannerNode_coneOuterGain_Get(this._parent);
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
  auto panningModel(PanningModelType panningModel) {
    PannerOptions_panningModel_Set(this._parent, panningModel);
  }
  auto panningModel() {
    return PannerOptions_panningModel_Get(this._parent);
  }
  auto distanceModel(DistanceModelType distanceModel) {
    PannerOptions_distanceModel_Set(this._parent, distanceModel);
  }
  auto distanceModel() {
    return PannerOptions_distanceModel_Get(this._parent);
  }
  auto positionX(float positionX) {
    PannerOptions_positionX_Set(this._parent, positionX);
  }
  auto positionX() {
    return PannerOptions_positionX_Get(this._parent);
  }
  auto positionY(float positionY) {
    PannerOptions_positionY_Set(this._parent, positionY);
  }
  auto positionY() {
    return PannerOptions_positionY_Get(this._parent);
  }
  auto positionZ(float positionZ) {
    PannerOptions_positionZ_Set(this._parent, positionZ);
  }
  auto positionZ() {
    return PannerOptions_positionZ_Get(this._parent);
  }
  auto orientationX(float orientationX) {
    PannerOptions_orientationX_Set(this._parent, orientationX);
  }
  auto orientationX() {
    return PannerOptions_orientationX_Get(this._parent);
  }
  auto orientationY(float orientationY) {
    PannerOptions_orientationY_Set(this._parent, orientationY);
  }
  auto orientationY() {
    return PannerOptions_orientationY_Get(this._parent);
  }
  auto orientationZ(float orientationZ) {
    PannerOptions_orientationZ_Set(this._parent, orientationZ);
  }
  auto orientationZ() {
    return PannerOptions_orientationZ_Get(this._parent);
  }
  auto refDistance(double refDistance) {
    PannerOptions_refDistance_Set(this._parent, refDistance);
  }
  auto refDistance() {
    return PannerOptions_refDistance_Get(this._parent);
  }
  auto maxDistance(double maxDistance) {
    PannerOptions_maxDistance_Set(this._parent, maxDistance);
  }
  auto maxDistance() {
    return PannerOptions_maxDistance_Get(this._parent);
  }
  auto rolloffFactor(double rolloffFactor) {
    PannerOptions_rolloffFactor_Set(this._parent, rolloffFactor);
  }
  auto rolloffFactor() {
    return PannerOptions_rolloffFactor_Get(this._parent);
  }
  auto coneInnerAngle(double coneInnerAngle) {
    PannerOptions_coneInnerAngle_Set(this._parent, coneInnerAngle);
  }
  auto coneInnerAngle() {
    return PannerOptions_coneInnerAngle_Get(this._parent);
  }
  auto coneOuterAngle(double coneOuterAngle) {
    PannerOptions_coneOuterAngle_Set(this._parent, coneOuterAngle);
  }
  auto coneOuterAngle() {
    return PannerOptions_coneOuterAngle_Get(this._parent);
  }
  auto coneOuterGain(double coneOuterGain) {
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
  JsHandle handle;
  alias handle this;
}
struct PeriodicWaveConstraints {
  JsHandle handle;
  alias handle this;
  auto disableNormalization(bool disableNormalization) {
    PeriodicWaveConstraints_disableNormalization_Set(this.handle, disableNormalization);
  }
  auto disableNormalization() {
    return PeriodicWaveConstraints_disableNormalization_Get(this.handle);
  }
}
struct PeriodicWaveOptions {
  PeriodicWaveConstraints _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = PeriodicWaveConstraints(h);
  }
  auto real_(Sequence!(float) real_) {
    PeriodicWaveOptions_real_Set(this._parent, real_.handle);
  }
  auto real_() {
    return Sequence!(float)(PeriodicWaveOptions_real_Get(this._parent));
  }
  auto imag(Sequence!(float) imag) {
    PeriodicWaveOptions_imag_Set(this._parent, imag.handle);
  }
  auto imag() {
    return Sequence!(float)(PeriodicWaveOptions_imag_Get(this._parent));
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
    return ScriptProcessorNode_onaudioprocess_Get(this._parent);
  }
  auto bufferSize() {
    return ScriptProcessorNode_bufferSize_Get(this._parent);
  }
}
struct StereoPannerNode {
  AudioNode _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNode(h);
  }
  auto pan() {
    return AudioParam(StereoPannerNode_pan_Get(this._parent));
  }
}
struct StereoPannerOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNodeOptions(h);
  }
  auto pan(float pan) {
    StereoPannerOptions_pan_Set(this._parent, pan);
  }
  auto pan() {
    return StereoPannerOptions_pan_Get(this._parent);
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
    return WaveShaperNode_curve_Get(this._parent);
  }
  auto oversample(OverSampleType oversample) {
    WaveShaperNode_oversample_Set(this._parent, oversample);
  }
  auto oversample() {
    return WaveShaperNode_oversample_Get(this._parent);
  }
}
struct WaveShaperOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = AudioNodeOptions(h);
  }
  auto curve(Sequence!(float) curve) {
    WaveShaperOptions_curve_Set(this._parent, curve.handle);
  }
  auto curve() {
    return Sequence!(float)(WaveShaperOptions_curve_Get(this._parent));
  }
  auto oversample(OverSampleType oversample) {
    WaveShaperOptions_oversample_Set(this._parent, oversample);
  }
  auto oversample() {
    return WaveShaperOptions_oversample_Get(this._parent);
  }
}


extern (C) void AnalyserNode_getFloatFrequencyData(JsHandle, JsHandle);
extern (C) void AnalyserNode_getByteFrequencyData(JsHandle, JsHandle);
extern (C) void AnalyserNode_getFloatTimeDomainData(JsHandle, JsHandle);
extern (C) void AnalyserNode_getByteTimeDomainData(JsHandle, JsHandle);
extern (C) void AnalyserNode_fftSize_Set(JsHandle, uint);
extern (C) uint AnalyserNode_fftSize_Get(JsHandle);
extern (C) uint AnalyserNode_frequencyBinCount_Get(JsHandle);
extern (C) void AnalyserNode_minDecibels_Set(JsHandle, double);
extern (C) double AnalyserNode_minDecibels_Get(JsHandle);
extern (C) void AnalyserNode_maxDecibels_Set(JsHandle, double);
extern (C) double AnalyserNode_maxDecibels_Get(JsHandle);
extern (C) void AnalyserNode_smoothingTimeConstant_Set(JsHandle, double);
extern (C) double AnalyserNode_smoothingTimeConstant_Get(JsHandle);
extern (C) void AnalyserOptions_fftSize_Set(JsHandle, uint);
extern (C) uint AnalyserOptions_fftSize_Get(JsHandle);
extern (C) void AnalyserOptions_maxDecibels_Set(JsHandle, double);
extern (C) double AnalyserOptions_maxDecibels_Get(JsHandle);
extern (C) void AnalyserOptions_minDecibels_Set(JsHandle, double);
extern (C) double AnalyserOptions_minDecibels_Get(JsHandle);
extern (C) void AnalyserOptions_smoothingTimeConstant_Set(JsHandle, double);
extern (C) double AnalyserOptions_smoothingTimeConstant_Get(JsHandle);
extern (C) float AudioBuffer_sampleRate_Get(JsHandle);
extern (C) uint AudioBuffer_length_Get(JsHandle);
extern (C) double AudioBuffer_duration_Get(JsHandle);
extern (C) uint AudioBuffer_numberOfChannels_Get(JsHandle);
extern (C) JsHandle AudioBuffer_getChannelData(JsHandle, uint);
extern (C) void AudioBuffer_copyFromChannel(JsHandle, JsHandle, uint, uint);
extern (C) void AudioBuffer_copyToChannel(JsHandle, JsHandle, uint, uint);
extern (C) void AudioBufferOptions_numberOfChannels_Set(JsHandle, uint);
extern (C) uint AudioBufferOptions_numberOfChannels_Get(JsHandle);
extern (C) void AudioBufferOptions_length_Set(JsHandle, uint);
extern (C) uint AudioBufferOptions_length_Get(JsHandle);
extern (C) void AudioBufferOptions_sampleRate_Set(JsHandle, float);
extern (C) float AudioBufferOptions_sampleRate_Get(JsHandle);
extern (C) void AudioBufferSourceNode_buffer_Set(JsHandle, bool, JsHandle);
extern (C) Optional!(AudioBuffer) AudioBufferSourceNode_buffer_Get(JsHandle);
extern (C) JsHandle AudioBufferSourceNode_playbackRate_Get(JsHandle);
extern (C) JsHandle AudioBufferSourceNode_detune_Get(JsHandle);
extern (C) void AudioBufferSourceNode_loop_Set(JsHandle, bool);
extern (C) bool AudioBufferSourceNode_loop_Get(JsHandle);
extern (C) void AudioBufferSourceNode_loopStart_Set(JsHandle, double);
extern (C) double AudioBufferSourceNode_loopStart_Get(JsHandle);
extern (C) void AudioBufferSourceNode_loopEnd_Set(JsHandle, double);
extern (C) double AudioBufferSourceNode_loopEnd_Get(JsHandle);
extern (C) void AudioBufferSourceNode_start(JsHandle, double, double, double);
extern (C) void AudioBufferSourceOptions_buffer_Set(JsHandle, bool, JsHandle);
extern (C) Optional!(AudioBuffer) AudioBufferSourceOptions_buffer_Get(JsHandle);
extern (C) void AudioBufferSourceOptions_detune_Set(JsHandle, float);
extern (C) float AudioBufferSourceOptions_detune_Get(JsHandle);
extern (C) void AudioBufferSourceOptions_loop_Set(JsHandle, bool);
extern (C) bool AudioBufferSourceOptions_loop_Get(JsHandle);
extern (C) void AudioBufferSourceOptions_loopEnd_Set(JsHandle, double);
extern (C) double AudioBufferSourceOptions_loopEnd_Get(JsHandle);
extern (C) void AudioBufferSourceOptions_loopStart_Set(JsHandle, double);
extern (C) double AudioBufferSourceOptions_loopStart_Get(JsHandle);
extern (C) void AudioBufferSourceOptions_playbackRate_Set(JsHandle, float);
extern (C) float AudioBufferSourceOptions_playbackRate_Get(JsHandle);
extern (C) double AudioContext_baseLatency_Get(JsHandle);
extern (C) double AudioContext_outputLatency_Get(JsHandle);
extern (C) JsHandle AudioContext_getOutputTimestamp(JsHandle);
extern (C) JsHandle AudioContext_resume(JsHandle);
extern (C) JsHandle AudioContext_suspend(JsHandle);
extern (C) JsHandle AudioContext_close(JsHandle);
extern (C) JsHandle AudioContext_createMediaElementSource(JsHandle, JsHandle);
extern (C) JsHandle AudioContext_createMediaStreamSource(JsHandle, JsHandle);
extern (C) JsHandle AudioContext_createMediaStreamTrackSource(JsHandle, JsHandle);
extern (C) JsHandle AudioContext_createMediaStreamDestination(JsHandle);
extern (C) void AudioContextOptions_latencyHint_Set(JsHandle, SumType!(AudioContextLatencyCategory, double));
extern (C) SumType!(AudioContextLatencyCategory, double) AudioContextOptions_latencyHint_Get(JsHandle);
extern (C) void AudioContextOptions_sampleRate_Set(JsHandle, float);
extern (C) float AudioContextOptions_sampleRate_Get(JsHandle);
extern (C) uint AudioDestinationNode_maxChannelCount_Get(JsHandle);
extern (C) JsHandle AudioListener_positionX_Get(JsHandle);
extern (C) JsHandle AudioListener_positionY_Get(JsHandle);
extern (C) JsHandle AudioListener_positionZ_Get(JsHandle);
extern (C) JsHandle AudioListener_forwardX_Get(JsHandle);
extern (C) JsHandle AudioListener_forwardY_Get(JsHandle);
extern (C) JsHandle AudioListener_forwardZ_Get(JsHandle);
extern (C) JsHandle AudioListener_upX_Get(JsHandle);
extern (C) JsHandle AudioListener_upY_Get(JsHandle);
extern (C) JsHandle AudioListener_upZ_Get(JsHandle);
extern (C) void AudioListener_setPosition(JsHandle, float, float, float);
extern (C) void AudioListener_setOrientation(JsHandle, float, float, float, float, float, float);
extern (C) JsHandle AudioNode_connect__JsHandle_uint_uint(JsHandle, JsHandle, uint, uint);
extern (C) void AudioNode_connect__JsHandle_uint(JsHandle, JsHandle, uint);
extern (C) void AudioNode_disconnect__(JsHandle);
extern (C) void AudioNode_disconnect__uint(JsHandle, uint);
extern (C) void AudioNode_disconnect__JsHandle(JsHandle, JsHandle);
extern (C) void AudioNode_disconnect__JsHandle_uint(JsHandle, JsHandle, uint);
extern (C) void AudioNode_disconnect__JsHandle_uint_uint(JsHandle, JsHandle, uint, uint);
extern (C) JsHandle AudioNode_context_Get(JsHandle);
extern (C) uint AudioNode_numberOfInputs_Get(JsHandle);
extern (C) uint AudioNode_numberOfOutputs_Get(JsHandle);
extern (C) void AudioNode_channelCount_Set(JsHandle, uint);
extern (C) uint AudioNode_channelCount_Get(JsHandle);
extern (C) void AudioNode_channelCountMode_Set(JsHandle, ChannelCountMode);
extern (C) ChannelCountMode AudioNode_channelCountMode_Get(JsHandle);
extern (C) void AudioNode_channelInterpretation_Set(JsHandle, ChannelInterpretation);
extern (C) ChannelInterpretation AudioNode_channelInterpretation_Get(JsHandle);
extern (C) void AudioNodeOptions_channelCount_Set(JsHandle, uint);
extern (C) uint AudioNodeOptions_channelCount_Get(JsHandle);
extern (C) void AudioNodeOptions_channelCountMode_Set(JsHandle, ChannelCountMode);
extern (C) ChannelCountMode AudioNodeOptions_channelCountMode_Get(JsHandle);
extern (C) void AudioNodeOptions_channelInterpretation_Set(JsHandle, ChannelInterpretation);
extern (C) ChannelInterpretation AudioNodeOptions_channelInterpretation_Get(JsHandle);
extern (C) void AudioParam_value_Set(JsHandle, float);
extern (C) float AudioParam_value_Get(JsHandle);
extern (C) void AudioParam_automationRate_Set(JsHandle, AutomationRate);
extern (C) AutomationRate AudioParam_automationRate_Get(JsHandle);
extern (C) float AudioParam_defaultValue_Get(JsHandle);
extern (C) float AudioParam_minValue_Get(JsHandle);
extern (C) float AudioParam_maxValue_Get(JsHandle);
extern (C) JsHandle AudioParam_setValueAtTime(JsHandle, float, double);
extern (C) JsHandle AudioParam_linearRampToValueAtTime(JsHandle, float, double);
extern (C) JsHandle AudioParam_exponentialRampToValueAtTime(JsHandle, float, double);
extern (C) JsHandle AudioParam_setTargetAtTime(JsHandle, float, double, float);
extern (C) JsHandle AudioParam_setValueCurveAtTime(JsHandle, JsHandle, double, double);
extern (C) JsHandle AudioParam_cancelScheduledValues(JsHandle, double);
extern (C) JsHandle AudioParam_cancelAndHoldAtTime(JsHandle, double);
extern (C) void AudioParamDescriptor_name_Set(JsHandle, string);
extern (C) string AudioParamDescriptor_name_Get(JsHandle);
extern (C) void AudioParamDescriptor_defaultValue_Set(JsHandle, float);
extern (C) float AudioParamDescriptor_defaultValue_Get(JsHandle);
extern (C) void AudioParamDescriptor_minValue_Set(JsHandle, float);
extern (C) float AudioParamDescriptor_minValue_Get(JsHandle);
extern (C) void AudioParamDescriptor_maxValue_Set(JsHandle, float);
extern (C) float AudioParamDescriptor_maxValue_Get(JsHandle);
extern (C) void AudioParamDescriptor_automationRate_Set(JsHandle, AutomationRate);
extern (C) AutomationRate AudioParamDescriptor_automationRate_Get(JsHandle);
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
extern (C) double AudioProcessingEvent_playbackTime_Get(JsHandle);
extern (C) JsHandle AudioProcessingEvent_inputBuffer_Get(JsHandle);
extern (C) JsHandle AudioProcessingEvent_outputBuffer_Get(JsHandle);
extern (C) void AudioProcessingEventInit_playbackTime_Set(JsHandle, double);
extern (C) double AudioProcessingEventInit_playbackTime_Get(JsHandle);
extern (C) void AudioProcessingEventInit_inputBuffer_Set(JsHandle, JsHandle);
extern (C) JsHandle AudioProcessingEventInit_inputBuffer_Get(JsHandle);
extern (C) void AudioProcessingEventInit_outputBuffer_Set(JsHandle, JsHandle);
extern (C) JsHandle AudioProcessingEventInit_outputBuffer_Get(JsHandle);
extern (C) void AudioScheduledSourceNode_onended_Set(JsHandle, EventHandler);
extern (C) EventHandler AudioScheduledSourceNode_onended_Get(JsHandle);
extern (C) void AudioScheduledSourceNode_start(JsHandle, double);
extern (C) void AudioScheduledSourceNode_stop(JsHandle, double);
extern (C) void AudioTimestamp_contextTime_Set(JsHandle, double);
extern (C) double AudioTimestamp_contextTime_Get(JsHandle);
extern (C) void AudioTimestamp_performanceTime_Set(JsHandle, double);
extern (C) double AudioTimestamp_performanceTime_Get(JsHandle);
extern (C) void AudioWorkletGlobalScope_registerProcessor(JsHandle, string, VoidFunction);
extern (C) ulong AudioWorkletGlobalScope_currentFrame_Get(JsHandle);
extern (C) double AudioWorkletGlobalScope_currentTime_Get(JsHandle);
extern (C) float AudioWorkletGlobalScope_sampleRate_Get(JsHandle);
extern (C) JsHandle AudioWorkletNode_parameters_Get(JsHandle);
extern (C) JsHandle AudioWorkletNode_port_Get(JsHandle);
extern (C) void AudioWorkletNode_onprocessorerror_Set(JsHandle, EventHandler);
extern (C) EventHandler AudioWorkletNode_onprocessorerror_Get(JsHandle);
extern (C) void AudioWorkletNodeOptions_numberOfInputs_Set(JsHandle, uint);
extern (C) uint AudioWorkletNodeOptions_numberOfInputs_Get(JsHandle);
extern (C) void AudioWorkletNodeOptions_numberOfOutputs_Set(JsHandle, uint);
extern (C) uint AudioWorkletNodeOptions_numberOfOutputs_Get(JsHandle);
extern (C) void AudioWorkletNodeOptions_outputChannelCount_Set(JsHandle, JsHandle);
extern (C) JsHandle AudioWorkletNodeOptions_outputChannelCount_Get(JsHandle);
extern (C) void AudioWorkletNodeOptions_parameterData_Set(JsHandle, JsHandle);
extern (C) JsHandle AudioWorkletNodeOptions_parameterData_Get(JsHandle);
extern (C) void AudioWorkletNodeOptions_processorOptions_Set(JsHandle, bool, JsHandle);
extern (C) Optional!(JsObject) AudioWorkletNodeOptions_processorOptions_Get(JsHandle);
extern (C) JsHandle AudioWorkletProcessor_port_Get(JsHandle);
extern (C) JsHandle BaseAudioContext_destination_Get(JsHandle);
extern (C) float BaseAudioContext_sampleRate_Get(JsHandle);
extern (C) double BaseAudioContext_currentTime_Get(JsHandle);
extern (C) JsHandle BaseAudioContext_listener_Get(JsHandle);
extern (C) AudioContextState BaseAudioContext_state_Get(JsHandle);
extern (C) JsHandle BaseAudioContext_audioWorklet_Get(JsHandle);
extern (C) void BaseAudioContext_onstatechange_Set(JsHandle, EventHandler);
extern (C) EventHandler BaseAudioContext_onstatechange_Get(JsHandle);
extern (C) JsHandle BaseAudioContext_createAnalyser(JsHandle);
extern (C) JsHandle BaseAudioContext_createBiquadFilter(JsHandle);
extern (C) JsHandle BaseAudioContext_createBuffer(JsHandle, uint, uint, float);
extern (C) JsHandle BaseAudioContext_createBufferSource(JsHandle);
extern (C) JsHandle BaseAudioContext_createChannelMerger(JsHandle, uint);
extern (C) JsHandle BaseAudioContext_createChannelSplitter(JsHandle, uint);
extern (C) JsHandle BaseAudioContext_createConstantSource(JsHandle);
extern (C) JsHandle BaseAudioContext_createConvolver(JsHandle);
extern (C) JsHandle BaseAudioContext_createDelay(JsHandle, double);
extern (C) JsHandle BaseAudioContext_createDynamicsCompressor(JsHandle);
extern (C) JsHandle BaseAudioContext_createGain(JsHandle);
extern (C) JsHandle BaseAudioContext_createIIRFilter(JsHandle, JsHandle, JsHandle);
extern (C) JsHandle BaseAudioContext_createOscillator(JsHandle);
extern (C) JsHandle BaseAudioContext_createPanner(JsHandle);
extern (C) JsHandle BaseAudioContext_createPeriodicWave(JsHandle, JsHandle, JsHandle, JsHandle);
extern (C) JsHandle BaseAudioContext_createScriptProcessor(JsHandle, uint, uint, uint);
extern (C) JsHandle BaseAudioContext_createStereoPanner(JsHandle);
extern (C) JsHandle BaseAudioContext_createWaveShaper(JsHandle);
extern (C) JsHandle BaseAudioContext_decodeAudioData(JsHandle, JsHandle, bool, DecodeSuccessCallback, bool, DecodeErrorCallback);
extern (C) void BiquadFilterNode_type_Set(JsHandle, BiquadFilterType);
extern (C) BiquadFilterType BiquadFilterNode_type_Get(JsHandle);
extern (C) JsHandle BiquadFilterNode_frequency_Get(JsHandle);
extern (C) JsHandle BiquadFilterNode_detune_Get(JsHandle);
extern (C) JsHandle BiquadFilterNode_Q_Get(JsHandle);
extern (C) JsHandle BiquadFilterNode_gain_Get(JsHandle);
extern (C) void BiquadFilterNode_getFrequencyResponse(JsHandle, JsHandle, JsHandle, JsHandle);
extern (C) void BiquadFilterOptions_type_Set(JsHandle, BiquadFilterType);
extern (C) BiquadFilterType BiquadFilterOptions_type_Get(JsHandle);
extern (C) void BiquadFilterOptions_Q_Set(JsHandle, float);
extern (C) float BiquadFilterOptions_Q_Get(JsHandle);
extern (C) void BiquadFilterOptions_detune_Set(JsHandle, float);
extern (C) float BiquadFilterOptions_detune_Get(JsHandle);
extern (C) void BiquadFilterOptions_frequency_Set(JsHandle, float);
extern (C) float BiquadFilterOptions_frequency_Get(JsHandle);
extern (C) void BiquadFilterOptions_gain_Set(JsHandle, float);
extern (C) float BiquadFilterOptions_gain_Get(JsHandle);
extern (C) void ChannelMergerOptions_numberOfInputs_Set(JsHandle, uint);
extern (C) uint ChannelMergerOptions_numberOfInputs_Get(JsHandle);
extern (C) void ChannelSplitterOptions_numberOfOutputs_Set(JsHandle, uint);
extern (C) uint ChannelSplitterOptions_numberOfOutputs_Get(JsHandle);
extern (C) JsHandle ConstantSourceNode_offset_Get(JsHandle);
extern (C) void ConstantSourceOptions_offset_Set(JsHandle, float);
extern (C) float ConstantSourceOptions_offset_Get(JsHandle);
extern (C) void ConvolverNode_buffer_Set(JsHandle, bool, JsHandle);
extern (C) Optional!(AudioBuffer) ConvolverNode_buffer_Get(JsHandle);
extern (C) void ConvolverNode_normalize_Set(JsHandle, bool);
extern (C) bool ConvolverNode_normalize_Get(JsHandle);
extern (C) void ConvolverOptions_buffer_Set(JsHandle, bool, JsHandle);
extern (C) Optional!(AudioBuffer) ConvolverOptions_buffer_Get(JsHandle);
extern (C) void ConvolverOptions_disableNormalization_Set(JsHandle, bool);
extern (C) bool ConvolverOptions_disableNormalization_Get(JsHandle);
extern (C) JsHandle DelayNode_delayTime_Get(JsHandle);
extern (C) void DelayOptions_maxDelayTime_Set(JsHandle, double);
extern (C) double DelayOptions_maxDelayTime_Get(JsHandle);
extern (C) void DelayOptions_delayTime_Set(JsHandle, double);
extern (C) double DelayOptions_delayTime_Get(JsHandle);
extern (C) JsHandle DynamicsCompressorNode_threshold_Get(JsHandle);
extern (C) JsHandle DynamicsCompressorNode_knee_Get(JsHandle);
extern (C) JsHandle DynamicsCompressorNode_ratio_Get(JsHandle);
extern (C) float DynamicsCompressorNode_reduction_Get(JsHandle);
extern (C) JsHandle DynamicsCompressorNode_attack_Get(JsHandle);
extern (C) JsHandle DynamicsCompressorNode_release_Get(JsHandle);
extern (C) void DynamicsCompressorOptions_attack_Set(JsHandle, float);
extern (C) float DynamicsCompressorOptions_attack_Get(JsHandle);
extern (C) void DynamicsCompressorOptions_knee_Set(JsHandle, float);
extern (C) float DynamicsCompressorOptions_knee_Get(JsHandle);
extern (C) void DynamicsCompressorOptions_ratio_Set(JsHandle, float);
extern (C) float DynamicsCompressorOptions_ratio_Get(JsHandle);
extern (C) void DynamicsCompressorOptions_release_Set(JsHandle, float);
extern (C) float DynamicsCompressorOptions_release_Get(JsHandle);
extern (C) void DynamicsCompressorOptions_threshold_Set(JsHandle, float);
extern (C) float DynamicsCompressorOptions_threshold_Get(JsHandle);
extern (C) JsHandle GainNode_gain_Get(JsHandle);
extern (C) void GainOptions_gain_Set(JsHandle, float);
extern (C) float GainOptions_gain_Get(JsHandle);
extern (C) void IIRFilterNode_getFrequencyResponse(JsHandle, JsHandle, JsHandle, JsHandle);
extern (C) void IIRFilterOptions_feedforward_Set(JsHandle, JsHandle);
extern (C) JsHandle IIRFilterOptions_feedforward_Get(JsHandle);
extern (C) void IIRFilterOptions_feedback_Set(JsHandle, JsHandle);
extern (C) JsHandle IIRFilterOptions_feedback_Get(JsHandle);
extern (C) JsHandle MediaElementAudioSourceNode_mediaElement_Get(JsHandle);
extern (C) void MediaElementAudioSourceOptions_mediaElement_Set(JsHandle, JsHandle);
extern (C) JsHandle MediaElementAudioSourceOptions_mediaElement_Get(JsHandle);
extern (C) JsHandle MediaStreamAudioDestinationNode_stream_Get(JsHandle);
extern (C) JsHandle MediaStreamAudioSourceNode_mediaStream_Get(JsHandle);
extern (C) void MediaStreamAudioSourceOptions_mediaStream_Set(JsHandle, JsHandle);
extern (C) JsHandle MediaStreamAudioSourceOptions_mediaStream_Get(JsHandle);
extern (C) void MediaStreamTrackAudioSourceOptions_mediaStreamTrack_Set(JsHandle, JsHandle);
extern (C) JsHandle MediaStreamTrackAudioSourceOptions_mediaStreamTrack_Get(JsHandle);
extern (C) JsHandle OfflineAudioCompletionEvent_renderedBuffer_Get(JsHandle);
extern (C) void OfflineAudioCompletionEventInit_renderedBuffer_Set(JsHandle, JsHandle);
extern (C) JsHandle OfflineAudioCompletionEventInit_renderedBuffer_Get(JsHandle);
extern (C) JsHandle OfflineAudioContext_startRendering(JsHandle);
extern (C) JsHandle OfflineAudioContext_resume(JsHandle);
extern (C) JsHandle OfflineAudioContext_suspend(JsHandle, double);
extern (C) uint OfflineAudioContext_length_Get(JsHandle);
extern (C) void OfflineAudioContext_oncomplete_Set(JsHandle, EventHandler);
extern (C) EventHandler OfflineAudioContext_oncomplete_Get(JsHandle);
extern (C) void OfflineAudioContextOptions_numberOfChannels_Set(JsHandle, uint);
extern (C) uint OfflineAudioContextOptions_numberOfChannels_Get(JsHandle);
extern (C) void OfflineAudioContextOptions_length_Set(JsHandle, uint);
extern (C) uint OfflineAudioContextOptions_length_Get(JsHandle);
extern (C) void OfflineAudioContextOptions_sampleRate_Set(JsHandle, float);
extern (C) float OfflineAudioContextOptions_sampleRate_Get(JsHandle);
extern (C) void OscillatorNode_type_Set(JsHandle, OscillatorType);
extern (C) OscillatorType OscillatorNode_type_Get(JsHandle);
extern (C) JsHandle OscillatorNode_frequency_Get(JsHandle);
extern (C) JsHandle OscillatorNode_detune_Get(JsHandle);
extern (C) void OscillatorNode_setPeriodicWave(JsHandle, JsHandle);
extern (C) void OscillatorOptions_type_Set(JsHandle, OscillatorType);
extern (C) OscillatorType OscillatorOptions_type_Get(JsHandle);
extern (C) void OscillatorOptions_frequency_Set(JsHandle, float);
extern (C) float OscillatorOptions_frequency_Get(JsHandle);
extern (C) void OscillatorOptions_detune_Set(JsHandle, float);
extern (C) float OscillatorOptions_detune_Get(JsHandle);
extern (C) void OscillatorOptions_periodicWave_Set(JsHandle, JsHandle);
extern (C) JsHandle OscillatorOptions_periodicWave_Get(JsHandle);
extern (C) void PannerNode_panningModel_Set(JsHandle, PanningModelType);
extern (C) PanningModelType PannerNode_panningModel_Get(JsHandle);
extern (C) JsHandle PannerNode_positionX_Get(JsHandle);
extern (C) JsHandle PannerNode_positionY_Get(JsHandle);
extern (C) JsHandle PannerNode_positionZ_Get(JsHandle);
extern (C) JsHandle PannerNode_orientationX_Get(JsHandle);
extern (C) JsHandle PannerNode_orientationY_Get(JsHandle);
extern (C) JsHandle PannerNode_orientationZ_Get(JsHandle);
extern (C) void PannerNode_distanceModel_Set(JsHandle, DistanceModelType);
extern (C) DistanceModelType PannerNode_distanceModel_Get(JsHandle);
extern (C) void PannerNode_refDistance_Set(JsHandle, double);
extern (C) double PannerNode_refDistance_Get(JsHandle);
extern (C) void PannerNode_maxDistance_Set(JsHandle, double);
extern (C) double PannerNode_maxDistance_Get(JsHandle);
extern (C) void PannerNode_rolloffFactor_Set(JsHandle, double);
extern (C) double PannerNode_rolloffFactor_Get(JsHandle);
extern (C) void PannerNode_coneInnerAngle_Set(JsHandle, double);
extern (C) double PannerNode_coneInnerAngle_Get(JsHandle);
extern (C) void PannerNode_coneOuterAngle_Set(JsHandle, double);
extern (C) double PannerNode_coneOuterAngle_Get(JsHandle);
extern (C) void PannerNode_coneOuterGain_Set(JsHandle, double);
extern (C) double PannerNode_coneOuterGain_Get(JsHandle);
extern (C) void PannerNode_setPosition(JsHandle, float, float, float);
extern (C) void PannerNode_setOrientation(JsHandle, float, float, float);
extern (C) void PannerOptions_panningModel_Set(JsHandle, PanningModelType);
extern (C) PanningModelType PannerOptions_panningModel_Get(JsHandle);
extern (C) void PannerOptions_distanceModel_Set(JsHandle, DistanceModelType);
extern (C) DistanceModelType PannerOptions_distanceModel_Get(JsHandle);
extern (C) void PannerOptions_positionX_Set(JsHandle, float);
extern (C) float PannerOptions_positionX_Get(JsHandle);
extern (C) void PannerOptions_positionY_Set(JsHandle, float);
extern (C) float PannerOptions_positionY_Get(JsHandle);
extern (C) void PannerOptions_positionZ_Set(JsHandle, float);
extern (C) float PannerOptions_positionZ_Get(JsHandle);
extern (C) void PannerOptions_orientationX_Set(JsHandle, float);
extern (C) float PannerOptions_orientationX_Get(JsHandle);
extern (C) void PannerOptions_orientationY_Set(JsHandle, float);
extern (C) float PannerOptions_orientationY_Get(JsHandle);
extern (C) void PannerOptions_orientationZ_Set(JsHandle, float);
extern (C) float PannerOptions_orientationZ_Get(JsHandle);
extern (C) void PannerOptions_refDistance_Set(JsHandle, double);
extern (C) double PannerOptions_refDistance_Get(JsHandle);
extern (C) void PannerOptions_maxDistance_Set(JsHandle, double);
extern (C) double PannerOptions_maxDistance_Get(JsHandle);
extern (C) void PannerOptions_rolloffFactor_Set(JsHandle, double);
extern (C) double PannerOptions_rolloffFactor_Get(JsHandle);
extern (C) void PannerOptions_coneInnerAngle_Set(JsHandle, double);
extern (C) double PannerOptions_coneInnerAngle_Get(JsHandle);
extern (C) void PannerOptions_coneOuterAngle_Set(JsHandle, double);
extern (C) double PannerOptions_coneOuterAngle_Get(JsHandle);
extern (C) void PannerOptions_coneOuterGain_Set(JsHandle, double);
extern (C) double PannerOptions_coneOuterGain_Get(JsHandle);
extern (C) void PeriodicWaveConstraints_disableNormalization_Set(JsHandle, bool);
extern (C) bool PeriodicWaveConstraints_disableNormalization_Get(JsHandle);
extern (C) void PeriodicWaveOptions_real_Set(JsHandle, JsHandle);
extern (C) JsHandle PeriodicWaveOptions_real_Get(JsHandle);
extern (C) void PeriodicWaveOptions_imag_Set(JsHandle, JsHandle);
extern (C) JsHandle PeriodicWaveOptions_imag_Get(JsHandle);
extern (C) void ScriptProcessorNode_onaudioprocess_Set(JsHandle, EventHandler);
extern (C) EventHandler ScriptProcessorNode_onaudioprocess_Get(JsHandle);
extern (C) int ScriptProcessorNode_bufferSize_Get(JsHandle);
extern (C) JsHandle StereoPannerNode_pan_Get(JsHandle);
extern (C) void StereoPannerOptions_pan_Set(JsHandle, float);
extern (C) float StereoPannerOptions_pan_Get(JsHandle);
extern (C) void WaveShaperNode_curve_Set(JsHandle, bool, JsHandle);
extern (C) Optional!(Float32Array) WaveShaperNode_curve_Get(JsHandle);
extern (C) void WaveShaperNode_oversample_Set(JsHandle, OverSampleType);
extern (C) OverSampleType WaveShaperNode_oversample_Get(JsHandle);
extern (C) void WaveShaperOptions_curve_Set(JsHandle, JsHandle);
extern (C) JsHandle WaveShaperOptions_curve_Get(JsHandle);
extern (C) void WaveShaperOptions_oversample_Set(JsHandle, OverSampleType);
extern (C) OverSampleType WaveShaperOptions_oversample_Get(JsHandle);