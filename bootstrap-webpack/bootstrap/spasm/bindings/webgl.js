import spasm from '../modules/spasm.js';
export default {
  jsExports: {
    WebGLActiveInfo_size_Get: function(ctx) {
      return spasm.objects[ctx].size;
    },
    WebGLActiveInfo_type_Get: function(ctx) {
      return spasm.objects[ctx].type;
    },
    WebGLActiveInfo_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    WebGLContextAttributes_alpha_Set: function(ctx, alpha) {
      spasm.objects[ctx].alpha = alpha;
    },
    WebGLContextAttributes_alpha_Get: function(ctx) {
      return spasm.objects[ctx].alpha;
    },
    WebGLContextAttributes_depth_Set: function(ctx, depth) {
      spasm.objects[ctx].depth = depth;
    },
    WebGLContextAttributes_depth_Get: function(ctx) {
      return spasm.objects[ctx].depth;
    },
    WebGLContextAttributes_stencil_Set: function(ctx, stencil) {
      spasm.objects[ctx].stencil = stencil;
    },
    WebGLContextAttributes_stencil_Get: function(ctx) {
      return spasm.objects[ctx].stencil;
    },
    WebGLContextAttributes_antialias_Set: function(ctx, antialias) {
      spasm.objects[ctx].antialias = antialias;
    },
    WebGLContextAttributes_antialias_Get: function(ctx) {
      return spasm.objects[ctx].antialias;
    },
    WebGLContextAttributes_premultipliedAlpha_Set: function(ctx, premultipliedAlpha) {
      spasm.objects[ctx].premultipliedAlpha = premultipliedAlpha;
    },
    WebGLContextAttributes_premultipliedAlpha_Get: function(ctx) {
      return spasm.objects[ctx].premultipliedAlpha;
    },
    WebGLContextAttributes_preserveDrawingBuffer_Set: function(ctx, preserveDrawingBuffer) {
      spasm.objects[ctx].preserveDrawingBuffer = preserveDrawingBuffer;
    },
    WebGLContextAttributes_preserveDrawingBuffer_Get: function(ctx) {
      return spasm.objects[ctx].preserveDrawingBuffer;
    },
    WebGLContextAttributes_preferLowPowerToHighPerformance_Set: function(ctx, preferLowPowerToHighPerformance) {
      spasm.objects[ctx].preferLowPowerToHighPerformance = preferLowPowerToHighPerformance;
    },
    WebGLContextAttributes_preferLowPowerToHighPerformance_Get: function(ctx) {
      return spasm.objects[ctx].preferLowPowerToHighPerformance;
    },
    WebGLContextAttributes_failIfMajorPerformanceCaveat_Set: function(ctx, failIfMajorPerformanceCaveat) {
      spasm.objects[ctx].failIfMajorPerformanceCaveat = failIfMajorPerformanceCaveat;
    },
    WebGLContextAttributes_failIfMajorPerformanceCaveat_Get: function(ctx) {
      return spasm.objects[ctx].failIfMajorPerformanceCaveat;
    },
    WebGLContextEvent_statusMessage_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].statusMessage);
    },
    WebGLContextEventInit_statusMessage_Set: function(ctx, statusMessageLen, statusMessagePtr) {
      spasm.objects[ctx].statusMessage = spasm.decode_string(statusMessageLen, statusMessagePtr);
    },
    WebGLContextEventInit_statusMessage_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].statusMessage);
    },
    WebGLRenderingContextBase_canvas_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].canvas);
    },
    WebGLRenderingContextBase_drawingBufferWidth_Get: function(ctx) {
      return spasm.objects[ctx].drawingBufferWidth;
    },
    WebGLRenderingContextBase_drawingBufferHeight_Get: function(ctx) {
      return spasm.objects[ctx].drawingBufferHeight;
    },
    WebGLRenderingContextBase_getContextAttributes: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].getContextAttributes());
    },
    WebGLRenderingContextBase_isContextLost: function(ctx) {
      return spasm.objects[ctx].isContextLost();
    },
    WebGLRenderingContextBase_getSupportedExtensions: function(rawResult, ctx) {
      spasm.encode.optional_sequence(rawResult, spasm.objects[ctx].getSupportedExtensions());
    },
    WebGLRenderingContextBase_getExtension: function(rawResult, ctx, nameLen, namePtr) {
      spasm.encode.object(rawResult, spasm.objects[ctx].getExtension(spasm.decode_string(nameLen, namePtr)));
    },
    WebGLRenderingContextBase_activeTexture: function(ctx, texture) {
      spasm.objects[ctx].activeTexture(texture);
    },
    WebGLRenderingContextBase_attachShader: function(ctx, programDefined, program, shaderDefined, shader) {
      spasm.objects[ctx].attachShader(programDefined ? spasm.objects[program] : undefined, shaderDefined ? spasm.objects[shader] : undefined);
    },
    WebGLRenderingContextBase_bindAttribLocation: function(ctx, programDefined, program, index, nameLen, namePtr) {
      spasm.objects[ctx].bindAttribLocation(programDefined ? spasm.objects[program] : undefined, index, spasm.decode_string(nameLen, namePtr));
    },
    WebGLRenderingContextBase_bindBuffer: function(ctx, target, bufferDefined, buffer) {
      spasm.objects[ctx].bindBuffer(target, bufferDefined ? spasm.objects[buffer] : undefined);
    },
    WebGLRenderingContextBase_bindFramebuffer: function(ctx, target, framebufferDefined, framebuffer) {
      spasm.objects[ctx].bindFramebuffer(target, framebufferDefined ? spasm.objects[framebuffer] : undefined);
    },
    WebGLRenderingContextBase_bindRenderbuffer: function(ctx, target, renderbufferDefined, renderbuffer) {
      spasm.objects[ctx].bindRenderbuffer(target, renderbufferDefined ? spasm.objects[renderbuffer] : undefined);
    },
    WebGLRenderingContextBase_bindTexture: function(ctx, target, textureDefined, texture) {
      spasm.objects[ctx].bindTexture(target, textureDefined ? spasm.objects[texture] : undefined);
    },
    WebGLRenderingContextBase_blendColor: function(ctx, red, green, blue, alpha) {
      spasm.objects[ctx].blendColor(red, green, blue, alpha);
    },
    WebGLRenderingContextBase_blendEquation: function(ctx, mode) {
      spasm.objects[ctx].blendEquation(mode);
    },
    WebGLRenderingContextBase_blendEquationSeparate: function(ctx, modeRGB, modeAlpha) {
      spasm.objects[ctx].blendEquationSeparate(modeRGB, modeAlpha);
    },
    WebGLRenderingContextBase_blendFunc: function(ctx, sfactor, dfactor) {
      spasm.objects[ctx].blendFunc(sfactor, dfactor);
    },
    WebGLRenderingContextBase_blendFuncSeparate: function(ctx, srcRGB, dstRGB, srcAlpha, dstAlpha) {
      spasm.objects[ctx].blendFuncSeparate(srcRGB, dstRGB, srcAlpha, dstAlpha);
    },
    WebGLRenderingContextBase_bufferData__uint_long_uint: function(ctx, target, size, usage) {
      spasm.objects[ctx].bufferData(target, size, usage);
    },
    WebGLRenderingContextBase_bufferData__uint_optional_BufferDataSource_uint: function(ctx, target, dataDefined, data, usage) {
      spasm.objects[ctx].bufferData(target, dataDefined ? spasm.decode_BufferDataSource(data) : undefined, usage);
    },
    WebGLRenderingContextBase_bufferSubData: function(ctx, target, offset, dataDefined, data) {
      spasm.objects[ctx].bufferSubData(target, offset, dataDefined ? spasm.decode_BufferDataSource(data) : undefined);
    },
    WebGLRenderingContextBase_checkFramebufferStatus: function(ctx, target) {
      return spasm.objects[ctx].checkFramebufferStatus(target);
    },
    WebGLRenderingContextBase_clear: function(ctx, mask) {
      spasm.objects[ctx].clear(mask);
    },
    WebGLRenderingContextBase_clearColor: function(ctx, red, green, blue, alpha) {
      spasm.objects[ctx].clearColor(red, green, blue, alpha);
    },
    WebGLRenderingContextBase_clearDepth: function(ctx, depth) {
      spasm.objects[ctx].clearDepth(depth);
    },
    WebGLRenderingContextBase_clearStencil: function(ctx, s) {
      spasm.objects[ctx].clearStencil(s);
    },
    WebGLRenderingContextBase_colorMask: function(ctx, red, green, blue, alpha) {
      spasm.objects[ctx].colorMask(red, green, blue, alpha);
    },
    WebGLRenderingContextBase_compileShader: function(ctx, shaderDefined, shader) {
      spasm.objects[ctx].compileShader(shaderDefined ? spasm.objects[shader] : undefined);
    },
    WebGLRenderingContextBase_compressedTexImage2D: function(ctx, target, level, internalformat, width, height, border, data) {
      spasm.objects[ctx].compressedTexImage2D(target, level, internalformat, width, height, border, spasm.decode_ArrayBufferView(data));
    },
    WebGLRenderingContextBase_compressedTexSubImage2D: function(ctx, target, level, xoffset, yoffset, width, height, format, data) {
      spasm.objects[ctx].compressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, spasm.decode_ArrayBufferView(data));
    },
    WebGLRenderingContextBase_copyTexImage2D: function(ctx, target, level, internalformat, x, y, width, height, border) {
      spasm.objects[ctx].copyTexImage2D(target, level, internalformat, x, y, width, height, border);
    },
    WebGLRenderingContextBase_copyTexSubImage2D: function(ctx, target, level, xoffset, yoffset, x, y, width, height) {
      spasm.objects[ctx].copyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height);
    },
    WebGLRenderingContextBase_createBuffer: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].createBuffer());
    },
    WebGLRenderingContextBase_createFramebuffer: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].createFramebuffer());
    },
    WebGLRenderingContextBase_createProgram: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].createProgram());
    },
    WebGLRenderingContextBase_createRenderbuffer: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].createRenderbuffer());
    },
    WebGLRenderingContextBase_createShader: function(rawResult, ctx, type) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].createShader(type));
    },
    WebGLRenderingContextBase_createTexture: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].createTexture());
    },
    WebGLRenderingContextBase_cullFace: function(ctx, mode) {
      spasm.objects[ctx].cullFace(mode);
    },
    WebGLRenderingContextBase_deleteBuffer: function(ctx, bufferDefined, buffer) {
      spasm.objects[ctx].deleteBuffer(bufferDefined ? spasm.objects[buffer] : undefined);
    },
    WebGLRenderingContextBase_deleteFramebuffer: function(ctx, framebufferDefined, framebuffer) {
      spasm.objects[ctx].deleteFramebuffer(framebufferDefined ? spasm.objects[framebuffer] : undefined);
    },
    WebGLRenderingContextBase_deleteProgram: function(ctx, programDefined, program) {
      spasm.objects[ctx].deleteProgram(programDefined ? spasm.objects[program] : undefined);
    },
    WebGLRenderingContextBase_deleteRenderbuffer: function(ctx, renderbufferDefined, renderbuffer) {
      spasm.objects[ctx].deleteRenderbuffer(renderbufferDefined ? spasm.objects[renderbuffer] : undefined);
    },
    WebGLRenderingContextBase_deleteShader: function(ctx, shaderDefined, shader) {
      spasm.objects[ctx].deleteShader(shaderDefined ? spasm.objects[shader] : undefined);
    },
    WebGLRenderingContextBase_deleteTexture: function(ctx, textureDefined, texture) {
      spasm.objects[ctx].deleteTexture(textureDefined ? spasm.objects[texture] : undefined);
    },
    WebGLRenderingContextBase_depthFunc: function(ctx, func) {
      spasm.objects[ctx].depthFunc(func);
    },
    WebGLRenderingContextBase_depthMask: function(ctx, flag) {
      spasm.objects[ctx].depthMask(flag);
    },
    WebGLRenderingContextBase_depthRange: function(ctx, zNear, zFar) {
      spasm.objects[ctx].depthRange(zNear, zFar);
    },
    WebGLRenderingContextBase_detachShader: function(ctx, programDefined, program, shaderDefined, shader) {
      spasm.objects[ctx].detachShader(programDefined ? spasm.objects[program] : undefined, shaderDefined ? spasm.objects[shader] : undefined);
    },
    WebGLRenderingContextBase_disable: function(ctx, cap) {
      spasm.objects[ctx].disable(cap);
    },
    WebGLRenderingContextBase_disableVertexAttribArray: function(ctx, index) {
      spasm.objects[ctx].disableVertexAttribArray(index);
    },
    WebGLRenderingContextBase_drawArrays: function(ctx, mode, first, count) {
      spasm.objects[ctx].drawArrays(mode, first, count);
    },
    WebGLRenderingContextBase_drawElements: function(ctx, mode, count, type, offset) {
      spasm.objects[ctx].drawElements(mode, count, type, offset);
    },
    WebGLRenderingContextBase_enable: function(ctx, cap) {
      spasm.objects[ctx].enable(cap);
    },
    WebGLRenderingContextBase_enableVertexAttribArray: function(ctx, index) {
      spasm.objects[ctx].enableVertexAttribArray(index);
    },
    WebGLRenderingContextBase_finish: function(ctx) {
      spasm.objects[ctx].finish();
    },
    WebGLRenderingContextBase_flush: function(ctx) {
      spasm.objects[ctx].flush();
    },
    WebGLRenderingContextBase_framebufferRenderbuffer: function(ctx, target, attachment, renderbuffertarget, renderbufferDefined, renderbuffer) {
      spasm.objects[ctx].framebufferRenderbuffer(target, attachment, renderbuffertarget, renderbufferDefined ? spasm.objects[renderbuffer] : undefined);
    },
    WebGLRenderingContextBase_framebufferTexture2D: function(ctx, target, attachment, textarget, textureDefined, texture, level) {
      spasm.objects[ctx].framebufferTexture2D(target, attachment, textarget, textureDefined ? spasm.objects[texture] : undefined, level);
    },
    WebGLRenderingContextBase_frontFace: function(ctx, mode) {
      spasm.objects[ctx].frontFace(mode);
    },
    WebGLRenderingContextBase_generateMipmap: function(ctx, target) {
      spasm.objects[ctx].generateMipmap(target);
    },
    WebGLRenderingContextBase_getActiveAttrib: function(rawResult, ctx, programDefined, program, index) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].getActiveAttrib(programDefined ? spasm.objects[program] : undefined, index));
    },
    WebGLRenderingContextBase_getActiveUniform: function(rawResult, ctx, programDefined, program, index) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].getActiveUniform(programDefined ? spasm.objects[program] : undefined, index));
    },
    WebGLRenderingContextBase_getAttachedShaders: function(rawResult, ctx, programDefined, program) {
      spasm.encode.optional_sequence(rawResult, spasm.objects[ctx].getAttachedShaders(programDefined ? spasm.objects[program] : undefined));
    },
    WebGLRenderingContextBase_getAttribLocation: function(ctx, programDefined, program, nameLen, namePtr) {
      return spasm.objects[ctx].getAttribLocation(programDefined ? spasm.objects[program] : undefined, spasm.decode_string(nameLen, namePtr));
    },
    WebGLRenderingContextBase_getBufferParameter: function(ctx, target, pname) {
      return spasm.addObject(spasm.objects[ctx].getBufferParameter(target, pname));
    },
    WebGLRenderingContextBase_getParameter: function(ctx, pname) {
      return spasm.addObject(spasm.objects[ctx].getParameter(pname));
    },
    WebGLRenderingContextBase_getError: function(ctx) {
      return spasm.objects[ctx].getError();
    },
    WebGLRenderingContextBase_getFramebufferAttachmentParameter: function(ctx, target, attachment, pname) {
      return spasm.addObject(spasm.objects[ctx].getFramebufferAttachmentParameter(target, attachment, pname));
    },
    WebGLRenderingContextBase_getProgramParameter: function(ctx, programDefined, program, pname) {
      return spasm.addObject(spasm.objects[ctx].getProgramParameter(programDefined ? spasm.objects[program] : undefined, pname));
    },
    WebGLRenderingContextBase_getProgramInfoLog: function(rawResult, ctx, programDefined, program) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].getProgramInfoLog(programDefined ? spasm.objects[program] : undefined));
    },
    WebGLRenderingContextBase_getRenderbufferParameter: function(ctx, target, pname) {
      return spasm.addObject(spasm.objects[ctx].getRenderbufferParameter(target, pname));
    },
    WebGLRenderingContextBase_getShaderParameter: function(ctx, shaderDefined, shader, pname) {
      return spasm.addObject(spasm.objects[ctx].getShaderParameter(shaderDefined ? spasm.objects[shader] : undefined, pname));
    },
    WebGLRenderingContextBase_getShaderPrecisionFormat: function(rawResult, ctx, shadertype, precisiontype) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].getShaderPrecisionFormat(shadertype, precisiontype));
    },
    WebGLRenderingContextBase_getShaderInfoLog: function(rawResult, ctx, shaderDefined, shader) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].getShaderInfoLog(shaderDefined ? spasm.objects[shader] : undefined));
    },
    WebGLRenderingContextBase_getShaderSource: function(rawResult, ctx, shaderDefined, shader) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].getShaderSource(shaderDefined ? spasm.objects[shader] : undefined));
    },
    WebGLRenderingContextBase_getTexParameter: function(ctx, target, pname) {
      return spasm.addObject(spasm.objects[ctx].getTexParameter(target, pname));
    },
    WebGLRenderingContextBase_getUniform: function(ctx, programDefined, program, locationDefined, location) {
      return spasm.addObject(spasm.objects[ctx].getUniform(programDefined ? spasm.objects[program] : undefined, locationDefined ? spasm.objects[location] : undefined));
    },
    WebGLRenderingContextBase_getUniformLocation: function(rawResult, ctx, programDefined, program, nameLen, namePtr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].getUniformLocation(programDefined ? spasm.objects[program] : undefined, spasm.decode_string(nameLen, namePtr)));
    },
    WebGLRenderingContextBase_getVertexAttrib: function(ctx, index, pname) {
      return spasm.addObject(spasm.objects[ctx].getVertexAttrib(index, pname));
    },
    WebGLRenderingContextBase_getVertexAttribOffset: function(ctx, index, pname) {
      return spasm.objects[ctx].getVertexAttribOffset(index, pname);
    },
    WebGLRenderingContextBase_hint: function(ctx, target, mode) {
      spasm.objects[ctx].hint(target, mode);
    },
    WebGLRenderingContextBase_isBuffer: function(ctx, bufferDefined, buffer) {
      return spasm.objects[ctx].isBuffer(bufferDefined ? spasm.objects[buffer] : undefined);
    },
    WebGLRenderingContextBase_isEnabled: function(ctx, cap) {
      return spasm.objects[ctx].isEnabled(cap);
    },
    WebGLRenderingContextBase_isFramebuffer: function(ctx, framebufferDefined, framebuffer) {
      return spasm.objects[ctx].isFramebuffer(framebufferDefined ? spasm.objects[framebuffer] : undefined);
    },
    WebGLRenderingContextBase_isProgram: function(ctx, programDefined, program) {
      return spasm.objects[ctx].isProgram(programDefined ? spasm.objects[program] : undefined);
    },
    WebGLRenderingContextBase_isRenderbuffer: function(ctx, renderbufferDefined, renderbuffer) {
      return spasm.objects[ctx].isRenderbuffer(renderbufferDefined ? spasm.objects[renderbuffer] : undefined);
    },
    WebGLRenderingContextBase_isShader: function(ctx, shaderDefined, shader) {
      return spasm.objects[ctx].isShader(shaderDefined ? spasm.objects[shader] : undefined);
    },
    WebGLRenderingContextBase_isTexture: function(ctx, textureDefined, texture) {
      return spasm.objects[ctx].isTexture(textureDefined ? spasm.objects[texture] : undefined);
    },
    WebGLRenderingContextBase_lineWidth: function(ctx, width) {
      spasm.objects[ctx].lineWidth(width);
    },
    WebGLRenderingContextBase_linkProgram: function(ctx, programDefined, program) {
      spasm.objects[ctx].linkProgram(programDefined ? spasm.objects[program] : undefined);
    },
    WebGLRenderingContextBase_pixelStorei: function(ctx, pname, param) {
      spasm.objects[ctx].pixelStorei(pname, param);
    },
    WebGLRenderingContextBase_polygonOffset: function(ctx, factor, units) {
      spasm.objects[ctx].polygonOffset(factor, units);
    },
    WebGLRenderingContextBase_readPixels: function(ctx, x, y, width, height, format, type, pixelsDefined, pixels) {
      spasm.objects[ctx].readPixels(x, y, width, height, format, type, pixelsDefined ? spasm.decode_ArrayBufferView(pixels) : undefined);
    },
    WebGLRenderingContextBase_renderbufferStorage: function(ctx, target, internalformat, width, height) {
      spasm.objects[ctx].renderbufferStorage(target, internalformat, width, height);
    },
    WebGLRenderingContextBase_sampleCoverage: function(ctx, value, invert) {
      spasm.objects[ctx].sampleCoverage(value, invert);
    },
    WebGLRenderingContextBase_scissor: function(ctx, x, y, width, height) {
      spasm.objects[ctx].scissor(x, y, width, height);
    },
    WebGLRenderingContextBase_shaderSource: function(ctx, shaderDefined, shader, sourceLen, sourcePtr) {
      spasm.objects[ctx].shaderSource(shaderDefined ? spasm.objects[shader] : undefined, spasm.decode_string(sourceLen, sourcePtr));
    },
    WebGLRenderingContextBase_stencilFunc: function(ctx, func, ref, mask) {
      spasm.objects[ctx].stencilFunc(func, ref, mask);
    },
    WebGLRenderingContextBase_stencilFuncSeparate: function(ctx, face, func, ref, mask) {
      spasm.objects[ctx].stencilFuncSeparate(face, func, ref, mask);
    },
    WebGLRenderingContextBase_stencilMask: function(ctx, mask) {
      spasm.objects[ctx].stencilMask(mask);
    },
    WebGLRenderingContextBase_stencilMaskSeparate: function(ctx, face, mask) {
      spasm.objects[ctx].stencilMaskSeparate(face, mask);
    },
    WebGLRenderingContextBase_stencilOp: function(ctx, fail, zfail, zpass) {
      spasm.objects[ctx].stencilOp(fail, zfail, zpass);
    },
    WebGLRenderingContextBase_stencilOpSeparate: function(ctx, face, fail, zfail, zpass) {
      spasm.objects[ctx].stencilOpSeparate(face, fail, zfail, zpass);
    },
    WebGLRenderingContextBase_texImage2D__uint_int_uint_int_int_int_uint_uint_optional_ArrayBufferView: function(ctx, target, level, internalformat, width, height, border, format, type, pixelsDefined, pixels) {
      spasm.objects[ctx].texImage2D(target, level, internalformat, width, height, border, format, type, pixelsDefined ? spasm.decode_ArrayBufferView(pixels) : undefined);
    },
    WebGLRenderingContextBase_texImage2D__uint_int_uint_uint_uint_optional_TexImageSource: function(ctx, target, level, internalformat, format, type, sourceDefined, source) {
      spasm.objects[ctx].texImage2D(target, level, internalformat, format, type, sourceDefined ? spasm.decode_TexImageSource(source) : undefined);
    },
    WebGLRenderingContextBase_texParameterf: function(ctx, target, pname, param) {
      spasm.objects[ctx].texParameterf(target, pname, param);
    },
    WebGLRenderingContextBase_texParameteri: function(ctx, target, pname, param) {
      spasm.objects[ctx].texParameteri(target, pname, param);
    },
    WebGLRenderingContextBase_texSubImage2D__uint_int_int_int_int_int_uint_uint_optional_ArrayBufferView: function(ctx, target, level, xoffset, yoffset, width, height, format, type, pixelsDefined, pixels) {
      spasm.objects[ctx].texSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixelsDefined ? spasm.decode_ArrayBufferView(pixels) : undefined);
    },
    WebGLRenderingContextBase_texSubImage2D__uint_int_int_int_uint_uint_optional_TexImageSource: function(ctx, target, level, xoffset, yoffset, format, type, sourceDefined, source) {
      spasm.objects[ctx].texSubImage2D(target, level, xoffset, yoffset, format, type, sourceDefined ? spasm.decode_TexImageSource(source) : undefined);
    },
    WebGLRenderingContextBase_uniform1f: function(ctx, locationDefined, location, x) {
      spasm.objects[ctx].uniform1f(locationDefined ? spasm.objects[location] : undefined, x);
    },
    WebGLRenderingContextBase_uniform1fv__optional_Handle_Handle: function(ctx, locationDefined, location, v) {
      spasm.objects[ctx].uniform1fv(locationDefined ? spasm.objects[location] : undefined, spasm.objects[v]);
    },
    WebGLRenderingContextBase_uniform1fv__optional_Handle_sequence: function(ctx, locationDefined, location, v) {
      spasm.objects[ctx].uniform1fv(locationDefined ? spasm.objects[location] : undefined, spasm.objects[v]);
    },
    WebGLRenderingContextBase_uniform1i: function(ctx, locationDefined, location, x) {
      spasm.objects[ctx].uniform1i(locationDefined ? spasm.objects[location] : undefined, x);
    },
    WebGLRenderingContextBase_uniform1iv__optional_Handle_Handle: function(ctx, locationDefined, location, v) {
      spasm.objects[ctx].uniform1iv(locationDefined ? spasm.objects[location] : undefined, spasm.objects[v]);
    },
    WebGLRenderingContextBase_uniform1iv__optional_Handle_sequence: function(ctx, locationDefined, location, v) {
      spasm.objects[ctx].uniform1iv(locationDefined ? spasm.objects[location] : undefined, spasm.objects[v]);
    },
    WebGLRenderingContextBase_uniform2f: function(ctx, locationDefined, location, x, y) {
      spasm.objects[ctx].uniform2f(locationDefined ? spasm.objects[location] : undefined, x, y);
    },
    WebGLRenderingContextBase_uniform2fv__optional_Handle_Handle: function(ctx, locationDefined, location, v) {
      spasm.objects[ctx].uniform2fv(locationDefined ? spasm.objects[location] : undefined, spasm.objects[v]);
    },
    WebGLRenderingContextBase_uniform2fv__optional_Handle_sequence: function(ctx, locationDefined, location, v) {
      spasm.objects[ctx].uniform2fv(locationDefined ? spasm.objects[location] : undefined, spasm.objects[v]);
    },
    WebGLRenderingContextBase_uniform2i: function(ctx, locationDefined, location, x, y) {
      spasm.objects[ctx].uniform2i(locationDefined ? spasm.objects[location] : undefined, x, y);
    },
    WebGLRenderingContextBase_uniform2iv__optional_Handle_Handle: function(ctx, locationDefined, location, v) {
      spasm.objects[ctx].uniform2iv(locationDefined ? spasm.objects[location] : undefined, spasm.objects[v]);
    },
    WebGLRenderingContextBase_uniform2iv__optional_Handle_sequence: function(ctx, locationDefined, location, v) {
      spasm.objects[ctx].uniform2iv(locationDefined ? spasm.objects[location] : undefined, spasm.objects[v]);
    },
    WebGLRenderingContextBase_uniform3f: function(ctx, locationDefined, location, x, y, z) {
      spasm.objects[ctx].uniform3f(locationDefined ? spasm.objects[location] : undefined, x, y, z);
    },
    WebGLRenderingContextBase_uniform3fv__optional_Handle_Handle: function(ctx, locationDefined, location, v) {
      spasm.objects[ctx].uniform3fv(locationDefined ? spasm.objects[location] : undefined, spasm.objects[v]);
    },
    WebGLRenderingContextBase_uniform3fv__optional_Handle_sequence: function(ctx, locationDefined, location, v) {
      spasm.objects[ctx].uniform3fv(locationDefined ? spasm.objects[location] : undefined, spasm.objects[v]);
    },
    WebGLRenderingContextBase_uniform3i: function(ctx, locationDefined, location, x, y, z) {
      spasm.objects[ctx].uniform3i(locationDefined ? spasm.objects[location] : undefined, x, y, z);
    },
    WebGLRenderingContextBase_uniform3iv__optional_Handle_Handle: function(ctx, locationDefined, location, v) {
      spasm.objects[ctx].uniform3iv(locationDefined ? spasm.objects[location] : undefined, spasm.objects[v]);
    },
    WebGLRenderingContextBase_uniform3iv__optional_Handle_sequence: function(ctx, locationDefined, location, v) {
      spasm.objects[ctx].uniform3iv(locationDefined ? spasm.objects[location] : undefined, spasm.objects[v]);
    },
    WebGLRenderingContextBase_uniform4f: function(ctx, locationDefined, location, x, y, z, w) {
      spasm.objects[ctx].uniform4f(locationDefined ? spasm.objects[location] : undefined, x, y, z, w);
    },
    WebGLRenderingContextBase_uniform4fv__optional_Handle_Handle: function(ctx, locationDefined, location, v) {
      spasm.objects[ctx].uniform4fv(locationDefined ? spasm.objects[location] : undefined, spasm.objects[v]);
    },
    WebGLRenderingContextBase_uniform4fv__optional_Handle_sequence: function(ctx, locationDefined, location, v) {
      spasm.objects[ctx].uniform4fv(locationDefined ? spasm.objects[location] : undefined, spasm.objects[v]);
    },
    WebGLRenderingContextBase_uniform4i: function(ctx, locationDefined, location, x, y, z, w) {
      spasm.objects[ctx].uniform4i(locationDefined ? spasm.objects[location] : undefined, x, y, z, w);
    },
    WebGLRenderingContextBase_uniform4iv__optional_Handle_Handle: function(ctx, locationDefined, location, v) {
      spasm.objects[ctx].uniform4iv(locationDefined ? spasm.objects[location] : undefined, spasm.objects[v]);
    },
    WebGLRenderingContextBase_uniform4iv__optional_Handle_sequence: function(ctx, locationDefined, location, v) {
      spasm.objects[ctx].uniform4iv(locationDefined ? spasm.objects[location] : undefined, spasm.objects[v]);
    },
    WebGLRenderingContextBase_uniformMatrix2fv__optional_Handle_bool_Handle: function(ctx, locationDefined, location, transpose, value) {
      spasm.objects[ctx].uniformMatrix2fv(locationDefined ? spasm.objects[location] : undefined, transpose, spasm.objects[value]);
    },
    WebGLRenderingContextBase_uniformMatrix2fv__optional_Handle_bool_sequence: function(ctx, locationDefined, location, transpose, value) {
      spasm.objects[ctx].uniformMatrix2fv(locationDefined ? spasm.objects[location] : undefined, transpose, spasm.objects[value]);
    },
    WebGLRenderingContextBase_uniformMatrix3fv__optional_Handle_bool_Handle: function(ctx, locationDefined, location, transpose, value) {
      spasm.objects[ctx].uniformMatrix3fv(locationDefined ? spasm.objects[location] : undefined, transpose, spasm.objects[value]);
    },
    WebGLRenderingContextBase_uniformMatrix3fv__optional_Handle_bool_sequence: function(ctx, locationDefined, location, transpose, value) {
      spasm.objects[ctx].uniformMatrix3fv(locationDefined ? spasm.objects[location] : undefined, transpose, spasm.objects[value]);
    },
    WebGLRenderingContextBase_uniformMatrix4fv__optional_Handle_bool_Handle: function(ctx, locationDefined, location, transpose, value) {
      spasm.objects[ctx].uniformMatrix4fv(locationDefined ? spasm.objects[location] : undefined, transpose, spasm.objects[value]);
    },
    WebGLRenderingContextBase_uniformMatrix4fv__optional_Handle_bool_sequence: function(ctx, locationDefined, location, transpose, value) {
      spasm.objects[ctx].uniformMatrix4fv(locationDefined ? spasm.objects[location] : undefined, transpose, spasm.objects[value]);
    },
    WebGLRenderingContextBase_useProgram: function(ctx, programDefined, program) {
      spasm.objects[ctx].useProgram(programDefined ? spasm.objects[program] : undefined);
    },
    WebGLRenderingContextBase_validateProgram: function(ctx, programDefined, program) {
      spasm.objects[ctx].validateProgram(programDefined ? spasm.objects[program] : undefined);
    },
    WebGLRenderingContextBase_vertexAttrib1f: function(ctx, indx, x) {
      spasm.objects[ctx].vertexAttrib1f(indx, x);
    },
    WebGLRenderingContextBase_vertexAttrib1fv__uint_Handle: function(ctx, indx, values) {
      spasm.objects[ctx].vertexAttrib1fv(indx, spasm.objects[values]);
    },
    WebGLRenderingContextBase_vertexAttrib1fv__uint_sequence: function(ctx, indx, values) {
      spasm.objects[ctx].vertexAttrib1fv(indx, spasm.objects[values]);
    },
    WebGLRenderingContextBase_vertexAttrib2f: function(ctx, indx, x, y) {
      spasm.objects[ctx].vertexAttrib2f(indx, x, y);
    },
    WebGLRenderingContextBase_vertexAttrib2fv__uint_Handle: function(ctx, indx, values) {
      spasm.objects[ctx].vertexAttrib2fv(indx, spasm.objects[values]);
    },
    WebGLRenderingContextBase_vertexAttrib2fv__uint_sequence: function(ctx, indx, values) {
      spasm.objects[ctx].vertexAttrib2fv(indx, spasm.objects[values]);
    },
    WebGLRenderingContextBase_vertexAttrib3f: function(ctx, indx, x, y, z) {
      spasm.objects[ctx].vertexAttrib3f(indx, x, y, z);
    },
    WebGLRenderingContextBase_vertexAttrib3fv__uint_Handle: function(ctx, indx, values) {
      spasm.objects[ctx].vertexAttrib3fv(indx, spasm.objects[values]);
    },
    WebGLRenderingContextBase_vertexAttrib3fv__uint_sequence: function(ctx, indx, values) {
      spasm.objects[ctx].vertexAttrib3fv(indx, spasm.objects[values]);
    },
    WebGLRenderingContextBase_vertexAttrib4f: function(ctx, indx, x, y, z, w) {
      spasm.objects[ctx].vertexAttrib4f(indx, x, y, z, w);
    },
    WebGLRenderingContextBase_vertexAttrib4fv__uint_Handle: function(ctx, indx, values) {
      spasm.objects[ctx].vertexAttrib4fv(indx, spasm.objects[values]);
    },
    WebGLRenderingContextBase_vertexAttrib4fv__uint_sequence: function(ctx, indx, values) {
      spasm.objects[ctx].vertexAttrib4fv(indx, spasm.objects[values]);
    },
    WebGLRenderingContextBase_vertexAttribPointer: function(ctx, indx, size, type, normalized, stride, offset) {
      spasm.objects[ctx].vertexAttribPointer(indx, size, type, normalized, stride, offset);
    },
    WebGLRenderingContextBase_viewport: function(ctx, x, y, width, height) {
      spasm.objects[ctx].viewport(x, y, width, height);
    },
    WebGLShaderPrecisionFormat_rangeMin_Get: function(ctx) {
      return spasm.objects[ctx].rangeMin;
    },
    WebGLShaderPrecisionFormat_rangeMax_Get: function(ctx) {
      return spasm.objects[ctx].rangeMax;
    },
    WebGLShaderPrecisionFormat_precision_Get: function(ctx) {
      return spasm.objects[ctx].precision;
    },
  }
}