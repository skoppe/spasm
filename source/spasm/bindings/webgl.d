module spasm.bindings.webgl;

import spasm.types;
import spasm.bindings.common : ArrayBufferView;
import spasm.bindings.html : HTMLCanvasElement;
import spasm.bindings.html : HTMLImageElement;
import spasm.bindings.html : HTMLVideoElement;
import spasm.bindings.html : ImageData;

alias BufferDataSource = SumType!(ArrayBuffer, ArrayBufferView);
alias GLbitfield = uint;
alias GLboolean = bool;
alias GLbyte = byte;
alias GLclampf = float;
alias GLenum = uint;
alias GLfloat = float;
alias GLint = int;
alias GLintptr = long;
alias GLshort = short;
alias GLsizei = int;
alias GLsizeiptr = long;
alias GLubyte = ubyte;
alias GLuint = uint;
alias GLushort = ushort;
alias TexImageSource = SumType!(ImageData, HTMLImageElement, HTMLCanvasElement, HTMLVideoElement);
struct WebGLActiveInfo {
  JsHandle handle;
  alias handle this;
  int size() {
    return WebGLActiveInfo_size_Get(handle);
  }
  uint type() {
    return WebGLActiveInfo_type_Get(handle);
  }
  string name() {
    return WebGLActiveInfo_name_Get(handle);
  }
}
struct WebGLBuffer {
  WebGLObject _parent;
  alias _parent this;
}
struct WebGLContextAttributes {
  JsHandle handle;
  alias handle this;
  void alpha(bool alpha) {
    WebGLContextAttributes_alpha_Set(handle, alpha);
  }
  bool alpha() {
    return WebGLContextAttributes_alpha_Get(handle);
  }
  void depth(bool depth) {
    WebGLContextAttributes_depth_Set(handle, depth);
  }
  bool depth() {
    return WebGLContextAttributes_depth_Get(handle);
  }
  void stencil(bool stencil) {
    WebGLContextAttributes_stencil_Set(handle, stencil);
  }
  bool stencil() {
    return WebGLContextAttributes_stencil_Get(handle);
  }
  void antialias(bool antialias) {
    WebGLContextAttributes_antialias_Set(handle, antialias);
  }
  bool antialias() {
    return WebGLContextAttributes_antialias_Get(handle);
  }
  void premultipliedAlpha(bool premultipliedAlpha) {
    WebGLContextAttributes_premultipliedAlpha_Set(handle, premultipliedAlpha);
  }
  bool premultipliedAlpha() {
    return WebGLContextAttributes_premultipliedAlpha_Get(handle);
  }
  void preserveDrawingBuffer(bool preserveDrawingBuffer) {
    WebGLContextAttributes_preserveDrawingBuffer_Set(handle, preserveDrawingBuffer);
  }
  bool preserveDrawingBuffer() {
    return WebGLContextAttributes_preserveDrawingBuffer_Get(handle);
  }
  void preferLowPowerToHighPerformance(bool preferLowPowerToHighPerformance) {
    WebGLContextAttributes_preferLowPowerToHighPerformance_Set(handle, preferLowPowerToHighPerformance);
  }
  bool preferLowPowerToHighPerformance() {
    return WebGLContextAttributes_preferLowPowerToHighPerformance_Get(handle);
  }
  void failIfMajorPerformanceCaveat(bool failIfMajorPerformanceCaveat) {
    WebGLContextAttributes_failIfMajorPerformanceCaveat_Set(handle, failIfMajorPerformanceCaveat);
  }
  bool failIfMajorPerformanceCaveat() {
    return WebGLContextAttributes_failIfMajorPerformanceCaveat_Get(handle);
  }
}
struct WebGLContextEvent {
  Event _parent;
  alias _parent this;
  string statusMessage() {
    return WebGLContextEvent_statusMessage_Get(handle);
  }
}
struct WebGLContextEventInit {
  EventInit _parent;
  alias _parent this;
  void statusMessage(string statusMessage) {
    WebGLContextEventInit_statusMessage_Set(handle, statusMessage);
  }
  string statusMessage() {
    return WebGLContextEventInit_statusMessage_Get(handle);
  }
}
struct WebGLFramebuffer {
  WebGLObject _parent;
  alias _parent this;
}
struct WebGLObject {
  JsHandle handle;
  alias handle this;
}
struct WebGLProgram {
  WebGLObject _parent;
  alias _parent this;
}
struct WebGLRenderbuffer {
  WebGLObject _parent;
  alias _parent this;
}
struct WebGLRenderingContext {
  JsHandle handle;
  alias handle this;
}
struct WebGLRenderingContextBase {
  JsHandle handle;
  alias handle this;
  enum uint DEPTH_BUFFER_BIT = 0x00000100;
  enum uint STENCIL_BUFFER_BIT = 0x00000400;
  enum uint COLOR_BUFFER_BIT = 0x00004000;
  enum uint POINTS = 0x0000;
  enum uint LINES = 0x0001;
  enum uint LINE_LOOP = 0x0002;
  enum uint LINE_STRIP = 0x0003;
  enum uint TRIANGLES = 0x0004;
  enum uint TRIANGLE_STRIP = 0x0005;
  enum uint TRIANGLE_FAN = 0x0006;
  enum uint ZERO = 0;
  enum uint ONE = 1;
  enum uint SRC_COLOR = 0x0300;
  enum uint ONE_MINUS_SRC_COLOR = 0x0301;
  enum uint SRC_ALPHA = 0x0302;
  enum uint ONE_MINUS_SRC_ALPHA = 0x0303;
  enum uint DST_ALPHA = 0x0304;
  enum uint ONE_MINUS_DST_ALPHA = 0x0305;
  enum uint DST_COLOR = 0x0306;
  enum uint ONE_MINUS_DST_COLOR = 0x0307;
  enum uint SRC_ALPHA_SATURATE = 0x0308;
  enum uint FUNC_ADD = 0x8006;
  enum uint BLEND_EQUATION = 0x8009;
  enum uint BLEND_EQUATION_RGB = 0x8009;
  enum uint BLEND_EQUATION_ALPHA = 0x883D;
  enum uint FUNC_SUBTRACT = 0x800A;
  enum uint FUNC_REVERSE_SUBTRACT = 0x800B;
  enum uint BLEND_DST_RGB = 0x80C8;
  enum uint BLEND_SRC_RGB = 0x80C9;
  enum uint BLEND_DST_ALPHA = 0x80CA;
  enum uint BLEND_SRC_ALPHA = 0x80CB;
  enum uint CONSTANT_COLOR = 0x8001;
  enum uint ONE_MINUS_CONSTANT_COLOR = 0x8002;
  enum uint CONSTANT_ALPHA = 0x8003;
  enum uint ONE_MINUS_CONSTANT_ALPHA = 0x8004;
  enum uint BLEND_COLOR = 0x8005;
  enum uint ARRAY_BUFFER = 0x8892;
  enum uint ELEMENT_ARRAY_BUFFER = 0x8893;
  enum uint ARRAY_BUFFER_BINDING = 0x8894;
  enum uint ELEMENT_ARRAY_BUFFER_BINDING = 0x8895;
  enum uint STREAM_DRAW = 0x88E0;
  enum uint STATIC_DRAW = 0x88E4;
  enum uint DYNAMIC_DRAW = 0x88E8;
  enum uint BUFFER_SIZE = 0x8764;
  enum uint BUFFER_USAGE = 0x8765;
  enum uint CURRENT_VERTEX_ATTRIB = 0x8626;
  enum uint FRONT = 0x0404;
  enum uint BACK = 0x0405;
  enum uint FRONT_AND_BACK = 0x0408;
  enum uint CULL_FACE = 0x0B44;
  enum uint BLEND = 0x0BE2;
  enum uint DITHER = 0x0BD0;
  enum uint STENCIL_TEST = 0x0B90;
  enum uint DEPTH_TEST = 0x0B71;
  enum uint SCISSOR_TEST = 0x0C11;
  enum uint POLYGON_OFFSET_FILL = 0x8037;
  enum uint SAMPLE_ALPHA_TO_COVERAGE = 0x809E;
  enum uint SAMPLE_COVERAGE = 0x80A0;
  enum uint NO_ERROR = 0;
  enum uint INVALID_ENUM = 0x0500;
  enum uint INVALID_VALUE = 0x0501;
  enum uint INVALID_OPERATION = 0x0502;
  enum uint OUT_OF_MEMORY = 0x0505;
  enum uint CW = 0x0900;
  enum uint CCW = 0x0901;
  enum uint LINE_WIDTH = 0x0B21;
  enum uint ALIASED_POINT_SIZE_RANGE = 0x846D;
  enum uint ALIASED_LINE_WIDTH_RANGE = 0x846E;
  enum uint CULL_FACE_MODE = 0x0B45;
  enum uint FRONT_FACE = 0x0B46;
  enum uint DEPTH_RANGE = 0x0B70;
  enum uint DEPTH_WRITEMASK = 0x0B72;
  enum uint DEPTH_CLEAR_VALUE = 0x0B73;
  enum uint DEPTH_FUNC = 0x0B74;
  enum uint STENCIL_CLEAR_VALUE = 0x0B91;
  enum uint STENCIL_FUNC = 0x0B92;
  enum uint STENCIL_FAIL = 0x0B94;
  enum uint STENCIL_PASS_DEPTH_FAIL = 0x0B95;
  enum uint STENCIL_PASS_DEPTH_PASS = 0x0B96;
  enum uint STENCIL_REF = 0x0B97;
  enum uint STENCIL_VALUE_MASK = 0x0B93;
  enum uint STENCIL_WRITEMASK = 0x0B98;
  enum uint STENCIL_BACK_FUNC = 0x8800;
  enum uint STENCIL_BACK_FAIL = 0x8801;
  enum uint STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802;
  enum uint STENCIL_BACK_PASS_DEPTH_PASS = 0x8803;
  enum uint STENCIL_BACK_REF = 0x8CA3;
  enum uint STENCIL_BACK_VALUE_MASK = 0x8CA4;
  enum uint STENCIL_BACK_WRITEMASK = 0x8CA5;
  enum uint VIEWPORT = 0x0BA2;
  enum uint SCISSOR_BOX = 0x0C10;
  enum uint COLOR_CLEAR_VALUE = 0x0C22;
  enum uint COLOR_WRITEMASK = 0x0C23;
  enum uint UNPACK_ALIGNMENT = 0x0CF5;
  enum uint PACK_ALIGNMENT = 0x0D05;
  enum uint MAX_TEXTURE_SIZE = 0x0D33;
  enum uint MAX_VIEWPORT_DIMS = 0x0D3A;
  enum uint SUBPIXEL_BITS = 0x0D50;
  enum uint RED_BITS = 0x0D52;
  enum uint GREEN_BITS = 0x0D53;
  enum uint BLUE_BITS = 0x0D54;
  enum uint ALPHA_BITS = 0x0D55;
  enum uint DEPTH_BITS = 0x0D56;
  enum uint STENCIL_BITS = 0x0D57;
  enum uint POLYGON_OFFSET_UNITS = 0x2A00;
  enum uint POLYGON_OFFSET_FACTOR = 0x8038;
  enum uint TEXTURE_BINDING_2D = 0x8069;
  enum uint SAMPLE_BUFFERS = 0x80A8;
  enum uint SAMPLES = 0x80A9;
  enum uint SAMPLE_COVERAGE_VALUE = 0x80AA;
  enum uint SAMPLE_COVERAGE_INVERT = 0x80AB;
  enum uint COMPRESSED_TEXTURE_FORMATS = 0x86A3;
  enum uint DONT_CARE = 0x1100;
  enum uint FASTEST = 0x1101;
  enum uint NICEST = 0x1102;
  enum uint GENERATE_MIPMAP_HINT = 0x8192;
  enum uint BYTE = 0x1400;
  enum uint UNSIGNED_BYTE = 0x1401;
  enum uint SHORT = 0x1402;
  enum uint UNSIGNED_SHORT = 0x1403;
  enum uint INT = 0x1404;
  enum uint UNSIGNED_INT = 0x1405;
  enum uint FLOAT = 0x1406;
  enum uint DEPTH_COMPONENT = 0x1902;
  enum uint ALPHA = 0x1906;
  enum uint RGB = 0x1907;
  enum uint RGBA = 0x1908;
  enum uint LUMINANCE = 0x1909;
  enum uint LUMINANCE_ALPHA = 0x190A;
  enum uint UNSIGNED_SHORT_4_4_4_4 = 0x8033;
  enum uint UNSIGNED_SHORT_5_5_5_1 = 0x8034;
  enum uint UNSIGNED_SHORT_5_6_5 = 0x8363;
  enum uint FRAGMENT_SHADER = 0x8B30;
  enum uint VERTEX_SHADER = 0x8B31;
  enum uint MAX_VERTEX_ATTRIBS = 0x8869;
  enum uint MAX_VERTEX_UNIFORM_VECTORS = 0x8DFB;
  enum uint MAX_VARYING_VECTORS = 0x8DFC;
  enum uint MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D;
  enum uint MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C;
  enum uint MAX_TEXTURE_IMAGE_UNITS = 0x8872;
  enum uint MAX_FRAGMENT_UNIFORM_VECTORS = 0x8DFD;
  enum uint SHADER_TYPE = 0x8B4F;
  enum uint DELETE_STATUS = 0x8B80;
  enum uint LINK_STATUS = 0x8B82;
  enum uint VALIDATE_STATUS = 0x8B83;
  enum uint ATTACHED_SHADERS = 0x8B85;
  enum uint ACTIVE_UNIFORMS = 0x8B86;
  enum uint ACTIVE_ATTRIBUTES = 0x8B89;
  enum uint SHADING_LANGUAGE_VERSION = 0x8B8C;
  enum uint CURRENT_PROGRAM = 0x8B8D;
  enum uint NEVER = 0x0200;
  enum uint LESS = 0x0201;
  enum uint EQUAL = 0x0202;
  enum uint LEQUAL = 0x0203;
  enum uint GREATER = 0x0204;
  enum uint NOTEQUAL = 0x0205;
  enum uint GEQUAL = 0x0206;
  enum uint ALWAYS = 0x0207;
  enum uint KEEP = 0x1E00;
  enum uint REPLACE = 0x1E01;
  enum uint INCR = 0x1E02;
  enum uint DECR = 0x1E03;
  enum uint INVERT = 0x150A;
  enum uint INCR_WRAP = 0x8507;
  enum uint DECR_WRAP = 0x8508;
  enum uint VENDOR = 0x1F00;
  enum uint RENDERER = 0x1F01;
  enum uint VERSION = 0x1F02;
  enum uint NEAREST = 0x2600;
  enum uint LINEAR = 0x2601;
  enum uint NEAREST_MIPMAP_NEAREST = 0x2700;
  enum uint LINEAR_MIPMAP_NEAREST = 0x2701;
  enum uint NEAREST_MIPMAP_LINEAR = 0x2702;
  enum uint LINEAR_MIPMAP_LINEAR = 0x2703;
  enum uint TEXTURE_MAG_FILTER = 0x2800;
  enum uint TEXTURE_MIN_FILTER = 0x2801;
  enum uint TEXTURE_WRAP_S = 0x2802;
  enum uint TEXTURE_WRAP_T = 0x2803;
  enum uint TEXTURE_2D = 0x0DE1;
  enum uint TEXTURE = 0x1702;
  enum uint TEXTURE_CUBE_MAP = 0x8513;
  enum uint TEXTURE_BINDING_CUBE_MAP = 0x8514;
  enum uint TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515;
  enum uint TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516;
  enum uint TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517;
  enum uint TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518;
  enum uint TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519;
  enum uint TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A;
  enum uint MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C;
  enum uint TEXTURE0 = 0x84C0;
  enum uint TEXTURE1 = 0x84C1;
  enum uint TEXTURE2 = 0x84C2;
  enum uint TEXTURE3 = 0x84C3;
  enum uint TEXTURE4 = 0x84C4;
  enum uint TEXTURE5 = 0x84C5;
  enum uint TEXTURE6 = 0x84C6;
  enum uint TEXTURE7 = 0x84C7;
  enum uint TEXTURE8 = 0x84C8;
  enum uint TEXTURE9 = 0x84C9;
  enum uint TEXTURE10 = 0x84CA;
  enum uint TEXTURE11 = 0x84CB;
  enum uint TEXTURE12 = 0x84CC;
  enum uint TEXTURE13 = 0x84CD;
  enum uint TEXTURE14 = 0x84CE;
  enum uint TEXTURE15 = 0x84CF;
  enum uint TEXTURE16 = 0x84D0;
  enum uint TEXTURE17 = 0x84D1;
  enum uint TEXTURE18 = 0x84D2;
  enum uint TEXTURE19 = 0x84D3;
  enum uint TEXTURE20 = 0x84D4;
  enum uint TEXTURE21 = 0x84D5;
  enum uint TEXTURE22 = 0x84D6;
  enum uint TEXTURE23 = 0x84D7;
  enum uint TEXTURE24 = 0x84D8;
  enum uint TEXTURE25 = 0x84D9;
  enum uint TEXTURE26 = 0x84DA;
  enum uint TEXTURE27 = 0x84DB;
  enum uint TEXTURE28 = 0x84DC;
  enum uint TEXTURE29 = 0x84DD;
  enum uint TEXTURE30 = 0x84DE;
  enum uint TEXTURE31 = 0x84DF;
  enum uint ACTIVE_TEXTURE = 0x84E0;
  enum uint REPEAT = 0x2901;
  enum uint CLAMP_TO_EDGE = 0x812F;
  enum uint MIRRORED_REPEAT = 0x8370;
  enum uint FLOAT_VEC2 = 0x8B50;
  enum uint FLOAT_VEC3 = 0x8B51;
  enum uint FLOAT_VEC4 = 0x8B52;
  enum uint INT_VEC2 = 0x8B53;
  enum uint INT_VEC3 = 0x8B54;
  enum uint INT_VEC4 = 0x8B55;
  enum uint BOOL = 0x8B56;
  enum uint BOOL_VEC2 = 0x8B57;
  enum uint BOOL_VEC3 = 0x8B58;
  enum uint BOOL_VEC4 = 0x8B59;
  enum uint FLOAT_MAT2 = 0x8B5A;
  enum uint FLOAT_MAT3 = 0x8B5B;
  enum uint FLOAT_MAT4 = 0x8B5C;
  enum uint SAMPLER_2D = 0x8B5E;
  enum uint SAMPLER_CUBE = 0x8B60;
  enum uint VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622;
  enum uint VERTEX_ATTRIB_ARRAY_SIZE = 0x8623;
  enum uint VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624;
  enum uint VERTEX_ATTRIB_ARRAY_TYPE = 0x8625;
  enum uint VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A;
  enum uint VERTEX_ATTRIB_ARRAY_POINTER = 0x8645;
  enum uint VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F;
  enum uint IMPLEMENTATION_COLOR_READ_TYPE = 0x8B9A;
  enum uint IMPLEMENTATION_COLOR_READ_FORMAT = 0x8B9B;
  enum uint COMPILE_STATUS = 0x8B81;
  enum uint LOW_FLOAT = 0x8DF0;
  enum uint MEDIUM_FLOAT = 0x8DF1;
  enum uint HIGH_FLOAT = 0x8DF2;
  enum uint LOW_INT = 0x8DF3;
  enum uint MEDIUM_INT = 0x8DF4;
  enum uint HIGH_INT = 0x8DF5;
  enum uint FRAMEBUFFER = 0x8D40;
  enum uint RENDERBUFFER = 0x8D41;
  enum uint RGBA4 = 0x8056;
  enum uint RGB5_A1 = 0x8057;
  enum uint RGB565 = 0x8D62;
  enum uint DEPTH_COMPONENT16 = 0x81A5;
  enum uint STENCIL_INDEX = 0x1901;
  enum uint STENCIL_INDEX8 = 0x8D48;
  enum uint DEPTH_STENCIL = 0x84F9;
  enum uint RENDERBUFFER_WIDTH = 0x8D42;
  enum uint RENDERBUFFER_HEIGHT = 0x8D43;
  enum uint RENDERBUFFER_INTERNAL_FORMAT = 0x8D44;
  enum uint RENDERBUFFER_RED_SIZE = 0x8D50;
  enum uint RENDERBUFFER_GREEN_SIZE = 0x8D51;
  enum uint RENDERBUFFER_BLUE_SIZE = 0x8D52;
  enum uint RENDERBUFFER_ALPHA_SIZE = 0x8D53;
  enum uint RENDERBUFFER_DEPTH_SIZE = 0x8D54;
  enum uint RENDERBUFFER_STENCIL_SIZE = 0x8D55;
  enum uint FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8CD0;
  enum uint FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8CD1;
  enum uint FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8CD2;
  enum uint FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3;
  enum uint COLOR_ATTACHMENT0 = 0x8CE0;
  enum uint DEPTH_ATTACHMENT = 0x8D00;
  enum uint STENCIL_ATTACHMENT = 0x8D20;
  enum uint DEPTH_STENCIL_ATTACHMENT = 0x821A;
  enum uint NONE = 0;
  enum uint FRAMEBUFFER_COMPLETE = 0x8CD5;
  enum uint FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8CD6;
  enum uint FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8CD7;
  enum uint FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 0x8CD9;
  enum uint FRAMEBUFFER_UNSUPPORTED = 0x8CDD;
  enum uint FRAMEBUFFER_BINDING = 0x8CA6;
  enum uint RENDERBUFFER_BINDING = 0x8CA7;
  enum uint MAX_RENDERBUFFER_SIZE = 0x84E8;
  enum uint INVALID_FRAMEBUFFER_OPERATION = 0x0506;
  enum uint UNPACK_FLIP_Y_WEBGL = 0x9240;
  enum uint UNPACK_PREMULTIPLY_ALPHA_WEBGL = 0x9241;
  enum uint CONTEXT_LOST_WEBGL = 0x9242;
  enum uint UNPACK_COLORSPACE_CONVERSION_WEBGL = 0x9243;
  enum uint BROWSER_DEFAULT_WEBGL = 0x9244;
  HTMLCanvasElement canvas() {
    return HTMLCanvasElement(WebGLRenderingContextBase_canvas_Get(handle));
  }
  int drawingBufferWidth() {
    return WebGLRenderingContextBase_drawingBufferWidth_Get(handle);
  }
  int drawingBufferHeight() {
    return WebGLRenderingContextBase_drawingBufferHeight_Get(handle);
  }
  Optional!(WebGLContextAttributes) getContextAttributes() {
    return WebGLRenderingContextBase_getContextAttributes(handle);
  }
  bool isContextLost() {
    return WebGLRenderingContextBase_isContextLost(handle);
  }
  Optional!(Sequence!(string)) getSupportedExtensions() {
    return WebGLRenderingContextBase_getSupportedExtensions(handle);
  }
  Optional!(Object) getExtension(string name) {
    return WebGLRenderingContextBase_getExtension(handle, name);
  }
  void activeTexture(uint texture) {
    WebGLRenderingContextBase_activeTexture(handle, texture);
  }
  void attachShader(Optional!(WebGLProgram) program, Optional!(WebGLShader) shader) {
    WebGLRenderingContextBase_attachShader(handle, !program.empty, program.value.handle, !shader.empty, shader.value.handle);
  }
  void bindAttribLocation(Optional!(WebGLProgram) program, uint index, string name) {
    WebGLRenderingContextBase_bindAttribLocation(handle, !program.empty, program.value.handle, index, name);
  }
  void bindBuffer(uint target, Optional!(WebGLBuffer) buffer) {
    WebGLRenderingContextBase_bindBuffer(handle, target, !buffer.empty, buffer.value.handle);
  }
  void bindFramebuffer(uint target, Optional!(WebGLFramebuffer) framebuffer) {
    WebGLRenderingContextBase_bindFramebuffer(handle, target, !framebuffer.empty, framebuffer.value.handle);
  }
  void bindRenderbuffer(uint target, Optional!(WebGLRenderbuffer) renderbuffer) {
    WebGLRenderingContextBase_bindRenderbuffer(handle, target, !renderbuffer.empty, renderbuffer.value.handle);
  }
  void bindTexture(uint target, Optional!(WebGLTexture) texture) {
    WebGLRenderingContextBase_bindTexture(handle, target, !texture.empty, texture.value.handle);
  }
  void blendColor(float red, float green, float blue, float alpha) {
    WebGLRenderingContextBase_blendColor(handle, red, green, blue, alpha);
  }
  void blendEquation(uint mode) {
    WebGLRenderingContextBase_blendEquation(handle, mode);
  }
  void blendEquationSeparate(uint modeRGB, uint modeAlpha) {
    WebGLRenderingContextBase_blendEquationSeparate(handle, modeRGB, modeAlpha);
  }
  void blendFunc(uint sfactor, uint dfactor) {
    WebGLRenderingContextBase_blendFunc(handle, sfactor, dfactor);
  }
  void blendFuncSeparate(uint srcRGB, uint dstRGB, uint srcAlpha, uint dstAlpha) {
    WebGLRenderingContextBase_blendFuncSeparate(handle, srcRGB, dstRGB, srcAlpha, dstAlpha);
  }
  void bufferData(uint target, long size, uint usage) {
    WebGLRenderingContextBase_bufferData__uint_long_uint(handle, target, size, usage);
  }
  void bufferData(uint target, Optional!(BufferDataSource) data, uint usage) {
    WebGLRenderingContextBase_bufferData__uint_optional_BufferDataSource_uint(handle, target, !data.empty, data.value, usage);
  }
  void bufferSubData(uint target, long offset, Optional!(BufferDataSource) data) {
    WebGLRenderingContextBase_bufferSubData(handle, target, offset, !data.empty, data.value);
  }
  uint checkFramebufferStatus(uint target) {
    return WebGLRenderingContextBase_checkFramebufferStatus(handle, target);
  }
  void clear(uint mask) {
    WebGLRenderingContextBase_clear(handle, mask);
  }
  void clearColor(float red, float green, float blue, float alpha) {
    WebGLRenderingContextBase_clearColor(handle, red, green, blue, alpha);
  }
  void clearDepth(float depth) {
    WebGLRenderingContextBase_clearDepth(handle, depth);
  }
  void clearStencil(int s) {
    WebGLRenderingContextBase_clearStencil(handle, s);
  }
  void colorMask(bool red, bool green, bool blue, bool alpha) {
    WebGLRenderingContextBase_colorMask(handle, red, green, blue, alpha);
  }
  void compileShader(Optional!(WebGLShader) shader) {
    WebGLRenderingContextBase_compileShader(handle, !shader.empty, shader.value.handle);
  }
  void compressedTexImage2D(uint target, int level, uint internalformat, int width, int height, int border, ArrayBufferView data) {
    WebGLRenderingContextBase_compressedTexImage2D(handle, target, level, internalformat, width, height, border, data);
  }
  void compressedTexSubImage2D(uint target, int level, int xoffset, int yoffset, int width, int height, uint format, ArrayBufferView data) {
    WebGLRenderingContextBase_compressedTexSubImage2D(handle, target, level, xoffset, yoffset, width, height, format, data);
  }
  void copyTexImage2D(uint target, int level, uint internalformat, int x, int y, int width, int height, int border) {
    WebGLRenderingContextBase_copyTexImage2D(handle, target, level, internalformat, x, y, width, height, border);
  }
  void copyTexSubImage2D(uint target, int level, int xoffset, int yoffset, int x, int y, int width, int height) {
    WebGLRenderingContextBase_copyTexSubImage2D(handle, target, level, xoffset, yoffset, x, y, width, height);
  }
  Optional!(WebGLBuffer) createBuffer() {
    return WebGLRenderingContextBase_createBuffer(handle);
  }
  Optional!(WebGLFramebuffer) createFramebuffer() {
    return WebGLRenderingContextBase_createFramebuffer(handle);
  }
  Optional!(WebGLProgram) createProgram() {
    return WebGLRenderingContextBase_createProgram(handle);
  }
  Optional!(WebGLRenderbuffer) createRenderbuffer() {
    return WebGLRenderingContextBase_createRenderbuffer(handle);
  }
  Optional!(WebGLShader) createShader(uint type) {
    return WebGLRenderingContextBase_createShader(handle, type);
  }
  Optional!(WebGLTexture) createTexture() {
    return WebGLRenderingContextBase_createTexture(handle);
  }
  void cullFace(uint mode) {
    WebGLRenderingContextBase_cullFace(handle, mode);
  }
  void deleteBuffer(Optional!(WebGLBuffer) buffer) {
    WebGLRenderingContextBase_deleteBuffer(handle, !buffer.empty, buffer.value.handle);
  }
  void deleteFramebuffer(Optional!(WebGLFramebuffer) framebuffer) {
    WebGLRenderingContextBase_deleteFramebuffer(handle, !framebuffer.empty, framebuffer.value.handle);
  }
  void deleteProgram(Optional!(WebGLProgram) program) {
    WebGLRenderingContextBase_deleteProgram(handle, !program.empty, program.value.handle);
  }
  void deleteRenderbuffer(Optional!(WebGLRenderbuffer) renderbuffer) {
    WebGLRenderingContextBase_deleteRenderbuffer(handle, !renderbuffer.empty, renderbuffer.value.handle);
  }
  void deleteShader(Optional!(WebGLShader) shader) {
    WebGLRenderingContextBase_deleteShader(handle, !shader.empty, shader.value.handle);
  }
  void deleteTexture(Optional!(WebGLTexture) texture) {
    WebGLRenderingContextBase_deleteTexture(handle, !texture.empty, texture.value.handle);
  }
  void depthFunc(uint func) {
    WebGLRenderingContextBase_depthFunc(handle, func);
  }
  void depthMask(bool flag) {
    WebGLRenderingContextBase_depthMask(handle, flag);
  }
  void depthRange(float zNear, float zFar) {
    WebGLRenderingContextBase_depthRange(handle, zNear, zFar);
  }
  void detachShader(Optional!(WebGLProgram) program, Optional!(WebGLShader) shader) {
    WebGLRenderingContextBase_detachShader(handle, !program.empty, program.value.handle, !shader.empty, shader.value.handle);
  }
  void disable(uint cap) {
    WebGLRenderingContextBase_disable(handle, cap);
  }
  void disableVertexAttribArray(uint index) {
    WebGLRenderingContextBase_disableVertexAttribArray(handle, index);
  }
  void drawArrays(uint mode, int first, int count) {
    WebGLRenderingContextBase_drawArrays(handle, mode, first, count);
  }
  void drawElements(uint mode, int count, uint type, long offset) {
    WebGLRenderingContextBase_drawElements(handle, mode, count, type, offset);
  }
  void enable(uint cap) {
    WebGLRenderingContextBase_enable(handle, cap);
  }
  void enableVertexAttribArray(uint index) {
    WebGLRenderingContextBase_enableVertexAttribArray(handle, index);
  }
  void finish() {
    WebGLRenderingContextBase_finish(handle);
  }
  void flush() {
    WebGLRenderingContextBase_flush(handle);
  }
  void framebufferRenderbuffer(uint target, uint attachment, uint renderbuffertarget, Optional!(WebGLRenderbuffer) renderbuffer) {
    WebGLRenderingContextBase_framebufferRenderbuffer(handle, target, attachment, renderbuffertarget, !renderbuffer.empty, renderbuffer.value.handle);
  }
  void framebufferTexture2D(uint target, uint attachment, uint textarget, Optional!(WebGLTexture) texture, int level) {
    WebGLRenderingContextBase_framebufferTexture2D(handle, target, attachment, textarget, !texture.empty, texture.value.handle, level);
  }
  void frontFace(uint mode) {
    WebGLRenderingContextBase_frontFace(handle, mode);
  }
  void generateMipmap(uint target) {
    WebGLRenderingContextBase_generateMipmap(handle, target);
  }
  Optional!(WebGLActiveInfo) getActiveAttrib(Optional!(WebGLProgram) program, uint index) {
    return WebGLRenderingContextBase_getActiveAttrib(handle, !program.empty, program.value.handle, index);
  }
  Optional!(WebGLActiveInfo) getActiveUniform(Optional!(WebGLProgram) program, uint index) {
    return WebGLRenderingContextBase_getActiveUniform(handle, !program.empty, program.value.handle, index);
  }
  Optional!(Sequence!(WebGLShader)) getAttachedShaders(Optional!(WebGLProgram) program) {
    return WebGLRenderingContextBase_getAttachedShaders(handle, !program.empty, program.value.handle);
  }
  int getAttribLocation(Optional!(WebGLProgram) program, string name) {
    return WebGLRenderingContextBase_getAttribLocation(handle, !program.empty, program.value.handle, name);
  }
  Any getBufferParameter(uint target, uint pname) {
    return Any(WebGLRenderingContextBase_getBufferParameter(handle, target, pname));
  }
  Any getParameter(uint pname) {
    return Any(WebGLRenderingContextBase_getParameter(handle, pname));
  }
  uint getError() {
    return WebGLRenderingContextBase_getError(handle);
  }
  Any getFramebufferAttachmentParameter(uint target, uint attachment, uint pname) {
    return Any(WebGLRenderingContextBase_getFramebufferAttachmentParameter(handle, target, attachment, pname));
  }
  Any getProgramParameter(Optional!(WebGLProgram) program, uint pname) {
    return Any(WebGLRenderingContextBase_getProgramParameter(handle, !program.empty, program.value.handle, pname));
  }
  Optional!(string) getProgramInfoLog(Optional!(WebGLProgram) program) {
    return WebGLRenderingContextBase_getProgramInfoLog(handle, !program.empty, program.value.handle);
  }
  Any getRenderbufferParameter(uint target, uint pname) {
    return Any(WebGLRenderingContextBase_getRenderbufferParameter(handle, target, pname));
  }
  Any getShaderParameter(Optional!(WebGLShader) shader, uint pname) {
    return Any(WebGLRenderingContextBase_getShaderParameter(handle, !shader.empty, shader.value.handle, pname));
  }
  Optional!(WebGLShaderPrecisionFormat) getShaderPrecisionFormat(uint shadertype, uint precisiontype) {
    return WebGLRenderingContextBase_getShaderPrecisionFormat(handle, shadertype, precisiontype);
  }
  Optional!(string) getShaderInfoLog(Optional!(WebGLShader) shader) {
    return WebGLRenderingContextBase_getShaderInfoLog(handle, !shader.empty, shader.value.handle);
  }
  Optional!(string) getShaderSource(Optional!(WebGLShader) shader) {
    return WebGLRenderingContextBase_getShaderSource(handle, !shader.empty, shader.value.handle);
  }
  Any getTexParameter(uint target, uint pname) {
    return Any(WebGLRenderingContextBase_getTexParameter(handle, target, pname));
  }
  Any getUniform(Optional!(WebGLProgram) program, Optional!(WebGLUniformLocation) location) {
    return Any(WebGLRenderingContextBase_getUniform(handle, !program.empty, program.value.handle, !location.empty, location.value.handle));
  }
  Optional!(WebGLUniformLocation) getUniformLocation(Optional!(WebGLProgram) program, string name) {
    return WebGLRenderingContextBase_getUniformLocation(handle, !program.empty, program.value.handle, name);
  }
  Any getVertexAttrib(uint index, uint pname) {
    return Any(WebGLRenderingContextBase_getVertexAttrib(handle, index, pname));
  }
  long getVertexAttribOffset(uint index, uint pname) {
    return WebGLRenderingContextBase_getVertexAttribOffset(handle, index, pname);
  }
  void hint(uint target, uint mode) {
    WebGLRenderingContextBase_hint(handle, target, mode);
  }
  bool isBuffer(Optional!(WebGLBuffer) buffer) {
    return WebGLRenderingContextBase_isBuffer(handle, !buffer.empty, buffer.value.handle);
  }
  bool isEnabled(uint cap) {
    return WebGLRenderingContextBase_isEnabled(handle, cap);
  }
  bool isFramebuffer(Optional!(WebGLFramebuffer) framebuffer) {
    return WebGLRenderingContextBase_isFramebuffer(handle, !framebuffer.empty, framebuffer.value.handle);
  }
  bool isProgram(Optional!(WebGLProgram) program) {
    return WebGLRenderingContextBase_isProgram(handle, !program.empty, program.value.handle);
  }
  bool isRenderbuffer(Optional!(WebGLRenderbuffer) renderbuffer) {
    return WebGLRenderingContextBase_isRenderbuffer(handle, !renderbuffer.empty, renderbuffer.value.handle);
  }
  bool isShader(Optional!(WebGLShader) shader) {
    return WebGLRenderingContextBase_isShader(handle, !shader.empty, shader.value.handle);
  }
  bool isTexture(Optional!(WebGLTexture) texture) {
    return WebGLRenderingContextBase_isTexture(handle, !texture.empty, texture.value.handle);
  }
  void lineWidth(float width) {
    WebGLRenderingContextBase_lineWidth(handle, width);
  }
  void linkProgram(Optional!(WebGLProgram) program) {
    WebGLRenderingContextBase_linkProgram(handle, !program.empty, program.value.handle);
  }
  void pixelStorei(uint pname, int param) {
    WebGLRenderingContextBase_pixelStorei(handle, pname, param);
  }
  void polygonOffset(float factor, float units) {
    WebGLRenderingContextBase_polygonOffset(handle, factor, units);
  }
  void readPixels(int x, int y, int width, int height, uint format, uint type, Optional!(ArrayBufferView) pixels) {
    WebGLRenderingContextBase_readPixels(handle, x, y, width, height, format, type, !pixels.empty, pixels.value);
  }
  void renderbufferStorage(uint target, uint internalformat, int width, int height) {
    WebGLRenderingContextBase_renderbufferStorage(handle, target, internalformat, width, height);
  }
  void sampleCoverage(float value, bool invert) {
    WebGLRenderingContextBase_sampleCoverage(handle, value, invert);
  }
  void scissor(int x, int y, int width, int height) {
    WebGLRenderingContextBase_scissor(handle, x, y, width, height);
  }
  void shaderSource(Optional!(WebGLShader) shader, string source) {
    WebGLRenderingContextBase_shaderSource(handle, !shader.empty, shader.value.handle, source);
  }
  void stencilFunc(uint func, int ref_, uint mask) {
    WebGLRenderingContextBase_stencilFunc(handle, func, ref_, mask);
  }
  void stencilFuncSeparate(uint face, uint func, int ref_, uint mask) {
    WebGLRenderingContextBase_stencilFuncSeparate(handle, face, func, ref_, mask);
  }
  void stencilMask(uint mask) {
    WebGLRenderingContextBase_stencilMask(handle, mask);
  }
  void stencilMaskSeparate(uint face, uint mask) {
    WebGLRenderingContextBase_stencilMaskSeparate(handle, face, mask);
  }
  void stencilOp(uint fail, uint zfail, uint zpass) {
    WebGLRenderingContextBase_stencilOp(handle, fail, zfail, zpass);
  }
  void stencilOpSeparate(uint face, uint fail, uint zfail, uint zpass) {
    WebGLRenderingContextBase_stencilOpSeparate(handle, face, fail, zfail, zpass);
  }
  void texImage2D(uint target, int level, uint internalformat, int width, int height, int border, uint format, uint type, Optional!(ArrayBufferView) pixels) {
    WebGLRenderingContextBase_texImage2D__uint_int_uint_int_int_int_uint_uint_optional_ArrayBufferView(handle, target, level, internalformat, width, height, border, format, type, !pixels.empty, pixels.value);
  }
  void texImage2D(uint target, int level, uint internalformat, uint format, uint type, Optional!(TexImageSource) source) {
    WebGLRenderingContextBase_texImage2D__uint_int_uint_uint_uint_optional_TexImageSource(handle, target, level, internalformat, format, type, !source.empty, source.value);
  }
  void texParameterf(uint target, uint pname, float param) {
    WebGLRenderingContextBase_texParameterf(handle, target, pname, param);
  }
  void texParameteri(uint target, uint pname, int param) {
    WebGLRenderingContextBase_texParameteri(handle, target, pname, param);
  }
  void texSubImage2D(uint target, int level, int xoffset, int yoffset, int width, int height, uint format, uint type, Optional!(ArrayBufferView) pixels) {
    WebGLRenderingContextBase_texSubImage2D__uint_int_int_int_int_int_uint_uint_optional_ArrayBufferView(handle, target, level, xoffset, yoffset, width, height, format, type, !pixels.empty, pixels.value);
  }
  void texSubImage2D(uint target, int level, int xoffset, int yoffset, uint format, uint type, Optional!(TexImageSource) source) {
    WebGLRenderingContextBase_texSubImage2D__uint_int_int_int_uint_uint_optional_TexImageSource(handle, target, level, xoffset, yoffset, format, type, !source.empty, source.value);
  }
  void uniform1f(Optional!(WebGLUniformLocation) location, float x) {
    WebGLRenderingContextBase_uniform1f(handle, !location.empty, location.value.handle, x);
  }
  void uniform1fv(Optional!(WebGLUniformLocation) location, Float32Array v) {
    WebGLRenderingContextBase_uniform1fv__optional_JsHandle_JsHandle(handle, !location.empty, location.value.handle, v.handle);
  }
  void uniform1fv(Optional!(WebGLUniformLocation) location, Sequence!(float) v) {
    WebGLRenderingContextBase_uniform1fv__optional_JsHandle_sequence_float(handle, !location.empty, location.value.handle, v.handle);
  }
  void uniform1i(Optional!(WebGLUniformLocation) location, int x) {
    WebGLRenderingContextBase_uniform1i(handle, !location.empty, location.value.handle, x);
  }
  void uniform1iv(Optional!(WebGLUniformLocation) location, Int32Array v) {
    WebGLRenderingContextBase_uniform1iv__optional_JsHandle_JsHandle(handle, !location.empty, location.value.handle, v.handle);
  }
  void uniform1iv(Optional!(WebGLUniformLocation) location, Sequence!(int) v) {
    WebGLRenderingContextBase_uniform1iv__optional_JsHandle_sequence_int(handle, !location.empty, location.value.handle, v.handle);
  }
  void uniform2f(Optional!(WebGLUniformLocation) location, float x, float y) {
    WebGLRenderingContextBase_uniform2f(handle, !location.empty, location.value.handle, x, y);
  }
  void uniform2fv(Optional!(WebGLUniformLocation) location, Float32Array v) {
    WebGLRenderingContextBase_uniform2fv__optional_JsHandle_JsHandle(handle, !location.empty, location.value.handle, v.handle);
  }
  void uniform2fv(Optional!(WebGLUniformLocation) location, Sequence!(float) v) {
    WebGLRenderingContextBase_uniform2fv__optional_JsHandle_sequence_float(handle, !location.empty, location.value.handle, v.handle);
  }
  void uniform2i(Optional!(WebGLUniformLocation) location, int x, int y) {
    WebGLRenderingContextBase_uniform2i(handle, !location.empty, location.value.handle, x, y);
  }
  void uniform2iv(Optional!(WebGLUniformLocation) location, Int32Array v) {
    WebGLRenderingContextBase_uniform2iv__optional_JsHandle_JsHandle(handle, !location.empty, location.value.handle, v.handle);
  }
  void uniform2iv(Optional!(WebGLUniformLocation) location, Sequence!(int) v) {
    WebGLRenderingContextBase_uniform2iv__optional_JsHandle_sequence_int(handle, !location.empty, location.value.handle, v.handle);
  }
  void uniform3f(Optional!(WebGLUniformLocation) location, float x, float y, float z) {
    WebGLRenderingContextBase_uniform3f(handle, !location.empty, location.value.handle, x, y, z);
  }
  void uniform3fv(Optional!(WebGLUniformLocation) location, Float32Array v) {
    WebGLRenderingContextBase_uniform3fv__optional_JsHandle_JsHandle(handle, !location.empty, location.value.handle, v.handle);
  }
  void uniform3fv(Optional!(WebGLUniformLocation) location, Sequence!(float) v) {
    WebGLRenderingContextBase_uniform3fv__optional_JsHandle_sequence_float(handle, !location.empty, location.value.handle, v.handle);
  }
  void uniform3i(Optional!(WebGLUniformLocation) location, int x, int y, int z) {
    WebGLRenderingContextBase_uniform3i(handle, !location.empty, location.value.handle, x, y, z);
  }
  void uniform3iv(Optional!(WebGLUniformLocation) location, Int32Array v) {
    WebGLRenderingContextBase_uniform3iv__optional_JsHandle_JsHandle(handle, !location.empty, location.value.handle, v.handle);
  }
  void uniform3iv(Optional!(WebGLUniformLocation) location, Sequence!(int) v) {
    WebGLRenderingContextBase_uniform3iv__optional_JsHandle_sequence_int(handle, !location.empty, location.value.handle, v.handle);
  }
  void uniform4f(Optional!(WebGLUniformLocation) location, float x, float y, float z, float w) {
    WebGLRenderingContextBase_uniform4f(handle, !location.empty, location.value.handle, x, y, z, w);
  }
  void uniform4fv(Optional!(WebGLUniformLocation) location, Float32Array v) {
    WebGLRenderingContextBase_uniform4fv__optional_JsHandle_JsHandle(handle, !location.empty, location.value.handle, v.handle);
  }
  void uniform4fv(Optional!(WebGLUniformLocation) location, Sequence!(float) v) {
    WebGLRenderingContextBase_uniform4fv__optional_JsHandle_sequence_float(handle, !location.empty, location.value.handle, v.handle);
  }
  void uniform4i(Optional!(WebGLUniformLocation) location, int x, int y, int z, int w) {
    WebGLRenderingContextBase_uniform4i(handle, !location.empty, location.value.handle, x, y, z, w);
  }
  void uniform4iv(Optional!(WebGLUniformLocation) location, Int32Array v) {
    WebGLRenderingContextBase_uniform4iv__optional_JsHandle_JsHandle(handle, !location.empty, location.value.handle, v.handle);
  }
  void uniform4iv(Optional!(WebGLUniformLocation) location, Sequence!(int) v) {
    WebGLRenderingContextBase_uniform4iv__optional_JsHandle_sequence_int(handle, !location.empty, location.value.handle, v.handle);
  }
  void uniformMatrix2fv(Optional!(WebGLUniformLocation) location, bool transpose, Float32Array value) {
    WebGLRenderingContextBase_uniformMatrix2fv__optional_JsHandle_bool_JsHandle(handle, !location.empty, location.value.handle, transpose, value.handle);
  }
  void uniformMatrix2fv(Optional!(WebGLUniformLocation) location, bool transpose, Sequence!(float) value) {
    WebGLRenderingContextBase_uniformMatrix2fv__optional_JsHandle_bool_sequence_float(handle, !location.empty, location.value.handle, transpose, value.handle);
  }
  void uniformMatrix3fv(Optional!(WebGLUniformLocation) location, bool transpose, Float32Array value) {
    WebGLRenderingContextBase_uniformMatrix3fv__optional_JsHandle_bool_JsHandle(handle, !location.empty, location.value.handle, transpose, value.handle);
  }
  void uniformMatrix3fv(Optional!(WebGLUniformLocation) location, bool transpose, Sequence!(float) value) {
    WebGLRenderingContextBase_uniformMatrix3fv__optional_JsHandle_bool_sequence_float(handle, !location.empty, location.value.handle, transpose, value.handle);
  }
  void uniformMatrix4fv(Optional!(WebGLUniformLocation) location, bool transpose, Float32Array value) {
    WebGLRenderingContextBase_uniformMatrix4fv__optional_JsHandle_bool_JsHandle(handle, !location.empty, location.value.handle, transpose, value.handle);
  }
  void uniformMatrix4fv(Optional!(WebGLUniformLocation) location, bool transpose, Sequence!(float) value) {
    WebGLRenderingContextBase_uniformMatrix4fv__optional_JsHandle_bool_sequence_float(handle, !location.empty, location.value.handle, transpose, value.handle);
  }
  void useProgram(Optional!(WebGLProgram) program) {
    WebGLRenderingContextBase_useProgram(handle, !program.empty, program.value.handle);
  }
  void validateProgram(Optional!(WebGLProgram) program) {
    WebGLRenderingContextBase_validateProgram(handle, !program.empty, program.value.handle);
  }
  void vertexAttrib1f(uint indx, float x) {
    WebGLRenderingContextBase_vertexAttrib1f(handle, indx, x);
  }
  void vertexAttrib1fv(uint indx, Float32Array values) {
    WebGLRenderingContextBase_vertexAttrib1fv__uint_JsHandle(handle, indx, values.handle);
  }
  void vertexAttrib1fv(uint indx, Sequence!(float) values) {
    WebGLRenderingContextBase_vertexAttrib1fv__uint_sequence_float(handle, indx, values.handle);
  }
  void vertexAttrib2f(uint indx, float x, float y) {
    WebGLRenderingContextBase_vertexAttrib2f(handle, indx, x, y);
  }
  void vertexAttrib2fv(uint indx, Float32Array values) {
    WebGLRenderingContextBase_vertexAttrib2fv__uint_JsHandle(handle, indx, values.handle);
  }
  void vertexAttrib2fv(uint indx, Sequence!(float) values) {
    WebGLRenderingContextBase_vertexAttrib2fv__uint_sequence_float(handle, indx, values.handle);
  }
  void vertexAttrib3f(uint indx, float x, float y, float z) {
    WebGLRenderingContextBase_vertexAttrib3f(handle, indx, x, y, z);
  }
  void vertexAttrib3fv(uint indx, Float32Array values) {
    WebGLRenderingContextBase_vertexAttrib3fv__uint_JsHandle(handle, indx, values.handle);
  }
  void vertexAttrib3fv(uint indx, Sequence!(float) values) {
    WebGLRenderingContextBase_vertexAttrib3fv__uint_sequence_float(handle, indx, values.handle);
  }
  void vertexAttrib4f(uint indx, float x, float y, float z, float w) {
    WebGLRenderingContextBase_vertexAttrib4f(handle, indx, x, y, z, w);
  }
  void vertexAttrib4fv(uint indx, Float32Array values) {
    WebGLRenderingContextBase_vertexAttrib4fv__uint_JsHandle(handle, indx, values.handle);
  }
  void vertexAttrib4fv(uint indx, Sequence!(float) values) {
    WebGLRenderingContextBase_vertexAttrib4fv__uint_sequence_float(handle, indx, values.handle);
  }
  void vertexAttribPointer(uint indx, int size, uint type, bool normalized, int stride, long offset) {
    WebGLRenderingContextBase_vertexAttribPointer(handle, indx, size, type, normalized, stride, offset);
  }
  void viewport(int x, int y, int width, int height) {
    WebGLRenderingContextBase_viewport(handle, x, y, width, height);
  }
}
struct WebGLShader {
  WebGLObject _parent;
  alias _parent this;
}
struct WebGLShaderPrecisionFormat {
  JsHandle handle;
  alias handle this;
  int rangeMin() {
    return WebGLShaderPrecisionFormat_rangeMin_Get(handle);
  }
  int rangeMax() {
    return WebGLShaderPrecisionFormat_rangeMax_Get(handle);
  }
  int precision() {
    return WebGLShaderPrecisionFormat_precision_Get(handle);
  }
}
struct WebGLTexture {
  WebGLObject _parent;
  alias _parent this;
}
struct WebGLUniformLocation {
  JsHandle handle;
  alias handle this;
}


extern (C) int WebGLActiveInfo_size_Get(JsHandle);
extern (C) uint WebGLActiveInfo_type_Get(JsHandle);
extern (C) string WebGLActiveInfo_name_Get(JsHandle);
extern (C) void WebGLContextAttributes_alpha_Set(JsHandle, bool);
extern (C) bool WebGLContextAttributes_alpha_Get(JsHandle);
extern (C) void WebGLContextAttributes_depth_Set(JsHandle, bool);
extern (C) bool WebGLContextAttributes_depth_Get(JsHandle);
extern (C) void WebGLContextAttributes_stencil_Set(JsHandle, bool);
extern (C) bool WebGLContextAttributes_stencil_Get(JsHandle);
extern (C) void WebGLContextAttributes_antialias_Set(JsHandle, bool);
extern (C) bool WebGLContextAttributes_antialias_Get(JsHandle);
extern (C) void WebGLContextAttributes_premultipliedAlpha_Set(JsHandle, bool);
extern (C) bool WebGLContextAttributes_premultipliedAlpha_Get(JsHandle);
extern (C) void WebGLContextAttributes_preserveDrawingBuffer_Set(JsHandle, bool);
extern (C) bool WebGLContextAttributes_preserveDrawingBuffer_Get(JsHandle);
extern (C) void WebGLContextAttributes_preferLowPowerToHighPerformance_Set(JsHandle, bool);
extern (C) bool WebGLContextAttributes_preferLowPowerToHighPerformance_Get(JsHandle);
extern (C) void WebGLContextAttributes_failIfMajorPerformanceCaveat_Set(JsHandle, bool);
extern (C) bool WebGLContextAttributes_failIfMajorPerformanceCaveat_Get(JsHandle);
extern (C) string WebGLContextEvent_statusMessage_Get(JsHandle);
extern (C) void WebGLContextEventInit_statusMessage_Set(JsHandle, string);
extern (C) string WebGLContextEventInit_statusMessage_Get(JsHandle);
extern (C) JsHandle WebGLRenderingContextBase_canvas_Get(JsHandle);
extern (C) int WebGLRenderingContextBase_drawingBufferWidth_Get(JsHandle);
extern (C) int WebGLRenderingContextBase_drawingBufferHeight_Get(JsHandle);
extern (C) Optional!(WebGLContextAttributes) WebGLRenderingContextBase_getContextAttributes(JsHandle);
extern (C) bool WebGLRenderingContextBase_isContextLost(JsHandle);
extern (C) Optional!(Sequence!(string)) WebGLRenderingContextBase_getSupportedExtensions(JsHandle);
extern (C) Optional!(Object) WebGLRenderingContextBase_getExtension(JsHandle, string);
extern (C) void WebGLRenderingContextBase_activeTexture(JsHandle, uint);
extern (C) void WebGLRenderingContextBase_attachShader(JsHandle, bool, JsHandle, bool, JsHandle);
extern (C) void WebGLRenderingContextBase_bindAttribLocation(JsHandle, bool, JsHandle, uint, string);
extern (C) void WebGLRenderingContextBase_bindBuffer(JsHandle, uint, bool, JsHandle);
extern (C) void WebGLRenderingContextBase_bindFramebuffer(JsHandle, uint, bool, JsHandle);
extern (C) void WebGLRenderingContextBase_bindRenderbuffer(JsHandle, uint, bool, JsHandle);
extern (C) void WebGLRenderingContextBase_bindTexture(JsHandle, uint, bool, JsHandle);
extern (C) void WebGLRenderingContextBase_blendColor(JsHandle, float, float, float, float);
extern (C) void WebGLRenderingContextBase_blendEquation(JsHandle, uint);
extern (C) void WebGLRenderingContextBase_blendEquationSeparate(JsHandle, uint, uint);
extern (C) void WebGLRenderingContextBase_blendFunc(JsHandle, uint, uint);
extern (C) void WebGLRenderingContextBase_blendFuncSeparate(JsHandle, uint, uint, uint, uint);
extern (C) void WebGLRenderingContextBase_bufferData__uint_long_uint(JsHandle, uint, long, uint);
extern (C) void WebGLRenderingContextBase_bufferData__uint_optional_BufferDataSource_uint(JsHandle, uint, bool, BufferDataSource, uint);
extern (C) void WebGLRenderingContextBase_bufferSubData(JsHandle, uint, long, bool, BufferDataSource);
extern (C) uint WebGLRenderingContextBase_checkFramebufferStatus(JsHandle, uint);
extern (C) void WebGLRenderingContextBase_clear(JsHandle, uint);
extern (C) void WebGLRenderingContextBase_clearColor(JsHandle, float, float, float, float);
extern (C) void WebGLRenderingContextBase_clearDepth(JsHandle, float);
extern (C) void WebGLRenderingContextBase_clearStencil(JsHandle, int);
extern (C) void WebGLRenderingContextBase_colorMask(JsHandle, bool, bool, bool, bool);
extern (C) void WebGLRenderingContextBase_compileShader(JsHandle, bool, JsHandle);
extern (C) void WebGLRenderingContextBase_compressedTexImage2D(JsHandle, uint, int, uint, int, int, int, ArrayBufferView);
extern (C) void WebGLRenderingContextBase_compressedTexSubImage2D(JsHandle, uint, int, int, int, int, int, uint, ArrayBufferView);
extern (C) void WebGLRenderingContextBase_copyTexImage2D(JsHandle, uint, int, uint, int, int, int, int, int);
extern (C) void WebGLRenderingContextBase_copyTexSubImage2D(JsHandle, uint, int, int, int, int, int, int, int);
extern (C) Optional!(WebGLBuffer) WebGLRenderingContextBase_createBuffer(JsHandle);
extern (C) Optional!(WebGLFramebuffer) WebGLRenderingContextBase_createFramebuffer(JsHandle);
extern (C) Optional!(WebGLProgram) WebGLRenderingContextBase_createProgram(JsHandle);
extern (C) Optional!(WebGLRenderbuffer) WebGLRenderingContextBase_createRenderbuffer(JsHandle);
extern (C) Optional!(WebGLShader) WebGLRenderingContextBase_createShader(JsHandle, uint);
extern (C) Optional!(WebGLTexture) WebGLRenderingContextBase_createTexture(JsHandle);
extern (C) void WebGLRenderingContextBase_cullFace(JsHandle, uint);
extern (C) void WebGLRenderingContextBase_deleteBuffer(JsHandle, bool, JsHandle);
extern (C) void WebGLRenderingContextBase_deleteFramebuffer(JsHandle, bool, JsHandle);
extern (C) void WebGLRenderingContextBase_deleteProgram(JsHandle, bool, JsHandle);
extern (C) void WebGLRenderingContextBase_deleteRenderbuffer(JsHandle, bool, JsHandle);
extern (C) void WebGLRenderingContextBase_deleteShader(JsHandle, bool, JsHandle);
extern (C) void WebGLRenderingContextBase_deleteTexture(JsHandle, bool, JsHandle);
extern (C) void WebGLRenderingContextBase_depthFunc(JsHandle, uint);
extern (C) void WebGLRenderingContextBase_depthMask(JsHandle, bool);
extern (C) void WebGLRenderingContextBase_depthRange(JsHandle, float, float);
extern (C) void WebGLRenderingContextBase_detachShader(JsHandle, bool, JsHandle, bool, JsHandle);
extern (C) void WebGLRenderingContextBase_disable(JsHandle, uint);
extern (C) void WebGLRenderingContextBase_disableVertexAttribArray(JsHandle, uint);
extern (C) void WebGLRenderingContextBase_drawArrays(JsHandle, uint, int, int);
extern (C) void WebGLRenderingContextBase_drawElements(JsHandle, uint, int, uint, long);
extern (C) void WebGLRenderingContextBase_enable(JsHandle, uint);
extern (C) void WebGLRenderingContextBase_enableVertexAttribArray(JsHandle, uint);
extern (C) void WebGLRenderingContextBase_finish(JsHandle);
extern (C) void WebGLRenderingContextBase_flush(JsHandle);
extern (C) void WebGLRenderingContextBase_framebufferRenderbuffer(JsHandle, uint, uint, uint, bool, JsHandle);
extern (C) void WebGLRenderingContextBase_framebufferTexture2D(JsHandle, uint, uint, uint, bool, JsHandle, int);
extern (C) void WebGLRenderingContextBase_frontFace(JsHandle, uint);
extern (C) void WebGLRenderingContextBase_generateMipmap(JsHandle, uint);
extern (C) Optional!(WebGLActiveInfo) WebGLRenderingContextBase_getActiveAttrib(JsHandle, bool, JsHandle, uint);
extern (C) Optional!(WebGLActiveInfo) WebGLRenderingContextBase_getActiveUniform(JsHandle, bool, JsHandle, uint);
extern (C) Optional!(Sequence!(WebGLShader)) WebGLRenderingContextBase_getAttachedShaders(JsHandle, bool, JsHandle);
extern (C) int WebGLRenderingContextBase_getAttribLocation(JsHandle, bool, JsHandle, string);
extern (C) JsHandle WebGLRenderingContextBase_getBufferParameter(JsHandle, uint, uint);
extern (C) JsHandle WebGLRenderingContextBase_getParameter(JsHandle, uint);
extern (C) uint WebGLRenderingContextBase_getError(JsHandle);
extern (C) JsHandle WebGLRenderingContextBase_getFramebufferAttachmentParameter(JsHandle, uint, uint, uint);
extern (C) JsHandle WebGLRenderingContextBase_getProgramParameter(JsHandle, bool, JsHandle, uint);
extern (C) Optional!(string) WebGLRenderingContextBase_getProgramInfoLog(JsHandle, bool, JsHandle);
extern (C) JsHandle WebGLRenderingContextBase_getRenderbufferParameter(JsHandle, uint, uint);
extern (C) JsHandle WebGLRenderingContextBase_getShaderParameter(JsHandle, bool, JsHandle, uint);
extern (C) Optional!(WebGLShaderPrecisionFormat) WebGLRenderingContextBase_getShaderPrecisionFormat(JsHandle, uint, uint);
extern (C) Optional!(string) WebGLRenderingContextBase_getShaderInfoLog(JsHandle, bool, JsHandle);
extern (C) Optional!(string) WebGLRenderingContextBase_getShaderSource(JsHandle, bool, JsHandle);
extern (C) JsHandle WebGLRenderingContextBase_getTexParameter(JsHandle, uint, uint);
extern (C) JsHandle WebGLRenderingContextBase_getUniform(JsHandle, bool, JsHandle, bool, JsHandle);
extern (C) Optional!(WebGLUniformLocation) WebGLRenderingContextBase_getUniformLocation(JsHandle, bool, JsHandle, string);
extern (C) JsHandle WebGLRenderingContextBase_getVertexAttrib(JsHandle, uint, uint);
extern (C) long WebGLRenderingContextBase_getVertexAttribOffset(JsHandle, uint, uint);
extern (C) void WebGLRenderingContextBase_hint(JsHandle, uint, uint);
extern (C) bool WebGLRenderingContextBase_isBuffer(JsHandle, bool, JsHandle);
extern (C) bool WebGLRenderingContextBase_isEnabled(JsHandle, uint);
extern (C) bool WebGLRenderingContextBase_isFramebuffer(JsHandle, bool, JsHandle);
extern (C) bool WebGLRenderingContextBase_isProgram(JsHandle, bool, JsHandle);
extern (C) bool WebGLRenderingContextBase_isRenderbuffer(JsHandle, bool, JsHandle);
extern (C) bool WebGLRenderingContextBase_isShader(JsHandle, bool, JsHandle);
extern (C) bool WebGLRenderingContextBase_isTexture(JsHandle, bool, JsHandle);
extern (C) void WebGLRenderingContextBase_lineWidth(JsHandle, float);
extern (C) void WebGLRenderingContextBase_linkProgram(JsHandle, bool, JsHandle);
extern (C) void WebGLRenderingContextBase_pixelStorei(JsHandle, uint, int);
extern (C) void WebGLRenderingContextBase_polygonOffset(JsHandle, float, float);
extern (C) void WebGLRenderingContextBase_readPixels(JsHandle, int, int, int, int, uint, uint, bool, ArrayBufferView);
extern (C) void WebGLRenderingContextBase_renderbufferStorage(JsHandle, uint, uint, int, int);
extern (C) void WebGLRenderingContextBase_sampleCoverage(JsHandle, float, bool);
extern (C) void WebGLRenderingContextBase_scissor(JsHandle, int, int, int, int);
extern (C) void WebGLRenderingContextBase_shaderSource(JsHandle, bool, JsHandle, string);
extern (C) void WebGLRenderingContextBase_stencilFunc(JsHandle, uint, int, uint);
extern (C) void WebGLRenderingContextBase_stencilFuncSeparate(JsHandle, uint, uint, int, uint);
extern (C) void WebGLRenderingContextBase_stencilMask(JsHandle, uint);
extern (C) void WebGLRenderingContextBase_stencilMaskSeparate(JsHandle, uint, uint);
extern (C) void WebGLRenderingContextBase_stencilOp(JsHandle, uint, uint, uint);
extern (C) void WebGLRenderingContextBase_stencilOpSeparate(JsHandle, uint, uint, uint, uint);
extern (C) void WebGLRenderingContextBase_texImage2D__uint_int_uint_int_int_int_uint_uint_optional_ArrayBufferView(JsHandle, uint, int, uint, int, int, int, uint, uint, bool, ArrayBufferView);
extern (C) void WebGLRenderingContextBase_texImage2D__uint_int_uint_uint_uint_optional_TexImageSource(JsHandle, uint, int, uint, uint, uint, bool, TexImageSource);
extern (C) void WebGLRenderingContextBase_texParameterf(JsHandle, uint, uint, float);
extern (C) void WebGLRenderingContextBase_texParameteri(JsHandle, uint, uint, int);
extern (C) void WebGLRenderingContextBase_texSubImage2D__uint_int_int_int_int_int_uint_uint_optional_ArrayBufferView(JsHandle, uint, int, int, int, int, int, uint, uint, bool, ArrayBufferView);
extern (C) void WebGLRenderingContextBase_texSubImage2D__uint_int_int_int_uint_uint_optional_TexImageSource(JsHandle, uint, int, int, int, uint, uint, bool, TexImageSource);
extern (C) void WebGLRenderingContextBase_uniform1f(JsHandle, bool, JsHandle, float);
extern (C) void WebGLRenderingContextBase_uniform1fv__optional_JsHandle_JsHandle(JsHandle, bool, JsHandle, JsHandle);
extern (C) void WebGLRenderingContextBase_uniform1fv__optional_JsHandle_sequence_float(JsHandle, bool, JsHandle, JsHandle);
extern (C) void WebGLRenderingContextBase_uniform1i(JsHandle, bool, JsHandle, int);
extern (C) void WebGLRenderingContextBase_uniform1iv__optional_JsHandle_JsHandle(JsHandle, bool, JsHandle, JsHandle);
extern (C) void WebGLRenderingContextBase_uniform1iv__optional_JsHandle_sequence_int(JsHandle, bool, JsHandle, JsHandle);
extern (C) void WebGLRenderingContextBase_uniform2f(JsHandle, bool, JsHandle, float, float);
extern (C) void WebGLRenderingContextBase_uniform2fv__optional_JsHandle_JsHandle(JsHandle, bool, JsHandle, JsHandle);
extern (C) void WebGLRenderingContextBase_uniform2fv__optional_JsHandle_sequence_float(JsHandle, bool, JsHandle, JsHandle);
extern (C) void WebGLRenderingContextBase_uniform2i(JsHandle, bool, JsHandle, int, int);
extern (C) void WebGLRenderingContextBase_uniform2iv__optional_JsHandle_JsHandle(JsHandle, bool, JsHandle, JsHandle);
extern (C) void WebGLRenderingContextBase_uniform2iv__optional_JsHandle_sequence_int(JsHandle, bool, JsHandle, JsHandle);
extern (C) void WebGLRenderingContextBase_uniform3f(JsHandle, bool, JsHandle, float, float, float);
extern (C) void WebGLRenderingContextBase_uniform3fv__optional_JsHandle_JsHandle(JsHandle, bool, JsHandle, JsHandle);
extern (C) void WebGLRenderingContextBase_uniform3fv__optional_JsHandle_sequence_float(JsHandle, bool, JsHandle, JsHandle);
extern (C) void WebGLRenderingContextBase_uniform3i(JsHandle, bool, JsHandle, int, int, int);
extern (C) void WebGLRenderingContextBase_uniform3iv__optional_JsHandle_JsHandle(JsHandle, bool, JsHandle, JsHandle);
extern (C) void WebGLRenderingContextBase_uniform3iv__optional_JsHandle_sequence_int(JsHandle, bool, JsHandle, JsHandle);
extern (C) void WebGLRenderingContextBase_uniform4f(JsHandle, bool, JsHandle, float, float, float, float);
extern (C) void WebGLRenderingContextBase_uniform4fv__optional_JsHandle_JsHandle(JsHandle, bool, JsHandle, JsHandle);
extern (C) void WebGLRenderingContextBase_uniform4fv__optional_JsHandle_sequence_float(JsHandle, bool, JsHandle, JsHandle);
extern (C) void WebGLRenderingContextBase_uniform4i(JsHandle, bool, JsHandle, int, int, int, int);
extern (C) void WebGLRenderingContextBase_uniform4iv__optional_JsHandle_JsHandle(JsHandle, bool, JsHandle, JsHandle);
extern (C) void WebGLRenderingContextBase_uniform4iv__optional_JsHandle_sequence_int(JsHandle, bool, JsHandle, JsHandle);
extern (C) void WebGLRenderingContextBase_uniformMatrix2fv__optional_JsHandle_bool_JsHandle(JsHandle, bool, JsHandle, bool, JsHandle);
extern (C) void WebGLRenderingContextBase_uniformMatrix2fv__optional_JsHandle_bool_sequence_float(JsHandle, bool, JsHandle, bool, JsHandle);
extern (C) void WebGLRenderingContextBase_uniformMatrix3fv__optional_JsHandle_bool_JsHandle(JsHandle, bool, JsHandle, bool, JsHandle);
extern (C) void WebGLRenderingContextBase_uniformMatrix3fv__optional_JsHandle_bool_sequence_float(JsHandle, bool, JsHandle, bool, JsHandle);
extern (C) void WebGLRenderingContextBase_uniformMatrix4fv__optional_JsHandle_bool_JsHandle(JsHandle, bool, JsHandle, bool, JsHandle);
extern (C) void WebGLRenderingContextBase_uniformMatrix4fv__optional_JsHandle_bool_sequence_float(JsHandle, bool, JsHandle, bool, JsHandle);
extern (C) void WebGLRenderingContextBase_useProgram(JsHandle, bool, JsHandle);
extern (C) void WebGLRenderingContextBase_validateProgram(JsHandle, bool, JsHandle);
extern (C) void WebGLRenderingContextBase_vertexAttrib1f(JsHandle, uint, float);
extern (C) void WebGLRenderingContextBase_vertexAttrib1fv__uint_JsHandle(JsHandle, uint, JsHandle);
extern (C) void WebGLRenderingContextBase_vertexAttrib1fv__uint_sequence_float(JsHandle, uint, JsHandle);
extern (C) void WebGLRenderingContextBase_vertexAttrib2f(JsHandle, uint, float, float);
extern (C) void WebGLRenderingContextBase_vertexAttrib2fv__uint_JsHandle(JsHandle, uint, JsHandle);
extern (C) void WebGLRenderingContextBase_vertexAttrib2fv__uint_sequence_float(JsHandle, uint, JsHandle);
extern (C) void WebGLRenderingContextBase_vertexAttrib3f(JsHandle, uint, float, float, float);
extern (C) void WebGLRenderingContextBase_vertexAttrib3fv__uint_JsHandle(JsHandle, uint, JsHandle);
extern (C) void WebGLRenderingContextBase_vertexAttrib3fv__uint_sequence_float(JsHandle, uint, JsHandle);
extern (C) void WebGLRenderingContextBase_vertexAttrib4f(JsHandle, uint, float, float, float, float);
extern (C) void WebGLRenderingContextBase_vertexAttrib4fv__uint_JsHandle(JsHandle, uint, JsHandle);
extern (C) void WebGLRenderingContextBase_vertexAttrib4fv__uint_sequence_float(JsHandle, uint, JsHandle);
extern (C) void WebGLRenderingContextBase_vertexAttribPointer(JsHandle, uint, int, uint, bool, int, long);
extern (C) void WebGLRenderingContextBase_viewport(JsHandle, int, int, int, int);
extern (C) int WebGLShaderPrecisionFormat_rangeMin_Get(JsHandle);
extern (C) int WebGLShaderPrecisionFormat_rangeMax_Get(JsHandle);
extern (C) int WebGLShaderPrecisionFormat_precision_Get(JsHandle);