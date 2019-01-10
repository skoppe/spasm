import spasm from './spasm.js';
export default {
  jsExports: {
    MediaSource_sourceBuffers_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].sourceBuffers);
    },
    MediaSource_activeSourceBuffers_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].activeSourceBuffers);
    },
    MediaSource_readyState_Get: function(ctx) {
      return spasm.encode.ReadyState(spasm.objects[ctx].readyState);
    },
    MediaSource_duration_Set: function(ctx, duration) {
      spasm.objects[ctx].duration = duration;
    },
    MediaSource_duration_Get: function(ctx) {
      return spasm.objects[ctx].duration;
    },
    MediaSource_onsourceopen_Set: function(ctx, onsourceopen) {
      spasm.objects[ctx].onsourceopen = onsourceopen;
    },
    MediaSource_onsourceopen_Get: function(ctx) {
      return spasm.objects[ctx].onsourceopen;
    },
    MediaSource_onsourceended_Set: function(ctx, onsourceended) {
      spasm.objects[ctx].onsourceended = onsourceended;
    },
    MediaSource_onsourceended_Get: function(ctx) {
      return spasm.objects[ctx].onsourceended;
    },
    MediaSource_onsourceclose_Set: function(ctx, onsourceclose) {
      spasm.objects[ctx].onsourceclose = onsourceclose;
    },
    MediaSource_onsourceclose_Get: function(ctx) {
      return spasm.objects[ctx].onsourceclose;
    },
    MediaSource_addSourceBuffer: function(ctx, typeLen, typePtr) {
      return spasm.addObject(spasm.objects[ctx].addSourceBuffer(spasm.decode_string(typeLen, typePtr)));
    },
    MediaSource_removeSourceBuffer: function(ctx, sourceBuffer) {
      spasm.objects[ctx].removeSourceBuffer(spasm.objects[sourceBuffer]);
    },
    MediaSource_endOfStream: function(ctx, error) {
      spasm.objects[ctx].endOfStream(spasm.decode_EndOfStreamError(error));
    },
    MediaSource_setLiveSeekableRange: function(ctx, start, end) {
      spasm.objects[ctx].setLiveSeekableRange(start, end);
    },
    MediaSource_clearLiveSeekableRange: function(ctx) {
      spasm.objects[ctx].clearLiveSeekableRange();
    },
    MediaSource_isTypeSupported: function(ctx, typeLen, typePtr) {
      return spasm.objects[ctx].isTypeSupported(spasm.decode_string(typeLen, typePtr));
    },
    SourceBuffer_mode_Set: function(ctx, mode) {
      spasm.objects[ctx].mode = spasm.decode_AppendMode(mode);
    },
    SourceBuffer_mode_Get: function(ctx) {
      return spasm.encode.AppendMode(spasm.objects[ctx].mode);
    },
    SourceBuffer_updating_Get: function(ctx) {
      return spasm.objects[ctx].updating;
    },
    SourceBuffer_buffered_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].buffered);
    },
    SourceBuffer_timestampOffset_Set: function(ctx, timestampOffset) {
      spasm.objects[ctx].timestampOffset = timestampOffset;
    },
    SourceBuffer_timestampOffset_Get: function(ctx) {
      return spasm.objects[ctx].timestampOffset;
    },
    SourceBuffer_audioTracks_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].audioTracks);
    },
    SourceBuffer_videoTracks_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].videoTracks);
    },
    SourceBuffer_textTracks_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].textTracks);
    },
    SourceBuffer_appendWindowStart_Set: function(ctx, appendWindowStart) {
      spasm.objects[ctx].appendWindowStart = appendWindowStart;
    },
    SourceBuffer_appendWindowStart_Get: function(ctx) {
      return spasm.objects[ctx].appendWindowStart;
    },
    SourceBuffer_appendWindowEnd_Set: function(ctx, appendWindowEnd) {
      spasm.objects[ctx].appendWindowEnd = appendWindowEnd;
    },
    SourceBuffer_appendWindowEnd_Get: function(ctx) {
      return spasm.objects[ctx].appendWindowEnd;
    },
    SourceBuffer_onupdatestart_Set: function(ctx, onupdatestart) {
      spasm.objects[ctx].onupdatestart = onupdatestart;
    },
    SourceBuffer_onupdatestart_Get: function(ctx) {
      return spasm.objects[ctx].onupdatestart;
    },
    SourceBuffer_onupdate_Set: function(ctx, onupdate) {
      spasm.objects[ctx].onupdate = onupdate;
    },
    SourceBuffer_onupdate_Get: function(ctx) {
      return spasm.objects[ctx].onupdate;
    },
    SourceBuffer_onupdateend_Set: function(ctx, onupdateend) {
      spasm.objects[ctx].onupdateend = onupdateend;
    },
    SourceBuffer_onupdateend_Get: function(ctx) {
      return spasm.objects[ctx].onupdateend;
    },
    SourceBuffer_onerror_Set: function(ctx, onerror) {
      spasm.objects[ctx].onerror = onerror;
    },
    SourceBuffer_onerror_Get: function(ctx) {
      return spasm.objects[ctx].onerror;
    },
    SourceBuffer_onabort_Set: function(ctx, onabort) {
      spasm.objects[ctx].onabort = onabort;
    },
    SourceBuffer_onabort_Get: function(ctx) {
      return spasm.objects[ctx].onabort;
    },
    SourceBuffer_appendBuffer: function(ctx, data) {
      spasm.objects[ctx].appendBuffer(spasm.decode_BufferSource(data));
    },
    SourceBuffer_abort: function(ctx) {
      spasm.objects[ctx].abort();
    },
    SourceBuffer_remove: function(ctx, start, end) {
      spasm.objects[ctx].remove(start, end);
    },
    SourceBufferList_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    SourceBufferList_onaddsourcebuffer_Set: function(ctx, onaddsourcebuffer) {
      spasm.objects[ctx].onaddsourcebuffer = onaddsourcebuffer;
    },
    SourceBufferList_onaddsourcebuffer_Get: function(ctx) {
      return spasm.objects[ctx].onaddsourcebuffer;
    },
    SourceBufferList_onremovesourcebuffer_Set: function(ctx, onremovesourcebuffer) {
      spasm.objects[ctx].onremovesourcebuffer = onremovesourcebuffer;
    },
    SourceBufferList_onremovesourcebuffer_Get: function(ctx) {
      return spasm.objects[ctx].onremovesourcebuffer;
    },
    SourceBufferList_getter__uint: function(ctx, index) {
      return spasm.addObject(spasm.objects[ctx][index]);
    },
  }
}