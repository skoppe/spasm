import spasm from './spasm.js';
export default {
  jsExports: {
    WebGL2RenderingContextBase_bufferData__uint_long_uint: function(ctx, target, size, usage) {
      spasm.objects[ctx].bufferData(target, size, usage);
    },
    WebGL2RenderingContextBase_bufferData__uint_optional_Handle_uint: function(ctx, target, srcDataDefined, srcData, usage) {
      spasm.objects[ctx].bufferData(target, srcDataDefined ? spasm.objects[srcData] : undefined, usage);
    },
    WebGL2RenderingContextBase_bufferData__uint_ArrayBufferView_uint: function(ctx, target, srcData, usage) {
      spasm.objects[ctx].bufferData(target, spasm.decode_ArrayBufferView(srcData), usage);
    },
    WebGL2RenderingContextBase_bufferSubData__uint_long_BufferDataSource: function(ctx, target, dstByteOffset, srcData) {
      spasm.objects[ctx].bufferSubData(target, dstByteOffset, spasm.decode_BufferDataSource(srcData));
    },
    WebGL2RenderingContextBase_bufferData__uint_ArrayBufferView_uint_uint_uint: function(ctx, target, srcData, usage, srcOffset, length) {
      spasm.objects[ctx].bufferData(target, spasm.decode_ArrayBufferView(srcData), usage, srcOffset, length);
    },
    WebGL2RenderingContextBase_bufferSubData__uint_long_ArrayBufferView_uint_uint: function(ctx, target, dstByteOffset, srcData, srcOffset, length) {
      spasm.objects[ctx].bufferSubData(target, dstByteOffset, spasm.decode_ArrayBufferView(srcData), srcOffset, length);
    },
    WebGL2RenderingContextBase_copyBufferSubData: function(ctx, readTarget, writeTarget, readOffset, writeOffset, size) {
      spasm.objects[ctx].copyBufferSubData(readTarget, writeTarget, readOffset, writeOffset, size);
    },
    WebGL2RenderingContextBase_getBufferSubData: function(ctx, target, srcByteOffset, dstData, dstOffset, length) {
      spasm.objects[ctx].getBufferSubData(target, srcByteOffset, spasm.decode_ArrayBufferView(dstData), dstOffset, length);
    },
    WebGL2RenderingContextBase_blitFramebuffer: function(ctx, srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter) {
      spasm.objects[ctx].blitFramebuffer(srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter);
    },
    WebGL2RenderingContextBase_framebufferTextureLayer: function(ctx, target, attachment, textureDefined, texture, level, layer) {
      spasm.objects[ctx].framebufferTextureLayer(target, attachment, textureDefined ? spasm.objects[texture] : undefined, level, layer);
    },
    WebGL2RenderingContextBase_invalidateFramebuffer: function(ctx, target, attachments) {
      spasm.objects[ctx].invalidateFramebuffer(target, spasm.objects[attachments]);
    },
    WebGL2RenderingContextBase_invalidateSubFramebuffer: function(ctx, target, attachments, x, y, width, height) {
      spasm.objects[ctx].invalidateSubFramebuffer(target, spasm.objects[attachments], x, y, width, height);
    },
    WebGL2RenderingContextBase_readBuffer: function(ctx, src) {
      spasm.objects[ctx].readBuffer(src);
    },
    WebGL2RenderingContextBase_getInternalformatParameter: function(ctx, target, internalformat, pname) {
      return spasm.addObject(spasm.objects[ctx].getInternalformatParameter(target, internalformat, pname));
    },
    WebGL2RenderingContextBase_renderbufferStorageMultisample: function(ctx, target, samples, internalformat, width, height) {
      spasm.objects[ctx].renderbufferStorageMultisample(target, samples, internalformat, width, height);
    },
    WebGL2RenderingContextBase_texStorage2D: function(ctx, target, levels, internalformat, width, height) {
      spasm.objects[ctx].texStorage2D(target, levels, internalformat, width, height);
    },
    WebGL2RenderingContextBase_texStorage3D: function(ctx, target, levels, internalformat, width, height, depth) {
      spasm.objects[ctx].texStorage3D(target, levels, internalformat, width, height, depth);
    },
    WebGL2RenderingContextBase_texImage2D__uint_int_int_int_int_int_uint_uint_optional_ArrayBufferView: function(ctx, target, level, internalformat, width, height, border, format, type, pixelsDefined, pixels) {
      spasm.objects[ctx].texImage2D(target, level, internalformat, width, height, border, format, type, pixelsDefined ? spasm.decode_ArrayBufferView(pixels) : undefined);
    },
    WebGL2RenderingContextBase_texImage2D__uint_int_int_uint_uint_TexImageSource: function(ctx, target, level, internalformat, format, type, source) {
      spasm.objects[ctx].texImage2D(target, level, internalformat, format, type, spasm.decode_TexImageSource(source));
    },
    WebGL2RenderingContextBase_texSubImage2D__uint_int_int_int_int_int_uint_uint_optional_ArrayBufferView: function(ctx, target, level, xoffset, yoffset, width, height, format, type, pixelsDefined, pixels) {
      spasm.objects[ctx].texSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixelsDefined ? spasm.decode_ArrayBufferView(pixels) : undefined);
    },
    WebGL2RenderingContextBase_texSubImage2D__uint_int_int_int_uint_uint_TexImageSource: function(ctx, target, level, xoffset, yoffset, format, type, source) {
      spasm.objects[ctx].texSubImage2D(target, level, xoffset, yoffset, format, type, spasm.decode_TexImageSource(source));
    },
    WebGL2RenderingContextBase_texImage2D__uint_int_int_int_int_int_uint_uint_long: function(ctx, target, level, internalformat, width, height, border, format, type, pboOffset) {
      spasm.objects[ctx].texImage2D(target, level, internalformat, width, height, border, format, type, pboOffset);
    },
    WebGL2RenderingContextBase_texImage2D__uint_int_int_int_int_int_uint_uint_TexImageSource: function(ctx, target, level, internalformat, width, height, border, format, type, source) {
      spasm.objects[ctx].texImage2D(target, level, internalformat, width, height, border, format, type, spasm.decode_TexImageSource(source));
    },
    WebGL2RenderingContextBase_texImage2D__uint_int_int_int_int_int_uint_uint_ArrayBufferView_uint: function(ctx, target, level, internalformat, width, height, border, format, type, srcData, srcOffset) {
      spasm.objects[ctx].texImage2D(target, level, internalformat, width, height, border, format, type, spasm.decode_ArrayBufferView(srcData), srcOffset);
    },
    WebGL2RenderingContextBase_texImage3D__uint_int_int_int_int_int_int_uint_uint_long: function(ctx, target, level, internalformat, width, height, depth, border, format, type, pboOffset) {
      spasm.objects[ctx].texImage3D(target, level, internalformat, width, height, depth, border, format, type, pboOffset);
    },
    WebGL2RenderingContextBase_texImage3D__uint_int_int_int_int_int_int_uint_uint_TexImageSource: function(ctx, target, level, internalformat, width, height, depth, border, format, type, source) {
      spasm.objects[ctx].texImage3D(target, level, internalformat, width, height, depth, border, format, type, spasm.decode_TexImageSource(source));
    },
    WebGL2RenderingContextBase_texImage3D__uint_int_int_int_int_int_int_uint_uint_optional_ArrayBufferView: function(ctx, target, level, internalformat, width, height, depth, border, format, type, srcDataDefined, srcData) {
      spasm.objects[ctx].texImage3D(target, level, internalformat, width, height, depth, border, format, type, srcDataDefined ? spasm.decode_ArrayBufferView(srcData) : undefined);
    },
    WebGL2RenderingContextBase_texImage3D__uint_int_int_int_int_int_int_uint_uint_ArrayBufferView_uint: function(ctx, target, level, internalformat, width, height, depth, border, format, type, srcData, srcOffset) {
      spasm.objects[ctx].texImage3D(target, level, internalformat, width, height, depth, border, format, type, spasm.decode_ArrayBufferView(srcData), srcOffset);
    },
    WebGL2RenderingContextBase_texSubImage2D__uint_int_int_int_int_int_uint_uint_long: function(ctx, target, level, xoffset, yoffset, width, height, format, type, pboOffset) {
      spasm.objects[ctx].texSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pboOffset);
    },
    WebGL2RenderingContextBase_texSubImage2D__uint_int_int_int_int_int_uint_uint_TexImageSource: function(ctx, target, level, xoffset, yoffset, width, height, format, type, source) {
      spasm.objects[ctx].texSubImage2D(target, level, xoffset, yoffset, width, height, format, type, spasm.decode_TexImageSource(source));
    },
    WebGL2RenderingContextBase_texSubImage2D__uint_int_int_int_int_int_uint_uint_ArrayBufferView_uint: function(ctx, target, level, xoffset, yoffset, width, height, format, type, srcData, srcOffset) {
      spasm.objects[ctx].texSubImage2D(target, level, xoffset, yoffset, width, height, format, type, spasm.decode_ArrayBufferView(srcData), srcOffset);
    },
    WebGL2RenderingContextBase_texSubImage3D__uint_int_int_int_int_int_int_int_uint_uint_long: function(ctx, target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pboOffset) {
      spasm.objects[ctx].texSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pboOffset);
    },
    WebGL2RenderingContextBase_texSubImage3D__uint_int_int_int_int_int_int_int_uint_uint_TexImageSource: function(ctx, target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, source) {
      spasm.objects[ctx].texSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, spasm.decode_TexImageSource(source));
    },
    WebGL2RenderingContextBase_texSubImage3D__uint_int_int_int_int_int_int_int_uint_uint_optional_ArrayBufferView_uint: function(ctx, target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, srcDataDefined, srcData, srcOffset) {
      spasm.objects[ctx].texSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, srcDataDefined ? spasm.decode_ArrayBufferView(srcData) : undefined, srcOffset);
    },
    WebGL2RenderingContextBase_copyTexSubImage3D: function(ctx, target, level, xoffset, yoffset, zoffset, x, y, width, height) {
      spasm.objects[ctx].copyTexSubImage3D(target, level, xoffset, yoffset, zoffset, x, y, width, height);
    },
    WebGL2RenderingContextBase_compressedTexImage2D__uint_int_uint_int_int_int_long: function(ctx, target, level, internalformat, width, height, border, offset) {
      spasm.objects[ctx].compressedTexImage2D(target, level, internalformat, width, height, border, offset);
    },
    WebGL2RenderingContextBase_compressedTexImage2D__uint_int_uint_int_int_int_ArrayBufferView_uint_uint: function(ctx, target, level, internalformat, width, height, border, srcData, srcOffset, srcLengthOverride) {
      spasm.objects[ctx].compressedTexImage2D(target, level, internalformat, width, height, border, spasm.decode_ArrayBufferView(srcData), srcOffset, srcLengthOverride);
    },
    WebGL2RenderingContextBase_compressedTexImage3D__uint_int_uint_int_int_int_int_long: function(ctx, target, level, internalformat, width, height, depth, border, offset) {
      spasm.objects[ctx].compressedTexImage3D(target, level, internalformat, width, height, depth, border, offset);
    },
    WebGL2RenderingContextBase_compressedTexImage3D__uint_int_uint_int_int_int_int_ArrayBufferView_uint_uint: function(ctx, target, level, internalformat, width, height, depth, border, srcData, srcOffset, srcLengthOverride) {
      spasm.objects[ctx].compressedTexImage3D(target, level, internalformat, width, height, depth, border, spasm.decode_ArrayBufferView(srcData), srcOffset, srcLengthOverride);
    },
    WebGL2RenderingContextBase_compressedTexSubImage2D__uint_int_int_int_int_int_uint_long: function(ctx, target, level, xoffset, yoffset, width, height, format, offset) {
      spasm.objects[ctx].compressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, offset);
    },
    WebGL2RenderingContextBase_compressedTexSubImage2D__uint_int_int_int_int_int_uint_ArrayBufferView_uint_uint: function(ctx, target, level, xoffset, yoffset, width, height, format, srcData, srcOffset, srcLengthOverride) {
      spasm.objects[ctx].compressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, spasm.decode_ArrayBufferView(srcData), srcOffset, srcLengthOverride);
    },
    WebGL2RenderingContextBase_compressedTexSubImage3D__uint_int_int_int_int_int_int_int_uint_long: function(ctx, target, level, xoffset, yoffset, zoffset, width, height, depth, format, offset) {
      spasm.objects[ctx].compressedTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, offset);
    },
    WebGL2RenderingContextBase_compressedTexSubImage3D__uint_int_int_int_int_int_int_int_uint_ArrayBufferView_uint_uint: function(ctx, target, level, xoffset, yoffset, zoffset, width, height, depth, format, srcData, srcOffset, srcLengthOverride) {
      spasm.objects[ctx].compressedTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, spasm.decode_ArrayBufferView(srcData), srcOffset, srcLengthOverride);
    },
    WebGL2RenderingContextBase_getFragDataLocation: function(ctx, program, nameLen, namePtr) {
      return spasm.objects[ctx].getFragDataLocation(spasm.objects[program], spasm.decode_string(nameLen, namePtr));
    },
    WebGL2RenderingContextBase_uniform1ui: function(ctx, locationDefined, location, v0) {
      spasm.objects[ctx].uniform1ui(locationDefined ? spasm.objects[location] : undefined, v0);
    },
    WebGL2RenderingContextBase_uniform2ui: function(ctx, locationDefined, location, v0, v1) {
      spasm.objects[ctx].uniform2ui(locationDefined ? spasm.objects[location] : undefined, v0, v1);
    },
    WebGL2RenderingContextBase_uniform3ui: function(ctx, locationDefined, location, v0, v1, v2) {
      spasm.objects[ctx].uniform3ui(locationDefined ? spasm.objects[location] : undefined, v0, v1, v2);
    },
    WebGL2RenderingContextBase_uniform4ui: function(ctx, locationDefined, location, v0, v1, v2, v3) {
      spasm.objects[ctx].uniform4ui(locationDefined ? spasm.objects[location] : undefined, v0, v1, v2, v3);
    },
    WebGL2RenderingContextBase_uniform1fv: function(ctx, locationDefined, location, data, srcOffset, srcLength) {
      spasm.objects[ctx].uniform1fv(locationDefined ? spasm.objects[location] : undefined, spasm.decode_Float32List(data), srcOffset, srcLength);
    },
    WebGL2RenderingContextBase_uniform2fv: function(ctx, locationDefined, location, data, srcOffset, srcLength) {
      spasm.objects[ctx].uniform2fv(locationDefined ? spasm.objects[location] : undefined, spasm.decode_Float32List(data), srcOffset, srcLength);
    },
    WebGL2RenderingContextBase_uniform3fv: function(ctx, locationDefined, location, data, srcOffset, srcLength) {
      spasm.objects[ctx].uniform3fv(locationDefined ? spasm.objects[location] : undefined, spasm.decode_Float32List(data), srcOffset, srcLength);
    },
    WebGL2RenderingContextBase_uniform4fv: function(ctx, locationDefined, location, data, srcOffset, srcLength) {
      spasm.objects[ctx].uniform4fv(locationDefined ? spasm.objects[location] : undefined, spasm.decode_Float32List(data), srcOffset, srcLength);
    },
    WebGL2RenderingContextBase_uniform1iv: function(ctx, locationDefined, location, data, srcOffset, srcLength) {
      spasm.objects[ctx].uniform1iv(locationDefined ? spasm.objects[location] : undefined, spasm.decode_Int32List(data), srcOffset, srcLength);
    },
    WebGL2RenderingContextBase_uniform2iv: function(ctx, locationDefined, location, data, srcOffset, srcLength) {
      spasm.objects[ctx].uniform2iv(locationDefined ? spasm.objects[location] : undefined, spasm.decode_Int32List(data), srcOffset, srcLength);
    },
    WebGL2RenderingContextBase_uniform3iv: function(ctx, locationDefined, location, data, srcOffset, srcLength) {
      spasm.objects[ctx].uniform3iv(locationDefined ? spasm.objects[location] : undefined, spasm.decode_Int32List(data), srcOffset, srcLength);
    },
    WebGL2RenderingContextBase_uniform4iv: function(ctx, locationDefined, location, data, srcOffset, srcLength) {
      spasm.objects[ctx].uniform4iv(locationDefined ? spasm.objects[location] : undefined, spasm.decode_Int32List(data), srcOffset, srcLength);
    },
    WebGL2RenderingContextBase_uniform1uiv: function(ctx, locationDefined, location, data, srcOffset, srcLength) {
      spasm.objects[ctx].uniform1uiv(locationDefined ? spasm.objects[location] : undefined, spasm.decode_Uint32List(data), srcOffset, srcLength);
    },
    WebGL2RenderingContextBase_uniform2uiv: function(ctx, locationDefined, location, data, srcOffset, srcLength) {
      spasm.objects[ctx].uniform2uiv(locationDefined ? spasm.objects[location] : undefined, spasm.decode_Uint32List(data), srcOffset, srcLength);
    },
    WebGL2RenderingContextBase_uniform3uiv: function(ctx, locationDefined, location, data, srcOffset, srcLength) {
      spasm.objects[ctx].uniform3uiv(locationDefined ? spasm.objects[location] : undefined, spasm.decode_Uint32List(data), srcOffset, srcLength);
    },
    WebGL2RenderingContextBase_uniform4uiv: function(ctx, locationDefined, location, data, srcOffset, srcLength) {
      spasm.objects[ctx].uniform4uiv(locationDefined ? spasm.objects[location] : undefined, spasm.decode_Uint32List(data), srcOffset, srcLength);
    },
    WebGL2RenderingContextBase_uniformMatrix2fv: function(ctx, locationDefined, location, transpose, data, srcOffset, srcLength) {
      spasm.objects[ctx].uniformMatrix2fv(locationDefined ? spasm.objects[location] : undefined, transpose, spasm.decode_Float32List(data), srcOffset, srcLength);
    },
    WebGL2RenderingContextBase_uniformMatrix3x2fv: function(ctx, locationDefined, location, transpose, data, srcOffset, srcLength) {
      spasm.objects[ctx].uniformMatrix3x2fv(locationDefined ? spasm.objects[location] : undefined, transpose, spasm.decode_Float32List(data), srcOffset, srcLength);
    },
    WebGL2RenderingContextBase_uniformMatrix4x2fv: function(ctx, locationDefined, location, transpose, data, srcOffset, srcLength) {
      spasm.objects[ctx].uniformMatrix4x2fv(locationDefined ? spasm.objects[location] : undefined, transpose, spasm.decode_Float32List(data), srcOffset, srcLength);
    },
    WebGL2RenderingContextBase_uniformMatrix2x3fv: function(ctx, locationDefined, location, transpose, data, srcOffset, srcLength) {
      spasm.objects[ctx].uniformMatrix2x3fv(locationDefined ? spasm.objects[location] : undefined, transpose, spasm.decode_Float32List(data), srcOffset, srcLength);
    },
    WebGL2RenderingContextBase_uniformMatrix3fv: function(ctx, locationDefined, location, transpose, data, srcOffset, srcLength) {
      spasm.objects[ctx].uniformMatrix3fv(locationDefined ? spasm.objects[location] : undefined, transpose, spasm.decode_Float32List(data), srcOffset, srcLength);
    },
    WebGL2RenderingContextBase_uniformMatrix4x3fv: function(ctx, locationDefined, location, transpose, data, srcOffset, srcLength) {
      spasm.objects[ctx].uniformMatrix4x3fv(locationDefined ? spasm.objects[location] : undefined, transpose, spasm.decode_Float32List(data), srcOffset, srcLength);
    },
    WebGL2RenderingContextBase_uniformMatrix2x4fv: function(ctx, locationDefined, location, transpose, data, srcOffset, srcLength) {
      spasm.objects[ctx].uniformMatrix2x4fv(locationDefined ? spasm.objects[location] : undefined, transpose, spasm.decode_Float32List(data), srcOffset, srcLength);
    },
    WebGL2RenderingContextBase_uniformMatrix3x4fv: function(ctx, locationDefined, location, transpose, data, srcOffset, srcLength) {
      spasm.objects[ctx].uniformMatrix3x4fv(locationDefined ? spasm.objects[location] : undefined, transpose, spasm.decode_Float32List(data), srcOffset, srcLength);
    },
    WebGL2RenderingContextBase_uniformMatrix4fv: function(ctx, locationDefined, location, transpose, data, srcOffset, srcLength) {
      spasm.objects[ctx].uniformMatrix4fv(locationDefined ? spasm.objects[location] : undefined, transpose, spasm.decode_Float32List(data), srcOffset, srcLength);
    },
    WebGL2RenderingContextBase_vertexAttribI4i: function(ctx, index, x, y, z, w) {
      spasm.objects[ctx].vertexAttribI4i(index, x, y, z, w);
    },
    WebGL2RenderingContextBase_vertexAttribI4iv: function(ctx, index, values) {
      spasm.objects[ctx].vertexAttribI4iv(index, spasm.decode_Int32List(values));
    },
    WebGL2RenderingContextBase_vertexAttribI4ui: function(ctx, index, x, y, z, w) {
      spasm.objects[ctx].vertexAttribI4ui(index, x, y, z, w);
    },
    WebGL2RenderingContextBase_vertexAttribI4uiv: function(ctx, index, values) {
      spasm.objects[ctx].vertexAttribI4uiv(index, spasm.decode_Uint32List(values));
    },
    WebGL2RenderingContextBase_vertexAttribIPointer: function(ctx, index, size, type, stride, offset) {
      spasm.objects[ctx].vertexAttribIPointer(index, size, type, stride, offset);
    },
    WebGL2RenderingContextBase_vertexAttribDivisor: function(ctx, index, divisor) {
      spasm.objects[ctx].vertexAttribDivisor(index, divisor);
    },
    WebGL2RenderingContextBase_drawArraysInstanced: function(ctx, mode, first, count, instanceCount) {
      spasm.objects[ctx].drawArraysInstanced(mode, first, count, instanceCount);
    },
    WebGL2RenderingContextBase_drawElementsInstanced: function(ctx, mode, count, type, offset, instanceCount) {
      spasm.objects[ctx].drawElementsInstanced(mode, count, type, offset, instanceCount);
    },
    WebGL2RenderingContextBase_drawRangeElements: function(ctx, mode, start, end, count, type, offset) {
      spasm.objects[ctx].drawRangeElements(mode, start, end, count, type, offset);
    },
    WebGL2RenderingContextBase_readPixels__int_int_int_int_uint_uint_optional_ArrayBufferView: function(ctx, x, y, width, height, format, type, dstDataDefined, dstData) {
      spasm.objects[ctx].readPixels(x, y, width, height, format, type, dstDataDefined ? spasm.decode_ArrayBufferView(dstData) : undefined);
    },
    WebGL2RenderingContextBase_readPixels__int_int_int_int_uint_uint_long: function(ctx, x, y, width, height, format, type, offset) {
      spasm.objects[ctx].readPixels(x, y, width, height, format, type, offset);
    },
    WebGL2RenderingContextBase_readPixels__int_int_int_int_uint_uint_ArrayBufferView_uint: function(ctx, x, y, width, height, format, type, dstData, dstOffset) {
      spasm.objects[ctx].readPixels(x, y, width, height, format, type, spasm.decode_ArrayBufferView(dstData), dstOffset);
    },
    WebGL2RenderingContextBase_drawBuffers: function(ctx, buffers) {
      spasm.objects[ctx].drawBuffers(spasm.objects[buffers]);
    },
    WebGL2RenderingContextBase_clearBufferfv: function(ctx, buffer, drawbuffer, values, srcOffset) {
      spasm.objects[ctx].clearBufferfv(buffer, drawbuffer, spasm.decode_Float32List(values), srcOffset);
    },
    WebGL2RenderingContextBase_clearBufferiv: function(ctx, buffer, drawbuffer, values, srcOffset) {
      spasm.objects[ctx].clearBufferiv(buffer, drawbuffer, spasm.decode_Int32List(values), srcOffset);
    },
    WebGL2RenderingContextBase_clearBufferuiv: function(ctx, buffer, drawbuffer, values, srcOffset) {
      spasm.objects[ctx].clearBufferuiv(buffer, drawbuffer, spasm.decode_Uint32List(values), srcOffset);
    },
    WebGL2RenderingContextBase_clearBufferfi: function(ctx, buffer, drawbuffer, depth, stencil) {
      spasm.objects[ctx].clearBufferfi(buffer, drawbuffer, depth, stencil);
    },
    WebGL2RenderingContextBase_createQuery: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].createQuery());
    },
    WebGL2RenderingContextBase_deleteQuery: function(ctx, queryDefined, query) {
      spasm.objects[ctx].deleteQuery(queryDefined ? spasm.objects[query] : undefined);
    },
    WebGL2RenderingContextBase_isQuery: function(ctx, queryDefined, query) {
      return spasm.objects[ctx].isQuery(queryDefined ? spasm.objects[query] : undefined);
    },
    WebGL2RenderingContextBase_beginQuery: function(ctx, target, query) {
      spasm.objects[ctx].beginQuery(target, spasm.objects[query]);
    },
    WebGL2RenderingContextBase_endQuery: function(ctx, target) {
      spasm.objects[ctx].endQuery(target);
    },
    WebGL2RenderingContextBase_getQuery: function(rawResult, ctx, target, pname) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].getQuery(target, pname));
    },
    WebGL2RenderingContextBase_getQueryParameter: function(ctx, query, pname) {
      return spasm.addObject(spasm.objects[ctx].getQueryParameter(spasm.objects[query], pname));
    },
    WebGL2RenderingContextBase_createSampler: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].createSampler());
    },
    WebGL2RenderingContextBase_deleteSampler: function(ctx, samplerDefined, sampler) {
      spasm.objects[ctx].deleteSampler(samplerDefined ? spasm.objects[sampler] : undefined);
    },
    WebGL2RenderingContextBase_isSampler: function(ctx, samplerDefined, sampler) {
      return spasm.objects[ctx].isSampler(samplerDefined ? spasm.objects[sampler] : undefined);
    },
    WebGL2RenderingContextBase_bindSampler: function(ctx, unit, samplerDefined, sampler) {
      spasm.objects[ctx].bindSampler(unit, samplerDefined ? spasm.objects[sampler] : undefined);
    },
    WebGL2RenderingContextBase_samplerParameteri: function(ctx, sampler, pname, param) {
      spasm.objects[ctx].samplerParameteri(spasm.objects[sampler], pname, param);
    },
    WebGL2RenderingContextBase_samplerParameterf: function(ctx, sampler, pname, param) {
      spasm.objects[ctx].samplerParameterf(spasm.objects[sampler], pname, param);
    },
    WebGL2RenderingContextBase_getSamplerParameter: function(ctx, sampler, pname) {
      return spasm.addObject(spasm.objects[ctx].getSamplerParameter(spasm.objects[sampler], pname));
    },
    WebGL2RenderingContextBase_fenceSync: function(rawResult, ctx, condition, flags) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].fenceSync(condition, flags));
    },
    WebGL2RenderingContextBase_isSync: function(ctx, syncDefined, sync) {
      return spasm.objects[ctx].isSync(syncDefined ? spasm.objects[sync] : undefined);
    },
    WebGL2RenderingContextBase_deleteSync: function(ctx, syncDefined, sync) {
      spasm.objects[ctx].deleteSync(syncDefined ? spasm.objects[sync] : undefined);
    },
    WebGL2RenderingContextBase_clientWaitSync: function(ctx, sync, flags, timeout) {
      return spasm.objects[ctx].clientWaitSync(spasm.objects[sync], flags, timeout);
    },
    WebGL2RenderingContextBase_waitSync: function(ctx, sync, flags, timeout) {
      spasm.objects[ctx].waitSync(spasm.objects[sync], flags, timeout);
    },
    WebGL2RenderingContextBase_getSyncParameter: function(ctx, sync, pname) {
      return spasm.addObject(spasm.objects[ctx].getSyncParameter(spasm.objects[sync], pname));
    },
    WebGL2RenderingContextBase_createTransformFeedback: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].createTransformFeedback());
    },
    WebGL2RenderingContextBase_deleteTransformFeedback: function(ctx, tfDefined, tf) {
      spasm.objects[ctx].deleteTransformFeedback(tfDefined ? spasm.objects[tf] : undefined);
    },
    WebGL2RenderingContextBase_isTransformFeedback: function(ctx, tfDefined, tf) {
      return spasm.objects[ctx].isTransformFeedback(tfDefined ? spasm.objects[tf] : undefined);
    },
    WebGL2RenderingContextBase_bindTransformFeedback: function(ctx, target, tfDefined, tf) {
      spasm.objects[ctx].bindTransformFeedback(target, tfDefined ? spasm.objects[tf] : undefined);
    },
    WebGL2RenderingContextBase_beginTransformFeedback: function(ctx, primitiveMode) {
      spasm.objects[ctx].beginTransformFeedback(primitiveMode);
    },
    WebGL2RenderingContextBase_endTransformFeedback: function(ctx) {
      spasm.objects[ctx].endTransformFeedback();
    },
    WebGL2RenderingContextBase_transformFeedbackVaryings: function(ctx, program, varyings, bufferMode) {
      spasm.objects[ctx].transformFeedbackVaryings(spasm.objects[program], spasm.objects[varyings], bufferMode);
    },
    WebGL2RenderingContextBase_getTransformFeedbackVarying: function(rawResult, ctx, program, index) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].getTransformFeedbackVarying(spasm.objects[program], index));
    },
    WebGL2RenderingContextBase_pauseTransformFeedback: function(ctx) {
      spasm.objects[ctx].pauseTransformFeedback();
    },
    WebGL2RenderingContextBase_resumeTransformFeedback: function(ctx) {
      spasm.objects[ctx].resumeTransformFeedback();
    },
    WebGL2RenderingContextBase_bindBufferBase: function(ctx, target, index, bufferDefined, buffer) {
      spasm.objects[ctx].bindBufferBase(target, index, bufferDefined ? spasm.objects[buffer] : undefined);
    },
    WebGL2RenderingContextBase_bindBufferRange: function(ctx, target, index, bufferDefined, buffer, offset, size) {
      spasm.objects[ctx].bindBufferRange(target, index, bufferDefined ? spasm.objects[buffer] : undefined, offset, size);
    },
    WebGL2RenderingContextBase_getIndexedParameter: function(ctx, target, index) {
      return spasm.addObject(spasm.objects[ctx].getIndexedParameter(target, index));
    },
    WebGL2RenderingContextBase_getUniformIndices: function(rawResult, ctx, program, uniformNames) {
      spasm.encode.optional_sequence(rawResult, spasm.objects[ctx].getUniformIndices(spasm.objects[program], spasm.objects[uniformNames]));
    },
    WebGL2RenderingContextBase_getActiveUniforms: function(ctx, program, uniformIndices, pname) {
      return spasm.addObject(spasm.objects[ctx].getActiveUniforms(spasm.objects[program], spasm.objects[uniformIndices], pname));
    },
    WebGL2RenderingContextBase_getUniformBlockIndex: function(ctx, program, uniformBlockNameLen, uniformBlockNamePtr) {
      return spasm.objects[ctx].getUniformBlockIndex(spasm.objects[program], spasm.decode_string(uniformBlockNameLen, uniformBlockNamePtr));
    },
    WebGL2RenderingContextBase_getActiveUniformBlockParameter: function(ctx, program, uniformBlockIndex, pname) {
      return spasm.addObject(spasm.objects[ctx].getActiveUniformBlockParameter(spasm.objects[program], uniformBlockIndex, pname));
    },
    WebGL2RenderingContextBase_getActiveUniformBlockName: function(rawResult, ctx, program, uniformBlockIndex) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].getActiveUniformBlockName(spasm.objects[program], uniformBlockIndex));
    },
    WebGL2RenderingContextBase_uniformBlockBinding: function(ctx, program, uniformBlockIndex, uniformBlockBinding) {
      spasm.objects[ctx].uniformBlockBinding(spasm.objects[program], uniformBlockIndex, uniformBlockBinding);
    },
    WebGL2RenderingContextBase_createVertexArray: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].createVertexArray());
    },
    WebGL2RenderingContextBase_deleteVertexArray: function(ctx, vertexArrayDefined, vertexArray) {
      spasm.objects[ctx].deleteVertexArray(vertexArrayDefined ? spasm.objects[vertexArray] : undefined);
    },
    WebGL2RenderingContextBase_isVertexArray: function(ctx, vertexArrayDefined, vertexArray) {
      return spasm.objects[ctx].isVertexArray(vertexArrayDefined ? spasm.objects[vertexArray] : undefined);
    },
    WebGL2RenderingContextBase_bindVertexArray: function(ctx, arrayDefined, array) {
      spasm.objects[ctx].bindVertexArray(arrayDefined ? spasm.objects[array] : undefined);
    },
  }
}