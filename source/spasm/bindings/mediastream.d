module spasm.bindings.mediastream;

import spasm.types;
import spasm.bindings.dom;
import spasm.bindings.html;

struct Capabilities {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return Capabilities(JsHandle(spasm_add__object()));
  }
}
alias ConstrainBoolean = SumType!(bool, ConstrainBooleanParameters);
struct ConstrainBooleanParameters {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return ConstrainBooleanParameters(JsHandle(spasm_add__object()));
  }
  auto exact(bool exact) {
    ConstrainBooleanParameters_exact_Set(this.handle, exact);
  }
  auto exact() {
    auto result = ConstrainBooleanParameters_exact_Get(this.handle);
    return result;
  }
  auto ideal(bool ideal) {
    ConstrainBooleanParameters_ideal_Set(this.handle, ideal);
  }
  auto ideal() {
    auto result = ConstrainBooleanParameters_ideal_Get(this.handle);
    return result;
  }
}
alias ConstrainDOMString = SumType!(string, Sequence!(string), ConstrainDOMStringParameters);
struct ConstrainDOMStringParameters {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return ConstrainDOMStringParameters(JsHandle(spasm_add__object()));
  }
  auto exact(SumType!(string, Sequence!(string)) exact) {
    ConstrainDOMStringParameters_exact_Set(this.handle, exact);
  }
  auto exact() {
    auto result = ConstrainDOMStringParameters_exact_Get(this.handle);
    return result;
  }
  auto ideal(SumType!(string, Sequence!(string)) ideal) {
    ConstrainDOMStringParameters_ideal_Set(this.handle, ideal);
  }
  auto ideal() {
    auto result = ConstrainDOMStringParameters_ideal_Get(this.handle);
    return result;
  }
}
alias ConstrainDouble = SumType!(double, ConstrainDoubleRange);
struct ConstrainDoubleRange {
  DoubleRange _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = DoubleRange(h);
  }
  static auto create() {
    return ConstrainDoubleRange(JsHandle(spasm_add__object()));
  }
  auto exact(double exact) {
    ConstrainDoubleRange_exact_Set(this._parent, exact);
  }
  auto exact() {
    auto result = ConstrainDoubleRange_exact_Get(this._parent);
    return result;
  }
  auto ideal(double ideal) {
    ConstrainDoubleRange_ideal_Set(this._parent, ideal);
  }
  auto ideal() {
    auto result = ConstrainDoubleRange_ideal_Get(this._parent);
    return result;
  }
}
alias ConstrainULong = SumType!(uint, ConstrainULongRange);
struct ConstrainULongRange {
  ULongRange _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = ULongRange(h);
  }
  static auto create() {
    return ConstrainULongRange(JsHandle(spasm_add__object()));
  }
  auto exact(uint exact) {
    ConstrainULongRange_exact_Set(this._parent, exact);
  }
  auto exact() {
    auto result = ConstrainULongRange_exact_Get(this._parent);
    return result;
  }
  auto ideal(uint ideal) {
    ConstrainULongRange_ideal_Set(this._parent, ideal);
  }
  auto ideal() {
    auto result = ConstrainULongRange_ideal_Get(this._parent);
    return result;
  }
}
struct ConstrainablePattern {
  JsHandle handle;
  alias handle this;
  auto getCapabilities() {
    auto result = Capabilities(JsHandle(ConstrainablePattern_getCapabilities(this.handle)));
    return result;
  }
  auto getConstraints() {
    auto result = Constraints(JsHandle(ConstrainablePattern_getConstraints(this.handle)));
    return result;
  }
  auto getSettings() {
    auto result = Settings(JsHandle(ConstrainablePattern_getSettings(this.handle)));
    return result;
  }
  auto applyConstraints(Constraints constraints) {
    auto result = Promise!(void)(JsHandle(ConstrainablePattern_applyConstraints(this.handle, constraints.handle)));
    return result;
  }
  auto onoverconstrained(EventHandler onoverconstrained) {
    ConstrainablePattern_onoverconstrained_Set(this.handle, onoverconstrained);
  }
  auto onoverconstrained() {
    auto result = ConstrainablePattern_onoverconstrained_Get(this.handle);
    return result;
  }
}
struct ConstraintSet {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return ConstraintSet(JsHandle(spasm_add__object()));
  }
}
struct Constraints {
  ConstraintSet _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = ConstraintSet(h);
  }
  static auto create() {
    return Constraints(JsHandle(spasm_add__object()));
  }
  auto advanced(Sequence!(ConstraintSet) advanced) {
    Constraints_advanced_Set(this._parent, advanced.handle);
  }
  auto advanced() {
    auto result = Sequence!(ConstraintSet)(JsHandle(Constraints_advanced_Get(this._parent)));
    return result;
  }
}
struct DoubleRange {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return DoubleRange(JsHandle(spasm_add__object()));
  }
  auto max(double max) {
    DoubleRange_max_Set(this.handle, max);
  }
  auto max() {
    auto result = DoubleRange_max_Get(this.handle);
    return result;
  }
  auto min(double min) {
    DoubleRange_min_Set(this.handle, min);
  }
  auto min() {
    auto result = DoubleRange_min_Get(this.handle);
    return result;
  }
}
struct InputDeviceInfo {
  MediaDeviceInfo _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = MediaDeviceInfo(h);
  }
  auto getCapabilities() {
    auto result = MediaTrackCapabilities(JsHandle(InputDeviceInfo_getCapabilities(this._parent)));
    return result;
  }
}
struct MediaDeviceInfo {
  JsHandle handle;
  alias handle this;
  auto deviceId() {
    auto result = MediaDeviceInfo_deviceId_Get(this.handle);
    return result;
  }
  auto kind() {
    auto result = MediaDeviceInfo_kind_Get(this.handle);
    return result;
  }
  auto label() {
    auto result = MediaDeviceInfo_label_Get(this.handle);
    return result;
  }
  auto groupId() {
    auto result = MediaDeviceInfo_groupId_Get(this.handle);
    return result;
  }
  auto toJSON() {
    auto result = JsObject(JsHandle(MediaDeviceInfo_toJSON(this.handle)));
    return result;
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
    auto result = MediaDevices_ondevicechange_Get(this._parent);
    return result;
  }
  auto enumerateDevices() {
    auto result = Promise!(Sequence!(MediaDeviceInfo))(JsHandle(MediaDevices_enumerateDevices(this._parent)));
    return result;
  }
  auto getSupportedConstraints() {
    auto result = MediaTrackSupportedConstraints(JsHandle(MediaDevices_getSupportedConstraints(this._parent)));
    return result;
  }
  auto getUserMedia(MediaStreamConstraints constraints) {
    auto result = Promise!(MediaStream)(JsHandle(MediaDevices_getUserMedia(this._parent, constraints.handle)));
    return result;
  }
}
struct MediaStream {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto id() {
    auto result = MediaStream_id_Get(this._parent);
    return result;
  }
  auto getAudioTracks() {
    auto result = Sequence!(MediaStreamTrack)(JsHandle(MediaStream_getAudioTracks(this._parent)));
    return result;
  }
  auto getVideoTracks() {
    auto result = Sequence!(MediaStreamTrack)(JsHandle(MediaStream_getVideoTracks(this._parent)));
    return result;
  }
  auto getTracks() {
    auto result = Sequence!(MediaStreamTrack)(JsHandle(MediaStream_getTracks(this._parent)));
    return result;
  }
  auto getTrackById(string trackId) {
    auto result = MediaStream_getTrackById(this._parent, trackId);
    return result;
  }
  auto addTrack(MediaStreamTrack track) {
    MediaStream_addTrack(this._parent, track.handle);
  }
  auto removeTrack(MediaStreamTrack track) {
    MediaStream_removeTrack(this._parent, track.handle);
  }
  auto clone() {
    auto result = MediaStream(JsHandle(MediaStream_clone(this._parent)));
    return result;
  }
  auto active() {
    auto result = MediaStream_active_Get(this._parent);
    return result;
  }
  auto onaddtrack(EventHandler onaddtrack) {
    MediaStream_onaddtrack_Set(this._parent, onaddtrack);
  }
  auto onaddtrack() {
    auto result = MediaStream_onaddtrack_Get(this._parent);
    return result;
  }
  auto onremovetrack(EventHandler onremovetrack) {
    MediaStream_onremovetrack_Set(this._parent, onremovetrack);
  }
  auto onremovetrack() {
    auto result = MediaStream_onremovetrack_Get(this._parent);
    return result;
  }
}
struct MediaStreamConstraints {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return MediaStreamConstraints(JsHandle(spasm_add__object()));
  }
  auto video(SumType!(bool, MediaTrackConstraints) video) {
    MediaStreamConstraints_video_Set(this.handle, video);
  }
  auto video() {
    auto result = MediaStreamConstraints_video_Get(this.handle);
    return result;
  }
  auto audio(SumType!(bool, MediaTrackConstraints) audio) {
    MediaStreamConstraints_audio_Set(this.handle, audio);
  }
  auto audio() {
    auto result = MediaStreamConstraints_audio_Get(this.handle);
    return result;
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
    auto result = MediaStreamTrack_kind_Get(this._parent);
    return result;
  }
  auto id() {
    auto result = MediaStreamTrack_id_Get(this._parent);
    return result;
  }
  auto label() {
    auto result = MediaStreamTrack_label_Get(this._parent);
    return result;
  }
  auto enabled(bool enabled) {
    MediaStreamTrack_enabled_Set(this._parent, enabled);
  }
  auto enabled() {
    auto result = MediaStreamTrack_enabled_Get(this._parent);
    return result;
  }
  auto muted() {
    auto result = MediaStreamTrack_muted_Get(this._parent);
    return result;
  }
  auto onmute(EventHandler onmute) {
    MediaStreamTrack_onmute_Set(this._parent, onmute);
  }
  auto onmute() {
    auto result = MediaStreamTrack_onmute_Get(this._parent);
    return result;
  }
  auto onunmute(EventHandler onunmute) {
    MediaStreamTrack_onunmute_Set(this._parent, onunmute);
  }
  auto onunmute() {
    auto result = MediaStreamTrack_onunmute_Get(this._parent);
    return result;
  }
  auto readyState() {
    auto result = MediaStreamTrack_readyState_Get(this._parent);
    return result;
  }
  auto onended(EventHandler onended) {
    MediaStreamTrack_onended_Set(this._parent, onended);
  }
  auto onended() {
    auto result = MediaStreamTrack_onended_Get(this._parent);
    return result;
  }
  auto clone() {
    auto result = MediaStreamTrack(JsHandle(MediaStreamTrack_clone(this._parent)));
    return result;
  }
  auto stop() {
    MediaStreamTrack_stop(this._parent);
  }
  auto getCapabilities() {
    auto result = MediaTrackCapabilities(JsHandle(MediaStreamTrack_getCapabilities(this._parent)));
    return result;
  }
  auto getConstraints() {
    auto result = MediaTrackConstraints(JsHandle(MediaStreamTrack_getConstraints(this._parent)));
    return result;
  }
  auto getSettings() {
    auto result = MediaTrackSettings(JsHandle(MediaStreamTrack_getSettings(this._parent)));
    return result;
  }
  auto applyConstraints(MediaTrackConstraints constraints) {
    auto result = Promise!(void)(JsHandle(MediaStreamTrack_applyConstraints(this._parent, constraints.handle)));
    return result;
  }
  auto onoverconstrained(EventHandler onoverconstrained) {
    MediaStreamTrack_onoverconstrained_Set(this._parent, onoverconstrained);
  }
  auto onoverconstrained() {
    auto result = MediaStreamTrack_onoverconstrained_Get(this._parent);
    return result;
  }
}
struct MediaStreamTrackEvent {
  Event _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = Event(h);
  }
  auto track() {
    auto result = MediaStreamTrack(JsHandle(MediaStreamTrackEvent_track_Get(this._parent)));
    return result;
  }
}
struct MediaStreamTrackEventInit {
  EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventInit(h);
  }
  static auto create() {
    return MediaStreamTrackEventInit(JsHandle(spasm_add__object()));
  }
  auto track(MediaStreamTrack track) {
    MediaStreamTrackEventInit_track_Set(this._parent, track.handle);
  }
  auto track() {
    auto result = MediaStreamTrack(JsHandle(MediaStreamTrackEventInit_track_Get(this._parent)));
    return result;
  }
}
enum MediaStreamTrackState {
  live,
  ended
}
struct MediaTrackCapabilities {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return MediaTrackCapabilities(JsHandle(spasm_add__object()));
  }
  auto width(ULongRange width) {
    MediaTrackCapabilities_width_Set(this.handle, width.handle);
  }
  auto width() {
    auto result = ULongRange(JsHandle(MediaTrackCapabilities_width_Get(this.handle)));
    return result;
  }
  auto height(ULongRange height) {
    MediaTrackCapabilities_height_Set(this.handle, height.handle);
  }
  auto height() {
    auto result = ULongRange(JsHandle(MediaTrackCapabilities_height_Get(this.handle)));
    return result;
  }
  auto aspectRatio(DoubleRange aspectRatio) {
    MediaTrackCapabilities_aspectRatio_Set(this.handle, aspectRatio.handle);
  }
  auto aspectRatio() {
    auto result = DoubleRange(JsHandle(MediaTrackCapabilities_aspectRatio_Get(this.handle)));
    return result;
  }
  auto frameRate(DoubleRange frameRate) {
    MediaTrackCapabilities_frameRate_Set(this.handle, frameRate.handle);
  }
  auto frameRate() {
    auto result = DoubleRange(JsHandle(MediaTrackCapabilities_frameRate_Get(this.handle)));
    return result;
  }
  auto facingMode(Sequence!(string) facingMode) {
    MediaTrackCapabilities_facingMode_Set(this.handle, facingMode.handle);
  }
  auto facingMode() {
    auto result = Sequence!(string)(JsHandle(MediaTrackCapabilities_facingMode_Get(this.handle)));
    return result;
  }
  auto resizeMode(Sequence!(string) resizeMode) {
    MediaTrackCapabilities_resizeMode_Set(this.handle, resizeMode.handle);
  }
  auto resizeMode() {
    auto result = Sequence!(string)(JsHandle(MediaTrackCapabilities_resizeMode_Get(this.handle)));
    return result;
  }
  auto volume(DoubleRange volume) {
    MediaTrackCapabilities_volume_Set(this.handle, volume.handle);
  }
  auto volume() {
    auto result = DoubleRange(JsHandle(MediaTrackCapabilities_volume_Get(this.handle)));
    return result;
  }
  auto sampleRate(ULongRange sampleRate) {
    MediaTrackCapabilities_sampleRate_Set(this.handle, sampleRate.handle);
  }
  auto sampleRate() {
    auto result = ULongRange(JsHandle(MediaTrackCapabilities_sampleRate_Get(this.handle)));
    return result;
  }
  auto sampleSize(ULongRange sampleSize) {
    MediaTrackCapabilities_sampleSize_Set(this.handle, sampleSize.handle);
  }
  auto sampleSize() {
    auto result = ULongRange(JsHandle(MediaTrackCapabilities_sampleSize_Get(this.handle)));
    return result;
  }
  auto echoCancellation(Sequence!(bool) echoCancellation) {
    MediaTrackCapabilities_echoCancellation_Set(this.handle, echoCancellation.handle);
  }
  auto echoCancellation() {
    auto result = Sequence!(bool)(JsHandle(MediaTrackCapabilities_echoCancellation_Get(this.handle)));
    return result;
  }
  auto autoGainControl(Sequence!(bool) autoGainControl) {
    MediaTrackCapabilities_autoGainControl_Set(this.handle, autoGainControl.handle);
  }
  auto autoGainControl() {
    auto result = Sequence!(bool)(JsHandle(MediaTrackCapabilities_autoGainControl_Get(this.handle)));
    return result;
  }
  auto noiseSuppression(Sequence!(bool) noiseSuppression) {
    MediaTrackCapabilities_noiseSuppression_Set(this.handle, noiseSuppression.handle);
  }
  auto noiseSuppression() {
    auto result = Sequence!(bool)(JsHandle(MediaTrackCapabilities_noiseSuppression_Get(this.handle)));
    return result;
  }
  auto latency(DoubleRange latency) {
    MediaTrackCapabilities_latency_Set(this.handle, latency.handle);
  }
  auto latency() {
    auto result = DoubleRange(JsHandle(MediaTrackCapabilities_latency_Get(this.handle)));
    return result;
  }
  auto channelCount(ULongRange channelCount) {
    MediaTrackCapabilities_channelCount_Set(this.handle, channelCount.handle);
  }
  auto channelCount() {
    auto result = ULongRange(JsHandle(MediaTrackCapabilities_channelCount_Get(this.handle)));
    return result;
  }
  auto deviceId(string deviceId) {
    MediaTrackCapabilities_deviceId_Set(this.handle, deviceId);
  }
  auto deviceId() {
    auto result = MediaTrackCapabilities_deviceId_Get(this.handle);
    return result;
  }
  auto groupId(string groupId) {
    MediaTrackCapabilities_groupId_Set(this.handle, groupId);
  }
  auto groupId() {
    auto result = MediaTrackCapabilities_groupId_Get(this.handle);
    return result;
  }
}
struct MediaTrackConstraintSet {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return MediaTrackConstraintSet(JsHandle(spasm_add__object()));
  }
  auto width(ConstrainULong width) {
    MediaTrackConstraintSet_width_Set(this.handle, width);
  }
  auto width() {
    auto result = MediaTrackConstraintSet_width_Get(this.handle);
    return result;
  }
  auto height(ConstrainULong height) {
    MediaTrackConstraintSet_height_Set(this.handle, height);
  }
  auto height() {
    auto result = MediaTrackConstraintSet_height_Get(this.handle);
    return result;
  }
  auto aspectRatio(ConstrainDouble aspectRatio) {
    MediaTrackConstraintSet_aspectRatio_Set(this.handle, aspectRatio);
  }
  auto aspectRatio() {
    auto result = MediaTrackConstraintSet_aspectRatio_Get(this.handle);
    return result;
  }
  auto frameRate(ConstrainDouble frameRate) {
    MediaTrackConstraintSet_frameRate_Set(this.handle, frameRate);
  }
  auto frameRate() {
    auto result = MediaTrackConstraintSet_frameRate_Get(this.handle);
    return result;
  }
  auto facingMode(ConstrainDOMString facingMode) {
    MediaTrackConstraintSet_facingMode_Set(this.handle, facingMode);
  }
  auto facingMode() {
    auto result = MediaTrackConstraintSet_facingMode_Get(this.handle);
    return result;
  }
  auto resizeMode(ConstrainDOMString resizeMode) {
    MediaTrackConstraintSet_resizeMode_Set(this.handle, resizeMode);
  }
  auto resizeMode() {
    auto result = MediaTrackConstraintSet_resizeMode_Get(this.handle);
    return result;
  }
  auto volume(ConstrainDouble volume) {
    MediaTrackConstraintSet_volume_Set(this.handle, volume);
  }
  auto volume() {
    auto result = MediaTrackConstraintSet_volume_Get(this.handle);
    return result;
  }
  auto sampleRate(ConstrainULong sampleRate) {
    MediaTrackConstraintSet_sampleRate_Set(this.handle, sampleRate);
  }
  auto sampleRate() {
    auto result = MediaTrackConstraintSet_sampleRate_Get(this.handle);
    return result;
  }
  auto sampleSize(ConstrainULong sampleSize) {
    MediaTrackConstraintSet_sampleSize_Set(this.handle, sampleSize);
  }
  auto sampleSize() {
    auto result = MediaTrackConstraintSet_sampleSize_Get(this.handle);
    return result;
  }
  auto echoCancellation(ConstrainBoolean echoCancellation) {
    MediaTrackConstraintSet_echoCancellation_Set(this.handle, echoCancellation);
  }
  auto echoCancellation() {
    auto result = MediaTrackConstraintSet_echoCancellation_Get(this.handle);
    return result;
  }
  auto autoGainControl(ConstrainBoolean autoGainControl) {
    MediaTrackConstraintSet_autoGainControl_Set(this.handle, autoGainControl);
  }
  auto autoGainControl() {
    auto result = MediaTrackConstraintSet_autoGainControl_Get(this.handle);
    return result;
  }
  auto noiseSuppression(ConstrainBoolean noiseSuppression) {
    MediaTrackConstraintSet_noiseSuppression_Set(this.handle, noiseSuppression);
  }
  auto noiseSuppression() {
    auto result = MediaTrackConstraintSet_noiseSuppression_Get(this.handle);
    return result;
  }
  auto latency(ConstrainDouble latency) {
    MediaTrackConstraintSet_latency_Set(this.handle, latency);
  }
  auto latency() {
    auto result = MediaTrackConstraintSet_latency_Get(this.handle);
    return result;
  }
  auto channelCount(ConstrainULong channelCount) {
    MediaTrackConstraintSet_channelCount_Set(this.handle, channelCount);
  }
  auto channelCount() {
    auto result = MediaTrackConstraintSet_channelCount_Get(this.handle);
    return result;
  }
  auto deviceId(ConstrainDOMString deviceId) {
    MediaTrackConstraintSet_deviceId_Set(this.handle, deviceId);
  }
  auto deviceId() {
    auto result = MediaTrackConstraintSet_deviceId_Get(this.handle);
    return result;
  }
  auto groupId(ConstrainDOMString groupId) {
    MediaTrackConstraintSet_groupId_Set(this.handle, groupId);
  }
  auto groupId() {
    auto result = MediaTrackConstraintSet_groupId_Get(this.handle);
    return result;
  }
}
struct MediaTrackConstraints {
  MediaTrackConstraintSet _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = MediaTrackConstraintSet(h);
  }
  static auto create() {
    return MediaTrackConstraints(JsHandle(spasm_add__object()));
  }
  auto advanced(Sequence!(MediaTrackConstraintSet) advanced) {
    MediaTrackConstraints_advanced_Set(this._parent, advanced.handle);
  }
  auto advanced() {
    auto result = Sequence!(MediaTrackConstraintSet)(JsHandle(MediaTrackConstraints_advanced_Get(this._parent)));
    return result;
  }
}
struct MediaTrackSettings {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return MediaTrackSettings(JsHandle(spasm_add__object()));
  }
  auto width(int width) {
    MediaTrackSettings_width_Set(this.handle, width);
  }
  auto width() {
    auto result = MediaTrackSettings_width_Get(this.handle);
    return result;
  }
  auto height(int height) {
    MediaTrackSettings_height_Set(this.handle, height);
  }
  auto height() {
    auto result = MediaTrackSettings_height_Get(this.handle);
    return result;
  }
  auto aspectRatio(double aspectRatio) {
    MediaTrackSettings_aspectRatio_Set(this.handle, aspectRatio);
  }
  auto aspectRatio() {
    auto result = MediaTrackSettings_aspectRatio_Get(this.handle);
    return result;
  }
  auto frameRate(double frameRate) {
    MediaTrackSettings_frameRate_Set(this.handle, frameRate);
  }
  auto frameRate() {
    auto result = MediaTrackSettings_frameRate_Get(this.handle);
    return result;
  }
  auto facingMode(string facingMode) {
    MediaTrackSettings_facingMode_Set(this.handle, facingMode);
  }
  auto facingMode() {
    auto result = MediaTrackSettings_facingMode_Get(this.handle);
    return result;
  }
  auto resizeMode(string resizeMode) {
    MediaTrackSettings_resizeMode_Set(this.handle, resizeMode);
  }
  auto resizeMode() {
    auto result = MediaTrackSettings_resizeMode_Get(this.handle);
    return result;
  }
  auto volume(double volume) {
    MediaTrackSettings_volume_Set(this.handle, volume);
  }
  auto volume() {
    auto result = MediaTrackSettings_volume_Get(this.handle);
    return result;
  }
  auto sampleRate(int sampleRate) {
    MediaTrackSettings_sampleRate_Set(this.handle, sampleRate);
  }
  auto sampleRate() {
    auto result = MediaTrackSettings_sampleRate_Get(this.handle);
    return result;
  }
  auto sampleSize(int sampleSize) {
    MediaTrackSettings_sampleSize_Set(this.handle, sampleSize);
  }
  auto sampleSize() {
    auto result = MediaTrackSettings_sampleSize_Get(this.handle);
    return result;
  }
  auto echoCancellation(bool echoCancellation) {
    MediaTrackSettings_echoCancellation_Set(this.handle, echoCancellation);
  }
  auto echoCancellation() {
    auto result = MediaTrackSettings_echoCancellation_Get(this.handle);
    return result;
  }
  auto autoGainControl(bool autoGainControl) {
    MediaTrackSettings_autoGainControl_Set(this.handle, autoGainControl);
  }
  auto autoGainControl() {
    auto result = MediaTrackSettings_autoGainControl_Get(this.handle);
    return result;
  }
  auto noiseSuppression(bool noiseSuppression) {
    MediaTrackSettings_noiseSuppression_Set(this.handle, noiseSuppression);
  }
  auto noiseSuppression() {
    auto result = MediaTrackSettings_noiseSuppression_Get(this.handle);
    return result;
  }
  auto latency(double latency) {
    MediaTrackSettings_latency_Set(this.handle, latency);
  }
  auto latency() {
    auto result = MediaTrackSettings_latency_Get(this.handle);
    return result;
  }
  auto channelCount(int channelCount) {
    MediaTrackSettings_channelCount_Set(this.handle, channelCount);
  }
  auto channelCount() {
    auto result = MediaTrackSettings_channelCount_Get(this.handle);
    return result;
  }
  auto deviceId(string deviceId) {
    MediaTrackSettings_deviceId_Set(this.handle, deviceId);
  }
  auto deviceId() {
    auto result = MediaTrackSettings_deviceId_Get(this.handle);
    return result;
  }
  auto groupId(string groupId) {
    MediaTrackSettings_groupId_Set(this.handle, groupId);
  }
  auto groupId() {
    auto result = MediaTrackSettings_groupId_Get(this.handle);
    return result;
  }
}
struct MediaTrackSupportedConstraints {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return MediaTrackSupportedConstraints(JsHandle(spasm_add__object()));
  }
  auto width(bool width) {
    MediaTrackSupportedConstraints_width_Set(this.handle, width);
  }
  auto width() {
    auto result = MediaTrackSupportedConstraints_width_Get(this.handle);
    return result;
  }
  auto height(bool height) {
    MediaTrackSupportedConstraints_height_Set(this.handle, height);
  }
  auto height() {
    auto result = MediaTrackSupportedConstraints_height_Get(this.handle);
    return result;
  }
  auto aspectRatio(bool aspectRatio) {
    MediaTrackSupportedConstraints_aspectRatio_Set(this.handle, aspectRatio);
  }
  auto aspectRatio() {
    auto result = MediaTrackSupportedConstraints_aspectRatio_Get(this.handle);
    return result;
  }
  auto frameRate(bool frameRate) {
    MediaTrackSupportedConstraints_frameRate_Set(this.handle, frameRate);
  }
  auto frameRate() {
    auto result = MediaTrackSupportedConstraints_frameRate_Get(this.handle);
    return result;
  }
  auto facingMode(bool facingMode) {
    MediaTrackSupportedConstraints_facingMode_Set(this.handle, facingMode);
  }
  auto facingMode() {
    auto result = MediaTrackSupportedConstraints_facingMode_Get(this.handle);
    return result;
  }
  auto resizeMode(bool resizeMode) {
    MediaTrackSupportedConstraints_resizeMode_Set(this.handle, resizeMode);
  }
  auto resizeMode() {
    auto result = MediaTrackSupportedConstraints_resizeMode_Get(this.handle);
    return result;
  }
  auto volume(bool volume) {
    MediaTrackSupportedConstraints_volume_Set(this.handle, volume);
  }
  auto volume() {
    auto result = MediaTrackSupportedConstraints_volume_Get(this.handle);
    return result;
  }
  auto sampleRate(bool sampleRate) {
    MediaTrackSupportedConstraints_sampleRate_Set(this.handle, sampleRate);
  }
  auto sampleRate() {
    auto result = MediaTrackSupportedConstraints_sampleRate_Get(this.handle);
    return result;
  }
  auto sampleSize(bool sampleSize) {
    MediaTrackSupportedConstraints_sampleSize_Set(this.handle, sampleSize);
  }
  auto sampleSize() {
    auto result = MediaTrackSupportedConstraints_sampleSize_Get(this.handle);
    return result;
  }
  auto echoCancellation(bool echoCancellation) {
    MediaTrackSupportedConstraints_echoCancellation_Set(this.handle, echoCancellation);
  }
  auto echoCancellation() {
    auto result = MediaTrackSupportedConstraints_echoCancellation_Get(this.handle);
    return result;
  }
  auto autoGainControl(bool autoGainControl) {
    MediaTrackSupportedConstraints_autoGainControl_Set(this.handle, autoGainControl);
  }
  auto autoGainControl() {
    auto result = MediaTrackSupportedConstraints_autoGainControl_Get(this.handle);
    return result;
  }
  auto noiseSuppression(bool noiseSuppression) {
    MediaTrackSupportedConstraints_noiseSuppression_Set(this.handle, noiseSuppression);
  }
  auto noiseSuppression() {
    auto result = MediaTrackSupportedConstraints_noiseSuppression_Get(this.handle);
    return result;
  }
  auto latency(bool latency) {
    MediaTrackSupportedConstraints_latency_Set(this.handle, latency);
  }
  auto latency() {
    auto result = MediaTrackSupportedConstraints_latency_Get(this.handle);
    return result;
  }
  auto channelCount(bool channelCount) {
    MediaTrackSupportedConstraints_channelCount_Set(this.handle, channelCount);
  }
  auto channelCount() {
    auto result = MediaTrackSupportedConstraints_channelCount_Get(this.handle);
    return result;
  }
  auto deviceId(bool deviceId) {
    MediaTrackSupportedConstraints_deviceId_Set(this.handle, deviceId);
  }
  auto deviceId() {
    auto result = MediaTrackSupportedConstraints_deviceId_Get(this.handle);
    return result;
  }
  auto groupId(bool groupId) {
    MediaTrackSupportedConstraints_groupId_Set(this.handle, groupId);
  }
  auto groupId() {
    auto result = MediaTrackSupportedConstraints_groupId_Get(this.handle);
    return result;
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
    auto result = OverconstrainedErrorEvent_error_Get(this._parent);
    return result;
  }
}
struct OverconstrainedErrorEventInit {
  EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventInit(h);
  }
  static auto create() {
    return OverconstrainedErrorEventInit(JsHandle(spasm_add__object()));
  }
  auto error(Optional!(OverconstrainedError) error) {
    OverconstrainedErrorEventInit_error_Set(this._parent, !error.empty, error.front.handle);
  }
  auto error() {
    auto result = OverconstrainedErrorEventInit_error_Get(this._parent);
    return result;
  }
}
struct Settings {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return Settings(JsHandle(spasm_add__object()));
  }
}
struct ULongRange {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return ULongRange(JsHandle(spasm_add__object()));
  }
  auto max(uint max) {
    ULongRange_max_Set(this.handle, max);
  }
  auto max() {
    auto result = ULongRange_max_Get(this.handle);
    return result;
  }
  auto min(uint min) {
    ULongRange_min_Set(this.handle, min);
  }
  auto min() {
    auto result = ULongRange_min_Get(this.handle);
    return result;
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


extern (C) void Capabilities_create(Handle);
extern (C) void ConstrainBooleanParameters_create(Handle);
extern (C) void ConstrainBooleanParameters_exact_Set(Handle, bool);
extern (C) bool ConstrainBooleanParameters_exact_Get(Handle);
extern (C) void ConstrainBooleanParameters_ideal_Set(Handle, bool);
extern (C) bool ConstrainBooleanParameters_ideal_Get(Handle);
extern (C) void ConstrainDOMStringParameters_create(Handle);
extern (C) void ConstrainDOMStringParameters_exact_Set(Handle, SumType!(string, Sequence!(string)));
extern (C) SumType!(string, Sequence!(string)) ConstrainDOMStringParameters_exact_Get(Handle);
extern (C) void ConstrainDOMStringParameters_ideal_Set(Handle, SumType!(string, Sequence!(string)));
extern (C) SumType!(string, Sequence!(string)) ConstrainDOMStringParameters_ideal_Get(Handle);
extern (C) void ConstrainDoubleRange_create(Handle);
extern (C) void ConstrainDoubleRange_exact_Set(Handle, double);
extern (C) double ConstrainDoubleRange_exact_Get(Handle);
extern (C) void ConstrainDoubleRange_ideal_Set(Handle, double);
extern (C) double ConstrainDoubleRange_ideal_Get(Handle);
extern (C) void ConstrainULongRange_create(Handle);
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
extern (C) void ConstraintSet_create(Handle);
extern (C) void Constraints_create(Handle);
extern (C) void Constraints_advanced_Set(Handle, Handle);
extern (C) Handle Constraints_advanced_Get(Handle);
extern (C) void DoubleRange_create(Handle);
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
extern (C) void MediaStreamConstraints_create(Handle);
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
extern (C) void MediaStreamTrackEventInit_create(Handle);
extern (C) void MediaStreamTrackEventInit_track_Set(Handle, Handle);
extern (C) Handle MediaStreamTrackEventInit_track_Get(Handle);
extern (C) void MediaTrackCapabilities_create(Handle);
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
extern (C) void MediaTrackConstraintSet_create(Handle);
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
extern (C) void MediaTrackConstraints_create(Handle);
extern (C) void MediaTrackConstraints_advanced_Set(Handle, Handle);
extern (C) Handle MediaTrackConstraints_advanced_Get(Handle);
extern (C) void MediaTrackSettings_create(Handle);
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
extern (C) void MediaTrackSupportedConstraints_create(Handle);
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
extern (C) void OverconstrainedErrorEventInit_create(Handle);
extern (C) void OverconstrainedErrorEventInit_error_Set(Handle, bool, Handle);
extern (C) Optional!(OverconstrainedError) OverconstrainedErrorEventInit_error_Get(Handle);
extern (C) void Settings_create(Handle);
extern (C) void ULongRange_create(Handle);
extern (C) void ULongRange_max_Set(Handle, uint);
extern (C) uint ULongRange_max_Get(Handle);
extern (C) void ULongRange_min_Set(Handle, uint);
extern (C) uint ULongRange_min_Get(Handle);