module spasm.bindings.mediastream;

import spasm.types;
import spasm.bindings.dom;
import spasm.bindings.html;

struct Capabilities {
  JsHandle handle;
  alias handle this;
}
alias ConstrainBoolean = SumType!(bool, ConstrainBooleanParameters);
struct ConstrainBooleanParameters {
  JsHandle handle;
  alias handle this;
  auto exact(bool exact) {
    ConstrainBooleanParameters_exact_Set(this.handle, exact);
  }
  auto exact() {
    return ConstrainBooleanParameters_exact_Get(this.handle);
  }
  auto ideal(bool ideal) {
    ConstrainBooleanParameters_ideal_Set(this.handle, ideal);
  }
  auto ideal() {
    return ConstrainBooleanParameters_ideal_Get(this.handle);
  }
}
alias ConstrainDOMString = SumType!(string, Sequence!(string), ConstrainDOMStringParameters);
struct ConstrainDOMStringParameters {
  JsHandle handle;
  alias handle this;
  auto exact(SumType!(string, Sequence!(string)) exact) {
    ConstrainDOMStringParameters_exact_Set(this.handle, exact);
  }
  auto exact() {
    return ConstrainDOMStringParameters_exact_Get(this.handle);
  }
  auto ideal(SumType!(string, Sequence!(string)) ideal) {
    ConstrainDOMStringParameters_ideal_Set(this.handle, ideal);
  }
  auto ideal() {
    return ConstrainDOMStringParameters_ideal_Get(this.handle);
  }
}
alias ConstrainDouble = SumType!(double, ConstrainDoubleRange);
struct ConstrainDoubleRange {
  DoubleRange _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = DoubleRange(h);
  }
  auto exact(double exact) {
    ConstrainDoubleRange_exact_Set(this._parent, exact);
  }
  auto exact() {
    return ConstrainDoubleRange_exact_Get(this._parent);
  }
  auto ideal(double ideal) {
    ConstrainDoubleRange_ideal_Set(this._parent, ideal);
  }
  auto ideal() {
    return ConstrainDoubleRange_ideal_Get(this._parent);
  }
}
alias ConstrainULong = SumType!(uint, ConstrainULongRange);
struct ConstrainULongRange {
  ULongRange _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = ULongRange(h);
  }
  auto exact(uint exact) {
    ConstrainULongRange_exact_Set(this._parent, exact);
  }
  auto exact() {
    return ConstrainULongRange_exact_Get(this._parent);
  }
  auto ideal(uint ideal) {
    ConstrainULongRange_ideal_Set(this._parent, ideal);
  }
  auto ideal() {
    return ConstrainULongRange_ideal_Get(this._parent);
  }
}
struct ConstrainablePattern {
  JsHandle handle;
  alias handle this;
  auto getCapabilities() {
    return Capabilities(JsHandle(ConstrainablePattern_getCapabilities(this.handle));
  }
  auto getConstraints() {
    return Constraints(JsHandle(ConstrainablePattern_getConstraints(this.handle));
  }
  auto getSettings() {
    return Settings(JsHandle(ConstrainablePattern_getSettings(this.handle));
  }
  auto applyConstraints(Constraints constraints) {
    return Promise!(void)(JsHandle(ConstrainablePattern_applyConstraints(this.handle, constraints.handle));
  }
  auto onoverconstrained(EventHandler onoverconstrained) {
    ConstrainablePattern_onoverconstrained_Set(this.handle, onoverconstrained);
  }
  auto onoverconstrained() {
    return ConstrainablePattern_onoverconstrained_Get(this.handle);
  }
}
struct ConstraintSet {
  JsHandle handle;
  alias handle this;
}
struct Constraints {
  ConstraintSet _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = ConstraintSet(h);
  }
  auto advanced(Sequence!(ConstraintSet) advanced) {
    Constraints_advanced_Set(this._parent, advanced.handle);
  }
  auto advanced() {
    return Sequence!(ConstraintSet)(JsHandle(Constraints_advanced_Get(this._parent));
  }
}
struct DoubleRange {
  JsHandle handle;
  alias handle this;
  auto max(double max) {
    DoubleRange_max_Set(this.handle, max);
  }
  auto max() {
    return DoubleRange_max_Get(this.handle);
  }
  auto min(double min) {
    DoubleRange_min_Set(this.handle, min);
  }
  auto min() {
    return DoubleRange_min_Get(this.handle);
  }
}
struct InputDeviceInfo {
  MediaDeviceInfo _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = MediaDeviceInfo(h);
  }
  auto getCapabilities() {
    return MediaTrackCapabilities(JsHandle(InputDeviceInfo_getCapabilities(this._parent));
  }
}
struct MediaDeviceInfo {
  JsHandle handle;
  alias handle this;
  auto deviceId() {
    return MediaDeviceInfo_deviceId_Get(this.handle);
  }
  auto kind() {
    return MediaDeviceInfo_kind_Get(this.handle);
  }
  auto label() {
    return MediaDeviceInfo_label_Get(this.handle);
  }
  auto groupId() {
    return MediaDeviceInfo_groupId_Get(this.handle);
  }
  auto toJSON() {
    return JsObject(JsHandle(MediaDeviceInfo_toJSON(this.handle));
  }
}
enum MediaDeviceKind {
  audioinput,
  audiooutput,
  videoinput
}
struct MediaDevices {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto ondevicechange(EventHandler ondevicechange) {
    MediaDevices_ondevicechange_Set(this._parent, ondevicechange);
  }
  auto ondevicechange() {
    return MediaDevices_ondevicechange_Get(this._parent);
  }
  auto enumerateDevices() {
    return Promise!(Sequence!(MediaDeviceInfo))(JsHandle(MediaDevices_enumerateDevices(this._parent));
  }
  auto getSupportedConstraints() {
    return MediaTrackSupportedConstraints(JsHandle(MediaDevices_getSupportedConstraints(this._parent));
  }
  auto getUserMedia(MediaStreamConstraints constraints) {
    return Promise!(MediaStream)(JsHandle(MediaDevices_getUserMedia(this._parent, constraints.handle));
  }
}
struct MediaStream {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto id() {
    return MediaStream_id_Get(this._parent);
  }
  auto getAudioTracks() {
    return Sequence!(MediaStreamTrack)(JsHandle(MediaStream_getAudioTracks(this._parent));
  }
  auto getVideoTracks() {
    return Sequence!(MediaStreamTrack)(JsHandle(MediaStream_getVideoTracks(this._parent));
  }
  auto getTracks() {
    return Sequence!(MediaStreamTrack)(JsHandle(MediaStream_getTracks(this._parent));
  }
  auto getTrackById(string trackId) {
    return MediaStream_getTrackById(this._parent, trackId);
  }
  auto addTrack(MediaStreamTrack track) {
    MediaStream_addTrack(this._parent, track.handle);
  }
  auto removeTrack(MediaStreamTrack track) {
    MediaStream_removeTrack(this._parent, track.handle);
  }
  auto clone() {
    return MediaStream(JsHandle(MediaStream_clone(this._parent));
  }
  auto active() {
    return MediaStream_active_Get(this._parent);
  }
  auto onaddtrack(EventHandler onaddtrack) {
    MediaStream_onaddtrack_Set(this._parent, onaddtrack);
  }
  auto onaddtrack() {
    return MediaStream_onaddtrack_Get(this._parent);
  }
  auto onremovetrack(EventHandler onremovetrack) {
    MediaStream_onremovetrack_Set(this._parent, onremovetrack);
  }
  auto onremovetrack() {
    return MediaStream_onremovetrack_Get(this._parent);
  }
}
struct MediaStreamConstraints {
  JsHandle handle;
  alias handle this;
  auto video(SumType!(bool, MediaTrackConstraints) video) {
    MediaStreamConstraints_video_Set(this.handle, video);
  }
  auto video() {
    return MediaStreamConstraints_video_Get(this.handle);
  }
  auto audio(SumType!(bool, MediaTrackConstraints) audio) {
    MediaStreamConstraints_audio_Set(this.handle, audio);
  }
  auto audio() {
    return MediaStreamConstraints_audio_Get(this.handle);
  }
}
alias MediaStreamError = JsObject;
struct MediaStreamTrack {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto kind() {
    return MediaStreamTrack_kind_Get(this._parent);
  }
  auto id() {
    return MediaStreamTrack_id_Get(this._parent);
  }
  auto label() {
    return MediaStreamTrack_label_Get(this._parent);
  }
  auto enabled(bool enabled) {
    MediaStreamTrack_enabled_Set(this._parent, enabled);
  }
  auto enabled() {
    return MediaStreamTrack_enabled_Get(this._parent);
  }
  auto muted() {
    return MediaStreamTrack_muted_Get(this._parent);
  }
  auto onmute(EventHandler onmute) {
    MediaStreamTrack_onmute_Set(this._parent, onmute);
  }
  auto onmute() {
    return MediaStreamTrack_onmute_Get(this._parent);
  }
  auto onunmute(EventHandler onunmute) {
    MediaStreamTrack_onunmute_Set(this._parent, onunmute);
  }
  auto onunmute() {
    return MediaStreamTrack_onunmute_Get(this._parent);
  }
  auto readyState() {
    return MediaStreamTrack_readyState_Get(this._parent);
  }
  auto onended(EventHandler onended) {
    MediaStreamTrack_onended_Set(this._parent, onended);
  }
  auto onended() {
    return MediaStreamTrack_onended_Get(this._parent);
  }
  auto clone() {
    return MediaStreamTrack(JsHandle(MediaStreamTrack_clone(this._parent));
  }
  auto stop() {
    MediaStreamTrack_stop(this._parent);
  }
  auto getCapabilities() {
    return MediaTrackCapabilities(JsHandle(MediaStreamTrack_getCapabilities(this._parent));
  }
  auto getConstraints() {
    return MediaTrackConstraints(JsHandle(MediaStreamTrack_getConstraints(this._parent));
  }
  auto getSettings() {
    return MediaTrackSettings(JsHandle(MediaStreamTrack_getSettings(this._parent));
  }
  auto applyConstraints(MediaTrackConstraints constraints) {
    return Promise!(void)(JsHandle(MediaStreamTrack_applyConstraints(this._parent, constraints.handle));
  }
  auto onoverconstrained(EventHandler onoverconstrained) {
    MediaStreamTrack_onoverconstrained_Set(this._parent, onoverconstrained);
  }
  auto onoverconstrained() {
    return MediaStreamTrack_onoverconstrained_Get(this._parent);
  }
}
struct MediaStreamTrackEvent {
  Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Event(h);
  }
  auto track() {
    return MediaStreamTrack(JsHandle(MediaStreamTrackEvent_track_Get(this._parent));
  }
}
struct MediaStreamTrackEventInit {
  EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventInit(h);
  }
  auto track(MediaStreamTrack track) {
    MediaStreamTrackEventInit_track_Set(this._parent, track.handle);
  }
  auto track() {
    return MediaStreamTrack(JsHandle(MediaStreamTrackEventInit_track_Get(this._parent));
  }
}
enum MediaStreamTrackState {
  live,
  ended
}
struct MediaTrackCapabilities {
  JsHandle handle;
  alias handle this;
  auto width(ULongRange width) {
    MediaTrackCapabilities_width_Set(this.handle, width.handle);
  }
  auto width() {
    return ULongRange(JsHandle(MediaTrackCapabilities_width_Get(this.handle));
  }
  auto height(ULongRange height) {
    MediaTrackCapabilities_height_Set(this.handle, height.handle);
  }
  auto height() {
    return ULongRange(JsHandle(MediaTrackCapabilities_height_Get(this.handle));
  }
  auto aspectRatio(DoubleRange aspectRatio) {
    MediaTrackCapabilities_aspectRatio_Set(this.handle, aspectRatio.handle);
  }
  auto aspectRatio() {
    return DoubleRange(JsHandle(MediaTrackCapabilities_aspectRatio_Get(this.handle));
  }
  auto frameRate(DoubleRange frameRate) {
    MediaTrackCapabilities_frameRate_Set(this.handle, frameRate.handle);
  }
  auto frameRate() {
    return DoubleRange(JsHandle(MediaTrackCapabilities_frameRate_Get(this.handle));
  }
  auto facingMode(Sequence!(string) facingMode) {
    MediaTrackCapabilities_facingMode_Set(this.handle, facingMode.handle);
  }
  auto facingMode() {
    return Sequence!(string)(JsHandle(MediaTrackCapabilities_facingMode_Get(this.handle));
  }
  auto resizeMode(Sequence!(string) resizeMode) {
    MediaTrackCapabilities_resizeMode_Set(this.handle, resizeMode.handle);
  }
  auto resizeMode() {
    return Sequence!(string)(JsHandle(MediaTrackCapabilities_resizeMode_Get(this.handle));
  }
  auto volume(DoubleRange volume) {
    MediaTrackCapabilities_volume_Set(this.handle, volume.handle);
  }
  auto volume() {
    return DoubleRange(JsHandle(MediaTrackCapabilities_volume_Get(this.handle));
  }
  auto sampleRate(ULongRange sampleRate) {
    MediaTrackCapabilities_sampleRate_Set(this.handle, sampleRate.handle);
  }
  auto sampleRate() {
    return ULongRange(JsHandle(MediaTrackCapabilities_sampleRate_Get(this.handle));
  }
  auto sampleSize(ULongRange sampleSize) {
    MediaTrackCapabilities_sampleSize_Set(this.handle, sampleSize.handle);
  }
  auto sampleSize() {
    return ULongRange(JsHandle(MediaTrackCapabilities_sampleSize_Get(this.handle));
  }
  auto echoCancellation(Sequence!(bool) echoCancellation) {
    MediaTrackCapabilities_echoCancellation_Set(this.handle, echoCancellation.handle);
  }
  auto echoCancellation() {
    return Sequence!(bool)(JsHandle(MediaTrackCapabilities_echoCancellation_Get(this.handle));
  }
  auto autoGainControl(Sequence!(bool) autoGainControl) {
    MediaTrackCapabilities_autoGainControl_Set(this.handle, autoGainControl.handle);
  }
  auto autoGainControl() {
    return Sequence!(bool)(JsHandle(MediaTrackCapabilities_autoGainControl_Get(this.handle));
  }
  auto noiseSuppression(Sequence!(bool) noiseSuppression) {
    MediaTrackCapabilities_noiseSuppression_Set(this.handle, noiseSuppression.handle);
  }
  auto noiseSuppression() {
    return Sequence!(bool)(JsHandle(MediaTrackCapabilities_noiseSuppression_Get(this.handle));
  }
  auto latency(DoubleRange latency) {
    MediaTrackCapabilities_latency_Set(this.handle, latency.handle);
  }
  auto latency() {
    return DoubleRange(JsHandle(MediaTrackCapabilities_latency_Get(this.handle));
  }
  auto channelCount(ULongRange channelCount) {
    MediaTrackCapabilities_channelCount_Set(this.handle, channelCount.handle);
  }
  auto channelCount() {
    return ULongRange(JsHandle(MediaTrackCapabilities_channelCount_Get(this.handle));
  }
  auto deviceId(string deviceId) {
    MediaTrackCapabilities_deviceId_Set(this.handle, deviceId);
  }
  auto deviceId() {
    return MediaTrackCapabilities_deviceId_Get(this.handle);
  }
  auto groupId(string groupId) {
    MediaTrackCapabilities_groupId_Set(this.handle, groupId);
  }
  auto groupId() {
    return MediaTrackCapabilities_groupId_Get(this.handle);
  }
}
struct MediaTrackConstraintSet {
  JsHandle handle;
  alias handle this;
  auto width(ConstrainULong width) {
    MediaTrackConstraintSet_width_Set(this.handle, width);
  }
  auto width() {
    return MediaTrackConstraintSet_width_Get(this.handle);
  }
  auto height(ConstrainULong height) {
    MediaTrackConstraintSet_height_Set(this.handle, height);
  }
  auto height() {
    return MediaTrackConstraintSet_height_Get(this.handle);
  }
  auto aspectRatio(ConstrainDouble aspectRatio) {
    MediaTrackConstraintSet_aspectRatio_Set(this.handle, aspectRatio);
  }
  auto aspectRatio() {
    return MediaTrackConstraintSet_aspectRatio_Get(this.handle);
  }
  auto frameRate(ConstrainDouble frameRate) {
    MediaTrackConstraintSet_frameRate_Set(this.handle, frameRate);
  }
  auto frameRate() {
    return MediaTrackConstraintSet_frameRate_Get(this.handle);
  }
  auto facingMode(ConstrainDOMString facingMode) {
    MediaTrackConstraintSet_facingMode_Set(this.handle, facingMode);
  }
  auto facingMode() {
    return MediaTrackConstraintSet_facingMode_Get(this.handle);
  }
  auto resizeMode(ConstrainDOMString resizeMode) {
    MediaTrackConstraintSet_resizeMode_Set(this.handle, resizeMode);
  }
  auto resizeMode() {
    return MediaTrackConstraintSet_resizeMode_Get(this.handle);
  }
  auto volume(ConstrainDouble volume) {
    MediaTrackConstraintSet_volume_Set(this.handle, volume);
  }
  auto volume() {
    return MediaTrackConstraintSet_volume_Get(this.handle);
  }
  auto sampleRate(ConstrainULong sampleRate) {
    MediaTrackConstraintSet_sampleRate_Set(this.handle, sampleRate);
  }
  auto sampleRate() {
    return MediaTrackConstraintSet_sampleRate_Get(this.handle);
  }
  auto sampleSize(ConstrainULong sampleSize) {
    MediaTrackConstraintSet_sampleSize_Set(this.handle, sampleSize);
  }
  auto sampleSize() {
    return MediaTrackConstraintSet_sampleSize_Get(this.handle);
  }
  auto echoCancellation(ConstrainBoolean echoCancellation) {
    MediaTrackConstraintSet_echoCancellation_Set(this.handle, echoCancellation);
  }
  auto echoCancellation() {
    return MediaTrackConstraintSet_echoCancellation_Get(this.handle);
  }
  auto autoGainControl(ConstrainBoolean autoGainControl) {
    MediaTrackConstraintSet_autoGainControl_Set(this.handle, autoGainControl);
  }
  auto autoGainControl() {
    return MediaTrackConstraintSet_autoGainControl_Get(this.handle);
  }
  auto noiseSuppression(ConstrainBoolean noiseSuppression) {
    MediaTrackConstraintSet_noiseSuppression_Set(this.handle, noiseSuppression);
  }
  auto noiseSuppression() {
    return MediaTrackConstraintSet_noiseSuppression_Get(this.handle);
  }
  auto latency(ConstrainDouble latency) {
    MediaTrackConstraintSet_latency_Set(this.handle, latency);
  }
  auto latency() {
    return MediaTrackConstraintSet_latency_Get(this.handle);
  }
  auto channelCount(ConstrainULong channelCount) {
    MediaTrackConstraintSet_channelCount_Set(this.handle, channelCount);
  }
  auto channelCount() {
    return MediaTrackConstraintSet_channelCount_Get(this.handle);
  }
  auto deviceId(ConstrainDOMString deviceId) {
    MediaTrackConstraintSet_deviceId_Set(this.handle, deviceId);
  }
  auto deviceId() {
    return MediaTrackConstraintSet_deviceId_Get(this.handle);
  }
  auto groupId(ConstrainDOMString groupId) {
    MediaTrackConstraintSet_groupId_Set(this.handle, groupId);
  }
  auto groupId() {
    return MediaTrackConstraintSet_groupId_Get(this.handle);
  }
}
struct MediaTrackConstraints {
  MediaTrackConstraintSet _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = MediaTrackConstraintSet(h);
  }
  auto advanced(Sequence!(MediaTrackConstraintSet) advanced) {
    MediaTrackConstraints_advanced_Set(this._parent, advanced.handle);
  }
  auto advanced() {
    return Sequence!(MediaTrackConstraintSet)(JsHandle(MediaTrackConstraints_advanced_Get(this._parent));
  }
}
struct MediaTrackSettings {
  JsHandle handle;
  alias handle this;
  auto width(int width) {
    MediaTrackSettings_width_Set(this.handle, width);
  }
  auto width() {
    return MediaTrackSettings_width_Get(this.handle);
  }
  auto height(int height) {
    MediaTrackSettings_height_Set(this.handle, height);
  }
  auto height() {
    return MediaTrackSettings_height_Get(this.handle);
  }
  auto aspectRatio(double aspectRatio) {
    MediaTrackSettings_aspectRatio_Set(this.handle, aspectRatio);
  }
  auto aspectRatio() {
    return MediaTrackSettings_aspectRatio_Get(this.handle);
  }
  auto frameRate(double frameRate) {
    MediaTrackSettings_frameRate_Set(this.handle, frameRate);
  }
  auto frameRate() {
    return MediaTrackSettings_frameRate_Get(this.handle);
  }
  auto facingMode(string facingMode) {
    MediaTrackSettings_facingMode_Set(this.handle, facingMode);
  }
  auto facingMode() {
    return MediaTrackSettings_facingMode_Get(this.handle);
  }
  auto resizeMode(string resizeMode) {
    MediaTrackSettings_resizeMode_Set(this.handle, resizeMode);
  }
  auto resizeMode() {
    return MediaTrackSettings_resizeMode_Get(this.handle);
  }
  auto volume(double volume) {
    MediaTrackSettings_volume_Set(this.handle, volume);
  }
  auto volume() {
    return MediaTrackSettings_volume_Get(this.handle);
  }
  auto sampleRate(int sampleRate) {
    MediaTrackSettings_sampleRate_Set(this.handle, sampleRate);
  }
  auto sampleRate() {
    return MediaTrackSettings_sampleRate_Get(this.handle);
  }
  auto sampleSize(int sampleSize) {
    MediaTrackSettings_sampleSize_Set(this.handle, sampleSize);
  }
  auto sampleSize() {
    return MediaTrackSettings_sampleSize_Get(this.handle);
  }
  auto echoCancellation(bool echoCancellation) {
    MediaTrackSettings_echoCancellation_Set(this.handle, echoCancellation);
  }
  auto echoCancellation() {
    return MediaTrackSettings_echoCancellation_Get(this.handle);
  }
  auto autoGainControl(bool autoGainControl) {
    MediaTrackSettings_autoGainControl_Set(this.handle, autoGainControl);
  }
  auto autoGainControl() {
    return MediaTrackSettings_autoGainControl_Get(this.handle);
  }
  auto noiseSuppression(bool noiseSuppression) {
    MediaTrackSettings_noiseSuppression_Set(this.handle, noiseSuppression);
  }
  auto noiseSuppression() {
    return MediaTrackSettings_noiseSuppression_Get(this.handle);
  }
  auto latency(double latency) {
    MediaTrackSettings_latency_Set(this.handle, latency);
  }
  auto latency() {
    return MediaTrackSettings_latency_Get(this.handle);
  }
  auto channelCount(int channelCount) {
    MediaTrackSettings_channelCount_Set(this.handle, channelCount);
  }
  auto channelCount() {
    return MediaTrackSettings_channelCount_Get(this.handle);
  }
  auto deviceId(string deviceId) {
    MediaTrackSettings_deviceId_Set(this.handle, deviceId);
  }
  auto deviceId() {
    return MediaTrackSettings_deviceId_Get(this.handle);
  }
  auto groupId(string groupId) {
    MediaTrackSettings_groupId_Set(this.handle, groupId);
  }
  auto groupId() {
    return MediaTrackSettings_groupId_Get(this.handle);
  }
}
struct MediaTrackSupportedConstraints {
  JsHandle handle;
  alias handle this;
  auto width(bool width) {
    MediaTrackSupportedConstraints_width_Set(this.handle, width);
  }
  auto width() {
    return MediaTrackSupportedConstraints_width_Get(this.handle);
  }
  auto height(bool height) {
    MediaTrackSupportedConstraints_height_Set(this.handle, height);
  }
  auto height() {
    return MediaTrackSupportedConstraints_height_Get(this.handle);
  }
  auto aspectRatio(bool aspectRatio) {
    MediaTrackSupportedConstraints_aspectRatio_Set(this.handle, aspectRatio);
  }
  auto aspectRatio() {
    return MediaTrackSupportedConstraints_aspectRatio_Get(this.handle);
  }
  auto frameRate(bool frameRate) {
    MediaTrackSupportedConstraints_frameRate_Set(this.handle, frameRate);
  }
  auto frameRate() {
    return MediaTrackSupportedConstraints_frameRate_Get(this.handle);
  }
  auto facingMode(bool facingMode) {
    MediaTrackSupportedConstraints_facingMode_Set(this.handle, facingMode);
  }
  auto facingMode() {
    return MediaTrackSupportedConstraints_facingMode_Get(this.handle);
  }
  auto resizeMode(bool resizeMode) {
    MediaTrackSupportedConstraints_resizeMode_Set(this.handle, resizeMode);
  }
  auto resizeMode() {
    return MediaTrackSupportedConstraints_resizeMode_Get(this.handle);
  }
  auto volume(bool volume) {
    MediaTrackSupportedConstraints_volume_Set(this.handle, volume);
  }
  auto volume() {
    return MediaTrackSupportedConstraints_volume_Get(this.handle);
  }
  auto sampleRate(bool sampleRate) {
    MediaTrackSupportedConstraints_sampleRate_Set(this.handle, sampleRate);
  }
  auto sampleRate() {
    return MediaTrackSupportedConstraints_sampleRate_Get(this.handle);
  }
  auto sampleSize(bool sampleSize) {
    MediaTrackSupportedConstraints_sampleSize_Set(this.handle, sampleSize);
  }
  auto sampleSize() {
    return MediaTrackSupportedConstraints_sampleSize_Get(this.handle);
  }
  auto echoCancellation(bool echoCancellation) {
    MediaTrackSupportedConstraints_echoCancellation_Set(this.handle, echoCancellation);
  }
  auto echoCancellation() {
    return MediaTrackSupportedConstraints_echoCancellation_Get(this.handle);
  }
  auto autoGainControl(bool autoGainControl) {
    MediaTrackSupportedConstraints_autoGainControl_Set(this.handle, autoGainControl);
  }
  auto autoGainControl() {
    return MediaTrackSupportedConstraints_autoGainControl_Get(this.handle);
  }
  auto noiseSuppression(bool noiseSuppression) {
    MediaTrackSupportedConstraints_noiseSuppression_Set(this.handle, noiseSuppression);
  }
  auto noiseSuppression() {
    return MediaTrackSupportedConstraints_noiseSuppression_Get(this.handle);
  }
  auto latency(bool latency) {
    MediaTrackSupportedConstraints_latency_Set(this.handle, latency);
  }
  auto latency() {
    return MediaTrackSupportedConstraints_latency_Get(this.handle);
  }
  auto channelCount(bool channelCount) {
    MediaTrackSupportedConstraints_channelCount_Set(this.handle, channelCount);
  }
  auto channelCount() {
    return MediaTrackSupportedConstraints_channelCount_Get(this.handle);
  }
  auto deviceId(bool deviceId) {
    MediaTrackSupportedConstraints_deviceId_Set(this.handle, deviceId);
  }
  auto deviceId() {
    return MediaTrackSupportedConstraints_deviceId_Get(this.handle);
  }
  auto groupId(bool groupId) {
    MediaTrackSupportedConstraints_groupId_Set(this.handle, groupId);
  }
  auto groupId() {
    return MediaTrackSupportedConstraints_groupId_Get(this.handle);
  }
}
alias NavigatorUserMediaErrorCallback = void delegate(JsObject);
alias NavigatorUserMediaSuccessCallback = void delegate(MediaStream);
struct OverconstrainedError {
  JsHandle handle;
  alias handle this;
}
struct OverconstrainedErrorEvent {
  Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Event(h);
  }
  auto error() {
    return OverconstrainedErrorEvent_error_Get(this._parent);
  }
}
struct OverconstrainedErrorEventInit {
  EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventInit(h);
  }
  auto error(Optional!(OverconstrainedError) error) {
    OverconstrainedErrorEventInit_error_Set(this._parent, !error.empty, error.front.handle);
  }
  auto error() {
    return OverconstrainedErrorEventInit_error_Get(this._parent);
  }
}
struct Settings {
  JsHandle handle;
  alias handle this;
}
struct ULongRange {
  JsHandle handle;
  alias handle this;
  auto max(uint max) {
    ULongRange_max_Set(this.handle, max);
  }
  auto max() {
    return ULongRange_max_Get(this.handle);
  }
  auto min(uint min) {
    ULongRange_min_Set(this.handle, min);
  }
  auto min() {
    return ULongRange_min_Get(this.handle);
  }
}
enum VideoFacingModeEnum {
  user,
  environment,
  left,
  right
}
enum VideoResizeModeEnum {
  none,
  crop_and_scale
}


extern (C) void ConstrainBooleanParameters_exact_Set(Handle, bool);
extern (C) bool ConstrainBooleanParameters_exact_Get(Handle);
extern (C) void ConstrainBooleanParameters_ideal_Set(Handle, bool);
extern (C) bool ConstrainBooleanParameters_ideal_Get(Handle);
extern (C) void ConstrainDOMStringParameters_exact_Set(Handle, SumType!(string, Sequence!(string)));
extern (C) SumType!(string, Sequence!(string)) ConstrainDOMStringParameters_exact_Get(Handle);
extern (C) void ConstrainDOMStringParameters_ideal_Set(Handle, SumType!(string, Sequence!(string)));
extern (C) SumType!(string, Sequence!(string)) ConstrainDOMStringParameters_ideal_Get(Handle);
extern (C) void ConstrainDoubleRange_exact_Set(Handle, double);
extern (C) double ConstrainDoubleRange_exact_Get(Handle);
extern (C) void ConstrainDoubleRange_ideal_Set(Handle, double);
extern (C) double ConstrainDoubleRange_ideal_Get(Handle);
extern (C) void ConstrainULongRange_exact_Set(Handle, uint);
extern (C) uint ConstrainULongRange_exact_Get(Handle);
extern (C) void ConstrainULongRange_ideal_Set(Handle, uint);
extern (C) uint ConstrainULongRange_ideal_Get(Handle);
extern (C) Handle ConstrainablePattern_getCapabilities(Handle);
extern (C) Handle ConstrainablePattern_getConstraints(Handle);
extern (C) Handle ConstrainablePattern_getSettings(Handle);
extern (C) Handle ConstrainablePattern_applyConstraints(Handle, Handle);
extern (C) void ConstrainablePattern_onoverconstrained_Set(Handle, EventHandler);
extern (C) EventHandler ConstrainablePattern_onoverconstrained_Get(Handle);
extern (C) void Constraints_advanced_Set(Handle, Handle);
extern (C) Handle Constraints_advanced_Get(Handle);
extern (C) void DoubleRange_max_Set(Handle, double);
extern (C) double DoubleRange_max_Get(Handle);
extern (C) void DoubleRange_min_Set(Handle, double);
extern (C) double DoubleRange_min_Get(Handle);
extern (C) Handle InputDeviceInfo_getCapabilities(Handle);
extern (C) string MediaDeviceInfo_deviceId_Get(Handle);
extern (C) MediaDeviceKind MediaDeviceInfo_kind_Get(Handle);
extern (C) string MediaDeviceInfo_label_Get(Handle);
extern (C) string MediaDeviceInfo_groupId_Get(Handle);
extern (C) Handle MediaDeviceInfo_toJSON(Handle);
extern (C) void MediaDevices_ondevicechange_Set(Handle, EventHandler);
extern (C) EventHandler MediaDevices_ondevicechange_Get(Handle);
extern (C) Handle MediaDevices_enumerateDevices(Handle);
extern (C) Handle MediaDevices_getSupportedConstraints(Handle);
extern (C) Handle MediaDevices_getUserMedia(Handle, Handle);
extern (C) string MediaStream_id_Get(Handle);
extern (C) Handle MediaStream_getAudioTracks(Handle);
extern (C) Handle MediaStream_getVideoTracks(Handle);
extern (C) Handle MediaStream_getTracks(Handle);
extern (C) Optional!(MediaStreamTrack) MediaStream_getTrackById(Handle, string);
extern (C) void MediaStream_addTrack(Handle, Handle);
extern (C) void MediaStream_removeTrack(Handle, Handle);
extern (C) Handle MediaStream_clone(Handle);
extern (C) bool MediaStream_active_Get(Handle);
extern (C) void MediaStream_onaddtrack_Set(Handle, EventHandler);
extern (C) EventHandler MediaStream_onaddtrack_Get(Handle);
extern (C) void MediaStream_onremovetrack_Set(Handle, EventHandler);
extern (C) EventHandler MediaStream_onremovetrack_Get(Handle);
extern (C) void MediaStreamConstraints_video_Set(Handle, SumType!(bool, MediaTrackConstraints));
extern (C) SumType!(bool, MediaTrackConstraints) MediaStreamConstraints_video_Get(Handle);
extern (C) void MediaStreamConstraints_audio_Set(Handle, SumType!(bool, MediaTrackConstraints));
extern (C) SumType!(bool, MediaTrackConstraints) MediaStreamConstraints_audio_Get(Handle);
extern (C) string MediaStreamTrack_kind_Get(Handle);
extern (C) string MediaStreamTrack_id_Get(Handle);
extern (C) string MediaStreamTrack_label_Get(Handle);
extern (C) void MediaStreamTrack_enabled_Set(Handle, bool);
extern (C) bool MediaStreamTrack_enabled_Get(Handle);
extern (C) bool MediaStreamTrack_muted_Get(Handle);
extern (C) void MediaStreamTrack_onmute_Set(Handle, EventHandler);
extern (C) EventHandler MediaStreamTrack_onmute_Get(Handle);
extern (C) void MediaStreamTrack_onunmute_Set(Handle, EventHandler);
extern (C) EventHandler MediaStreamTrack_onunmute_Get(Handle);
extern (C) MediaStreamTrackState MediaStreamTrack_readyState_Get(Handle);
extern (C) void MediaStreamTrack_onended_Set(Handle, EventHandler);
extern (C) EventHandler MediaStreamTrack_onended_Get(Handle);
extern (C) Handle MediaStreamTrack_clone(Handle);
extern (C) void MediaStreamTrack_stop(Handle);
extern (C) Handle MediaStreamTrack_getCapabilities(Handle);
extern (C) Handle MediaStreamTrack_getConstraints(Handle);
extern (C) Handle MediaStreamTrack_getSettings(Handle);
extern (C) Handle MediaStreamTrack_applyConstraints(Handle, Handle);
extern (C) void MediaStreamTrack_onoverconstrained_Set(Handle, EventHandler);
extern (C) EventHandler MediaStreamTrack_onoverconstrained_Get(Handle);
extern (C) Handle MediaStreamTrackEvent_track_Get(Handle);
extern (C) void MediaStreamTrackEventInit_track_Set(Handle, Handle);
extern (C) Handle MediaStreamTrackEventInit_track_Get(Handle);
extern (C) void MediaTrackCapabilities_width_Set(Handle, Handle);
extern (C) Handle MediaTrackCapabilities_width_Get(Handle);
extern (C) void MediaTrackCapabilities_height_Set(Handle, Handle);
extern (C) Handle MediaTrackCapabilities_height_Get(Handle);
extern (C) void MediaTrackCapabilities_aspectRatio_Set(Handle, Handle);
extern (C) Handle MediaTrackCapabilities_aspectRatio_Get(Handle);
extern (C) void MediaTrackCapabilities_frameRate_Set(Handle, Handle);
extern (C) Handle MediaTrackCapabilities_frameRate_Get(Handle);
extern (C) void MediaTrackCapabilities_facingMode_Set(Handle, Handle);
extern (C) Handle MediaTrackCapabilities_facingMode_Get(Handle);
extern (C) void MediaTrackCapabilities_resizeMode_Set(Handle, Handle);
extern (C) Handle MediaTrackCapabilities_resizeMode_Get(Handle);
extern (C) void MediaTrackCapabilities_volume_Set(Handle, Handle);
extern (C) Handle MediaTrackCapabilities_volume_Get(Handle);
extern (C) void MediaTrackCapabilities_sampleRate_Set(Handle, Handle);
extern (C) Handle MediaTrackCapabilities_sampleRate_Get(Handle);
extern (C) void MediaTrackCapabilities_sampleSize_Set(Handle, Handle);
extern (C) Handle MediaTrackCapabilities_sampleSize_Get(Handle);
extern (C) void MediaTrackCapabilities_echoCancellation_Set(Handle, Handle);
extern (C) Handle MediaTrackCapabilities_echoCancellation_Get(Handle);
extern (C) void MediaTrackCapabilities_autoGainControl_Set(Handle, Handle);
extern (C) Handle MediaTrackCapabilities_autoGainControl_Get(Handle);
extern (C) void MediaTrackCapabilities_noiseSuppression_Set(Handle, Handle);
extern (C) Handle MediaTrackCapabilities_noiseSuppression_Get(Handle);
extern (C) void MediaTrackCapabilities_latency_Set(Handle, Handle);
extern (C) Handle MediaTrackCapabilities_latency_Get(Handle);
extern (C) void MediaTrackCapabilities_channelCount_Set(Handle, Handle);
extern (C) Handle MediaTrackCapabilities_channelCount_Get(Handle);
extern (C) void MediaTrackCapabilities_deviceId_Set(Handle, string);
extern (C) string MediaTrackCapabilities_deviceId_Get(Handle);
extern (C) void MediaTrackCapabilities_groupId_Set(Handle, string);
extern (C) string MediaTrackCapabilities_groupId_Get(Handle);
extern (C) void MediaTrackConstraintSet_width_Set(Handle, ConstrainULong);
extern (C) ConstrainULong MediaTrackConstraintSet_width_Get(Handle);
extern (C) void MediaTrackConstraintSet_height_Set(Handle, ConstrainULong);
extern (C) ConstrainULong MediaTrackConstraintSet_height_Get(Handle);
extern (C) void MediaTrackConstraintSet_aspectRatio_Set(Handle, ConstrainDouble);
extern (C) ConstrainDouble MediaTrackConstraintSet_aspectRatio_Get(Handle);
extern (C) void MediaTrackConstraintSet_frameRate_Set(Handle, ConstrainDouble);
extern (C) ConstrainDouble MediaTrackConstraintSet_frameRate_Get(Handle);
extern (C) void MediaTrackConstraintSet_facingMode_Set(Handle, ConstrainDOMString);
extern (C) ConstrainDOMString MediaTrackConstraintSet_facingMode_Get(Handle);
extern (C) void MediaTrackConstraintSet_resizeMode_Set(Handle, ConstrainDOMString);
extern (C) ConstrainDOMString MediaTrackConstraintSet_resizeMode_Get(Handle);
extern (C) void MediaTrackConstraintSet_volume_Set(Handle, ConstrainDouble);
extern (C) ConstrainDouble MediaTrackConstraintSet_volume_Get(Handle);
extern (C) void MediaTrackConstraintSet_sampleRate_Set(Handle, ConstrainULong);
extern (C) ConstrainULong MediaTrackConstraintSet_sampleRate_Get(Handle);
extern (C) void MediaTrackConstraintSet_sampleSize_Set(Handle, ConstrainULong);
extern (C) ConstrainULong MediaTrackConstraintSet_sampleSize_Get(Handle);
extern (C) void MediaTrackConstraintSet_echoCancellation_Set(Handle, ConstrainBoolean);
extern (C) ConstrainBoolean MediaTrackConstraintSet_echoCancellation_Get(Handle);
extern (C) void MediaTrackConstraintSet_autoGainControl_Set(Handle, ConstrainBoolean);
extern (C) ConstrainBoolean MediaTrackConstraintSet_autoGainControl_Get(Handle);
extern (C) void MediaTrackConstraintSet_noiseSuppression_Set(Handle, ConstrainBoolean);
extern (C) ConstrainBoolean MediaTrackConstraintSet_noiseSuppression_Get(Handle);
extern (C) void MediaTrackConstraintSet_latency_Set(Handle, ConstrainDouble);
extern (C) ConstrainDouble MediaTrackConstraintSet_latency_Get(Handle);
extern (C) void MediaTrackConstraintSet_channelCount_Set(Handle, ConstrainULong);
extern (C) ConstrainULong MediaTrackConstraintSet_channelCount_Get(Handle);
extern (C) void MediaTrackConstraintSet_deviceId_Set(Handle, ConstrainDOMString);
extern (C) ConstrainDOMString MediaTrackConstraintSet_deviceId_Get(Handle);
extern (C) void MediaTrackConstraintSet_groupId_Set(Handle, ConstrainDOMString);
extern (C) ConstrainDOMString MediaTrackConstraintSet_groupId_Get(Handle);
extern (C) void MediaTrackConstraints_advanced_Set(Handle, Handle);
extern (C) Handle MediaTrackConstraints_advanced_Get(Handle);
extern (C) void MediaTrackSettings_width_Set(Handle, int);
extern (C) int MediaTrackSettings_width_Get(Handle);
extern (C) void MediaTrackSettings_height_Set(Handle, int);
extern (C) int MediaTrackSettings_height_Get(Handle);
extern (C) void MediaTrackSettings_aspectRatio_Set(Handle, double);
extern (C) double MediaTrackSettings_aspectRatio_Get(Handle);
extern (C) void MediaTrackSettings_frameRate_Set(Handle, double);
extern (C) double MediaTrackSettings_frameRate_Get(Handle);
extern (C) void MediaTrackSettings_facingMode_Set(Handle, string);
extern (C) string MediaTrackSettings_facingMode_Get(Handle);
extern (C) void MediaTrackSettings_resizeMode_Set(Handle, string);
extern (C) string MediaTrackSettings_resizeMode_Get(Handle);
extern (C) void MediaTrackSettings_volume_Set(Handle, double);
extern (C) double MediaTrackSettings_volume_Get(Handle);
extern (C) void MediaTrackSettings_sampleRate_Set(Handle, int);
extern (C) int MediaTrackSettings_sampleRate_Get(Handle);
extern (C) void MediaTrackSettings_sampleSize_Set(Handle, int);
extern (C) int MediaTrackSettings_sampleSize_Get(Handle);
extern (C) void MediaTrackSettings_echoCancellation_Set(Handle, bool);
extern (C) bool MediaTrackSettings_echoCancellation_Get(Handle);
extern (C) void MediaTrackSettings_autoGainControl_Set(Handle, bool);
extern (C) bool MediaTrackSettings_autoGainControl_Get(Handle);
extern (C) void MediaTrackSettings_noiseSuppression_Set(Handle, bool);
extern (C) bool MediaTrackSettings_noiseSuppression_Get(Handle);
extern (C) void MediaTrackSettings_latency_Set(Handle, double);
extern (C) double MediaTrackSettings_latency_Get(Handle);
extern (C) void MediaTrackSettings_channelCount_Set(Handle, int);
extern (C) int MediaTrackSettings_channelCount_Get(Handle);
extern (C) void MediaTrackSettings_deviceId_Set(Handle, string);
extern (C) string MediaTrackSettings_deviceId_Get(Handle);
extern (C) void MediaTrackSettings_groupId_Set(Handle, string);
extern (C) string MediaTrackSettings_groupId_Get(Handle);
extern (C) void MediaTrackSupportedConstraints_width_Set(Handle, bool);
extern (C) bool MediaTrackSupportedConstraints_width_Get(Handle);
extern (C) void MediaTrackSupportedConstraints_height_Set(Handle, bool);
extern (C) bool MediaTrackSupportedConstraints_height_Get(Handle);
extern (C) void MediaTrackSupportedConstraints_aspectRatio_Set(Handle, bool);
extern (C) bool MediaTrackSupportedConstraints_aspectRatio_Get(Handle);
extern (C) void MediaTrackSupportedConstraints_frameRate_Set(Handle, bool);
extern (C) bool MediaTrackSupportedConstraints_frameRate_Get(Handle);
extern (C) void MediaTrackSupportedConstraints_facingMode_Set(Handle, bool);
extern (C) bool MediaTrackSupportedConstraints_facingMode_Get(Handle);
extern (C) void MediaTrackSupportedConstraints_resizeMode_Set(Handle, bool);
extern (C) bool MediaTrackSupportedConstraints_resizeMode_Get(Handle);
extern (C) void MediaTrackSupportedConstraints_volume_Set(Handle, bool);
extern (C) bool MediaTrackSupportedConstraints_volume_Get(Handle);
extern (C) void MediaTrackSupportedConstraints_sampleRate_Set(Handle, bool);
extern (C) bool MediaTrackSupportedConstraints_sampleRate_Get(Handle);
extern (C) void MediaTrackSupportedConstraints_sampleSize_Set(Handle, bool);
extern (C) bool MediaTrackSupportedConstraints_sampleSize_Get(Handle);
extern (C) void MediaTrackSupportedConstraints_echoCancellation_Set(Handle, bool);
extern (C) bool MediaTrackSupportedConstraints_echoCancellation_Get(Handle);
extern (C) void MediaTrackSupportedConstraints_autoGainControl_Set(Handle, bool);
extern (C) bool MediaTrackSupportedConstraints_autoGainControl_Get(Handle);
extern (C) void MediaTrackSupportedConstraints_noiseSuppression_Set(Handle, bool);
extern (C) bool MediaTrackSupportedConstraints_noiseSuppression_Get(Handle);
extern (C) void MediaTrackSupportedConstraints_latency_Set(Handle, bool);
extern (C) bool MediaTrackSupportedConstraints_latency_Get(Handle);
extern (C) void MediaTrackSupportedConstraints_channelCount_Set(Handle, bool);
extern (C) bool MediaTrackSupportedConstraints_channelCount_Get(Handle);
extern (C) void MediaTrackSupportedConstraints_deviceId_Set(Handle, bool);
extern (C) bool MediaTrackSupportedConstraints_deviceId_Get(Handle);
extern (C) void MediaTrackSupportedConstraints_groupId_Set(Handle, bool);
extern (C) bool MediaTrackSupportedConstraints_groupId_Get(Handle);
extern (C) Optional!(OverconstrainedError) OverconstrainedErrorEvent_error_Get(Handle);
extern (C) void OverconstrainedErrorEventInit_error_Set(Handle, bool, Handle);
extern (C) Optional!(OverconstrainedError) OverconstrainedErrorEventInit_error_Get(Handle);
extern (C) void ULongRange_max_Set(Handle, uint);
extern (C) uint ULongRange_max_Get(Handle);
extern (C) void ULongRange_min_Set(Handle, uint);
extern (C) uint ULongRange_min_Get(Handle);