module spasm.bindings.audio;

import spasm.types;
import spasm.bindings.common : DOMException;
import spasm.bindings.domhighrestimestamp : DOMHighResTimeStamp;
import spasm.bindings.html : EventHandler;
import spasm.bindings.html : HTMLMediaElement;
import spasm.bindings.html : MessagePort;
import spasm.bindings.common : VoidFunction;

struct AnalyserNode {
  AudioNode _parent;
  alias _parent this;
  void getFloatFrequencyData(Float32Array array) {
    AnalyserNode_getFloatFrequencyData(handle, array.handle);
  }
  void getByteFrequencyData(Uint8Array array) {
    AnalyserNode_getByteFrequencyData(handle, array.handle);
  }
  void getFloatTimeDomainData(Float32Array array) {
    AnalyserNode_getFloatTimeDomainData(handle, array.handle);
  }
  void getByteTimeDomainData(Uint8Array array) {
    AnalyserNode_getByteTimeDomainData(handle, array.handle);
  }
  void fftSize(uint fftSize) {
    AnalyserNode_fftSize_Set(handle, fftSize);
  }
  uint fftSize() {
    return AnalyserNode_fftSize_Get(handle);
  }
  uint frequencyBinCount() {
    return AnalyserNode_frequencyBinCount_Get(handle);
  }
  void minDecibels(double minDecibels) {
    AnalyserNode_minDecibels_Set(handle, minDecibels);
  }
  double minDecibels() {
    return AnalyserNode_minDecibels_Get(handle);
  }
  void maxDecibels(double maxDecibels) {
    AnalyserNode_maxDecibels_Set(handle, maxDecibels);
  }
  double maxDecibels() {
    return AnalyserNode_maxDecibels_Get(handle);
  }
  void smoothingTimeConstant(double smoothingTimeConstant) {
    AnalyserNode_smoothingTimeConstant_Set(handle, smoothingTimeConstant);
  }
  double smoothingTimeConstant() {
    return AnalyserNode_smoothingTimeConstant_Get(handle);
  }
}
struct AnalyserOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  void fftSize(uint fftSize) {
    AnalyserOptions_fftSize_Set(handle, fftSize);
  }
  uint fftSize() {
    return AnalyserOptions_fftSize_Get(handle);
  }
  void maxDecibels(double maxDecibels) {
    AnalyserOptions_maxDecibels_Set(handle, maxDecibels);
  }
  double maxDecibels() {
    return AnalyserOptions_maxDecibels_Get(handle);
  }
  void minDecibels(double minDecibels) {
    AnalyserOptions_minDecibels_Set(handle, minDecibels);
  }
  double minDecibels() {
    return AnalyserOptions_minDecibels_Get(handle);
  }
  void smoothingTimeConstant(double smoothingTimeConstant) {
    AnalyserOptions_smoothingTimeConstant_Set(handle, smoothingTimeConstant);
  }
  double smoothingTimeConstant() {
    return AnalyserOptions_smoothingTimeConstant_Get(handle);
  }
}
struct AudioBuffer {
  JsHandle handle;
  alias handle this;
  float sampleRate() {
    return AudioBuffer_sampleRate_Get(handle);
  }
  uint length() {
    return AudioBuffer_length_Get(handle);
  }
  double duration() {
    return AudioBuffer_duration_Get(handle);
  }
  uint numberOfChannels() {
    return AudioBuffer_numberOfChannels_Get(handle);
  }
  Float32Array getChannelData(uint channel) {
    return Float32Array(AudioBuffer_getChannelData(handle, channel));
  }
  void copyFromChannel(Float32Array destination, uint channelNumber, uint startInChannel /* = 0 */) {
    AudioBuffer_copyFromChannel(handle, destination.handle, channelNumber, startInChannel);
  }
  void copyToChannel(Float32Array source, uint channelNumber, uint startInChannel /* = 0 */) {
    AudioBuffer_copyToChannel(handle, source.handle, channelNumber, startInChannel);
  }
}
struct AudioBufferOptions {
  JsHandle handle;
  alias handle this;
  void numberOfChannels(uint numberOfChannels) {
    AudioBufferOptions_numberOfChannels_Set(handle, numberOfChannels);
  }
  uint numberOfChannels() {
    return AudioBufferOptions_numberOfChannels_Get(handle);
  }
  void length(uint length) {
    AudioBufferOptions_length_Set(handle, length);
  }
  uint length() {
    return AudioBufferOptions_length_Get(handle);
  }
  void sampleRate(float sampleRate) {
    AudioBufferOptions_sampleRate_Set(handle, sampleRate);
  }
  float sampleRate() {
    return AudioBufferOptions_sampleRate_Get(handle);
  }
}
struct AudioBufferSourceNode {
  AudioScheduledSourceNode _parent;
  alias _parent this;
  void buffer(Optional!(AudioBuffer) buffer) {
    AudioBufferSourceNode_buffer_Set(handle, !buffer.empty, buffer.value.handle);
  }
  Optional!(AudioBuffer) buffer() {
    return AudioBufferSourceNode_buffer_Get(handle);
  }
  AudioParam playbackRate() {
    return AudioParam(AudioBufferSourceNode_playbackRate_Get(handle));
  }
  AudioParam detune() {
    return AudioParam(AudioBufferSourceNode_detune_Get(handle));
  }
  void loop(bool loop) {
    AudioBufferSourceNode_loop_Set(handle, loop);
  }
  bool loop() {
    return AudioBufferSourceNode_loop_Get(handle);
  }
  void loopStart(double loopStart) {
    AudioBufferSourceNode_loopStart_Set(handle, loopStart);
  }
  double loopStart() {
    return AudioBufferSourceNode_loopStart_Get(handle);
  }
  void loopEnd(double loopEnd) {
    AudioBufferSourceNode_loopEnd_Set(handle, loopEnd);
  }
  double loopEnd() {
    return AudioBufferSourceNode_loopEnd_Get(handle);
  }
  void start(double when /* = 0 */, double offset, double duration) {
    AudioBufferSourceNode_start(handle, when, offset, duration);
  }
}
struct AudioBufferSourceOptions {
  JsHandle handle;
  alias handle this;
  void buffer(Optional!(AudioBuffer) buffer) {
    AudioBufferSourceOptions_buffer_Set(handle, !buffer.empty, buffer.value.handle);
  }
  Optional!(AudioBuffer) buffer() {
    return AudioBufferSourceOptions_buffer_Get(handle);
  }
  void detune(float detune) {
    AudioBufferSourceOptions_detune_Set(handle, detune);
  }
  float detune() {
    return AudioBufferSourceOptions_detune_Get(handle);
  }
  void loop(bool loop) {
    AudioBufferSourceOptions_loop_Set(handle, loop);
  }
  bool loop() {
    return AudioBufferSourceOptions_loop_Get(handle);
  }
  void loopEnd(double loopEnd) {
    AudioBufferSourceOptions_loopEnd_Set(handle, loopEnd);
  }
  double loopEnd() {
    return AudioBufferSourceOptions_loopEnd_Get(handle);
  }
  void loopStart(double loopStart) {
    AudioBufferSourceOptions_loopStart_Set(handle, loopStart);
  }
  double loopStart() {
    return AudioBufferSourceOptions_loopStart_Get(handle);
  }
  void playbackRate(float playbackRate) {
    AudioBufferSourceOptions_playbackRate_Set(handle, playbackRate);
  }
  float playbackRate() {
    return AudioBufferSourceOptions_playbackRate_Get(handle);
  }
}
struct AudioContext {
  BaseAudioContext _parent;
  alias _parent this;
  double baseLatency() {
    return AudioContext_baseLatency_Get(handle);
  }
  double outputLatency() {
    return AudioContext_outputLatency_Get(handle);
  }
  AudioTimestamp getOutputTimestamp() {
    return AudioTimestamp(AudioContext_getOutputTimestamp(handle));
  }
  Promise!(void) resume() {
    return Promise!(void)(AudioContext_resume(handle));
  }
  Promise!(void) suspend() {
    return Promise!(void)(AudioContext_suspend(handle));
  }
  Promise!(void) close() {
    return Promise!(void)(AudioContext_close(handle));
  }
  MediaElementAudioSourceNode createMediaElementSource(HTMLMediaElement mediaElement) {
    return MediaElementAudioSourceNode(AudioContext_createMediaElementSource(handle, mediaElement.handle));
  }
  MediaStreamAudioSourceNode createMediaStreamSource(MediaStream mediaStream) {
    return MediaStreamAudioSourceNode(AudioContext_createMediaStreamSource(handle, mediaStream.handle));
  }
  MediaStreamTrackAudioSourceNode createMediaStreamTrackSource(MediaStreamTrack mediaStreamTrack) {
    return MediaStreamTrackAudioSourceNode(AudioContext_createMediaStreamTrackSource(handle, mediaStreamTrack.handle));
  }
  MediaStreamAudioDestinationNode createMediaStreamDestination() {
    return MediaStreamAudioDestinationNode(AudioContext_createMediaStreamDestination(handle));
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
  void latencyHint(SumType!(AudioContextLatencyCategory, double) latencyHint) {
    AudioContextOptions_latencyHint_Set(handle, latencyHint);
  }
  SumType!(AudioContextLatencyCategory, double) latencyHint() {
    return AudioContextOptions_latencyHint_Get(handle);
  }
  void sampleRate(float sampleRate) {
    AudioContextOptions_sampleRate_Set(handle, sampleRate);
  }
  float sampleRate() {
    return AudioContextOptions_sampleRate_Get(handle);
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
  uint maxChannelCount() {
    return AudioDestinationNode_maxChannelCount_Get(handle);
  }
}
struct AudioListener {
  JsHandle handle;
  alias handle this;
  AudioParam positionX() {
    return AudioParam(AudioListener_positionX_Get(handle));
  }
  AudioParam positionY() {
    return AudioParam(AudioListener_positionY_Get(handle));
  }
  AudioParam positionZ() {
    return AudioParam(AudioListener_positionZ_Get(handle));
  }
  AudioParam forwardX() {
    return AudioParam(AudioListener_forwardX_Get(handle));
  }
  AudioParam forwardY() {
    return AudioParam(AudioListener_forwardY_Get(handle));
  }
  AudioParam forwardZ() {
    return AudioParam(AudioListener_forwardZ_Get(handle));
  }
  AudioParam upX() {
    return AudioParam(AudioListener_upX_Get(handle));
  }
  AudioParam upY() {
    return AudioParam(AudioListener_upY_Get(handle));
  }
  AudioParam upZ() {
    return AudioParam(AudioListener_upZ_Get(handle));
  }
  void setPosition(float x, float y, float z) {
    AudioListener_setPosition(handle, x, y, z);
  }
  void setOrientation(float x, float y, float z, float xUp, float yUp, float zUp) {
    AudioListener_setOrientation(handle, x, y, z, xUp, yUp, zUp);
  }
}
struct AudioNode {
  EventTarget _parent;
  alias _parent this;
  AudioNode connect(AudioNode destinationNode, uint output /* = 0 */, uint input /* = 0 */) {
    return AudioNode(AudioNode_connect__JsHandle_uint_uint(handle, destinationNode.handle, output, input));
  }
  void connect(AudioParam destinationParam, uint output /* = 0 */) {
    AudioNode_connect__JsHandle_uint(handle, destinationParam.handle, output);
  }
  void disconnect() {
    AudioNode_disconnect__(handle);
  }
  void disconnect(uint output) {
    AudioNode_disconnect__uint(handle, output);
  }
  void disconnect(AudioNode destinationNode) {
    AudioNode_disconnect__JsHandle(handle, destinationNode.handle);
  }
  void disconnect(AudioNode destinationNode, uint output) {
    AudioNode_disconnect__JsHandle_uint(handle, destinationNode.handle, output);
  }
  void disconnect(AudioNode destinationNode, uint output, uint input) {
    AudioNode_disconnect__JsHandle_uint_uint(handle, destinationNode.handle, output, input);
  }
  void disconnect(AudioParam destinationParam) {
    AudioNode_disconnect__JsHandle(handle, destinationParam.handle);
  }
  void disconnect(AudioParam destinationParam, uint output) {
    AudioNode_disconnect__JsHandle_uint(handle, destinationParam.handle, output);
  }
  BaseAudioContext context() {
    return BaseAudioContext(AudioNode_context_Get(handle));
  }
  uint numberOfInputs() {
    return AudioNode_numberOfInputs_Get(handle);
  }
  uint numberOfOutputs() {
    return AudioNode_numberOfOutputs_Get(handle);
  }
  void channelCount(uint channelCount) {
    AudioNode_channelCount_Set(handle, channelCount);
  }
  uint channelCount() {
    return AudioNode_channelCount_Get(handle);
  }
  void channelCountMode(ChannelCountMode channelCountMode) {
    AudioNode_channelCountMode_Set(handle, channelCountMode);
  }
  ChannelCountMode channelCountMode() {
    return AudioNode_channelCountMode_Get(handle);
  }
  void channelInterpretation(ChannelInterpretation channelInterpretation) {
    AudioNode_channelInterpretation_Set(handle, channelInterpretation);
  }
  ChannelInterpretation channelInterpretation() {
    return AudioNode_channelInterpretation_Get(handle);
  }
}
struct AudioNodeOptions {
  JsHandle handle;
  alias handle this;
  void channelCount(uint channelCount) {
    AudioNodeOptions_channelCount_Set(handle, channelCount);
  }
  uint channelCount() {
    return AudioNodeOptions_channelCount_Get(handle);
  }
  void channelCountMode(ChannelCountMode channelCountMode) {
    AudioNodeOptions_channelCountMode_Set(handle, channelCountMode);
  }
  ChannelCountMode channelCountMode() {
    return AudioNodeOptions_channelCountMode_Get(handle);
  }
  void channelInterpretation(ChannelInterpretation channelInterpretation) {
    AudioNodeOptions_channelInterpretation_Set(handle, channelInterpretation);
  }
  ChannelInterpretation channelInterpretation() {
    return AudioNodeOptions_channelInterpretation_Get(handle);
  }
}
struct AudioParam {
  JsHandle handle;
  alias handle this;
  void value(float value) {
    AudioParam_value_Set(handle, value);
  }
  float value() {
    return AudioParam_value_Get(handle);
  }
  void automationRate(AutomationRate automationRate) {
    AudioParam_automationRate_Set(handle, automationRate);
  }
  AutomationRate automationRate() {
    return AudioParam_automationRate_Get(handle);
  }
  float defaultValue() {
    return AudioParam_defaultValue_Get(handle);
  }
  float minValue() {
    return AudioParam_minValue_Get(handle);
  }
  float maxValue() {
    return AudioParam_maxValue_Get(handle);
  }
  AudioParam setValueAtTime(float value, double startTime) {
    return AudioParam(AudioParam_setValueAtTime(handle, value, startTime));
  }
  AudioParam linearRampToValueAtTime(float value, double endTime) {
    return AudioParam(AudioParam_linearRampToValueAtTime(handle, value, endTime));
  }
  AudioParam exponentialRampToValueAtTime(float value, double endTime) {
    return AudioParam(AudioParam_exponentialRampToValueAtTime(handle, value, endTime));
  }
  AudioParam setTargetAtTime(float target, double startTime, float timeConstant) {
    return AudioParam(AudioParam_setTargetAtTime(handle, target, startTime, timeConstant));
  }
  AudioParam setValueCurveAtTime(Sequence!(float) values, double startTime, double duration) {
    return AudioParam(AudioParam_setValueCurveAtTime(handle, values.handle, startTime, duration));
  }
  AudioParam cancelScheduledValues(double cancelTime) {
    return AudioParam(AudioParam_cancelScheduledValues(handle, cancelTime));
  }
  AudioParam cancelAndHoldAtTime(double cancelTime) {
    return AudioParam(AudioParam_cancelAndHoldAtTime(handle, cancelTime));
  }
}
struct AudioParamDescriptor {
  JsHandle handle;
  alias handle this;
  void name(string name) {
    AudioParamDescriptor_name_Set(handle, name);
  }
  string name() {
    return AudioParamDescriptor_name_Get(handle);
  }
  void defaultValue(float defaultValue) {
    AudioParamDescriptor_defaultValue_Set(handle, defaultValue);
  }
  float defaultValue() {
    return AudioParamDescriptor_defaultValue_Get(handle);
  }
  void minValue(float minValue) {
    AudioParamDescriptor_minValue_Set(handle, minValue);
  }
  float minValue() {
    return AudioParamDescriptor_minValue_Get(handle);
  }
  void maxValue(float maxValue) {
    AudioParamDescriptor_maxValue_Set(handle, maxValue);
  }
  float maxValue() {
    return AudioParamDescriptor_maxValue_Get(handle);
  }
  void automationRate(AutomationRate automationRate) {
    AudioParamDescriptor_automationRate_Set(handle, automationRate);
  }
  AutomationRate automationRate() {
    return AudioParamDescriptor_automationRate_Get(handle);
  }
}
struct AudioParamMap {
  JsHandle handle;
  alias handle this;
  uint size() {
    return Maplike_size(handle);
  }
  void clear() {
    Maplike_clear(handle);
  }
  void delete_(string key) {
    Maplike_delete(handle, key);
  }
  Iterator!(ArrayPair!(string, AudioParam)) entries() {
    return Iterator!(ArrayPair!(string, AudioParam))(Maplike_entries(handle));
  }
  void forEach(void delegate(string, JsHandle, JsHandle) callback) {
    Maplike_forEach(handle, callback);
  }
  AudioParam get(string key) {
    return AudioParam(Maplike_get(handle, key));
  }
  bool has(string key) {
    return Maplike_has(handle, key);
  }
  Iterator!(string) keys() {
    return Iterator!(string)(Maplike_keys(handle));
  }
  void set(string key, AudioParam value) {
    Maplike_set(handle, key, value.handle);
  }
  Iterator!(AudioParam) values() {
    return Iterator!(AudioParam)(Maplike_values(handle));
  }
}
struct AudioProcessingEvent {
  Event _parent;
  alias _parent this;
  double playbackTime() {
    return AudioProcessingEvent_playbackTime_Get(handle);
  }
  AudioBuffer inputBuffer() {
    return AudioBuffer(AudioProcessingEvent_inputBuffer_Get(handle));
  }
  AudioBuffer outputBuffer() {
    return AudioBuffer(AudioProcessingEvent_outputBuffer_Get(handle));
  }
}
struct AudioProcessingEventInit {
  EventInit _parent;
  alias _parent this;
  void playbackTime(double playbackTime) {
    AudioProcessingEventInit_playbackTime_Set(handle, playbackTime);
  }
  double playbackTime() {
    return AudioProcessingEventInit_playbackTime_Get(handle);
  }
  void inputBuffer(AudioBuffer inputBuffer) {
    AudioProcessingEventInit_inputBuffer_Set(handle, inputBuffer.handle);
  }
  AudioBuffer inputBuffer() {
    return AudioBuffer(AudioProcessingEventInit_inputBuffer_Get(handle));
  }
  void outputBuffer(AudioBuffer outputBuffer) {
    AudioProcessingEventInit_outputBuffer_Set(handle, outputBuffer.handle);
  }
  AudioBuffer outputBuffer() {
    return AudioBuffer(AudioProcessingEventInit_outputBuffer_Get(handle));
  }
}
struct AudioScheduledSourceNode {
  AudioNode _parent;
  alias _parent this;
  void onended(EventHandler onended) {
    AudioScheduledSourceNode_onended_Set(handle, !onended.empty, onended.value);
  }
  EventHandler onended() {
    return AudioScheduledSourceNode_onended_Get(handle);
  }
  void start(double when /* = 0 */) {
    AudioScheduledSourceNode_start(handle, when);
  }
  void stop(double when /* = 0 */) {
    AudioScheduledSourceNode_stop(handle, when);
  }
}
struct AudioTimestamp {
  JsHandle handle;
  alias handle this;
  void contextTime(double contextTime) {
    AudioTimestamp_contextTime_Set(handle, contextTime);
  }
  double contextTime() {
    return AudioTimestamp_contextTime_Get(handle);
  }
  void performanceTime(double performanceTime) {
    AudioTimestamp_performanceTime_Set(handle, performanceTime);
  }
  double performanceTime() {
    return AudioTimestamp_performanceTime_Get(handle);
  }
}
struct AudioWorklet {
  Worklet _parent;
  alias _parent this;
}
struct AudioWorkletGlobalScope {
  WorkletGlobalScope _parent;
  alias _parent this;
  void registerProcessor(string name, VoidFunction processorCtor) {
    AudioWorkletGlobalScope_registerProcessor(handle, name, processorCtor);
  }
  ulong currentFrame() {
    return AudioWorkletGlobalScope_currentFrame_Get(handle);
  }
  double currentTime() {
    return AudioWorkletGlobalScope_currentTime_Get(handle);
  }
  float sampleRate() {
    return AudioWorkletGlobalScope_sampleRate_Get(handle);
  }
}
struct AudioWorkletNode {
  AudioNode _parent;
  alias _parent this;
  AudioParamMap parameters() {
    return AudioParamMap(AudioWorkletNode_parameters_Get(handle));
  }
  MessagePort port() {
    return MessagePort(AudioWorkletNode_port_Get(handle));
  }
  void onprocessorerror(EventHandler onprocessorerror) {
    AudioWorkletNode_onprocessorerror_Set(handle, !onprocessorerror.empty, onprocessorerror.value);
  }
  EventHandler onprocessorerror() {
    return AudioWorkletNode_onprocessorerror_Get(handle);
  }
}
struct AudioWorkletNodeOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  void numberOfInputs(uint numberOfInputs) {
    AudioWorkletNodeOptions_numberOfInputs_Set(handle, numberOfInputs);
  }
  uint numberOfInputs() {
    return AudioWorkletNodeOptions_numberOfInputs_Get(handle);
  }
  void numberOfOutputs(uint numberOfOutputs) {
    AudioWorkletNodeOptions_numberOfOutputs_Set(handle, numberOfOutputs);
  }
  uint numberOfOutputs() {
    return AudioWorkletNodeOptions_numberOfOutputs_Get(handle);
  }
  void outputChannelCount(Sequence!(uint) outputChannelCount) {
    AudioWorkletNodeOptions_outputChannelCount_Set(handle, outputChannelCount.handle);
  }
  Sequence!(uint) outputChannelCount() {
    return Sequence!(uint)(AudioWorkletNodeOptions_outputChannelCount_Get(handle));
  }
  void parameterData(Record!(string, double) parameterData) {
    AudioWorkletNodeOptions_parameterData_Set(handle, parameterData.handle);
  }
  Record!(string, double) parameterData() {
    return Record!(string, double)(AudioWorkletNodeOptions_parameterData_Get(handle));
  }
  void processorOptions(Optional!(Object) processorOptions) {
    AudioWorkletNodeOptions_processorOptions_Set(handle, !processorOptions.empty, processorOptions.value.handle);
  }
  Optional!(Object) processorOptions() {
    return AudioWorkletNodeOptions_processorOptions_Get(handle);
  }
}
struct AudioWorkletProcessor {
  JsHandle handle;
  alias handle this;
  MessagePort port() {
    return MessagePort(AudioWorkletProcessor_port_Get(handle));
  }
}
enum AutomationRate {
  a_rate,
  k_rate
}
struct BaseAudioContext {
  EventTarget _parent;
  alias _parent this;
  AudioDestinationNode destination() {
    return AudioDestinationNode(BaseAudioContext_destination_Get(handle));
  }
  float sampleRate() {
    return BaseAudioContext_sampleRate_Get(handle);
  }
  double currentTime() {
    return BaseAudioContext_currentTime_Get(handle);
  }
  AudioListener listener() {
    return AudioListener(BaseAudioContext_listener_Get(handle));
  }
  AudioContextState state() {
    return BaseAudioContext_state_Get(handle);
  }
  AudioWorklet audioWorklet() {
    return AudioWorklet(BaseAudioContext_audioWorklet_Get(handle));
  }
  void onstatechange(EventHandler onstatechange) {
    BaseAudioContext_onstatechange_Set(handle, !onstatechange.empty, onstatechange.value);
  }
  EventHandler onstatechange() {
    return BaseAudioContext_onstatechange_Get(handle);
  }
  AnalyserNode createAnalyser() {
    return AnalyserNode(BaseAudioContext_createAnalyser(handle));
  }
  BiquadFilterNode createBiquadFilter() {
    return BiquadFilterNode(BaseAudioContext_createBiquadFilter(handle));
  }
  AudioBuffer createBuffer(uint numberOfChannels, uint length, float sampleRate) {
    return AudioBuffer(BaseAudioContext_createBuffer(handle, numberOfChannels, length, sampleRate));
  }
  AudioBufferSourceNode createBufferSource() {
    return AudioBufferSourceNode(BaseAudioContext_createBufferSource(handle));
  }
  ChannelMergerNode createChannelMerger(uint numberOfInputs /* = 6 */) {
    return ChannelMergerNode(BaseAudioContext_createChannelMerger(handle, numberOfInputs));
  }
  ChannelSplitterNode createChannelSplitter(uint numberOfOutputs /* = 6 */) {
    return ChannelSplitterNode(BaseAudioContext_createChannelSplitter(handle, numberOfOutputs));
  }
  ConstantSourceNode createConstantSource() {
    return ConstantSourceNode(BaseAudioContext_createConstantSource(handle));
  }
  ConvolverNode createConvolver() {
    return ConvolverNode(BaseAudioContext_createConvolver(handle));
  }
  DelayNode createDelay(double maxDelayTime /* = 1.0 */) {
    return DelayNode(BaseAudioContext_createDelay(handle, maxDelayTime));
  }
  DynamicsCompressorNode createDynamicsCompressor() {
    return DynamicsCompressorNode(BaseAudioContext_createDynamicsCompressor(handle));
  }
  GainNode createGain() {
    return GainNode(BaseAudioContext_createGain(handle));
  }
  IIRFilterNode createIIRFilter(Sequence!(double) feedforward, Sequence!(double) feedback) {
    return IIRFilterNode(BaseAudioContext_createIIRFilter(handle, feedforward.handle, feedback.handle));
  }
  OscillatorNode createOscillator() {
    return OscillatorNode(BaseAudioContext_createOscillator(handle));
  }
  PannerNode createPanner() {
    return PannerNode(BaseAudioContext_createPanner(handle));
  }
  PeriodicWave createPeriodicWave(Sequence!(float) real_, Sequence!(float) imag, PeriodicWaveConstraints constraints) {
    return PeriodicWave(BaseAudioContext_createPeriodicWave(handle, real_.handle, imag.handle, constraints.handle));
  }
  ScriptProcessorNode createScriptProcessor(uint bufferSize /* = 0 */, uint numberOfInputChannels /* = 2 */, uint numberOfOutputChannels /* = 2 */) {
    return ScriptProcessorNode(BaseAudioContext_createScriptProcessor(handle, bufferSize, numberOfInputChannels, numberOfOutputChannels));
  }
  StereoPannerNode createStereoPanner() {
    return StereoPannerNode(BaseAudioContext_createStereoPanner(handle));
  }
  WaveShaperNode createWaveShaper() {
    return WaveShaperNode(BaseAudioContext_createWaveShaper(handle));
  }
  Promise!(AudioBuffer) decodeAudioData(ArrayBuffer audioData, Optional!(DecodeSuccessCallback) successCallback, Optional!(DecodeErrorCallback) errorCallback) {
    return Promise!(AudioBuffer)(BaseAudioContext_decodeAudioData(handle, audioData.handle, !successCallback.empty, successCallback.value, !errorCallback.empty, errorCallback.value));
  }
}
struct BiquadFilterNode {
  AudioNode _parent;
  alias _parent this;
  void type(BiquadFilterType type) {
    BiquadFilterNode_type_Set(handle, type);
  }
  BiquadFilterType type() {
    return BiquadFilterNode_type_Get(handle);
  }
  AudioParam frequency() {
    return AudioParam(BiquadFilterNode_frequency_Get(handle));
  }
  AudioParam detune() {
    return AudioParam(BiquadFilterNode_detune_Get(handle));
  }
  AudioParam Q() {
    return AudioParam(BiquadFilterNode_Q_Get(handle));
  }
  AudioParam gain() {
    return AudioParam(BiquadFilterNode_gain_Get(handle));
  }
  void getFrequencyResponse(Float32Array frequencyHz, Float32Array magResponse, Float32Array phaseResponse) {
    BiquadFilterNode_getFrequencyResponse(handle, frequencyHz.handle, magResponse.handle, phaseResponse.handle);
  }
}
struct BiquadFilterOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  void type(BiquadFilterType type) {
    BiquadFilterOptions_type_Set(handle, type);
  }
  BiquadFilterType type() {
    return BiquadFilterOptions_type_Get(handle);
  }
  void Q(float q) {
    BiquadFilterOptions_Q_Set(handle, Q);
  }
  float Q() {
    return BiquadFilterOptions_Q_Get(handle);
  }
  void detune(float detune) {
    BiquadFilterOptions_detune_Set(handle, detune);
  }
  float detune() {
    return BiquadFilterOptions_detune_Get(handle);
  }
  void frequency(float frequency) {
    BiquadFilterOptions_frequency_Set(handle, frequency);
  }
  float frequency() {
    return BiquadFilterOptions_frequency_Get(handle);
  }
  void gain(float gain) {
    BiquadFilterOptions_gain_Set(handle, gain);
  }
  float gain() {
    return BiquadFilterOptions_gain_Get(handle);
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
}
struct ChannelMergerOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  void numberOfInputs(uint numberOfInputs) {
    ChannelMergerOptions_numberOfInputs_Set(handle, numberOfInputs);
  }
  uint numberOfInputs() {
    return ChannelMergerOptions_numberOfInputs_Get(handle);
  }
}
struct ChannelSplitterNode {
  AudioNode _parent;
  alias _parent this;
}
struct ChannelSplitterOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  void numberOfOutputs(uint numberOfOutputs) {
    ChannelSplitterOptions_numberOfOutputs_Set(handle, numberOfOutputs);
  }
  uint numberOfOutputs() {
    return ChannelSplitterOptions_numberOfOutputs_Get(handle);
  }
}
struct ConstantSourceNode {
  AudioScheduledSourceNode _parent;
  alias _parent this;
  AudioParam offset() {
    return AudioParam(ConstantSourceNode_offset_Get(handle));
  }
}
struct ConstantSourceOptions {
  JsHandle handle;
  alias handle this;
  void offset(float offset) {
    ConstantSourceOptions_offset_Set(handle, offset);
  }
  float offset() {
    return ConstantSourceOptions_offset_Get(handle);
  }
}
struct ConvolverNode {
  AudioNode _parent;
  alias _parent this;
  void buffer(Optional!(AudioBuffer) buffer) {
    ConvolverNode_buffer_Set(handle, !buffer.empty, buffer.value.handle);
  }
  Optional!(AudioBuffer) buffer() {
    return ConvolverNode_buffer_Get(handle);
  }
  void normalize(bool normalize) {
    ConvolverNode_normalize_Set(handle, normalize);
  }
  bool normalize() {
    return ConvolverNode_normalize_Get(handle);
  }
}
struct ConvolverOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  void buffer(Optional!(AudioBuffer) buffer) {
    ConvolverOptions_buffer_Set(handle, !buffer.empty, buffer.value.handle);
  }
  Optional!(AudioBuffer) buffer() {
    return ConvolverOptions_buffer_Get(handle);
  }
  void disableNormalization(bool disableNormalization) {
    ConvolverOptions_disableNormalization_Set(handle, disableNormalization);
  }
  bool disableNormalization() {
    return ConvolverOptions_disableNormalization_Get(handle);
  }
}
alias DecodeErrorCallback = void delegate(DOMException);
alias DecodeSuccessCallback = void delegate(AudioBuffer);
struct DelayNode {
  AudioNode _parent;
  alias _parent this;
  AudioParam delayTime() {
    return AudioParam(DelayNode_delayTime_Get(handle));
  }
}
struct DelayOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  void maxDelayTime(double maxDelayTime) {
    DelayOptions_maxDelayTime_Set(handle, maxDelayTime);
  }
  double maxDelayTime() {
    return DelayOptions_maxDelayTime_Get(handle);
  }
  void delayTime(double delayTime) {
    DelayOptions_delayTime_Set(handle, delayTime);
  }
  double delayTime() {
    return DelayOptions_delayTime_Get(handle);
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
  AudioParam threshold() {
    return AudioParam(DynamicsCompressorNode_threshold_Get(handle));
  }
  AudioParam knee() {
    return AudioParam(DynamicsCompressorNode_knee_Get(handle));
  }
  AudioParam ratio() {
    return AudioParam(DynamicsCompressorNode_ratio_Get(handle));
  }
  float reduction() {
    return DynamicsCompressorNode_reduction_Get(handle);
  }
  AudioParam attack() {
    return AudioParam(DynamicsCompressorNode_attack_Get(handle));
  }
  AudioParam release() {
    return AudioParam(DynamicsCompressorNode_release_Get(handle));
  }
}
struct DynamicsCompressorOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  void attack(float attack) {
    DynamicsCompressorOptions_attack_Set(handle, attack);
  }
  float attack() {
    return DynamicsCompressorOptions_attack_Get(handle);
  }
  void knee(float knee) {
    DynamicsCompressorOptions_knee_Set(handle, knee);
  }
  float knee() {
    return DynamicsCompressorOptions_knee_Get(handle);
  }
  void ratio(float ratio) {
    DynamicsCompressorOptions_ratio_Set(handle, ratio);
  }
  float ratio() {
    return DynamicsCompressorOptions_ratio_Get(handle);
  }
  void release(float release) {
    DynamicsCompressorOptions_release_Set(handle, release);
  }
  float release() {
    return DynamicsCompressorOptions_release_Get(handle);
  }
  void threshold(float threshold) {
    DynamicsCompressorOptions_threshold_Set(handle, threshold);
  }
  float threshold() {
    return DynamicsCompressorOptions_threshold_Get(handle);
  }
}
struct GainNode {
  AudioNode _parent;
  alias _parent this;
  AudioParam gain() {
    return AudioParam(GainNode_gain_Get(handle));
  }
}
struct GainOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  void gain(float gain) {
    GainOptions_gain_Set(handle, gain);
  }
  float gain() {
    return GainOptions_gain_Get(handle);
  }
}
struct IIRFilterNode {
  AudioNode _parent;
  alias _parent this;
  void getFrequencyResponse(Float32Array frequencyHz, Float32Array magResponse, Float32Array phaseResponse) {
    IIRFilterNode_getFrequencyResponse(handle, frequencyHz.handle, magResponse.handle, phaseResponse.handle);
  }
}
struct IIRFilterOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  void feedforward(Sequence!(double) feedforward) {
    IIRFilterOptions_feedforward_Set(handle, feedforward.handle);
  }
  Sequence!(double) feedforward() {
    return Sequence!(double)(IIRFilterOptions_feedforward_Get(handle));
  }
  void feedback(Sequence!(double) feedback) {
    IIRFilterOptions_feedback_Set(handle, feedback.handle);
  }
  Sequence!(double) feedback() {
    return Sequence!(double)(IIRFilterOptions_feedback_Get(handle));
  }
}
struct MediaElementAudioSourceNode {
  AudioNode _parent;
  alias _parent this;
  HTMLMediaElement mediaElement() {
    return HTMLMediaElement(MediaElementAudioSourceNode_mediaElement_Get(handle));
  }
}
struct MediaElementAudioSourceOptions {
  JsHandle handle;
  alias handle this;
  void mediaElement(HTMLMediaElement mediaElement) {
    MediaElementAudioSourceOptions_mediaElement_Set(handle, mediaElement.handle);
  }
  HTMLMediaElement mediaElement() {
    return HTMLMediaElement(MediaElementAudioSourceOptions_mediaElement_Get(handle));
  }
}
struct MediaStreamAudioDestinationNode {
  AudioNode _parent;
  alias _parent this;
  MediaStream stream() {
    return MediaStream(MediaStreamAudioDestinationNode_stream_Get(handle));
  }
}
struct MediaStreamAudioSourceNode {
  AudioNode _parent;
  alias _parent this;
  MediaStream mediaStream() {
    return MediaStream(MediaStreamAudioSourceNode_mediaStream_Get(handle));
  }
}
struct MediaStreamAudioSourceOptions {
  JsHandle handle;
  alias handle this;
  void mediaStream(MediaStream mediaStream) {
    MediaStreamAudioSourceOptions_mediaStream_Set(handle, mediaStream.handle);
  }
  MediaStream mediaStream() {
    return MediaStream(MediaStreamAudioSourceOptions_mediaStream_Get(handle));
  }
}
struct MediaStreamTrackAudioSourceNode {
  AudioNode _parent;
  alias _parent this;
}
struct MediaStreamTrackAudioSourceOptions {
  JsHandle handle;
  alias handle this;
  void mediaStreamTrack(MediaStreamTrack mediaStreamTrack) {
    MediaStreamTrackAudioSourceOptions_mediaStreamTrack_Set(handle, mediaStreamTrack.handle);
  }
  MediaStreamTrack mediaStreamTrack() {
    return MediaStreamTrack(MediaStreamTrackAudioSourceOptions_mediaStreamTrack_Get(handle));
  }
}
struct OfflineAudioCompletionEvent {
  Event _parent;
  alias _parent this;
  AudioBuffer renderedBuffer() {
    return AudioBuffer(OfflineAudioCompletionEvent_renderedBuffer_Get(handle));
  }
}
struct OfflineAudioCompletionEventInit {
  EventInit _parent;
  alias _parent this;
  void renderedBuffer(AudioBuffer renderedBuffer) {
    OfflineAudioCompletionEventInit_renderedBuffer_Set(handle, renderedBuffer.handle);
  }
  AudioBuffer renderedBuffer() {
    return AudioBuffer(OfflineAudioCompletionEventInit_renderedBuffer_Get(handle));
  }
}
struct OfflineAudioContext {
  BaseAudioContext _parent;
  alias _parent this;
  Promise!(AudioBuffer) startRendering() {
    return Promise!(AudioBuffer)(OfflineAudioContext_startRendering(handle));
  }
  Promise!(void) resume() {
    return Promise!(void)(OfflineAudioContext_resume(handle));
  }
  Promise!(void) suspend(double suspendTime) {
    return Promise!(void)(OfflineAudioContext_suspend(handle, suspendTime));
  }
  uint length() {
    return OfflineAudioContext_length_Get(handle);
  }
  void oncomplete(EventHandler oncomplete) {
    OfflineAudioContext_oncomplete_Set(handle, !oncomplete.empty, oncomplete.value);
  }
  EventHandler oncomplete() {
    return OfflineAudioContext_oncomplete_Get(handle);
  }
}
struct OfflineAudioContextOptions {
  JsHandle handle;
  alias handle this;
  void numberOfChannels(uint numberOfChannels) {
    OfflineAudioContextOptions_numberOfChannels_Set(handle, numberOfChannels);
  }
  uint numberOfChannels() {
    return OfflineAudioContextOptions_numberOfChannels_Get(handle);
  }
  void length(uint length) {
    OfflineAudioContextOptions_length_Set(handle, length);
  }
  uint length() {
    return OfflineAudioContextOptions_length_Get(handle);
  }
  void sampleRate(float sampleRate) {
    OfflineAudioContextOptions_sampleRate_Set(handle, sampleRate);
  }
  float sampleRate() {
    return OfflineAudioContextOptions_sampleRate_Get(handle);
  }
}
struct OscillatorNode {
  AudioScheduledSourceNode _parent;
  alias _parent this;
  void type(OscillatorType type) {
    OscillatorNode_type_Set(handle, type);
  }
  OscillatorType type() {
    return OscillatorNode_type_Get(handle);
  }
  AudioParam frequency() {
    return AudioParam(OscillatorNode_frequency_Get(handle));
  }
  AudioParam detune() {
    return AudioParam(OscillatorNode_detune_Get(handle));
  }
  void setPeriodicWave(PeriodicWave periodicWave) {
    OscillatorNode_setPeriodicWave(handle, periodicWave.handle);
  }
}
struct OscillatorOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  void type(OscillatorType type) {
    OscillatorOptions_type_Set(handle, type);
  }
  OscillatorType type() {
    return OscillatorOptions_type_Get(handle);
  }
  void frequency(float frequency) {
    OscillatorOptions_frequency_Set(handle, frequency);
  }
  float frequency() {
    return OscillatorOptions_frequency_Get(handle);
  }
  void detune(float detune) {
    OscillatorOptions_detune_Set(handle, detune);
  }
  float detune() {
    return OscillatorOptions_detune_Get(handle);
  }
  void periodicWave(PeriodicWave periodicWave) {
    OscillatorOptions_periodicWave_Set(handle, periodicWave.handle);
  }
  PeriodicWave periodicWave() {
    return PeriodicWave(OscillatorOptions_periodicWave_Get(handle));
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
  void panningModel(PanningModelType panningModel) {
    PannerNode_panningModel_Set(handle, panningModel);
  }
  PanningModelType panningModel() {
    return PannerNode_panningModel_Get(handle);
  }
  AudioParam positionX() {
    return AudioParam(PannerNode_positionX_Get(handle));
  }
  AudioParam positionY() {
    return AudioParam(PannerNode_positionY_Get(handle));
  }
  AudioParam positionZ() {
    return AudioParam(PannerNode_positionZ_Get(handle));
  }
  AudioParam orientationX() {
    return AudioParam(PannerNode_orientationX_Get(handle));
  }
  AudioParam orientationY() {
    return AudioParam(PannerNode_orientationY_Get(handle));
  }
  AudioParam orientationZ() {
    return AudioParam(PannerNode_orientationZ_Get(handle));
  }
  void distanceModel(DistanceModelType distanceModel) {
    PannerNode_distanceModel_Set(handle, distanceModel);
  }
  DistanceModelType distanceModel() {
    return PannerNode_distanceModel_Get(handle);
  }
  void refDistance(double refDistance) {
    PannerNode_refDistance_Set(handle, refDistance);
  }
  double refDistance() {
    return PannerNode_refDistance_Get(handle);
  }
  void maxDistance(double maxDistance) {
    PannerNode_maxDistance_Set(handle, maxDistance);
  }
  double maxDistance() {
    return PannerNode_maxDistance_Get(handle);
  }
  void rolloffFactor(double rolloffFactor) {
    PannerNode_rolloffFactor_Set(handle, rolloffFactor);
  }
  double rolloffFactor() {
    return PannerNode_rolloffFactor_Get(handle);
  }
  void coneInnerAngle(double coneInnerAngle) {
    PannerNode_coneInnerAngle_Set(handle, coneInnerAngle);
  }
  double coneInnerAngle() {
    return PannerNode_coneInnerAngle_Get(handle);
  }
  void coneOuterAngle(double coneOuterAngle) {
    PannerNode_coneOuterAngle_Set(handle, coneOuterAngle);
  }
  double coneOuterAngle() {
    return PannerNode_coneOuterAngle_Get(handle);
  }
  void coneOuterGain(double coneOuterGain) {
    PannerNode_coneOuterGain_Set(handle, coneOuterGain);
  }
  double coneOuterGain() {
    return PannerNode_coneOuterGain_Get(handle);
  }
  void setPosition(float x, float y, float z) {
    PannerNode_setPosition(handle, x, y, z);
  }
  void setOrientation(float x, float y, float z) {
    PannerNode_setOrientation(handle, x, y, z);
  }
}
struct PannerOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  void panningModel(PanningModelType panningModel) {
    PannerOptions_panningModel_Set(handle, panningModel);
  }
  PanningModelType panningModel() {
    return PannerOptions_panningModel_Get(handle);
  }
  void distanceModel(DistanceModelType distanceModel) {
    PannerOptions_distanceModel_Set(handle, distanceModel);
  }
  DistanceModelType distanceModel() {
    return PannerOptions_distanceModel_Get(handle);
  }
  void positionX(float positionX) {
    PannerOptions_positionX_Set(handle, positionX);
  }
  float positionX() {
    return PannerOptions_positionX_Get(handle);
  }
  void positionY(float positionY) {
    PannerOptions_positionY_Set(handle, positionY);
  }
  float positionY() {
    return PannerOptions_positionY_Get(handle);
  }
  void positionZ(float positionZ) {
    PannerOptions_positionZ_Set(handle, positionZ);
  }
  float positionZ() {
    return PannerOptions_positionZ_Get(handle);
  }
  void orientationX(float orientationX) {
    PannerOptions_orientationX_Set(handle, orientationX);
  }
  float orientationX() {
    return PannerOptions_orientationX_Get(handle);
  }
  void orientationY(float orientationY) {
    PannerOptions_orientationY_Set(handle, orientationY);
  }
  float orientationY() {
    return PannerOptions_orientationY_Get(handle);
  }
  void orientationZ(float orientationZ) {
    PannerOptions_orientationZ_Set(handle, orientationZ);
  }
  float orientationZ() {
    return PannerOptions_orientationZ_Get(handle);
  }
  void refDistance(double refDistance) {
    PannerOptions_refDistance_Set(handle, refDistance);
  }
  double refDistance() {
    return PannerOptions_refDistance_Get(handle);
  }
  void maxDistance(double maxDistance) {
    PannerOptions_maxDistance_Set(handle, maxDistance);
  }
  double maxDistance() {
    return PannerOptions_maxDistance_Get(handle);
  }
  void rolloffFactor(double rolloffFactor) {
    PannerOptions_rolloffFactor_Set(handle, rolloffFactor);
  }
  double rolloffFactor() {
    return PannerOptions_rolloffFactor_Get(handle);
  }
  void coneInnerAngle(double coneInnerAngle) {
    PannerOptions_coneInnerAngle_Set(handle, coneInnerAngle);
  }
  double coneInnerAngle() {
    return PannerOptions_coneInnerAngle_Get(handle);
  }
  void coneOuterAngle(double coneOuterAngle) {
    PannerOptions_coneOuterAngle_Set(handle, coneOuterAngle);
  }
  double coneOuterAngle() {
    return PannerOptions_coneOuterAngle_Get(handle);
  }
  void coneOuterGain(double coneOuterGain) {
    PannerOptions_coneOuterGain_Set(handle, coneOuterGain);
  }
  double coneOuterGain() {
    return PannerOptions_coneOuterGain_Get(handle);
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
  void disableNormalization(bool disableNormalization) {
    PeriodicWaveConstraints_disableNormalization_Set(handle, disableNormalization);
  }
  bool disableNormalization() {
    return PeriodicWaveConstraints_disableNormalization_Get(handle);
  }
}
struct PeriodicWaveOptions {
  PeriodicWaveConstraints _parent;
  alias _parent this;
  void real_(Sequence!(float) real_) {
    PeriodicWaveOptions_real_Set(handle, real_.handle);
  }
  Sequence!(float) real_() {
    return Sequence!(float)(PeriodicWaveOptions_real_Get(handle));
  }
  void imag(Sequence!(float) imag) {
    PeriodicWaveOptions_imag_Set(handle, imag.handle);
  }
  Sequence!(float) imag() {
    return Sequence!(float)(PeriodicWaveOptions_imag_Get(handle));
  }
}
struct ScriptProcessorNode {
  AudioNode _parent;
  alias _parent this;
  void onaudioprocess(EventHandler onaudioprocess) {
    ScriptProcessorNode_onaudioprocess_Set(handle, !onaudioprocess.empty, onaudioprocess.value);
  }
  EventHandler onaudioprocess() {
    return ScriptProcessorNode_onaudioprocess_Get(handle);
  }
  int bufferSize() {
    return ScriptProcessorNode_bufferSize_Get(handle);
  }
}
struct StereoPannerNode {
  AudioNode _parent;
  alias _parent this;
  AudioParam pan() {
    return AudioParam(StereoPannerNode_pan_Get(handle));
  }
}
struct StereoPannerOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  void pan(float pan) {
    StereoPannerOptions_pan_Set(handle, pan);
  }
  float pan() {
    return StereoPannerOptions_pan_Get(handle);
  }
}
struct WaveShaperNode {
  AudioNode _parent;
  alias _parent this;
  void curve(Optional!(Float32Array) curve) {
    WaveShaperNode_curve_Set(handle, !curve.empty, curve.value.handle);
  }
  Optional!(Float32Array) curve() {
    return WaveShaperNode_curve_Get(handle);
  }
  void oversample(OverSampleType oversample) {
    WaveShaperNode_oversample_Set(handle, oversample);
  }
  OverSampleType oversample() {
    return WaveShaperNode_oversample_Get(handle);
  }
}
struct WaveShaperOptions {
  AudioNodeOptions _parent;
  alias _parent this;
  void curve(Sequence!(float) curve) {
    WaveShaperOptions_curve_Set(handle, curve.handle);
  }
  Sequence!(float) curve() {
    return Sequence!(float)(WaveShaperOptions_curve_Get(handle));
  }
  void oversample(OverSampleType oversample) {
    WaveShaperOptions_oversample_Set(handle, oversample);
  }
  OverSampleType oversample() {
    return WaveShaperOptions_oversample_Get(handle);
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
extern (C) void AudioNode_disconnect__JsHandle(JsHandle, JsHandle);
extern (C) void AudioNode_disconnect__JsHandle_uint(JsHandle, JsHandle, uint);
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
extern (C) Optional!(Object) AudioWorkletNodeOptions_processorOptions_Get(JsHandle);
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