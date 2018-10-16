import dom from './dom.js';
import spasm from './spasm.js';

let objects = {top:0};
function addObject(object) {
    let idx = objects.top;
    objects[idx] = object;
    objects.top++;
    return idx;
}

export default {
    jsExports: {
        baseAudioContextDestination: function(ctx) {
            var destination = objects[ctx].destination;
            if (!destination.__handle)
                destination.__handle = addObject(destination);
            return destination.__handle;
        },
        audioBufferSourceNodeLoopSet(ctx, loop) {
            objects[ctx].loop = undefined;
        },
        audioBufferSourceNodeConnect(node, destination) {
            objects[node].connect(objects[destination]);
        },
        audioBufferSourceNodeStart(node) {
            objects[node].start();
        },
        audioBufferSourceNodeBuffer(node, buffer) {
            objects[node].buffer = objects[buffer];
        },
        windowNewAudioContext: function() {
            return addObject(new (window.webkitAudioContext||window.AudioContext)());
        },
        baseAudioContextCreateBuffer: function(handle, nChannels, length, sRate) {
            return addObject(objects[handle].createBuffer(nChannels, length, sRate));
        },
        audioBufferGetChannelData: function(handle, channel) {
            return addObject(objects[handle].getChannelData(channel));
        },
        float32ArraySet: function(handle, length, ptr) {
            let buffer = new Float32Array(spasm.base.buffer, ptr, length);
            objects[handle].set(buffer);
        },
        baseAudioContextCreateBufferSource: function(ctx) {
            return addObject(objects[ctx].createBufferSource());
        },
        audioFree: function(handle) {
            delete objects[handle];
        }
    }
};
