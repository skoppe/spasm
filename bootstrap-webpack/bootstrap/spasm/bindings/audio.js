import spasm from '../modules/spasm.js';
export default {
  jsExports: {
    AnalyserNode_getFloatFrequencyData: function(ctx, array) {
      spasm.objects[ctx].getFloatFrequencyData(spasm.objects[array]);
    },
    AnalyserNode_getByteFrequencyData: function(ctx, array) {
      spasm.objects[ctx].getByteFrequencyData(spasm.objects[array]);
    },
    AnalyserNode_getFloatTimeDomainData: function(ctx, array) {
      spasm.objects[ctx].getFloatTimeDomainData(spasm.objects[array]);
    },
    AnalyserNode_getByteTimeDomainData: function(ctx, array) {
      spasm.objects[ctx].getByteTimeDomainData(spasm.objects[array]);
    },
    AnalyserNode_fftSize_Set: function(ctx, fftSize) {
      spasm.objects[ctx].fftSize = fftSize;
    },
    AnalyserNode_fftSize_Get: function(ctx) {
      return spasm.objects[ctx].fftSize;
    },
    AnalyserNode_frequencyBinCount_Get: function(ctx) {
      return spasm.objects[ctx].frequencyBinCount;
    },
    AnalyserNode_minDecibels_Set: function(ctx, minDecibels) {
      spasm.objects[ctx].minDecibels = minDecibels;
    },
    AnalyserNode_minDecibels_Get: function(ctx) {
      return spasm.objects[ctx].minDecibels;
    },
    AnalyserNode_maxDecibels_Set: function(ctx, maxDecibels) {
      spasm.objects[ctx].maxDecibels = maxDecibels;
    },
    AnalyserNode_maxDecibels_Get: function(ctx) {
      return spasm.objects[ctx].maxDecibels;
    },
    AnalyserNode_smoothingTimeConstant_Set: function(ctx, smoothingTimeConstant) {
      spasm.objects[ctx].smoothingTimeConstant = smoothingTimeConstant;
    },
    AnalyserNode_smoothingTimeConstant_Get: function(ctx) {
      return spasm.objects[ctx].smoothingTimeConstant;
    },
    AnalyserOptions_fftSize_Set: function(ctx, fftSize) {
      spasm.objects[ctx].fftSize = fftSize;
    },
    AnalyserOptions_fftSize_Get: function(ctx) {
      return spasm.objects[ctx].fftSize;
    },
    AnalyserOptions_maxDecibels_Set: function(ctx, maxDecibels) {
      spasm.objects[ctx].maxDecibels = maxDecibels;
    },
    AnalyserOptions_maxDecibels_Get: function(ctx) {
      return spasm.objects[ctx].maxDecibels;
    },
    AnalyserOptions_minDecibels_Set: function(ctx, minDecibels) {
      spasm.objects[ctx].minDecibels = minDecibels;
    },
    AnalyserOptions_minDecibels_Get: function(ctx) {
      return spasm.objects[ctx].minDecibels;
    },
    AnalyserOptions_smoothingTimeConstant_Set: function(ctx, smoothingTimeConstant) {
      spasm.objects[ctx].smoothingTimeConstant = smoothingTimeConstant;
    },
    AnalyserOptions_smoothingTimeConstant_Get: function(ctx) {
      return spasm.objects[ctx].smoothingTimeConstant;
    },
    AudioBuffer_sampleRate_Get: function(ctx) {
      return spasm.objects[ctx].sampleRate;
    },
    AudioBuffer_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    AudioBuffer_duration_Get: function(ctx) {
      return spasm.objects[ctx].duration;
    },
    AudioBuffer_numberOfChannels_Get: function(ctx) {
      return spasm.objects[ctx].numberOfChannels;
    },
    AudioBuffer_getChannelData: function(ctx, channel) {
      return spasm.addObject(spasm.objects[ctx].getChannelData(channel));
    },
    AudioBuffer_copyFromChannel: function(ctx, destination, channelNumber, startInChannel) {
      spasm.objects[ctx].copyFromChannel(spasm.objects[destination], channelNumber, startInChannel);
    },
    AudioBuffer_copyToChannel: function(ctx, source, channelNumber, startInChannel) {
      spasm.objects[ctx].copyToChannel(spasm.objects[source], channelNumber, startInChannel);
    },
    AudioBufferOptions_numberOfChannels_Set: function(ctx, numberOfChannels) {
      spasm.objects[ctx].numberOfChannels = numberOfChannels;
    },
    AudioBufferOptions_numberOfChannels_Get: function(ctx) {
      return spasm.objects[ctx].numberOfChannels;
    },
    AudioBufferOptions_length_Set: function(ctx, length) {
      spasm.objects[ctx].length = length;
    },
    AudioBufferOptions_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    AudioBufferOptions_sampleRate_Set: function(ctx, sampleRate) {
      spasm.objects[ctx].sampleRate = sampleRate;
    },
    AudioBufferOptions_sampleRate_Get: function(ctx) {
      return spasm.objects[ctx].sampleRate;
    },
    AudioBufferSourceNode_buffer_Set: function(ctx, bufferDefined, buffer) {
      spasm.objects[ctx].buffer = bufferDefined ? spasm.objects[buffer] : undefined;
    },
    AudioBufferSourceNode_buffer_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].buffer);
    },
    AudioBufferSourceNode_playbackRate_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].playbackRate);
    },
    AudioBufferSourceNode_detune_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].detune);
    },
    AudioBufferSourceNode_loop_Set: function(ctx, loop) {
      spasm.objects[ctx].loop = loop;
    },
    AudioBufferSourceNode_loop_Get: function(ctx) {
      return spasm.objects[ctx].loop;
    },
    AudioBufferSourceNode_loopStart_Set: function(ctx, loopStart) {
      spasm.objects[ctx].loopStart = loopStart;
    },
    AudioBufferSourceNode_loopStart_Get: function(ctx) {
      return spasm.objects[ctx].loopStart;
    },
    AudioBufferSourceNode_loopEnd_Set: function(ctx, loopEnd) {
      spasm.objects[ctx].loopEnd = loopEnd;
    },
    AudioBufferSourceNode_loopEnd_Get: function(ctx) {
      return spasm.objects[ctx].loopEnd;
    },
    AudioBufferSourceNode_start: function(ctx, when, offset, duration) {
      spasm.objects[ctx].start(when, offset, duration);
    },
    AudioBufferSourceOptions_buffer_Set: function(ctx, bufferDefined, buffer) {
      spasm.objects[ctx].buffer = bufferDefined ? spasm.objects[buffer] : undefined;
    },
    AudioBufferSourceOptions_buffer_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].buffer);
    },
    AudioBufferSourceOptions_detune_Set: function(ctx, detune) {
      spasm.objects[ctx].detune = detune;
    },
    AudioBufferSourceOptions_detune_Get: function(ctx) {
      return spasm.objects[ctx].detune;
    },
    AudioBufferSourceOptions_loop_Set: function(ctx, loop) {
      spasm.objects[ctx].loop = loop;
    },
    AudioBufferSourceOptions_loop_Get: function(ctx) {
      return spasm.objects[ctx].loop;
    },
    AudioBufferSourceOptions_loopEnd_Set: function(ctx, loopEnd) {
      spasm.objects[ctx].loopEnd = loopEnd;
    },
    AudioBufferSourceOptions_loopEnd_Get: function(ctx) {
      return spasm.objects[ctx].loopEnd;
    },
    AudioBufferSourceOptions_loopStart_Set: function(ctx, loopStart) {
      spasm.objects[ctx].loopStart = loopStart;
    },
    AudioBufferSourceOptions_loopStart_Get: function(ctx) {
      return spasm.objects[ctx].loopStart;
    },
    AudioBufferSourceOptions_playbackRate_Set: function(ctx, playbackRate) {
      spasm.objects[ctx].playbackRate = playbackRate;
    },
    AudioBufferSourceOptions_playbackRate_Get: function(ctx) {
      return spasm.objects[ctx].playbackRate;
    },
    AudioContext_baseLatency_Get: function(ctx) {
      return spasm.objects[ctx].baseLatency;
    },
    AudioContext_outputLatency_Get: function(ctx) {
      return spasm.objects[ctx].outputLatency;
    },
    AudioContext_getOutputTimestamp: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].getOutputTimestamp());
    },
    AudioContext_resume: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].resume());
    },
    AudioContext_suspend: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].suspend());
    },
    AudioContext_close: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].close());
    },
    AudioContext_createMediaElementSource: function(ctx, mediaElement) {
      return spasm.addObject(spasm.objects[ctx].createMediaElementSource(spasm.objects[mediaElement]));
    },
    AudioContext_createMediaStreamSource: function(ctx, mediaStream) {
      return spasm.addObject(spasm.objects[ctx].createMediaStreamSource(spasm.objects[mediaStream]));
    },
    AudioContext_createMediaStreamTrackSource: function(ctx, mediaStreamTrack) {
      return spasm.addObject(spasm.objects[ctx].createMediaStreamTrackSource(spasm.objects[mediaStreamTrack]));
    },
    AudioContext_createMediaStreamDestination: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].createMediaStreamDestination());
    },
    AudioContextOptions_latencyHint_Set: function(ctx, latencyHint) {
      spasm.objects[ctx].latencyHint = spasm.decode_union2_AudioContextLatencyCategory_double(latencyHint);
    },
    AudioContextOptions_latencyHint_Get: function(rawResult, ctx) {
      spasm.encode.union2_AudioContextLatencyCategory_double(rawResult, spasm.objects[ctx].latencyHint);
    },
    AudioContextOptions_sampleRate_Set: function(ctx, sampleRate) {
      spasm.objects[ctx].sampleRate = sampleRate;
    },
    AudioContextOptions_sampleRate_Get: function(ctx) {
      return spasm.objects[ctx].sampleRate;
    },
    AudioDestinationNode_maxChannelCount_Get: function(ctx) {
      return spasm.objects[ctx].maxChannelCount;
    },
    AudioListener_positionX_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].positionX);
    },
    AudioListener_positionY_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].positionY);
    },
    AudioListener_positionZ_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].positionZ);
    },
    AudioListener_forwardX_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].forwardX);
    },
    AudioListener_forwardY_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].forwardY);
    },
    AudioListener_forwardZ_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].forwardZ);
    },
    AudioListener_upX_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].upX);
    },
    AudioListener_upY_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].upY);
    },
    AudioListener_upZ_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].upZ);
    },
    AudioListener_setPosition: function(ctx, x, y, z) {
      spasm.objects[ctx].setPosition(x, y, z);
    },
    AudioListener_setOrientation: function(ctx, x, y, z, xUp, yUp, zUp) {
      spasm.objects[ctx].setOrientation(x, y, z, xUp, yUp, zUp);
    },
    AudioNode_connect__Handle_uint_uint: function(ctx, destinationNode, output, input) {
      return spasm.addObject(spasm.objects[ctx].connect(spasm.objects[destinationNode], output, input));
    },
    AudioNode_connect__Handle_uint: function(ctx, destinationParam, output) {
      spasm.objects[ctx].connect(spasm.objects[destinationParam], output);
    },
    AudioNode_disconnect__: function(ctx) {
      spasm.objects[ctx].disconnect();
    },
    AudioNode_disconnect__uint: function(ctx, output) {
      spasm.objects[ctx].disconnect(output);
    },
    AudioNode_disconnect__Handle: function(ctx, destinationNode) {
      spasm.objects[ctx].disconnect(spasm.objects[destinationNode]);
    },
    AudioNode_disconnect__Handle_uint: function(ctx, destinationNode, output) {
      spasm.objects[ctx].disconnect(spasm.objects[destinationNode], output);
    },
    AudioNode_disconnect__Handle_uint_uint: function(ctx, destinationNode, output, input) {
      spasm.objects[ctx].disconnect(spasm.objects[destinationNode], output, input);
    },
    AudioNode_context_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].context);
    },
    AudioNode_numberOfInputs_Get: function(ctx) {
      return spasm.objects[ctx].numberOfInputs;
    },
    AudioNode_numberOfOutputs_Get: function(ctx) {
      return spasm.objects[ctx].numberOfOutputs;
    },
    AudioNode_channelCount_Set: function(ctx, channelCount) {
      spasm.objects[ctx].channelCount = channelCount;
    },
    AudioNode_channelCount_Get: function(ctx) {
      return spasm.objects[ctx].channelCount;
    },
    AudioNode_channelCountMode_Set: function(ctx, channelCountMode) {
      spasm.objects[ctx].channelCountMode = spasm.decode_ChannelCountMode(channelCountMode);
    },
    AudioNode_channelCountMode_Get: function(ctx) {
      return spasm.encode.ChannelCountMode(spasm.objects[ctx].channelCountMode);
    },
    AudioNode_channelInterpretation_Set: function(ctx, channelInterpretation) {
      spasm.objects[ctx].channelInterpretation = spasm.decode_ChannelInterpretation(channelInterpretation);
    },
    AudioNode_channelInterpretation_Get: function(ctx) {
      return spasm.encode.ChannelInterpretation(spasm.objects[ctx].channelInterpretation);
    },
    AudioNodeOptions_channelCount_Set: function(ctx, channelCount) {
      spasm.objects[ctx].channelCount = channelCount;
    },
    AudioNodeOptions_channelCount_Get: function(ctx) {
      return spasm.objects[ctx].channelCount;
    },
    AudioNodeOptions_channelCountMode_Set: function(ctx, channelCountMode) {
      spasm.objects[ctx].channelCountMode = spasm.decode_ChannelCountMode(channelCountMode);
    },
    AudioNodeOptions_channelCountMode_Get: function(ctx) {
      return spasm.encode.ChannelCountMode(spasm.objects[ctx].channelCountMode);
    },
    AudioNodeOptions_channelInterpretation_Set: function(ctx, channelInterpretation) {
      spasm.objects[ctx].channelInterpretation = spasm.decode_ChannelInterpretation(channelInterpretation);
    },
    AudioNodeOptions_channelInterpretation_Get: function(ctx) {
      return spasm.encode.ChannelInterpretation(spasm.objects[ctx].channelInterpretation);
    },
    AudioParam_value_Set: function(ctx, value) {
      spasm.objects[ctx].value = value;
    },
    AudioParam_value_Get: function(ctx) {
      return spasm.objects[ctx].value;
    },
    AudioParam_automationRate_Set: function(ctx, automationRate) {
      spasm.objects[ctx].automationRate = spasm.decode_AutomationRate(automationRate);
    },
    AudioParam_automationRate_Get: function(ctx) {
      return spasm.encode.AutomationRate(spasm.objects[ctx].automationRate);
    },
    AudioParam_defaultValue_Get: function(ctx) {
      return spasm.objects[ctx].defaultValue;
    },
    AudioParam_minValue_Get: function(ctx) {
      return spasm.objects[ctx].minValue;
    },
    AudioParam_maxValue_Get: function(ctx) {
      return spasm.objects[ctx].maxValue;
    },
    AudioParam_setValueAtTime: function(ctx, value, startTime) {
      return spasm.addObject(spasm.objects[ctx].setValueAtTime(value, startTime));
    },
    AudioParam_linearRampToValueAtTime: function(ctx, value, endTime) {
      return spasm.addObject(spasm.objects[ctx].linearRampToValueAtTime(value, endTime));
    },
    AudioParam_exponentialRampToValueAtTime: function(ctx, value, endTime) {
      return spasm.addObject(spasm.objects[ctx].exponentialRampToValueAtTime(value, endTime));
    },
    AudioParam_setTargetAtTime: function(ctx, target, startTime, timeConstant) {
      return spasm.addObject(spasm.objects[ctx].setTargetAtTime(target, startTime, timeConstant));
    },
    AudioParam_setValueCurveAtTime: function(ctx, values, startTime, duration) {
      return spasm.addObject(spasm.objects[ctx].setValueCurveAtTime(spasm.objects[values], startTime, duration));
    },
    AudioParam_cancelScheduledValues: function(ctx, cancelTime) {
      return spasm.addObject(spasm.objects[ctx].cancelScheduledValues(cancelTime));
    },
    AudioParam_cancelAndHoldAtTime: function(ctx, cancelTime) {
      return spasm.addObject(spasm.objects[ctx].cancelAndHoldAtTime(cancelTime));
    },
    AudioParamDescriptor_name_Set: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].name = spasm.decode_string(nameLen, namePtr);
    },
    AudioParamDescriptor_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    AudioParamDescriptor_defaultValue_Set: function(ctx, defaultValue) {
      spasm.objects[ctx].defaultValue = defaultValue;
    },
    AudioParamDescriptor_defaultValue_Get: function(ctx) {
      return spasm.objects[ctx].defaultValue;
    },
    AudioParamDescriptor_minValue_Set: function(ctx, minValue) {
      spasm.objects[ctx].minValue = minValue;
    },
    AudioParamDescriptor_minValue_Get: function(ctx) {
      return spasm.objects[ctx].minValue;
    },
    AudioParamDescriptor_maxValue_Set: function(ctx, maxValue) {
      spasm.objects[ctx].maxValue = maxValue;
    },
    AudioParamDescriptor_maxValue_Get: function(ctx) {
      return spasm.objects[ctx].maxValue;
    },
    AudioParamDescriptor_automationRate_Set: function(ctx, automationRate) {
      spasm.objects[ctx].automationRate = spasm.decode_AutomationRate(automationRate);
    },
    AudioParamDescriptor_automationRate_Get: function(ctx) {
      return spasm.encode.AutomationRate(spasm.objects[ctx].automationRate);
    },
    AudioProcessingEvent_playbackTime_Get: function(ctx) {
      return spasm.objects[ctx].playbackTime;
    },
    AudioProcessingEvent_inputBuffer_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].inputBuffer);
    },
    AudioProcessingEvent_outputBuffer_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].outputBuffer);
    },
    AudioProcessingEventInit_playbackTime_Set: function(ctx, playbackTime) {
      spasm.objects[ctx].playbackTime = playbackTime;
    },
    AudioProcessingEventInit_playbackTime_Get: function(ctx) {
      return spasm.objects[ctx].playbackTime;
    },
    AudioProcessingEventInit_inputBuffer_Set: function(ctx, inputBuffer) {
      spasm.objects[ctx].inputBuffer = spasm.objects[inputBuffer];
    },
    AudioProcessingEventInit_inputBuffer_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].inputBuffer);
    },
    AudioProcessingEventInit_outputBuffer_Set: function(ctx, outputBuffer) {
      spasm.objects[ctx].outputBuffer = spasm.objects[outputBuffer];
    },
    AudioProcessingEventInit_outputBuffer_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].outputBuffer);
    },
    AudioScheduledSourceNode_onended_Set: function(ctx, onended) {
      spasm.objects[ctx].onended = onended;
    },
    AudioScheduledSourceNode_onended_Get: function(ctx) {
      return spasm.objects[ctx].onended;
    },
    AudioScheduledSourceNode_start: function(ctx, when) {
      spasm.objects[ctx].start(when);
    },
    AudioScheduledSourceNode_stop: function(ctx, when) {
      spasm.objects[ctx].stop(when);
    },
    AudioTimestamp_contextTime_Set: function(ctx, contextTime) {
      spasm.objects[ctx].contextTime = contextTime;
    },
    AudioTimestamp_contextTime_Get: function(ctx) {
      return spasm.objects[ctx].contextTime;
    },
    AudioTimestamp_performanceTime_Set: function(ctx, performanceTime) {
      spasm.objects[ctx].performanceTime = performanceTime;
    },
    AudioTimestamp_performanceTime_Get: function(ctx) {
      return spasm.objects[ctx].performanceTime;
    },
    AudioWorkletGlobalScope_registerProcessor: function(ctx, nameLen, namePtr, processorCtorCtx, processorCtorPtr) {
      spasm.objects[ctx].registerProcessor(spasm.decode_string(nameLen, namePtr), ()=>{spasm.callback_void_(processorCtorCtx, processorCtorPtr, )});
    },
    AudioWorkletGlobalScope_currentFrame_Get: function(ctx) {
      return spasm.objects[ctx].currentFrame;
    },
    AudioWorkletGlobalScope_currentTime_Get: function(ctx) {
      return spasm.objects[ctx].currentTime;
    },
    AudioWorkletGlobalScope_sampleRate_Get: function(ctx) {
      return spasm.objects[ctx].sampleRate;
    },
    AudioWorkletNode_parameters_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].parameters);
    },
    AudioWorkletNode_port_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].port);
    },
    AudioWorkletNode_onprocessorerror_Set: function(ctx, onprocessorerror) {
      spasm.objects[ctx].onprocessorerror = onprocessorerror;
    },
    AudioWorkletNode_onprocessorerror_Get: function(ctx) {
      return spasm.objects[ctx].onprocessorerror;
    },
    AudioWorkletNodeOptions_numberOfInputs_Set: function(ctx, numberOfInputs) {
      spasm.objects[ctx].numberOfInputs = numberOfInputs;
    },
    AudioWorkletNodeOptions_numberOfInputs_Get: function(ctx) {
      return spasm.objects[ctx].numberOfInputs;
    },
    AudioWorkletNodeOptions_numberOfOutputs_Set: function(ctx, numberOfOutputs) {
      spasm.objects[ctx].numberOfOutputs = numberOfOutputs;
    },
    AudioWorkletNodeOptions_numberOfOutputs_Get: function(ctx) {
      return spasm.objects[ctx].numberOfOutputs;
    },
    AudioWorkletNodeOptions_outputChannelCount_Set: function(ctx, outputChannelCount) {
      spasm.objects[ctx].outputChannelCount = spasm.objects[outputChannelCount];
    },
    AudioWorkletNodeOptions_outputChannelCount_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].outputChannelCount);
    },
    AudioWorkletNodeOptions_parameterData_Set: function(ctx, parameterData) {
      spasm.objects[ctx].parameterData = spasm.objects[parameterData];
    },
    AudioWorkletNodeOptions_parameterData_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].parameterData);
    },
    AudioWorkletNodeOptions_processorOptions_Set: function(ctx, processorOptionsDefined, processorOptions) {
      spasm.objects[ctx].processorOptions = processorOptionsDefined ? spasm.objects[processorOptions] : undefined;
    },
    AudioWorkletNodeOptions_processorOptions_Get: function(rawResult, ctx) {
      spasm.encode.object(rawResult, spasm.objects[ctx].processorOptions);
    },
    AudioWorkletProcessor_port_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].port);
    },
    BaseAudioContext_destination_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].destination);
    },
    BaseAudioContext_sampleRate_Get: function(ctx) {
      return spasm.objects[ctx].sampleRate;
    },
    BaseAudioContext_currentTime_Get: function(ctx) {
      return spasm.objects[ctx].currentTime;
    },
    BaseAudioContext_listener_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].listener);
    },
    BaseAudioContext_state_Get: function(ctx) {
      return spasm.encode.AudioContextState(spasm.objects[ctx].state);
    },
    BaseAudioContext_audioWorklet_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].audioWorklet);
    },
    BaseAudioContext_onstatechange_Set: function(ctx, onstatechange) {
      spasm.objects[ctx].onstatechange = onstatechange;
    },
    BaseAudioContext_onstatechange_Get: function(ctx) {
      return spasm.objects[ctx].onstatechange;
    },
    BaseAudioContext_createAnalyser: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].createAnalyser());
    },
    BaseAudioContext_createBiquadFilter: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].createBiquadFilter());
    },
    BaseAudioContext_createBuffer: function(ctx, numberOfChannels, length, sampleRate) {
      return spasm.addObject(spasm.objects[ctx].createBuffer(numberOfChannels, length, sampleRate));
    },
    BaseAudioContext_createBufferSource: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].createBufferSource());
    },
    BaseAudioContext_createChannelMerger: function(ctx, numberOfInputs) {
      return spasm.addObject(spasm.objects[ctx].createChannelMerger(numberOfInputs));
    },
    BaseAudioContext_createChannelSplitter: function(ctx, numberOfOutputs) {
      return spasm.addObject(spasm.objects[ctx].createChannelSplitter(numberOfOutputs));
    },
    BaseAudioContext_createConstantSource: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].createConstantSource());
    },
    BaseAudioContext_createConvolver: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].createConvolver());
    },
    BaseAudioContext_createDelay: function(ctx, maxDelayTime) {
      return spasm.addObject(spasm.objects[ctx].createDelay(maxDelayTime));
    },
    BaseAudioContext_createDynamicsCompressor: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].createDynamicsCompressor());
    },
    BaseAudioContext_createGain: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].createGain());
    },
    BaseAudioContext_createIIRFilter: function(ctx, feedforward, feedback) {
      return spasm.addObject(spasm.objects[ctx].createIIRFilter(spasm.objects[feedforward], spasm.objects[feedback]));
    },
    BaseAudioContext_createOscillator: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].createOscillator());
    },
    BaseAudioContext_createPanner: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].createPanner());
    },
    BaseAudioContext_createPeriodicWave: function(ctx, real, imag, constraints) {
      return spasm.addObject(spasm.objects[ctx].createPeriodicWave(spasm.objects[real], spasm.objects[imag], spasm.objects[constraints]));
    },
    BaseAudioContext_createScriptProcessor: function(ctx, bufferSize, numberOfInputChannels, numberOfOutputChannels) {
      return spasm.addObject(spasm.objects[ctx].createScriptProcessor(bufferSize, numberOfInputChannels, numberOfOutputChannels));
    },
    BaseAudioContext_createStereoPanner: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].createStereoPanner());
    },
    BaseAudioContext_createWaveShaper: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].createWaveShaper());
    },
    BaseAudioContext_decodeAudioData: function(ctx, audioData, successCallbackDefined, successCallbackCtx, successCallbackPtr, errorCallbackDefined, errorCallbackCtx, errorCallbackPtr) {
      return spasm.addObject(spasm.objects[ctx].decodeAudioData(spasm.objects[audioData], successCallbackDefined ? (decodedData)=>{spasm.callback_void_Handle(successCallbackCtx, successCallbackPtr, spasm.addObject(decodedData))} : undefined, errorCallbackDefined ? (error)=>{spasm.callback_void_Handle(errorCallbackCtx, errorCallbackPtr, spasm.addObject(error))} : undefined));
    },
    BiquadFilterNode_type_Set: function(ctx, type) {
      spasm.objects[ctx].type = spasm.decode_BiquadFilterType(type);
    },
    BiquadFilterNode_type_Get: function(ctx) {
      return spasm.encode.BiquadFilterType(spasm.objects[ctx].type);
    },
    BiquadFilterNode_frequency_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].frequency);
    },
    BiquadFilterNode_detune_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].detune);
    },
    BiquadFilterNode_Q_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].Q);
    },
    BiquadFilterNode_gain_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].gain);
    },
    BiquadFilterNode_getFrequencyResponse: function(ctx, frequencyHz, magResponse, phaseResponse) {
      spasm.objects[ctx].getFrequencyResponse(spasm.objects[frequencyHz], spasm.objects[magResponse], spasm.objects[phaseResponse]);
    },
    BiquadFilterOptions_type_Set: function(ctx, type) {
      spasm.objects[ctx].type = spasm.decode_BiquadFilterType(type);
    },
    BiquadFilterOptions_type_Get: function(ctx) {
      return spasm.encode.BiquadFilterType(spasm.objects[ctx].type);
    },
    BiquadFilterOptions_Q_Set: function(ctx, Q) {
      spasm.objects[ctx].Q = Q;
    },
    BiquadFilterOptions_Q_Get: function(ctx) {
      return spasm.objects[ctx].Q;
    },
    BiquadFilterOptions_detune_Set: function(ctx, detune) {
      spasm.objects[ctx].detune = detune;
    },
    BiquadFilterOptions_detune_Get: function(ctx) {
      return spasm.objects[ctx].detune;
    },
    BiquadFilterOptions_frequency_Set: function(ctx, frequency) {
      spasm.objects[ctx].frequency = frequency;
    },
    BiquadFilterOptions_frequency_Get: function(ctx) {
      return spasm.objects[ctx].frequency;
    },
    BiquadFilterOptions_gain_Set: function(ctx, gain) {
      spasm.objects[ctx].gain = gain;
    },
    BiquadFilterOptions_gain_Get: function(ctx) {
      return spasm.objects[ctx].gain;
    },
    ChannelMergerOptions_numberOfInputs_Set: function(ctx, numberOfInputs) {
      spasm.objects[ctx].numberOfInputs = numberOfInputs;
    },
    ChannelMergerOptions_numberOfInputs_Get: function(ctx) {
      return spasm.objects[ctx].numberOfInputs;
    },
    ChannelSplitterOptions_numberOfOutputs_Set: function(ctx, numberOfOutputs) {
      spasm.objects[ctx].numberOfOutputs = numberOfOutputs;
    },
    ChannelSplitterOptions_numberOfOutputs_Get: function(ctx) {
      return spasm.objects[ctx].numberOfOutputs;
    },
    ConstantSourceNode_offset_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].offset);
    },
    ConstantSourceOptions_offset_Set: function(ctx, offset) {
      spasm.objects[ctx].offset = offset;
    },
    ConstantSourceOptions_offset_Get: function(ctx) {
      return spasm.objects[ctx].offset;
    },
    ConvolverNode_buffer_Set: function(ctx, bufferDefined, buffer) {
      spasm.objects[ctx].buffer = bufferDefined ? spasm.objects[buffer] : undefined;
    },
    ConvolverNode_buffer_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].buffer);
    },
    ConvolverNode_normalize_Set: function(ctx, normalize) {
      spasm.objects[ctx].normalize = normalize;
    },
    ConvolverNode_normalize_Get: function(ctx) {
      return spasm.objects[ctx].normalize;
    },
    ConvolverOptions_buffer_Set: function(ctx, bufferDefined, buffer) {
      spasm.objects[ctx].buffer = bufferDefined ? spasm.objects[buffer] : undefined;
    },
    ConvolverOptions_buffer_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].buffer);
    },
    ConvolverOptions_disableNormalization_Set: function(ctx, disableNormalization) {
      spasm.objects[ctx].disableNormalization = disableNormalization;
    },
    ConvolverOptions_disableNormalization_Get: function(ctx) {
      return spasm.objects[ctx].disableNormalization;
    },
    DelayNode_delayTime_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].delayTime);
    },
    DelayOptions_maxDelayTime_Set: function(ctx, maxDelayTime) {
      spasm.objects[ctx].maxDelayTime = maxDelayTime;
    },
    DelayOptions_maxDelayTime_Get: function(ctx) {
      return spasm.objects[ctx].maxDelayTime;
    },
    DelayOptions_delayTime_Set: function(ctx, delayTime) {
      spasm.objects[ctx].delayTime = delayTime;
    },
    DelayOptions_delayTime_Get: function(ctx) {
      return spasm.objects[ctx].delayTime;
    },
    DynamicsCompressorNode_threshold_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].threshold);
    },
    DynamicsCompressorNode_knee_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].knee);
    },
    DynamicsCompressorNode_ratio_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].ratio);
    },
    DynamicsCompressorNode_reduction_Get: function(ctx) {
      return spasm.objects[ctx].reduction;
    },
    DynamicsCompressorNode_attack_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].attack);
    },
    DynamicsCompressorNode_release_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].release);
    },
    DynamicsCompressorOptions_attack_Set: function(ctx, attack) {
      spasm.objects[ctx].attack = attack;
    },
    DynamicsCompressorOptions_attack_Get: function(ctx) {
      return spasm.objects[ctx].attack;
    },
    DynamicsCompressorOptions_knee_Set: function(ctx, knee) {
      spasm.objects[ctx].knee = knee;
    },
    DynamicsCompressorOptions_knee_Get: function(ctx) {
      return spasm.objects[ctx].knee;
    },
    DynamicsCompressorOptions_ratio_Set: function(ctx, ratio) {
      spasm.objects[ctx].ratio = ratio;
    },
    DynamicsCompressorOptions_ratio_Get: function(ctx) {
      return spasm.objects[ctx].ratio;
    },
    DynamicsCompressorOptions_release_Set: function(ctx, release) {
      spasm.objects[ctx].release = release;
    },
    DynamicsCompressorOptions_release_Get: function(ctx) {
      return spasm.objects[ctx].release;
    },
    DynamicsCompressorOptions_threshold_Set: function(ctx, threshold) {
      spasm.objects[ctx].threshold = threshold;
    },
    DynamicsCompressorOptions_threshold_Get: function(ctx) {
      return spasm.objects[ctx].threshold;
    },
    GainNode_gain_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].gain);
    },
    GainOptions_gain_Set: function(ctx, gain) {
      spasm.objects[ctx].gain = gain;
    },
    GainOptions_gain_Get: function(ctx) {
      return spasm.objects[ctx].gain;
    },
    IIRFilterNode_getFrequencyResponse: function(ctx, frequencyHz, magResponse, phaseResponse) {
      spasm.objects[ctx].getFrequencyResponse(spasm.objects[frequencyHz], spasm.objects[magResponse], spasm.objects[phaseResponse]);
    },
    IIRFilterOptions_feedforward_Set: function(ctx, feedforward) {
      spasm.objects[ctx].feedforward = spasm.objects[feedforward];
    },
    IIRFilterOptions_feedforward_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].feedforward);
    },
    IIRFilterOptions_feedback_Set: function(ctx, feedback) {
      spasm.objects[ctx].feedback = spasm.objects[feedback];
    },
    IIRFilterOptions_feedback_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].feedback);
    },
    MediaElementAudioSourceNode_mediaElement_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].mediaElement);
    },
    MediaElementAudioSourceOptions_mediaElement_Set: function(ctx, mediaElement) {
      spasm.objects[ctx].mediaElement = spasm.objects[mediaElement];
    },
    MediaElementAudioSourceOptions_mediaElement_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].mediaElement);
    },
    MediaStreamAudioDestinationNode_stream_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].stream);
    },
    MediaStreamAudioSourceNode_mediaStream_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].mediaStream);
    },
    MediaStreamAudioSourceOptions_mediaStream_Set: function(ctx, mediaStream) {
      spasm.objects[ctx].mediaStream = spasm.objects[mediaStream];
    },
    MediaStreamAudioSourceOptions_mediaStream_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].mediaStream);
    },
    MediaStreamTrackAudioSourceOptions_mediaStreamTrack_Set: function(ctx, mediaStreamTrack) {
      spasm.objects[ctx].mediaStreamTrack = spasm.objects[mediaStreamTrack];
    },
    MediaStreamTrackAudioSourceOptions_mediaStreamTrack_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].mediaStreamTrack);
    },
    OfflineAudioCompletionEvent_renderedBuffer_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].renderedBuffer);
    },
    OfflineAudioCompletionEventInit_renderedBuffer_Set: function(ctx, renderedBuffer) {
      spasm.objects[ctx].renderedBuffer = spasm.objects[renderedBuffer];
    },
    OfflineAudioCompletionEventInit_renderedBuffer_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].renderedBuffer);
    },
    OfflineAudioContext_startRendering: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].startRendering());
    },
    OfflineAudioContext_resume: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].resume());
    },
    OfflineAudioContext_suspend: function(ctx, suspendTime) {
      return spasm.addObject(spasm.objects[ctx].suspend(suspendTime));
    },
    OfflineAudioContext_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    OfflineAudioContext_oncomplete_Set: function(ctx, oncomplete) {
      spasm.objects[ctx].oncomplete = oncomplete;
    },
    OfflineAudioContext_oncomplete_Get: function(ctx) {
      return spasm.objects[ctx].oncomplete;
    },
    OfflineAudioContextOptions_numberOfChannels_Set: function(ctx, numberOfChannels) {
      spasm.objects[ctx].numberOfChannels = numberOfChannels;
    },
    OfflineAudioContextOptions_numberOfChannels_Get: function(ctx) {
      return spasm.objects[ctx].numberOfChannels;
    },
    OfflineAudioContextOptions_length_Set: function(ctx, length) {
      spasm.objects[ctx].length = length;
    },
    OfflineAudioContextOptions_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    OfflineAudioContextOptions_sampleRate_Set: function(ctx, sampleRate) {
      spasm.objects[ctx].sampleRate = sampleRate;
    },
    OfflineAudioContextOptions_sampleRate_Get: function(ctx) {
      return spasm.objects[ctx].sampleRate;
    },
    OscillatorNode_type_Set: function(ctx, type) {
      spasm.objects[ctx].type = spasm.decode_OscillatorType(type);
    },
    OscillatorNode_type_Get: function(ctx) {
      return spasm.encode.OscillatorType(spasm.objects[ctx].type);
    },
    OscillatorNode_frequency_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].frequency);
    },
    OscillatorNode_detune_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].detune);
    },
    OscillatorNode_setPeriodicWave: function(ctx, periodicWave) {
      spasm.objects[ctx].setPeriodicWave(spasm.objects[periodicWave]);
    },
    OscillatorOptions_type_Set: function(ctx, type) {
      spasm.objects[ctx].type = spasm.decode_OscillatorType(type);
    },
    OscillatorOptions_type_Get: function(ctx) {
      return spasm.encode.OscillatorType(spasm.objects[ctx].type);
    },
    OscillatorOptions_frequency_Set: function(ctx, frequency) {
      spasm.objects[ctx].frequency = frequency;
    },
    OscillatorOptions_frequency_Get: function(ctx) {
      return spasm.objects[ctx].frequency;
    },
    OscillatorOptions_detune_Set: function(ctx, detune) {
      spasm.objects[ctx].detune = detune;
    },
    OscillatorOptions_detune_Get: function(ctx) {
      return spasm.objects[ctx].detune;
    },
    OscillatorOptions_periodicWave_Set: function(ctx, periodicWave) {
      spasm.objects[ctx].periodicWave = spasm.objects[periodicWave];
    },
    OscillatorOptions_periodicWave_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].periodicWave);
    },
    PannerNode_panningModel_Set: function(ctx, panningModel) {
      spasm.objects[ctx].panningModel = spasm.decode_PanningModelType(panningModel);
    },
    PannerNode_panningModel_Get: function(ctx) {
      return spasm.encode.PanningModelType(spasm.objects[ctx].panningModel);
    },
    PannerNode_positionX_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].positionX);
    },
    PannerNode_positionY_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].positionY);
    },
    PannerNode_positionZ_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].positionZ);
    },
    PannerNode_orientationX_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].orientationX);
    },
    PannerNode_orientationY_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].orientationY);
    },
    PannerNode_orientationZ_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].orientationZ);
    },
    PannerNode_distanceModel_Set: function(ctx, distanceModel) {
      spasm.objects[ctx].distanceModel = spasm.decode_DistanceModelType(distanceModel);
    },
    PannerNode_distanceModel_Get: function(ctx) {
      return spasm.encode.DistanceModelType(spasm.objects[ctx].distanceModel);
    },
    PannerNode_refDistance_Set: function(ctx, refDistance) {
      spasm.objects[ctx].refDistance = refDistance;
    },
    PannerNode_refDistance_Get: function(ctx) {
      return spasm.objects[ctx].refDistance;
    },
    PannerNode_maxDistance_Set: function(ctx, maxDistance) {
      spasm.objects[ctx].maxDistance = maxDistance;
    },
    PannerNode_maxDistance_Get: function(ctx) {
      return spasm.objects[ctx].maxDistance;
    },
    PannerNode_rolloffFactor_Set: function(ctx, rolloffFactor) {
      spasm.objects[ctx].rolloffFactor = rolloffFactor;
    },
    PannerNode_rolloffFactor_Get: function(ctx) {
      return spasm.objects[ctx].rolloffFactor;
    },
    PannerNode_coneInnerAngle_Set: function(ctx, coneInnerAngle) {
      spasm.objects[ctx].coneInnerAngle = coneInnerAngle;
    },
    PannerNode_coneInnerAngle_Get: function(ctx) {
      return spasm.objects[ctx].coneInnerAngle;
    },
    PannerNode_coneOuterAngle_Set: function(ctx, coneOuterAngle) {
      spasm.objects[ctx].coneOuterAngle = coneOuterAngle;
    },
    PannerNode_coneOuterAngle_Get: function(ctx) {
      return spasm.objects[ctx].coneOuterAngle;
    },
    PannerNode_coneOuterGain_Set: function(ctx, coneOuterGain) {
      spasm.objects[ctx].coneOuterGain = coneOuterGain;
    },
    PannerNode_coneOuterGain_Get: function(ctx) {
      return spasm.objects[ctx].coneOuterGain;
    },
    PannerNode_setPosition: function(ctx, x, y, z) {
      spasm.objects[ctx].setPosition(x, y, z);
    },
    PannerNode_setOrientation: function(ctx, x, y, z) {
      spasm.objects[ctx].setOrientation(x, y, z);
    },
    PannerOptions_panningModel_Set: function(ctx, panningModel) {
      spasm.objects[ctx].panningModel = spasm.decode_PanningModelType(panningModel);
    },
    PannerOptions_panningModel_Get: function(ctx) {
      return spasm.encode.PanningModelType(spasm.objects[ctx].panningModel);
    },
    PannerOptions_distanceModel_Set: function(ctx, distanceModel) {
      spasm.objects[ctx].distanceModel = spasm.decode_DistanceModelType(distanceModel);
    },
    PannerOptions_distanceModel_Get: function(ctx) {
      return spasm.encode.DistanceModelType(spasm.objects[ctx].distanceModel);
    },
    PannerOptions_positionX_Set: function(ctx, positionX) {
      spasm.objects[ctx].positionX = positionX;
    },
    PannerOptions_positionX_Get: function(ctx) {
      return spasm.objects[ctx].positionX;
    },
    PannerOptions_positionY_Set: function(ctx, positionY) {
      spasm.objects[ctx].positionY = positionY;
    },
    PannerOptions_positionY_Get: function(ctx) {
      return spasm.objects[ctx].positionY;
    },
    PannerOptions_positionZ_Set: function(ctx, positionZ) {
      spasm.objects[ctx].positionZ = positionZ;
    },
    PannerOptions_positionZ_Get: function(ctx) {
      return spasm.objects[ctx].positionZ;
    },
    PannerOptions_orientationX_Set: function(ctx, orientationX) {
      spasm.objects[ctx].orientationX = orientationX;
    },
    PannerOptions_orientationX_Get: function(ctx) {
      return spasm.objects[ctx].orientationX;
    },
    PannerOptions_orientationY_Set: function(ctx, orientationY) {
      spasm.objects[ctx].orientationY = orientationY;
    },
    PannerOptions_orientationY_Get: function(ctx) {
      return spasm.objects[ctx].orientationY;
    },
    PannerOptions_orientationZ_Set: function(ctx, orientationZ) {
      spasm.objects[ctx].orientationZ = orientationZ;
    },
    PannerOptions_orientationZ_Get: function(ctx) {
      return spasm.objects[ctx].orientationZ;
    },
    PannerOptions_refDistance_Set: function(ctx, refDistance) {
      spasm.objects[ctx].refDistance = refDistance;
    },
    PannerOptions_refDistance_Get: function(ctx) {
      return spasm.objects[ctx].refDistance;
    },
    PannerOptions_maxDistance_Set: function(ctx, maxDistance) {
      spasm.objects[ctx].maxDistance = maxDistance;
    },
    PannerOptions_maxDistance_Get: function(ctx) {
      return spasm.objects[ctx].maxDistance;
    },
    PannerOptions_rolloffFactor_Set: function(ctx, rolloffFactor) {
      spasm.objects[ctx].rolloffFactor = rolloffFactor;
    },
    PannerOptions_rolloffFactor_Get: function(ctx) {
      return spasm.objects[ctx].rolloffFactor;
    },
    PannerOptions_coneInnerAngle_Set: function(ctx, coneInnerAngle) {
      spasm.objects[ctx].coneInnerAngle = coneInnerAngle;
    },
    PannerOptions_coneInnerAngle_Get: function(ctx) {
      return spasm.objects[ctx].coneInnerAngle;
    },
    PannerOptions_coneOuterAngle_Set: function(ctx, coneOuterAngle) {
      spasm.objects[ctx].coneOuterAngle = coneOuterAngle;
    },
    PannerOptions_coneOuterAngle_Get: function(ctx) {
      return spasm.objects[ctx].coneOuterAngle;
    },
    PannerOptions_coneOuterGain_Set: function(ctx, coneOuterGain) {
      spasm.objects[ctx].coneOuterGain = coneOuterGain;
    },
    PannerOptions_coneOuterGain_Get: function(ctx) {
      return spasm.objects[ctx].coneOuterGain;
    },
    PeriodicWaveConstraints_disableNormalization_Set: function(ctx, disableNormalization) {
      spasm.objects[ctx].disableNormalization = disableNormalization;
    },
    PeriodicWaveConstraints_disableNormalization_Get: function(ctx) {
      return spasm.objects[ctx].disableNormalization;
    },
    PeriodicWaveOptions_real_Set: function(ctx, real) {
      spasm.objects[ctx].real = spasm.objects[real];
    },
    PeriodicWaveOptions_real_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].real);
    },
    PeriodicWaveOptions_imag_Set: function(ctx, imag) {
      spasm.objects[ctx].imag = spasm.objects[imag];
    },
    PeriodicWaveOptions_imag_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].imag);
    },
    ScriptProcessorNode_onaudioprocess_Set: function(ctx, onaudioprocess) {
      spasm.objects[ctx].onaudioprocess = onaudioprocess;
    },
    ScriptProcessorNode_onaudioprocess_Get: function(ctx) {
      return spasm.objects[ctx].onaudioprocess;
    },
    ScriptProcessorNode_bufferSize_Get: function(ctx) {
      return spasm.objects[ctx].bufferSize;
    },
    StereoPannerNode_pan_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].pan);
    },
    StereoPannerOptions_pan_Set: function(ctx, pan) {
      spasm.objects[ctx].pan = pan;
    },
    StereoPannerOptions_pan_Get: function(ctx) {
      return spasm.objects[ctx].pan;
    },
    WaveShaperNode_curve_Set: function(ctx, curveDefined, curve) {
      spasm.objects[ctx].curve = curveDefined ? spasm.objects[curve] : undefined;
    },
    WaveShaperNode_curve_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].curve);
    },
    WaveShaperNode_oversample_Set: function(ctx, oversample) {
      spasm.objects[ctx].oversample = spasm.decode_OverSampleType(oversample);
    },
    WaveShaperNode_oversample_Get: function(ctx) {
      return spasm.encode.OverSampleType(spasm.objects[ctx].oversample);
    },
    WaveShaperOptions_curve_Set: function(ctx, curve) {
      spasm.objects[ctx].curve = spasm.objects[curve];
    },
    WaveShaperOptions_curve_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].curve);
    },
    WaveShaperOptions_oversample_Set: function(ctx, oversample) {
      spasm.objects[ctx].oversample = spasm.decode_OverSampleType(oversample);
    },
    WaveShaperOptions_oversample_Get: function(ctx) {
      return spasm.encode.OverSampleType(spasm.objects[ctx].oversample);
    },
  }
}