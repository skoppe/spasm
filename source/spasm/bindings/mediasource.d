module spasm.bindings.mediasource;

import spasm.types;
import spasm.bindings.common;
import spasm.bindings.dom;
import spasm.bindings.html;

nothrow:
enum AppendMode {
  segments,
  sequence
}
enum EndOfStreamError {
  network,
  decode
}
struct MediaSource {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .EventTarget(h);
  }
  auto sourceBuffers() {
    return SourceBufferList(JsHandle(MediaSource_sourceBuffers_Get(this._parent)));
  }
  auto activeSourceBuffers() {
    return SourceBufferList(JsHandle(MediaSource_activeSourceBuffers_Get(this._parent)));
  }
  auto readyState() {
    return MediaSource_readyState_Get(this._parent);
  }
  void duration(double duration) {
    MediaSource_duration_Set(this._parent, duration);
  }
  auto duration() {
    return MediaSource_duration_Get(this._parent);
  }
  void onsourceopen(EventHandler onsourceopen) {
    MediaSource_onsourceopen_Set(this._parent, onsourceopen);
  }
  auto onsourceopen() {
    return MediaSource_onsourceopen_Get(this._parent);
  }
  void onsourceended(EventHandler onsourceended) {
    MediaSource_onsourceended_Set(this._parent, onsourceended);
  }
  auto onsourceended() {
    return MediaSource_onsourceended_Get(this._parent);
  }
  void onsourceclose(EventHandler onsourceclose) {
    MediaSource_onsourceclose_Set(this._parent, onsourceclose);
  }
  auto onsourceclose() {
    return MediaSource_onsourceclose_Get(this._parent);
  }
  auto addSourceBuffer(string type) {
    return SourceBuffer(JsHandle(MediaSource_addSourceBuffer(this._parent, type)));
  }
  void removeSourceBuffer(SourceBuffer sourceBuffer) {
    MediaSource_removeSourceBuffer(this._parent, sourceBuffer._parent);
  }
  void endOfStream(EndOfStreamError error) {
    MediaSource_endOfStream(this._parent, error);
  }
  void endOfStream() {
    MediaSource_endOfStream_0(this._parent);
  }
  void setLiveSeekableRange(double start, double end) {
    MediaSource_setLiveSeekableRange(this._parent, start, end);
  }
  void clearLiveSeekableRange() {
    MediaSource_clearLiveSeekableRange(this._parent);
  }
  auto isTypeSupported(string type) {
    return MediaSource_isTypeSupported(this._parent, type);
  }
}
enum ReadyState {
  closed,
  open,
  ended
}
struct SourceBuffer {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .EventTarget(h);
  }
  void mode(AppendMode mode) {
    SourceBuffer_mode_Set(this._parent, mode);
  }
  auto mode() {
    return SourceBuffer_mode_Get(this._parent);
  }
  auto updating() {
    return SourceBuffer_updating_Get(this._parent);
  }
  auto buffered() {
    return TimeRanges(JsHandle(SourceBuffer_buffered_Get(this._parent)));
  }
  void timestampOffset(double timestampOffset) {
    SourceBuffer_timestampOffset_Set(this._parent, timestampOffset);
  }
  auto timestampOffset() {
    return SourceBuffer_timestampOffset_Get(this._parent);
  }
  auto audioTracks() {
    return AudioTrackList(JsHandle(SourceBuffer_audioTracks_Get(this._parent)));
  }
  auto videoTracks() {
    return VideoTrackList(JsHandle(SourceBuffer_videoTracks_Get(this._parent)));
  }
  auto textTracks() {
    return TextTrackList(JsHandle(SourceBuffer_textTracks_Get(this._parent)));
  }
  void appendWindowStart(double appendWindowStart) {
    SourceBuffer_appendWindowStart_Set(this._parent, appendWindowStart);
  }
  auto appendWindowStart() {
    return SourceBuffer_appendWindowStart_Get(this._parent);
  }
  void appendWindowEnd(double appendWindowEnd) {
    SourceBuffer_appendWindowEnd_Set(this._parent, appendWindowEnd);
  }
  auto appendWindowEnd() {
    return SourceBuffer_appendWindowEnd_Get(this._parent);
  }
  void onupdatestart(EventHandler onupdatestart) {
    SourceBuffer_onupdatestart_Set(this._parent, onupdatestart);
  }
  auto onupdatestart() {
    return SourceBuffer_onupdatestart_Get(this._parent);
  }
  void onupdate(EventHandler onupdate) {
    SourceBuffer_onupdate_Set(this._parent, onupdate);
  }
  auto onupdate() {
    return SourceBuffer_onupdate_Get(this._parent);
  }
  void onupdateend(EventHandler onupdateend) {
    SourceBuffer_onupdateend_Set(this._parent, onupdateend);
  }
  auto onupdateend() {
    return SourceBuffer_onupdateend_Get(this._parent);
  }
  void onerror(EventHandler onerror) {
    SourceBuffer_onerror_Set(this._parent, onerror);
  }
  auto onerror() {
    return SourceBuffer_onerror_Get(this._parent);
  }
  void onabort(EventHandler onabort) {
    SourceBuffer_onabort_Set(this._parent, onabort);
  }
  auto onabort() {
    return SourceBuffer_onabort_Get(this._parent);
  }
  void appendBuffer(BufferSource data) {
    SourceBuffer_appendBuffer(this._parent, data);
  }
  void abort() {
    SourceBuffer_abort(this._parent);
  }
  void remove(double start, double end) {
    SourceBuffer_remove(this._parent, start, end);
  }
}
struct SourceBufferList {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .EventTarget(h);
  }
  auto length() {
    return SourceBufferList_length_Get(this._parent);
  }
  void onaddsourcebuffer(EventHandler onaddsourcebuffer) {
    SourceBufferList_onaddsourcebuffer_Set(this._parent, onaddsourcebuffer);
  }
  auto onaddsourcebuffer() {
    return SourceBufferList_onaddsourcebuffer_Get(this._parent);
  }
  void onremovesourcebuffer(EventHandler onremovesourcebuffer) {
    SourceBufferList_onremovesourcebuffer_Set(this._parent, onremovesourcebuffer);
  }
  auto onremovesourcebuffer() {
    return SourceBufferList_onremovesourcebuffer_Get(this._parent);
  }
  auto opIndex(uint index) {
    return SourceBuffer(JsHandle(SourceBufferList_getter__uint(this._parent, index)));
  }
  auto opDispatch(uint index)() {
    return SourceBuffer(JsHandle(SourceBufferList_getter__uint(this._parent, index)));
  }
}


extern (C) Handle MediaSource_sourceBuffers_Get(Handle);
extern (C) Handle MediaSource_activeSourceBuffers_Get(Handle);
extern (C) ReadyState MediaSource_readyState_Get(Handle);
extern (C) void MediaSource_duration_Set(Handle, double);
extern (C) double MediaSource_duration_Get(Handle);
extern (C) void MediaSource_onsourceopen_Set(Handle, EventHandler);
extern (C) EventHandler MediaSource_onsourceopen_Get(Handle);
extern (C) void MediaSource_onsourceended_Set(Handle, EventHandler);
extern (C) EventHandler MediaSource_onsourceended_Get(Handle);
extern (C) void MediaSource_onsourceclose_Set(Handle, EventHandler);
extern (C) EventHandler MediaSource_onsourceclose_Get(Handle);
extern (C) Handle MediaSource_addSourceBuffer(Handle, string);
extern (C) void MediaSource_removeSourceBuffer(Handle, Handle);
extern (C) void MediaSource_endOfStream(Handle, EndOfStreamError);
extern (C) void MediaSource_endOfStream_0(Handle);
extern (C) void MediaSource_setLiveSeekableRange(Handle, double, double);
extern (C) void MediaSource_clearLiveSeekableRange(Handle);
extern (C) bool MediaSource_isTypeSupported(Handle, string);
extern (C) void SourceBuffer_mode_Set(Handle, AppendMode);
extern (C) AppendMode SourceBuffer_mode_Get(Handle);
extern (C) bool SourceBuffer_updating_Get(Handle);
extern (C) Handle SourceBuffer_buffered_Get(Handle);
extern (C) void SourceBuffer_timestampOffset_Set(Handle, double);
extern (C) double SourceBuffer_timestampOffset_Get(Handle);
extern (C) Handle SourceBuffer_audioTracks_Get(Handle);
extern (C) Handle SourceBuffer_videoTracks_Get(Handle);
extern (C) Handle SourceBuffer_textTracks_Get(Handle);
extern (C) void SourceBuffer_appendWindowStart_Set(Handle, double);
extern (C) double SourceBuffer_appendWindowStart_Get(Handle);
extern (C) void SourceBuffer_appendWindowEnd_Set(Handle, double);
extern (C) double SourceBuffer_appendWindowEnd_Get(Handle);
extern (C) void SourceBuffer_onupdatestart_Set(Handle, EventHandler);
extern (C) EventHandler SourceBuffer_onupdatestart_Get(Handle);
extern (C) void SourceBuffer_onupdate_Set(Handle, EventHandler);
extern (C) EventHandler SourceBuffer_onupdate_Get(Handle);
extern (C) void SourceBuffer_onupdateend_Set(Handle, EventHandler);
extern (C) EventHandler SourceBuffer_onupdateend_Get(Handle);
extern (C) void SourceBuffer_onerror_Set(Handle, EventHandler);
extern (C) EventHandler SourceBuffer_onerror_Get(Handle);
extern (C) void SourceBuffer_onabort_Set(Handle, EventHandler);
extern (C) EventHandler SourceBuffer_onabort_Get(Handle);
extern (C) void SourceBuffer_appendBuffer(Handle, BufferSource);
extern (C) void SourceBuffer_abort(Handle);
extern (C) void SourceBuffer_remove(Handle, double, double);
extern (C) uint SourceBufferList_length_Get(Handle);
extern (C) void SourceBufferList_onaddsourcebuffer_Set(Handle, EventHandler);
extern (C) EventHandler SourceBufferList_onaddsourcebuffer_Get(Handle);
extern (C) void SourceBufferList_onremovesourcebuffer_Set(Handle, EventHandler);
extern (C) EventHandler SourceBufferList_onremovesourcebuffer_Get(Handle);
extern (C) Handle SourceBufferList_getter__uint(Handle, uint);