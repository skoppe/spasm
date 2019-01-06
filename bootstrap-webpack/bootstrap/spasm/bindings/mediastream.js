import spasm from './spasm.js';
export default {
  jsExports: {
    ConstrainBooleanParameters_exact_Set: function(ctx, exact) {
      spasm.objects[ctx].exact = exact;
    },
    ConstrainBooleanParameters_exact_Get: function(ctx) {
      return spasm.objects[ctx].exact;
    },
    ConstrainBooleanParameters_ideal_Set: function(ctx, ideal) {
      spasm.objects[ctx].ideal = ideal;
    },
    ConstrainBooleanParameters_ideal_Get: function(ctx) {
      return spasm.objects[ctx].ideal;
    },
    ConstrainDOMStringParameters_exact_Set: function(ctx, exact) {
      spasm.objects[ctx].exact = spasm.decode_union2_string_sequence_string(exact);
    },
    ConstrainDOMStringParameters_exact_Get: function(rawResult, ctx) {
      spasm.encode_union2_string_sequence_string(rawResult, spasm.objects[ctx].exact);
    },
    ConstrainDOMStringParameters_ideal_Set: function(ctx, ideal) {
      spasm.objects[ctx].ideal = spasm.decode_union2_string_sequence_string(ideal);
    },
    ConstrainDOMStringParameters_ideal_Get: function(rawResult, ctx) {
      spasm.encode_union2_string_sequence_string(rawResult, spasm.objects[ctx].ideal);
    },
    ConstrainDoubleRange_exact_Set: function(ctx, exact) {
      spasm.objects[ctx].exact = exact;
    },
    ConstrainDoubleRange_exact_Get: function(ctx) {
      return spasm.objects[ctx].exact;
    },
    ConstrainDoubleRange_ideal_Set: function(ctx, ideal) {
      spasm.objects[ctx].ideal = ideal;
    },
    ConstrainDoubleRange_ideal_Get: function(ctx) {
      return spasm.objects[ctx].ideal;
    },
    ConstrainULongRange_exact_Set: function(ctx, exact) {
      spasm.objects[ctx].exact = exact;
    },
    ConstrainULongRange_exact_Get: function(ctx) {
      return spasm.objects[ctx].exact;
    },
    ConstrainULongRange_ideal_Set: function(ctx, ideal) {
      spasm.objects[ctx].ideal = ideal;
    },
    ConstrainULongRange_ideal_Get: function(ctx) {
      return spasm.objects[ctx].ideal;
    },
    ConstrainablePattern_getCapabilities: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].getCapabilities());
    },
    ConstrainablePattern_getConstraints: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].getConstraints());
    },
    ConstrainablePattern_getSettings: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].getSettings());
    },
    ConstrainablePattern_applyConstraints: function(ctx, constraints) {
      return spasm.addObject(spasm.objects[ctx].applyConstraints(spasm.objects[constraints]));
    },
    ConstrainablePattern_onoverconstrained_Set: function(ctx, onoverconstrained) {
      spasm.objects[ctx].onoverconstrained = onoverconstrained;
    },
    ConstrainablePattern_onoverconstrained_Get: function(ctx) {
      return spasm.objects[ctx].onoverconstrained;
    },
    Constraints_advanced_Set: function(ctx, advanced) {
      spasm.objects[ctx].advanced = spasm.objects[advanced];
    },
    Constraints_advanced_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].advanced);
    },
    DoubleRange_max_Set: function(ctx, max) {
      spasm.objects[ctx].max = max;
    },
    DoubleRange_max_Get: function(ctx) {
      return spasm.objects[ctx].max;
    },
    DoubleRange_min_Set: function(ctx, min) {
      spasm.objects[ctx].min = min;
    },
    DoubleRange_min_Get: function(ctx) {
      return spasm.objects[ctx].min;
    },
    InputDeviceInfo_getCapabilities: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].getCapabilities());
    },
    MediaDeviceInfo_deviceId_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].deviceId);
    },
    MediaDeviceInfo_kind_Get: function(ctx) {
      return spasm.encode_MediaDeviceKind(spasm.objects[ctx].kind);
    },
    MediaDeviceInfo_label_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].label);
    },
    MediaDeviceInfo_groupId_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].groupId);
    },
    MediaDeviceInfo_toJSON: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].toJSON());
    },
    MediaDevices_ondevicechange_Set: function(ctx, ondevicechange) {
      spasm.objects[ctx].ondevicechange = ondevicechange;
    },
    MediaDevices_ondevicechange_Get: function(ctx) {
      return spasm.objects[ctx].ondevicechange;
    },
    MediaDevices_enumerateDevices: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].enumerateDevices());
    },
    MediaDevices_getSupportedConstraints: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].getSupportedConstraints());
    },
    MediaDevices_getUserMedia: function(ctx, constraints) {
      return spasm.addObject(spasm.objects[ctx].getUserMedia(spasm.objects[constraints]));
    },
    MediaStream_id_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].id);
    },
    MediaStream_getAudioTracks: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].getAudioTracks());
    },
    MediaStream_getVideoTracks: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].getVideoTracks());
    },
    MediaStream_getTracks: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].getTracks());
    },
    MediaStream_getTrackById: function(rawResult, ctx, trackIdLen, trackIdPtr) {
      spasm.encode_optional_JsHandle(rawResult, spasm.objects[ctx].getTrackById(spasm.decode_string(trackIdLen, trackIdPtr)));
    },
    MediaStream_addTrack: function(ctx, track) {
      spasm.objects[ctx].addTrack(spasm.objects[track]);
    },
    MediaStream_removeTrack: function(ctx, track) {
      spasm.objects[ctx].removeTrack(spasm.objects[track]);
    },
    MediaStream_clone: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].clone());
    },
    MediaStream_active_Get: function(ctx) {
      return spasm.objects[ctx].active;
    },
    MediaStream_onaddtrack_Set: function(ctx, onaddtrack) {
      spasm.objects[ctx].onaddtrack = onaddtrack;
    },
    MediaStream_onaddtrack_Get: function(ctx) {
      return spasm.objects[ctx].onaddtrack;
    },
    MediaStream_onremovetrack_Set: function(ctx, onremovetrack) {
      spasm.objects[ctx].onremovetrack = onremovetrack;
    },
    MediaStream_onremovetrack_Get: function(ctx) {
      return spasm.objects[ctx].onremovetrack;
    },
    MediaStreamConstraints_video_Set: function(ctx, video) {
      spasm.objects[ctx].video = spasm.decode_union2_bool_MediaTrackConstraints(video);
    },
    MediaStreamConstraints_video_Get: function(rawResult, ctx) {
      spasm.encode_union2_bool_MediaTrackConstraints(rawResult, spasm.objects[ctx].video);
    },
    MediaStreamConstraints_audio_Set: function(ctx, audio) {
      spasm.objects[ctx].audio = spasm.decode_union2_bool_MediaTrackConstraints(audio);
    },
    MediaStreamConstraints_audio_Get: function(rawResult, ctx) {
      spasm.encode_union2_bool_MediaTrackConstraints(rawResult, spasm.objects[ctx].audio);
    },
    MediaStreamTrack_kind_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].kind);
    },
    MediaStreamTrack_id_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].id);
    },
    MediaStreamTrack_label_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].label);
    },
    MediaStreamTrack_enabled_Set: function(ctx, enabled) {
      spasm.objects[ctx].enabled = enabled;
    },
    MediaStreamTrack_enabled_Get: function(ctx) {
      return spasm.objects[ctx].enabled;
    },
    MediaStreamTrack_muted_Get: function(ctx) {
      return spasm.objects[ctx].muted;
    },
    MediaStreamTrack_onmute_Set: function(ctx, onmute) {
      spasm.objects[ctx].onmute = onmute;
    },
    MediaStreamTrack_onmute_Get: function(ctx) {
      return spasm.objects[ctx].onmute;
    },
    MediaStreamTrack_onunmute_Set: function(ctx, onunmute) {
      spasm.objects[ctx].onunmute = onunmute;
    },
    MediaStreamTrack_onunmute_Get: function(ctx) {
      return spasm.objects[ctx].onunmute;
    },
    MediaStreamTrack_readyState_Get: function(ctx) {
      return spasm.encode_MediaStreamTrackState(spasm.objects[ctx].readyState);
    },
    MediaStreamTrack_onended_Set: function(ctx, onended) {
      spasm.objects[ctx].onended = onended;
    },
    MediaStreamTrack_onended_Get: function(ctx) {
      return spasm.objects[ctx].onended;
    },
    MediaStreamTrack_clone: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].clone());
    },
    MediaStreamTrack_stop: function(ctx) {
      spasm.objects[ctx].stop();
    },
    MediaStreamTrack_getCapabilities: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].getCapabilities());
    },
    MediaStreamTrack_getConstraints: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].getConstraints());
    },
    MediaStreamTrack_getSettings: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].getSettings());
    },
    MediaStreamTrack_applyConstraints: function(ctx, constraints) {
      return spasm.addObject(spasm.objects[ctx].applyConstraints(spasm.objects[constraints]));
    },
    MediaStreamTrack_onoverconstrained_Set: function(ctx, onoverconstrained) {
      spasm.objects[ctx].onoverconstrained = onoverconstrained;
    },
    MediaStreamTrack_onoverconstrained_Get: function(ctx) {
      return spasm.objects[ctx].onoverconstrained;
    },
    MediaStreamTrackEvent_track_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].track);
    },
    MediaStreamTrackEventInit_track_Set: function(ctx, track) {
      spasm.objects[ctx].track = spasm.objects[track];
    },
    MediaStreamTrackEventInit_track_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].track);
    },
    MediaTrackCapabilities_width_Set: function(ctx, width) {
      spasm.objects[ctx].width = spasm.objects[width];
    },
    MediaTrackCapabilities_width_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].width);
    },
    MediaTrackCapabilities_height_Set: function(ctx, height) {
      spasm.objects[ctx].height = spasm.objects[height];
    },
    MediaTrackCapabilities_height_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].height);
    },
    MediaTrackCapabilities_aspectRatio_Set: function(ctx, aspectRatio) {
      spasm.objects[ctx].aspectRatio = spasm.objects[aspectRatio];
    },
    MediaTrackCapabilities_aspectRatio_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].aspectRatio);
    },
    MediaTrackCapabilities_frameRate_Set: function(ctx, frameRate) {
      spasm.objects[ctx].frameRate = spasm.objects[frameRate];
    },
    MediaTrackCapabilities_frameRate_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].frameRate);
    },
    MediaTrackCapabilities_facingMode_Set: function(ctx, facingMode) {
      spasm.objects[ctx].facingMode = spasm.objects[facingMode];
    },
    MediaTrackCapabilities_facingMode_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].facingMode);
    },
    MediaTrackCapabilities_resizeMode_Set: function(ctx, resizeMode) {
      spasm.objects[ctx].resizeMode = spasm.objects[resizeMode];
    },
    MediaTrackCapabilities_resizeMode_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].resizeMode);
    },
    MediaTrackCapabilities_volume_Set: function(ctx, volume) {
      spasm.objects[ctx].volume = spasm.objects[volume];
    },
    MediaTrackCapabilities_volume_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].volume);
    },
    MediaTrackCapabilities_sampleRate_Set: function(ctx, sampleRate) {
      spasm.objects[ctx].sampleRate = spasm.objects[sampleRate];
    },
    MediaTrackCapabilities_sampleRate_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].sampleRate);
    },
    MediaTrackCapabilities_sampleSize_Set: function(ctx, sampleSize) {
      spasm.objects[ctx].sampleSize = spasm.objects[sampleSize];
    },
    MediaTrackCapabilities_sampleSize_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].sampleSize);
    },
    MediaTrackCapabilities_echoCancellation_Set: function(ctx, echoCancellation) {
      spasm.objects[ctx].echoCancellation = spasm.objects[echoCancellation];
    },
    MediaTrackCapabilities_echoCancellation_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].echoCancellation);
    },
    MediaTrackCapabilities_autoGainControl_Set: function(ctx, autoGainControl) {
      spasm.objects[ctx].autoGainControl = spasm.objects[autoGainControl];
    },
    MediaTrackCapabilities_autoGainControl_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].autoGainControl);
    },
    MediaTrackCapabilities_noiseSuppression_Set: function(ctx, noiseSuppression) {
      spasm.objects[ctx].noiseSuppression = spasm.objects[noiseSuppression];
    },
    MediaTrackCapabilities_noiseSuppression_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].noiseSuppression);
    },
    MediaTrackCapabilities_latency_Set: function(ctx, latency) {
      spasm.objects[ctx].latency = spasm.objects[latency];
    },
    MediaTrackCapabilities_latency_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].latency);
    },
    MediaTrackCapabilities_channelCount_Set: function(ctx, channelCount) {
      spasm.objects[ctx].channelCount = spasm.objects[channelCount];
    },
    MediaTrackCapabilities_channelCount_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].channelCount);
    },
    MediaTrackCapabilities_deviceId_Set: function(ctx, deviceIdLen, deviceIdPtr) {
      spasm.objects[ctx].deviceId = spasm.decode_string(deviceIdLen, deviceIdPtr);
    },
    MediaTrackCapabilities_deviceId_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].deviceId);
    },
    MediaTrackCapabilities_groupId_Set: function(ctx, groupIdLen, groupIdPtr) {
      spasm.objects[ctx].groupId = spasm.decode_string(groupIdLen, groupIdPtr);
    },
    MediaTrackCapabilities_groupId_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].groupId);
    },
    MediaTrackConstraintSet_width_Set: function(ctx, width) {
      spasm.objects[ctx].width = spasm.decode_ConstrainULong(width);
    },
    MediaTrackConstraintSet_width_Get: function(rawResult, ctx) {
      spasm.encode_ConstrainULong(rawResult, spasm.objects[ctx].width);
    },
    MediaTrackConstraintSet_height_Set: function(ctx, height) {
      spasm.objects[ctx].height = spasm.decode_ConstrainULong(height);
    },
    MediaTrackConstraintSet_height_Get: function(rawResult, ctx) {
      spasm.encode_ConstrainULong(rawResult, spasm.objects[ctx].height);
    },
    MediaTrackConstraintSet_aspectRatio_Set: function(ctx, aspectRatio) {
      spasm.objects[ctx].aspectRatio = spasm.decode_ConstrainDouble(aspectRatio);
    },
    MediaTrackConstraintSet_aspectRatio_Get: function(rawResult, ctx) {
      spasm.encode_ConstrainDouble(rawResult, spasm.objects[ctx].aspectRatio);
    },
    MediaTrackConstraintSet_frameRate_Set: function(ctx, frameRate) {
      spasm.objects[ctx].frameRate = spasm.decode_ConstrainDouble(frameRate);
    },
    MediaTrackConstraintSet_frameRate_Get: function(rawResult, ctx) {
      spasm.encode_ConstrainDouble(rawResult, spasm.objects[ctx].frameRate);
    },
    MediaTrackConstraintSet_facingMode_Set: function(ctx, facingMode) {
      spasm.objects[ctx].facingMode = spasm.decode_ConstrainDOMString(facingMode);
    },
    MediaTrackConstraintSet_facingMode_Get: function(rawResult, ctx) {
      spasm.encode_ConstrainDOMString(rawResult, spasm.objects[ctx].facingMode);
    },
    MediaTrackConstraintSet_resizeMode_Set: function(ctx, resizeMode) {
      spasm.objects[ctx].resizeMode = spasm.decode_ConstrainDOMString(resizeMode);
    },
    MediaTrackConstraintSet_resizeMode_Get: function(rawResult, ctx) {
      spasm.encode_ConstrainDOMString(rawResult, spasm.objects[ctx].resizeMode);
    },
    MediaTrackConstraintSet_volume_Set: function(ctx, volume) {
      spasm.objects[ctx].volume = spasm.decode_ConstrainDouble(volume);
    },
    MediaTrackConstraintSet_volume_Get: function(rawResult, ctx) {
      spasm.encode_ConstrainDouble(rawResult, spasm.objects[ctx].volume);
    },
    MediaTrackConstraintSet_sampleRate_Set: function(ctx, sampleRate) {
      spasm.objects[ctx].sampleRate = spasm.decode_ConstrainULong(sampleRate);
    },
    MediaTrackConstraintSet_sampleRate_Get: function(rawResult, ctx) {
      spasm.encode_ConstrainULong(rawResult, spasm.objects[ctx].sampleRate);
    },
    MediaTrackConstraintSet_sampleSize_Set: function(ctx, sampleSize) {
      spasm.objects[ctx].sampleSize = spasm.decode_ConstrainULong(sampleSize);
    },
    MediaTrackConstraintSet_sampleSize_Get: function(rawResult, ctx) {
      spasm.encode_ConstrainULong(rawResult, spasm.objects[ctx].sampleSize);
    },
    MediaTrackConstraintSet_echoCancellation_Set: function(ctx, echoCancellation) {
      spasm.objects[ctx].echoCancellation = spasm.decode_ConstrainBoolean(echoCancellation);
    },
    MediaTrackConstraintSet_echoCancellation_Get: function(rawResult, ctx) {
      spasm.encode_ConstrainBoolean(rawResult, spasm.objects[ctx].echoCancellation);
    },
    MediaTrackConstraintSet_autoGainControl_Set: function(ctx, autoGainControl) {
      spasm.objects[ctx].autoGainControl = spasm.decode_ConstrainBoolean(autoGainControl);
    },
    MediaTrackConstraintSet_autoGainControl_Get: function(rawResult, ctx) {
      spasm.encode_ConstrainBoolean(rawResult, spasm.objects[ctx].autoGainControl);
    },
    MediaTrackConstraintSet_noiseSuppression_Set: function(ctx, noiseSuppression) {
      spasm.objects[ctx].noiseSuppression = spasm.decode_ConstrainBoolean(noiseSuppression);
    },
    MediaTrackConstraintSet_noiseSuppression_Get: function(rawResult, ctx) {
      spasm.encode_ConstrainBoolean(rawResult, spasm.objects[ctx].noiseSuppression);
    },
    MediaTrackConstraintSet_latency_Set: function(ctx, latency) {
      spasm.objects[ctx].latency = spasm.decode_ConstrainDouble(latency);
    },
    MediaTrackConstraintSet_latency_Get: function(rawResult, ctx) {
      spasm.encode_ConstrainDouble(rawResult, spasm.objects[ctx].latency);
    },
    MediaTrackConstraintSet_channelCount_Set: function(ctx, channelCount) {
      spasm.objects[ctx].channelCount = spasm.decode_ConstrainULong(channelCount);
    },
    MediaTrackConstraintSet_channelCount_Get: function(rawResult, ctx) {
      spasm.encode_ConstrainULong(rawResult, spasm.objects[ctx].channelCount);
    },
    MediaTrackConstraintSet_deviceId_Set: function(ctx, deviceId) {
      spasm.objects[ctx].deviceId = spasm.decode_ConstrainDOMString(deviceId);
    },
    MediaTrackConstraintSet_deviceId_Get: function(rawResult, ctx) {
      spasm.encode_ConstrainDOMString(rawResult, spasm.objects[ctx].deviceId);
    },
    MediaTrackConstraintSet_groupId_Set: function(ctx, groupId) {
      spasm.objects[ctx].groupId = spasm.decode_ConstrainDOMString(groupId);
    },
    MediaTrackConstraintSet_groupId_Get: function(rawResult, ctx) {
      spasm.encode_ConstrainDOMString(rawResult, spasm.objects[ctx].groupId);
    },
    MediaTrackConstraints_advanced_Set: function(ctx, advanced) {
      spasm.objects[ctx].advanced = spasm.objects[advanced];
    },
    MediaTrackConstraints_advanced_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].advanced);
    },
    MediaTrackSettings_width_Set: function(ctx, width) {
      spasm.objects[ctx].width = width;
    },
    MediaTrackSettings_width_Get: function(ctx) {
      return spasm.objects[ctx].width;
    },
    MediaTrackSettings_height_Set: function(ctx, height) {
      spasm.objects[ctx].height = height;
    },
    MediaTrackSettings_height_Get: function(ctx) {
      return spasm.objects[ctx].height;
    },
    MediaTrackSettings_aspectRatio_Set: function(ctx, aspectRatio) {
      spasm.objects[ctx].aspectRatio = aspectRatio;
    },
    MediaTrackSettings_aspectRatio_Get: function(ctx) {
      return spasm.objects[ctx].aspectRatio;
    },
    MediaTrackSettings_frameRate_Set: function(ctx, frameRate) {
      spasm.objects[ctx].frameRate = frameRate;
    },
    MediaTrackSettings_frameRate_Get: function(ctx) {
      return spasm.objects[ctx].frameRate;
    },
    MediaTrackSettings_facingMode_Set: function(ctx, facingModeLen, facingModePtr) {
      spasm.objects[ctx].facingMode = spasm.decode_string(facingModeLen, facingModePtr);
    },
    MediaTrackSettings_facingMode_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].facingMode);
    },
    MediaTrackSettings_resizeMode_Set: function(ctx, resizeModeLen, resizeModePtr) {
      spasm.objects[ctx].resizeMode = spasm.decode_string(resizeModeLen, resizeModePtr);
    },
    MediaTrackSettings_resizeMode_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].resizeMode);
    },
    MediaTrackSettings_volume_Set: function(ctx, volume) {
      spasm.objects[ctx].volume = volume;
    },
    MediaTrackSettings_volume_Get: function(ctx) {
      return spasm.objects[ctx].volume;
    },
    MediaTrackSettings_sampleRate_Set: function(ctx, sampleRate) {
      spasm.objects[ctx].sampleRate = sampleRate;
    },
    MediaTrackSettings_sampleRate_Get: function(ctx) {
      return spasm.objects[ctx].sampleRate;
    },
    MediaTrackSettings_sampleSize_Set: function(ctx, sampleSize) {
      spasm.objects[ctx].sampleSize = sampleSize;
    },
    MediaTrackSettings_sampleSize_Get: function(ctx) {
      return spasm.objects[ctx].sampleSize;
    },
    MediaTrackSettings_echoCancellation_Set: function(ctx, echoCancellation) {
      spasm.objects[ctx].echoCancellation = echoCancellation;
    },
    MediaTrackSettings_echoCancellation_Get: function(ctx) {
      return spasm.objects[ctx].echoCancellation;
    },
    MediaTrackSettings_autoGainControl_Set: function(ctx, autoGainControl) {
      spasm.objects[ctx].autoGainControl = autoGainControl;
    },
    MediaTrackSettings_autoGainControl_Get: function(ctx) {
      return spasm.objects[ctx].autoGainControl;
    },
    MediaTrackSettings_noiseSuppression_Set: function(ctx, noiseSuppression) {
      spasm.objects[ctx].noiseSuppression = noiseSuppression;
    },
    MediaTrackSettings_noiseSuppression_Get: function(ctx) {
      return spasm.objects[ctx].noiseSuppression;
    },
    MediaTrackSettings_latency_Set: function(ctx, latency) {
      spasm.objects[ctx].latency = latency;
    },
    MediaTrackSettings_latency_Get: function(ctx) {
      return spasm.objects[ctx].latency;
    },
    MediaTrackSettings_channelCount_Set: function(ctx, channelCount) {
      spasm.objects[ctx].channelCount = channelCount;
    },
    MediaTrackSettings_channelCount_Get: function(ctx) {
      return spasm.objects[ctx].channelCount;
    },
    MediaTrackSettings_deviceId_Set: function(ctx, deviceIdLen, deviceIdPtr) {
      spasm.objects[ctx].deviceId = spasm.decode_string(deviceIdLen, deviceIdPtr);
    },
    MediaTrackSettings_deviceId_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].deviceId);
    },
    MediaTrackSettings_groupId_Set: function(ctx, groupIdLen, groupIdPtr) {
      spasm.objects[ctx].groupId = spasm.decode_string(groupIdLen, groupIdPtr);
    },
    MediaTrackSettings_groupId_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].groupId);
    },
    MediaTrackSupportedConstraints_width_Set: function(ctx, width) {
      spasm.objects[ctx].width = width;
    },
    MediaTrackSupportedConstraints_width_Get: function(ctx) {
      return spasm.objects[ctx].width;
    },
    MediaTrackSupportedConstraints_height_Set: function(ctx, height) {
      spasm.objects[ctx].height = height;
    },
    MediaTrackSupportedConstraints_height_Get: function(ctx) {
      return spasm.objects[ctx].height;
    },
    MediaTrackSupportedConstraints_aspectRatio_Set: function(ctx, aspectRatio) {
      spasm.objects[ctx].aspectRatio = aspectRatio;
    },
    MediaTrackSupportedConstraints_aspectRatio_Get: function(ctx) {
      return spasm.objects[ctx].aspectRatio;
    },
    MediaTrackSupportedConstraints_frameRate_Set: function(ctx, frameRate) {
      spasm.objects[ctx].frameRate = frameRate;
    },
    MediaTrackSupportedConstraints_frameRate_Get: function(ctx) {
      return spasm.objects[ctx].frameRate;
    },
    MediaTrackSupportedConstraints_facingMode_Set: function(ctx, facingMode) {
      spasm.objects[ctx].facingMode = facingMode;
    },
    MediaTrackSupportedConstraints_facingMode_Get: function(ctx) {
      return spasm.objects[ctx].facingMode;
    },
    MediaTrackSupportedConstraints_resizeMode_Set: function(ctx, resizeMode) {
      spasm.objects[ctx].resizeMode = resizeMode;
    },
    MediaTrackSupportedConstraints_resizeMode_Get: function(ctx) {
      return spasm.objects[ctx].resizeMode;
    },
    MediaTrackSupportedConstraints_volume_Set: function(ctx, volume) {
      spasm.objects[ctx].volume = volume;
    },
    MediaTrackSupportedConstraints_volume_Get: function(ctx) {
      return spasm.objects[ctx].volume;
    },
    MediaTrackSupportedConstraints_sampleRate_Set: function(ctx, sampleRate) {
      spasm.objects[ctx].sampleRate = sampleRate;
    },
    MediaTrackSupportedConstraints_sampleRate_Get: function(ctx) {
      return spasm.objects[ctx].sampleRate;
    },
    MediaTrackSupportedConstraints_sampleSize_Set: function(ctx, sampleSize) {
      spasm.objects[ctx].sampleSize = sampleSize;
    },
    MediaTrackSupportedConstraints_sampleSize_Get: function(ctx) {
      return spasm.objects[ctx].sampleSize;
    },
    MediaTrackSupportedConstraints_echoCancellation_Set: function(ctx, echoCancellation) {
      spasm.objects[ctx].echoCancellation = echoCancellation;
    },
    MediaTrackSupportedConstraints_echoCancellation_Get: function(ctx) {
      return spasm.objects[ctx].echoCancellation;
    },
    MediaTrackSupportedConstraints_autoGainControl_Set: function(ctx, autoGainControl) {
      spasm.objects[ctx].autoGainControl = autoGainControl;
    },
    MediaTrackSupportedConstraints_autoGainControl_Get: function(ctx) {
      return spasm.objects[ctx].autoGainControl;
    },
    MediaTrackSupportedConstraints_noiseSuppression_Set: function(ctx, noiseSuppression) {
      spasm.objects[ctx].noiseSuppression = noiseSuppression;
    },
    MediaTrackSupportedConstraints_noiseSuppression_Get: function(ctx) {
      return spasm.objects[ctx].noiseSuppression;
    },
    MediaTrackSupportedConstraints_latency_Set: function(ctx, latency) {
      spasm.objects[ctx].latency = latency;
    },
    MediaTrackSupportedConstraints_latency_Get: function(ctx) {
      return spasm.objects[ctx].latency;
    },
    MediaTrackSupportedConstraints_channelCount_Set: function(ctx, channelCount) {
      spasm.objects[ctx].channelCount = channelCount;
    },
    MediaTrackSupportedConstraints_channelCount_Get: function(ctx) {
      return spasm.objects[ctx].channelCount;
    },
    MediaTrackSupportedConstraints_deviceId_Set: function(ctx, deviceId) {
      spasm.objects[ctx].deviceId = deviceId;
    },
    MediaTrackSupportedConstraints_deviceId_Get: function(ctx) {
      return spasm.objects[ctx].deviceId;
    },
    MediaTrackSupportedConstraints_groupId_Set: function(ctx, groupId) {
      spasm.objects[ctx].groupId = groupId;
    },
    MediaTrackSupportedConstraints_groupId_Get: function(ctx) {
      return spasm.objects[ctx].groupId;
    },
    OverconstrainedErrorEvent_error_Get: function(rawResult, ctx) {
      spasm.encode_optional_JsHandle(rawResult, spasm.objects[ctx].error);
    },
    OverconstrainedErrorEventInit_error_Set: function(ctx, errorDefined, error) {
      spasm.objects[ctx].error = errorDefined ? spasm.objects[error] : undefined;
    },
    OverconstrainedErrorEventInit_error_Get: function(rawResult, ctx) {
      spasm.encode_optional_JsHandle(rawResult, spasm.objects[ctx].error);
    },
    ULongRange_max_Set: function(ctx, max) {
      spasm.objects[ctx].max = max;
    },
    ULongRange_max_Get: function(ctx) {
      return spasm.objects[ctx].max;
    },
    ULongRange_min_Set: function(ctx, min) {
      spasm.objects[ctx].min = min;
    },
    ULongRange_min_Get: function(ctx) {
      return spasm.objects[ctx].min;
    },
  }
}