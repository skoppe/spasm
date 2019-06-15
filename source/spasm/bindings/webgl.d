module spasm.bindings.webgl;

import spasm.types;
import spasm.bindings.common;
import spasm.bindings.dom;
import spasm.bindings.html;

@safe:
nothrow:

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
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto size() {
    return WebGLActiveInfo_size_Get(this.handle);
  }
  auto type() {
    return WebGLActiveInfo_type_Get(this.handle);
  }
  auto name() {
    return WebGLActiveInfo_name_Get(this.handle);
  }
}
struct WebGLBuffer {
  nothrow:
  spasm.bindings.webgl.WebGLObject _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .WebGLObject(h);
  }
}
struct WebGLContextAttributes {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return WebGLContextAttributes(spasm_add__object());
  }
  void alpha(bool alpha) {
    WebGLContextAttributes_alpha_Set(this.handle, alpha);
  }
  auto alpha() {
    return WebGLContextAttributes_alpha_Get(this.handle);
  }
  void depth(bool depth) {
    WebGLContextAttributes_depth_Set(this.handle, depth);
  }
  auto depth() {
    return WebGLContextAttributes_depth_Get(this.handle);
  }
  void stencil(bool stencil) {
    WebGLContextAttributes_stencil_Set(this.handle, stencil);
  }
  auto stencil() {
    return WebGLContextAttributes_stencil_Get(this.handle);
  }
  void antialias(bool antialias) {
    WebGLContextAttributes_antialias_Set(this.handle, antialias);
  }
  auto antialias() {
    return WebGLContextAttributes_antialias_Get(this.handle);
  }
  void premultipliedAlpha(bool premultipliedAlpha) {
    WebGLContextAttributes_premultipliedAlpha_Set(this.handle, premultipliedAlpha);
  }
  auto premultipliedAlpha() {
    return WebGLContextAttributes_premultipliedAlpha_Get(this.handle);
  }
  void preserveDrawingBuffer(bool preserveDrawingBuffer) {
    WebGLContextAttributes_preserveDrawingBuffer_Set(this.handle, preserveDrawingBuffer);
  }
  auto preserveDrawingBuffer() {
    return WebGLContextAttributes_preserveDrawingBuffer_Get(this.handle);
  }
  void preferLowPowerToHighPerformance(bool preferLowPowerToHighPerformance) {
    WebGLContextAttributes_preferLowPowerToHighPerformance_Set(this.handle, preferLowPowerToHighPerformance);
  }
  auto preferLowPowerToHighPerformance() {
    return WebGLContextAttributes_preferLowPowerToHighPerformance_Get(this.handle);
  }
  void failIfMajorPerformanceCaveat(bool failIfMajorPerformanceCaveat) {
    WebGLContextAttributes_failIfMajorPerformanceCaveat_Set(this.handle, failIfMajorPerformanceCaveat);
  }
  auto failIfMajorPerformanceCaveat() {
    return WebGLContextAttributes_failIfMajorPerformanceCaveat_Get(this.handle);
  }
}
struct WebGLContextEvent {
  nothrow:
  spasm.bindings.dom.Event _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Event(h);
  }
  auto statusMessage() {
    return WebGLContextEvent_statusMessage_Get(this._parent);
  }
}
struct WebGLContextEventInit {
  nothrow:
  spasm.bindings.dom.EventInit _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventInit(h);
  }
  static auto create() {
    return WebGLContextEventInit(spasm_add__object());
  }
  void statusMessage(string statusMessage) {
    WebGLContextEventInit_statusMessage_Set(this._parent, statusMessage);
  }
  auto statusMessage() {
    return WebGLContextEventInit_statusMessage_Get(this._parent);
  }
}
struct WebGLFramebuffer {
  nothrow:
  spasm.bindings.webgl.WebGLObject _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .WebGLObject(h);
  }
}
struct WebGLObject {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
}
struct WebGLProgram {
  nothrow:
  spasm.bindings.webgl.WebGLObject _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .WebGLObject(h);
  }
}
struct WebGLRenderbuffer {
  nothrow:
  spasm.bindings.webgl.WebGLObject _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .WebGLObject(h);
  }
}
struct WebGLRenderingContext {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
}
struct WebGLRenderingContextBase {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
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
  auto canvas() {
    return HTMLCanvasElement(WebGLRenderingContextBase_canvas_Get(this.handle));
  }
  auto drawingBufferWidth() {
    return WebGLRenderingContextBase_drawingBufferWidth_Get(this.handle);
  }
  auto drawingBufferHeight() {
    return WebGLRenderingContextBase_drawingBufferHeight_Get(this.handle);
  }
  auto getContextAttributes() {
    return WebGLRenderingContextBase_getContextAttributes(this.handle);
  }
  auto isContextLost() {
    return WebGLRenderingContextBase_isContextLost(this.handle);
  }
  auto getSupportedExtensions() {
    return WebGLRenderingContextBase_getSupportedExtensions(this.handle);
  }
  auto getExtension(string name) {
    return WebGLRenderingContextBase_getExtension(this.handle, name);
  }
  void activeTexture(uint texture) {
    WebGLRenderingContextBase_activeTexture(this.handle, texture);
  }
  void attachShader(scope ref Optional!(WebGLProgram) program, scope ref Optional!(WebGLShader) shader) {
    WebGLRenderingContextBase_attachShader(this.handle, !program.empty, program.front._parent, !shader.empty, shader.front._parent);
  }
  void bindAttribLocation(scope ref Optional!(WebGLProgram) program, uint index, string name) {
    WebGLRenderingContextBase_bindAttribLocation(this.handle, !program.empty, program.front._parent, index, name);
  }
  void bindBuffer(uint target, scope ref Optional!(WebGLBuffer) buffer) {
    WebGLRenderingContextBase_bindBuffer(this.handle, target, !buffer.empty, buffer.front._parent);
  }
  void bindFramebuffer(uint target, scope ref Optional!(WebGLFramebuffer) framebuffer) {
    WebGLRenderingContextBase_bindFramebuffer(this.handle, target, !framebuffer.empty, framebuffer.front._parent);
  }
  void bindRenderbuffer(uint target, scope ref Optional!(WebGLRenderbuffer) renderbuffer) {
    WebGLRenderingContextBase_bindRenderbuffer(this.handle, target, !renderbuffer.empty, renderbuffer.front._parent);
  }
  void bindTexture(uint target, scope ref Optional!(WebGLTexture) texture) {
    WebGLRenderingContextBase_bindTexture(this.handle, target, !texture.empty, texture.front._parent);
  }
  void blendColor(float red, float green, float blue, float alpha) {
    WebGLRenderingContextBase_blendColor(this.handle, red, green, blue, alpha);
  }
  void blendEquation(uint mode) {
    WebGLRenderingContextBase_blendEquation(this.handle, mode);
  }
  void blendEquationSeparate(uint modeRGB, uint modeAlpha) {
    WebGLRenderingContextBase_blendEquationSeparate(this.handle, modeRGB, modeAlpha);
  }
  void blendFunc(uint sfactor, uint dfactor) {
    WebGLRenderingContextBase_blendFunc(this.handle, sfactor, dfactor);
  }
  void blendFuncSeparate(uint srcRGB, uint dstRGB, uint srcAlpha, uint dstAlpha) {
    WebGLRenderingContextBase_blendFuncSeparate(this.handle, srcRGB, dstRGB, srcAlpha, dstAlpha);
  }
  void bufferData(uint target, long size, uint usage) {
    WebGLRenderingContextBase_bufferData__uint_long_uint(this.handle, target, size, usage);
  }
  void bufferData(uint target, scope ref Optional!(BufferDataSource) data, uint usage) {
    WebGLRenderingContextBase_bufferData__uint_optional_BufferDataSource_uint(this.handle, target, !data.empty, data.front, usage);
  }
  void bufferSubData(uint target, long offset, scope ref Optional!(BufferDataSource) data) {
    WebGLRenderingContextBase_bufferSubData(this.handle, target, offset, !data.empty, data.front);
  }
  auto checkFramebufferStatus(uint target) {
    return WebGLRenderingContextBase_checkFramebufferStatus(this.handle, target);
  }
  void clear(uint mask) {
    WebGLRenderingContextBase_clear(this.handle, mask);
  }
  void clearColor(float red, float green, float blue, float alpha) {
    WebGLRenderingContextBase_clearColor(this.handle, red, green, blue, alpha);
  }
  void clearDepth(float depth) {
    WebGLRenderingContextBase_clearDepth(this.handle, depth);
  }
  void clearStencil(int s) {
    WebGLRenderingContextBase_clearStencil(this.handle, s);
  }
  void colorMask(bool red, bool green, bool blue, bool alpha) {
    WebGLRenderingContextBase_colorMask(this.handle, red, green, blue, alpha);
  }
  void compileShader(scope ref Optional!(WebGLShader) shader) {
    WebGLRenderingContextBase_compileShader(this.handle, !shader.empty, shader.front._parent);
  }
  void compressedTexImage2D(uint target, int level, uint internalformat, int width, int height, int border, scope ref ArrayBufferView data) {
    WebGLRenderingContextBase_compressedTexImage2D(this.handle, target, level, internalformat, width, height, border, data);
  }
  void compressedTexSubImage2D(uint target, int level, int xoffset, int yoffset, int width, int height, uint format, scope ref ArrayBufferView data) {
    WebGLRenderingContextBase_compressedTexSubImage2D(this.handle, target, level, xoffset, yoffset, width, height, format, data);
  }
  void copyTexImage2D(uint target, int level, uint internalformat, int x, int y, int width, int height, int border) {
    WebGLRenderingContextBase_copyTexImage2D(this.handle, target, level, internalformat, x, y, width, height, border);
  }
  void copyTexSubImage2D(uint target, int level, int xoffset, int yoffset, int x, int y, int width, int height) {
    WebGLRenderingContextBase_copyTexSubImage2D(this.handle, target, level, xoffset, yoffset, x, y, width, height);
  }
  auto createBuffer() {
    return WebGLRenderingContextBase_createBuffer(this.handle);
  }
  auto createFramebuffer() {
    return WebGLRenderingContextBase_createFramebuffer(this.handle);
  }
  auto createProgram() {
    return WebGLRenderingContextBase_createProgram(this.handle);
  }
  auto createRenderbuffer() {
    return WebGLRenderingContextBase_createRenderbuffer(this.handle);
  }
  auto createShader(uint type) {
    return WebGLRenderingContextBase_createShader(this.handle, type);
  }
  auto createTexture() {
    return WebGLRenderingContextBase_createTexture(this.handle);
  }
  void cullFace(uint mode) {
    WebGLRenderingContextBase_cullFace(this.handle, mode);
  }
  void deleteBuffer(scope ref Optional!(WebGLBuffer) buffer) {
    WebGLRenderingContextBase_deleteBuffer(this.handle, !buffer.empty, buffer.front._parent);
  }
  void deleteFramebuffer(scope ref Optional!(WebGLFramebuffer) framebuffer) {
    WebGLRenderingContextBase_deleteFramebuffer(this.handle, !framebuffer.empty, framebuffer.front._parent);
  }
  void deleteProgram(scope ref Optional!(WebGLProgram) program) {
    WebGLRenderingContextBase_deleteProgram(this.handle, !program.empty, program.front._parent);
  }
  void deleteRenderbuffer(scope ref Optional!(WebGLRenderbuffer) renderbuffer) {
    WebGLRenderingContextBase_deleteRenderbuffer(this.handle, !renderbuffer.empty, renderbuffer.front._parent);
  }
  void deleteShader(scope ref Optional!(WebGLShader) shader) {
    WebGLRenderingContextBase_deleteShader(this.handle, !shader.empty, shader.front._parent);
  }
  void deleteTexture(scope ref Optional!(WebGLTexture) texture) {
    WebGLRenderingContextBase_deleteTexture(this.handle, !texture.empty, texture.front._parent);
  }
  void depthFunc(uint func) {
    WebGLRenderingContextBase_depthFunc(this.handle, func);
  }
  void depthMask(bool flag) {
    WebGLRenderingContextBase_depthMask(this.handle, flag);
  }
  void depthRange(float zNear, float zFar) {
    WebGLRenderingContextBase_depthRange(this.handle, zNear, zFar);
  }
  void detachShader(scope ref Optional!(WebGLProgram) program, scope ref Optional!(WebGLShader) shader) {
    WebGLRenderingContextBase_detachShader(this.handle, !program.empty, program.front._parent, !shader.empty, shader.front._parent);
  }
  void disable(uint cap) {
    WebGLRenderingContextBase_disable(this.handle, cap);
  }
  void disableVertexAttribArray(uint index) {
    WebGLRenderingContextBase_disableVertexAttribArray(this.handle, index);
  }
  void drawArrays(uint mode, int first, int count) {
    WebGLRenderingContextBase_drawArrays(this.handle, mode, first, count);
  }
  void drawElements(uint mode, int count, uint type, long offset) {
    WebGLRenderingContextBase_drawElements(this.handle, mode, count, type, offset);
  }
  void enable(uint cap) {
    WebGLRenderingContextBase_enable(this.handle, cap);
  }
  void enableVertexAttribArray(uint index) {
    WebGLRenderingContextBase_enableVertexAttribArray(this.handle, index);
  }
  void finish() {
    WebGLRenderingContextBase_finish(this.handle);
  }
  void flush() {
    WebGLRenderingContextBase_flush(this.handle);
  }
  void framebufferRenderbuffer(uint target, uint attachment, uint renderbuffertarget, scope ref Optional!(WebGLRenderbuffer) renderbuffer) {
    WebGLRenderingContextBase_framebufferRenderbuffer(this.handle, target, attachment, renderbuffertarget, !renderbuffer.empty, renderbuffer.front._parent);
  }
  void framebufferTexture2D(uint target, uint attachment, uint textarget, scope ref Optional!(WebGLTexture) texture, int level) {
    WebGLRenderingContextBase_framebufferTexture2D(this.handle, target, attachment, textarget, !texture.empty, texture.front._parent, level);
  }
  void frontFace(uint mode) {
    WebGLRenderingContextBase_frontFace(this.handle, mode);
  }
  void generateMipmap(uint target) {
    WebGLRenderingContextBase_generateMipmap(this.handle, target);
  }
  auto getActiveAttrib(scope ref Optional!(WebGLProgram) program, uint index) {
    return WebGLRenderingContextBase_getActiveAttrib(this.handle, !program.empty, program.front._parent, index);
  }
  auto getActiveUniform(scope ref Optional!(WebGLProgram) program, uint index) {
    return WebGLRenderingContextBase_getActiveUniform(this.handle, !program.empty, program.front._parent, index);
  }
  auto getAttachedShaders(scope ref Optional!(WebGLProgram) program) {
    return WebGLRenderingContextBase_getAttachedShaders(this.handle, !program.empty, program.front._parent);
  }
  auto getAttribLocation(scope ref Optional!(WebGLProgram) program, string name) {
    return WebGLRenderingContextBase_getAttribLocation(this.handle, !program.empty, program.front._parent, name);
  }
  auto getBufferParameter(uint target, uint pname) {
    return Any(WebGLRenderingContextBase_getBufferParameter(this.handle, target, pname));
  }
  auto getParameter(uint pname) {
    return Any(WebGLRenderingContextBase_getParameter(this.handle, pname));
  }
  auto getError() {
    return WebGLRenderingContextBase_getError(this.handle);
  }
  auto getFramebufferAttachmentParameter(uint target, uint attachment, uint pname) {
    return Any(WebGLRenderingContextBase_getFramebufferAttachmentParameter(this.handle, target, attachment, pname));
  }
  auto getProgramParameter(scope ref Optional!(WebGLProgram) program, uint pname) {
    return Any(WebGLRenderingContextBase_getProgramParameter(this.handle, !program.empty, program.front._parent, pname));
  }
  auto getProgramInfoLog(scope ref Optional!(WebGLProgram) program) {
    return WebGLRenderingContextBase_getProgramInfoLog(this.handle, !program.empty, program.front._parent);
  }
  auto getRenderbufferParameter(uint target, uint pname) {
    return Any(WebGLRenderingContextBase_getRenderbufferParameter(this.handle, target, pname));
  }
  auto getShaderParameter(scope ref Optional!(WebGLShader) shader, uint pname) {
    return Any(WebGLRenderingContextBase_getShaderParameter(this.handle, !shader.empty, shader.front._parent, pname));
  }
  auto getShaderPrecisionFormat(uint shadertype, uint precisiontype) {
    return WebGLRenderingContextBase_getShaderPrecisionFormat(this.handle, shadertype, precisiontype);
  }
  auto getShaderInfoLog(scope ref Optional!(WebGLShader) shader) {
    return WebGLRenderingContextBase_getShaderInfoLog(this.handle, !shader.empty, shader.front._parent);
  }
  auto getShaderSource(scope ref Optional!(WebGLShader) shader) {
    return WebGLRenderingContextBase_getShaderSource(this.handle, !shader.empty, shader.front._parent);
  }
  auto getTexParameter(uint target, uint pname) {
    return Any(WebGLRenderingContextBase_getTexParameter(this.handle, target, pname));
  }
  auto getUniform(scope ref Optional!(WebGLProgram) program, scope ref Optional!(WebGLUniformLocation) location) {
    return Any(WebGLRenderingContextBase_getUniform(this.handle, !program.empty, program.front._parent, !location.empty, location.front.handle));
  }
  auto getUniformLocation(scope ref Optional!(WebGLProgram) program, string name) {
    return WebGLRenderingContextBase_getUniformLocation(this.handle, !program.empty, program.front._parent, name);
  }
  auto getVertexAttrib(uint index, uint pname) {
    return Any(WebGLRenderingContextBase_getVertexAttrib(this.handle, index, pname));
  }
  auto getVertexAttribOffset(uint index, uint pname) {
    return WebGLRenderingContextBase_getVertexAttribOffset(this.handle, index, pname);
  }
  void hint(uint target, uint mode) {
    WebGLRenderingContextBase_hint(this.handle, target, mode);
  }
  auto isBuffer(scope ref Optional!(WebGLBuffer) buffer) {
    return WebGLRenderingContextBase_isBuffer(this.handle, !buffer.empty, buffer.front._parent);
  }
  auto isEnabled(uint cap) {
    return WebGLRenderingContextBase_isEnabled(this.handle, cap);
  }
  auto isFramebuffer(scope ref Optional!(WebGLFramebuffer) framebuffer) {
    return WebGLRenderingContextBase_isFramebuffer(this.handle, !framebuffer.empty, framebuffer.front._parent);
  }
  auto isProgram(scope ref Optional!(WebGLProgram) program) {
    return WebGLRenderingContextBase_isProgram(this.handle, !program.empty, program.front._parent);
  }
  auto isRenderbuffer(scope ref Optional!(WebGLRenderbuffer) renderbuffer) {
    return WebGLRenderingContextBase_isRenderbuffer(this.handle, !renderbuffer.empty, renderbuffer.front._parent);
  }
  auto isShader(scope ref Optional!(WebGLShader) shader) {
    return WebGLRenderingContextBase_isShader(this.handle, !shader.empty, shader.front._parent);
  }
  auto isTexture(scope ref Optional!(WebGLTexture) texture) {
    return WebGLRenderingContextBase_isTexture(this.handle, !texture.empty, texture.front._parent);
  }
  void lineWidth(float width) {
    WebGLRenderingContextBase_lineWidth(this.handle, width);
  }
  void linkProgram(scope ref Optional!(WebGLProgram) program) {
    WebGLRenderingContextBase_linkProgram(this.handle, !program.empty, program.front._parent);
  }
  void pixelStorei(uint pname, int param) {
    WebGLRenderingContextBase_pixelStorei(this.handle, pname, param);
  }
  void polygonOffset(float factor, float units) {
    WebGLRenderingContextBase_polygonOffset(this.handle, factor, units);
  }
  void readPixels(int x, int y, int width, int height, uint format, uint type, scope ref Optional!(ArrayBufferView) pixels) {
    WebGLRenderingContextBase_readPixels(this.handle, x, y, width, height, format, type, !pixels.empty, pixels.front);
  }
  void renderbufferStorage(uint target, uint internalformat, int width, int height) {
    WebGLRenderingContextBase_renderbufferStorage(this.handle, target, internalformat, width, height);
  }
  void sampleCoverage(float value, bool invert) {
    WebGLRenderingContextBase_sampleCoverage(this.handle, value, invert);
  }
  void scissor(int x, int y, int width, int height) {
    WebGLRenderingContextBase_scissor(this.handle, x, y, width, height);
  }
  void shaderSource(scope ref Optional!(WebGLShader) shader, string source) {
    WebGLRenderingContextBase_shaderSource(this.handle, !shader.empty, shader.front._parent, source);
  }
  void stencilFunc(uint func, int ref_, uint mask) {
    WebGLRenderingContextBase_stencilFunc(this.handle, func, ref_, mask);
  }
  void stencilFuncSeparate(uint face, uint func, int ref_, uint mask) {
    WebGLRenderingContextBase_stencilFuncSeparate(this.handle, face, func, ref_, mask);
  }
  void stencilMask(uint mask) {
    WebGLRenderingContextBase_stencilMask(this.handle, mask);
  }
  void stencilMaskSeparate(uint face, uint mask) {
    WebGLRenderingContextBase_stencilMaskSeparate(this.handle, face, mask);
  }
  void stencilOp(uint fail, uint zfail, uint zpass) {
    WebGLRenderingContextBase_stencilOp(this.handle, fail, zfail, zpass);
  }
  void stencilOpSeparate(uint face, uint fail, uint zfail, uint zpass) {
    WebGLRenderingContextBase_stencilOpSeparate(this.handle, face, fail, zfail, zpass);
  }
  void texImage2D(uint target, int level, uint internalformat, int width, int height, int border, uint format, uint type, scope ref Optional!(ArrayBufferView) pixels) {
    WebGLRenderingContextBase_texImage2D__uint_int_uint_int_int_int_uint_uint_optional_ArrayBufferView(this.handle, target, level, internalformat, width, height, border, format, type, !pixels.empty, pixels.front);
  }
  void texImage2D(uint target, int level, uint internalformat, uint format, uint type, scope ref Optional!(TexImageSource) source) {
    WebGLRenderingContextBase_texImage2D__uint_int_uint_uint_uint_optional_TexImageSource(this.handle, target, level, internalformat, format, type, !source.empty, source.front);
  }
  void texParameterf(uint target, uint pname, float param) {
    WebGLRenderingContextBase_texParameterf(this.handle, target, pname, param);
  }
  void texParameteri(uint target, uint pname, int param) {
    WebGLRenderingContextBase_texParameteri(this.handle, target, pname, param);
  }
  void texSubImage2D(uint target, int level, int xoffset, int yoffset, int width, int height, uint format, uint type, scope ref Optional!(ArrayBufferView) pixels) {
    WebGLRenderingContextBase_texSubImage2D__uint_int_int_int_int_int_uint_uint_optional_ArrayBufferView(this.handle, target, level, xoffset, yoffset, width, height, format, type, !pixels.empty, pixels.front);
  }
  void texSubImage2D(uint target, int level, int xoffset, int yoffset, uint format, uint type, scope ref Optional!(TexImageSource) source) {
    WebGLRenderingContextBase_texSubImage2D__uint_int_int_int_uint_uint_optional_TexImageSource(this.handle, target, level, xoffset, yoffset, format, type, !source.empty, source.front);
  }
  void uniform1f(scope ref Optional!(WebGLUniformLocation) location, float x) {
    WebGLRenderingContextBase_uniform1f(this.handle, !location.empty, location.front.handle, x);
  }
  void uniform1fv(scope ref Optional!(WebGLUniformLocation) location, scope ref Float32Array v) {
    WebGLRenderingContextBase_uniform1fv__optional_Handle_Handle(this.handle, !location.empty, location.front.handle, v.handle);
  }
  void uniform1fv(scope ref Optional!(WebGLUniformLocation) location, scope ref Sequence!(float) v) {
    WebGLRenderingContextBase_uniform1fv__optional_Handle_sequence(this.handle, !location.empty, location.front.handle, v.handle);
  }
  void uniform1i(scope ref Optional!(WebGLUniformLocation) location, int x) {
    WebGLRenderingContextBase_uniform1i(this.handle, !location.empty, location.front.handle, x);
  }
  void uniform1iv(scope ref Optional!(WebGLUniformLocation) location, scope ref Int32Array v) {
    WebGLRenderingContextBase_uniform1iv__optional_Handle_Handle(this.handle, !location.empty, location.front.handle, v.handle);
  }
  void uniform1iv(scope ref Optional!(WebGLUniformLocation) location, scope ref Sequence!(int) v) {
    WebGLRenderingContextBase_uniform1iv__optional_Handle_sequence(this.handle, !location.empty, location.front.handle, v.handle);
  }
  void uniform2f(scope ref Optional!(WebGLUniformLocation) location, float x, float y) {
    WebGLRenderingContextBase_uniform2f(this.handle, !location.empty, location.front.handle, x, y);
  }
  void uniform2fv(scope ref Optional!(WebGLUniformLocation) location, scope ref Float32Array v) {
    WebGLRenderingContextBase_uniform2fv__optional_Handle_Handle(this.handle, !location.empty, location.front.handle, v.handle);
  }
  void uniform2fv(scope ref Optional!(WebGLUniformLocation) location, scope ref Sequence!(float) v) {
    WebGLRenderingContextBase_uniform2fv__optional_Handle_sequence(this.handle, !location.empty, location.front.handle, v.handle);
  }
  void uniform2i(scope ref Optional!(WebGLUniformLocation) location, int x, int y) {
    WebGLRenderingContextBase_uniform2i(this.handle, !location.empty, location.front.handle, x, y);
  }
  void uniform2iv(scope ref Optional!(WebGLUniformLocation) location, scope ref Int32Array v) {
    WebGLRenderingContextBase_uniform2iv__optional_Handle_Handle(this.handle, !location.empty, location.front.handle, v.handle);
  }
  void uniform2iv(scope ref Optional!(WebGLUniformLocation) location, scope ref Sequence!(int) v) {
    WebGLRenderingContextBase_uniform2iv__optional_Handle_sequence(this.handle, !location.empty, location.front.handle, v.handle);
  }
  void uniform3f(scope ref Optional!(WebGLUniformLocation) location, float x, float y, float z) {
    WebGLRenderingContextBase_uniform3f(this.handle, !location.empty, location.front.handle, x, y, z);
  }
  void uniform3fv(scope ref Optional!(WebGLUniformLocation) location, scope ref Float32Array v) {
    WebGLRenderingContextBase_uniform3fv__optional_Handle_Handle(this.handle, !location.empty, location.front.handle, v.handle);
  }
  void uniform3fv(scope ref Optional!(WebGLUniformLocation) location, scope ref Sequence!(float) v) {
    WebGLRenderingContextBase_uniform3fv__optional_Handle_sequence(this.handle, !location.empty, location.front.handle, v.handle);
  }
  void uniform3i(scope ref Optional!(WebGLUniformLocation) location, int x, int y, int z) {
    WebGLRenderingContextBase_uniform3i(this.handle, !location.empty, location.front.handle, x, y, z);
  }
  void uniform3iv(scope ref Optional!(WebGLUniformLocation) location, scope ref Int32Array v) {
    WebGLRenderingContextBase_uniform3iv__optional_Handle_Handle(this.handle, !location.empty, location.front.handle, v.handle);
  }
  void uniform3iv(scope ref Optional!(WebGLUniformLocation) location, scope ref Sequence!(int) v) {
    WebGLRenderingContextBase_uniform3iv__optional_Handle_sequence(this.handle, !location.empty, location.front.handle, v.handle);
  }
  void uniform4f(scope ref Optional!(WebGLUniformLocation) location, float x, float y, float z, float w) {
    WebGLRenderingContextBase_uniform4f(this.handle, !location.empty, location.front.handle, x, y, z, w);
  }
  void uniform4fv(scope ref Optional!(WebGLUniformLocation) location, scope ref Float32Array v) {
    WebGLRenderingContextBase_uniform4fv__optional_Handle_Handle(this.handle, !location.empty, location.front.handle, v.handle);
  }
  void uniform4fv(scope ref Optional!(WebGLUniformLocation) location, scope ref Sequence!(float) v) {
    WebGLRenderingContextBase_uniform4fv__optional_Handle_sequence(this.handle, !location.empty, location.front.handle, v.handle);
  }
  void uniform4i(scope ref Optional!(WebGLUniformLocation) location, int x, int y, int z, int w) {
    WebGLRenderingContextBase_uniform4i(this.handle, !location.empty, location.front.handle, x, y, z, w);
  }
  void uniform4iv(scope ref Optional!(WebGLUniformLocation) location, scope ref Int32Array v) {
    WebGLRenderingContextBase_uniform4iv__optional_Handle_Handle(this.handle, !location.empty, location.front.handle, v.handle);
  }
  void uniform4iv(scope ref Optional!(WebGLUniformLocation) location, scope ref Sequence!(int) v) {
    WebGLRenderingContextBase_uniform4iv__optional_Handle_sequence(this.handle, !location.empty, location.front.handle, v.handle);
  }
  void uniformMatrix2fv(scope ref Optional!(WebGLUniformLocation) location, bool transpose, scope ref Float32Array value) {
    WebGLRenderingContextBase_uniformMatrix2fv__optional_Handle_bool_Handle(this.handle, !location.empty, location.front.handle, transpose, value.handle);
  }
  void uniformMatrix2fv(scope ref Optional!(WebGLUniformLocation) location, bool transpose, scope ref Sequence!(float) value) {
    WebGLRenderingContextBase_uniformMatrix2fv__optional_Handle_bool_sequence(this.handle, !location.empty, location.front.handle, transpose, value.handle);
  }
  void uniformMatrix3fv(scope ref Optional!(WebGLUniformLocation) location, bool transpose, scope ref Float32Array value) {
    WebGLRenderingContextBase_uniformMatrix3fv__optional_Handle_bool_Handle(this.handle, !location.empty, location.front.handle, transpose, value.handle);
  }
  void uniformMatrix3fv(scope ref Optional!(WebGLUniformLocation) location, bool transpose, scope ref Sequence!(float) value) {
    WebGLRenderingContextBase_uniformMatrix3fv__optional_Handle_bool_sequence(this.handle, !location.empty, location.front.handle, transpose, value.handle);
  }
  void uniformMatrix4fv(scope ref Optional!(WebGLUniformLocation) location, bool transpose, scope ref Float32Array value) {
    WebGLRenderingContextBase_uniformMatrix4fv__optional_Handle_bool_Handle(this.handle, !location.empty, location.front.handle, transpose, value.handle);
  }
  void uniformMatrix4fv(scope ref Optional!(WebGLUniformLocation) location, bool transpose, scope ref Sequence!(float) value) {
    WebGLRenderingContextBase_uniformMatrix4fv__optional_Handle_bool_sequence(this.handle, !location.empty, location.front.handle, transpose, value.handle);
  }
  void useProgram(scope ref Optional!(WebGLProgram) program) {
    WebGLRenderingContextBase_useProgram(this.handle, !program.empty, program.front._parent);
  }
  void validateProgram(scope ref Optional!(WebGLProgram) program) {
    WebGLRenderingContextBase_validateProgram(this.handle, !program.empty, program.front._parent);
  }
  void vertexAttrib1f(uint indx, float x) {
    WebGLRenderingContextBase_vertexAttrib1f(this.handle, indx, x);
  }
  void vertexAttrib1fv(uint indx, scope ref Float32Array values) {
    WebGLRenderingContextBase_vertexAttrib1fv__uint_Handle(this.handle, indx, values.handle);
  }
  void vertexAttrib1fv(uint indx, scope ref Sequence!(float) values) {
    WebGLRenderingContextBase_vertexAttrib1fv__uint_sequence(this.handle, indx, values.handle);
  }
  void vertexAttrib2f(uint indx, float x, float y) {
    WebGLRenderingContextBase_vertexAttrib2f(this.handle, indx, x, y);
  }
  void vertexAttrib2fv(uint indx, scope ref Float32Array values) {
    WebGLRenderingContextBase_vertexAttrib2fv__uint_Handle(this.handle, indx, values.handle);
  }
  void vertexAttrib2fv(uint indx, scope ref Sequence!(float) values) {
    WebGLRenderingContextBase_vertexAttrib2fv__uint_sequence(this.handle, indx, values.handle);
  }
  void vertexAttrib3f(uint indx, float x, float y, float z) {
    WebGLRenderingContextBase_vertexAttrib3f(this.handle, indx, x, y, z);
  }
  void vertexAttrib3fv(uint indx, scope ref Float32Array values) {
    WebGLRenderingContextBase_vertexAttrib3fv__uint_Handle(this.handle, indx, values.handle);
  }
  void vertexAttrib3fv(uint indx, scope ref Sequence!(float) values) {
    WebGLRenderingContextBase_vertexAttrib3fv__uint_sequence(this.handle, indx, values.handle);
  }
  void vertexAttrib4f(uint indx, float x, float y, float z, float w) {
    WebGLRenderingContextBase_vertexAttrib4f(this.handle, indx, x, y, z, w);
  }
  void vertexAttrib4fv(uint indx, scope ref Float32Array values) {
    WebGLRenderingContextBase_vertexAttrib4fv__uint_Handle(this.handle, indx, values.handle);
  }
  void vertexAttrib4fv(uint indx, scope ref Sequence!(float) values) {
    WebGLRenderingContextBase_vertexAttrib4fv__uint_sequence(this.handle, indx, values.handle);
  }
  void vertexAttribPointer(uint indx, int size, uint type, bool normalized, int stride, long offset) {
    WebGLRenderingContextBase_vertexAttribPointer(this.handle, indx, size, type, normalized, stride, offset);
  }
  void viewport(int x, int y, int width, int height) {
    WebGLRenderingContextBase_viewport(this.handle, x, y, width, height);
  }
}
struct WebGLShader {
  nothrow:
  spasm.bindings.webgl.WebGLObject _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .WebGLObject(h);
  }
}
struct WebGLShaderPrecisionFormat {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto rangeMin() {
    return WebGLShaderPrecisionFormat_rangeMin_Get(this.handle);
  }
  auto rangeMax() {
    return WebGLShaderPrecisionFormat_rangeMax_Get(this.handle);
  }
  auto precision() {
    return WebGLShaderPrecisionFormat_precision_Get(this.handle);
  }
}
struct WebGLTexture {
  nothrow:
  spasm.bindings.webgl.WebGLObject _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .WebGLObject(h);
  }
}
struct WebGLUniformLocation {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
}


extern (C) int WebGLActiveInfo_size_Get(Handle);
extern (C) uint WebGLActiveInfo_type_Get(Handle);
extern (C) string WebGLActiveInfo_name_Get(Handle);
extern (C) void WebGLContextAttributes_alpha_Set(Handle, bool);
extern (C) bool WebGLContextAttributes_alpha_Get(Handle);
extern (C) void WebGLContextAttributes_depth_Set(Handle, bool);
extern (C) bool WebGLContextAttributes_depth_Get(Handle);
extern (C) void WebGLContextAttributes_stencil_Set(Handle, bool);
extern (C) bool WebGLContextAttributes_stencil_Get(Handle);
extern (C) void WebGLContextAttributes_antialias_Set(Handle, bool);
extern (C) bool WebGLContextAttributes_antialias_Get(Handle);
extern (C) void WebGLContextAttributes_premultipliedAlpha_Set(Handle, bool);
extern (C) bool WebGLContextAttributes_premultipliedAlpha_Get(Handle);
extern (C) void WebGLContextAttributes_preserveDrawingBuffer_Set(Handle, bool);
extern (C) bool WebGLContextAttributes_preserveDrawingBuffer_Get(Handle);
extern (C) void WebGLContextAttributes_preferLowPowerToHighPerformance_Set(Handle, bool);
extern (C) bool WebGLContextAttributes_preferLowPowerToHighPerformance_Get(Handle);
extern (C) void WebGLContextAttributes_failIfMajorPerformanceCaveat_Set(Handle, bool);
extern (C) bool WebGLContextAttributes_failIfMajorPerformanceCaveat_Get(Handle);
extern (C) string WebGLContextEvent_statusMessage_Get(Handle);
extern (C) void WebGLContextEventInit_statusMessage_Set(Handle, string);
extern (C) string WebGLContextEventInit_statusMessage_Get(Handle);
extern (C) Handle WebGLRenderingContextBase_canvas_Get(Handle);
extern (C) int WebGLRenderingContextBase_drawingBufferWidth_Get(Handle);
extern (C) int WebGLRenderingContextBase_drawingBufferHeight_Get(Handle);
extern (C) Optional!(WebGLContextAttributes) WebGLRenderingContextBase_getContextAttributes(Handle);
extern (C) bool WebGLRenderingContextBase_isContextLost(Handle);
extern (C) Optional!(Sequence!(string)) WebGLRenderingContextBase_getSupportedExtensions(Handle);
extern (C) Optional!(JsObject) WebGLRenderingContextBase_getExtension(Handle, string);
extern (C) void WebGLRenderingContextBase_activeTexture(Handle, uint);
extern (C) void WebGLRenderingContextBase_attachShader(Handle, bool, Handle, bool, Handle);
extern (C) void WebGLRenderingContextBase_bindAttribLocation(Handle, bool, Handle, uint, string);
extern (C) void WebGLRenderingContextBase_bindBuffer(Handle, uint, bool, Handle);
extern (C) void WebGLRenderingContextBase_bindFramebuffer(Handle, uint, bool, Handle);
extern (C) void WebGLRenderingContextBase_bindRenderbuffer(Handle, uint, bool, Handle);
extern (C) void WebGLRenderingContextBase_bindTexture(Handle, uint, bool, Handle);
extern (C) void WebGLRenderingContextBase_blendColor(Handle, float, float, float, float);
extern (C) void WebGLRenderingContextBase_blendEquation(Handle, uint);
extern (C) void WebGLRenderingContextBase_blendEquationSeparate(Handle, uint, uint);
extern (C) void WebGLRenderingContextBase_blendFunc(Handle, uint, uint);
extern (C) void WebGLRenderingContextBase_blendFuncSeparate(Handle, uint, uint, uint, uint);
extern (C) void WebGLRenderingContextBase_bufferData__uint_long_uint(Handle, uint, long, uint);
extern (C) void WebGLRenderingContextBase_bufferData__uint_optional_BufferDataSource_uint(Handle, uint, bool, scope ref BufferDataSource, uint);
extern (C) void WebGLRenderingContextBase_bufferSubData(Handle, uint, long, bool, scope ref BufferDataSource);
extern (C) uint WebGLRenderingContextBase_checkFramebufferStatus(Handle, uint);
extern (C) void WebGLRenderingContextBase_clear(Handle, uint);
extern (C) void WebGLRenderingContextBase_clearColor(Handle, float, float, float, float);
extern (C) void WebGLRenderingContextBase_clearDepth(Handle, float);
extern (C) void WebGLRenderingContextBase_clearStencil(Handle, int);
extern (C) void WebGLRenderingContextBase_colorMask(Handle, bool, bool, bool, bool);
extern (C) void WebGLRenderingContextBase_compileShader(Handle, bool, Handle);
extern (C) void WebGLRenderingContextBase_compressedTexImage2D(Handle, uint, int, uint, int, int, int, scope ref ArrayBufferView);
extern (C) void WebGLRenderingContextBase_compressedTexSubImage2D(Handle, uint, int, int, int, int, int, uint, scope ref ArrayBufferView);
extern (C) void WebGLRenderingContextBase_copyTexImage2D(Handle, uint, int, uint, int, int, int, int, int);
extern (C) void WebGLRenderingContextBase_copyTexSubImage2D(Handle, uint, int, int, int, int, int, int, int);
extern (C) Optional!(WebGLBuffer) WebGLRenderingContextBase_createBuffer(Handle);
extern (C) Optional!(WebGLFramebuffer) WebGLRenderingContextBase_createFramebuffer(Handle);
extern (C) Optional!(WebGLProgram) WebGLRenderingContextBase_createProgram(Handle);
extern (C) Optional!(WebGLRenderbuffer) WebGLRenderingContextBase_createRenderbuffer(Handle);
extern (C) Optional!(WebGLShader) WebGLRenderingContextBase_createShader(Handle, uint);
extern (C) Optional!(WebGLTexture) WebGLRenderingContextBase_createTexture(Handle);
extern (C) void WebGLRenderingContextBase_cullFace(Handle, uint);
extern (C) void WebGLRenderingContextBase_deleteBuffer(Handle, bool, Handle);
extern (C) void WebGLRenderingContextBase_deleteFramebuffer(Handle, bool, Handle);
extern (C) void WebGLRenderingContextBase_deleteProgram(Handle, bool, Handle);
extern (C) void WebGLRenderingContextBase_deleteRenderbuffer(Handle, bool, Handle);
extern (C) void WebGLRenderingContextBase_deleteShader(Handle, bool, Handle);
extern (C) void WebGLRenderingContextBase_deleteTexture(Handle, bool, Handle);
extern (C) void WebGLRenderingContextBase_depthFunc(Handle, uint);
extern (C) void WebGLRenderingContextBase_depthMask(Handle, bool);
extern (C) void WebGLRenderingContextBase_depthRange(Handle, float, float);
extern (C) void WebGLRenderingContextBase_detachShader(Handle, bool, Handle, bool, Handle);
extern (C) void WebGLRenderingContextBase_disable(Handle, uint);
extern (C) void WebGLRenderingContextBase_disableVertexAttribArray(Handle, uint);
extern (C) void WebGLRenderingContextBase_drawArrays(Handle, uint, int, int);
extern (C) void WebGLRenderingContextBase_drawElements(Handle, uint, int, uint, long);
extern (C) void WebGLRenderingContextBase_enable(Handle, uint);
extern (C) void WebGLRenderingContextBase_enableVertexAttribArray(Handle, uint);
extern (C) void WebGLRenderingContextBase_finish(Handle);
extern (C) void WebGLRenderingContextBase_flush(Handle);
extern (C) void WebGLRenderingContextBase_framebufferRenderbuffer(Handle, uint, uint, uint, bool, Handle);
extern (C) void WebGLRenderingContextBase_framebufferTexture2D(Handle, uint, uint, uint, bool, Handle, int);
extern (C) void WebGLRenderingContextBase_frontFace(Handle, uint);
extern (C) void WebGLRenderingContextBase_generateMipmap(Handle, uint);
extern (C) Optional!(WebGLActiveInfo) WebGLRenderingContextBase_getActiveAttrib(Handle, bool, Handle, uint);
extern (C) Optional!(WebGLActiveInfo) WebGLRenderingContextBase_getActiveUniform(Handle, bool, Handle, uint);
extern (C) Optional!(Sequence!(WebGLShader)) WebGLRenderingContextBase_getAttachedShaders(Handle, bool, Handle);
extern (C) int WebGLRenderingContextBase_getAttribLocation(Handle, bool, Handle, string);
extern (C) Handle WebGLRenderingContextBase_getBufferParameter(Handle, uint, uint);
extern (C) Handle WebGLRenderingContextBase_getParameter(Handle, uint);
extern (C) uint WebGLRenderingContextBase_getError(Handle);
extern (C) Handle WebGLRenderingContextBase_getFramebufferAttachmentParameter(Handle, uint, uint, uint);
extern (C) Handle WebGLRenderingContextBase_getProgramParameter(Handle, bool, Handle, uint);
extern (C) Optional!(string) WebGLRenderingContextBase_getProgramInfoLog(Handle, bool, Handle);
extern (C) Handle WebGLRenderingContextBase_getRenderbufferParameter(Handle, uint, uint);
extern (C) Handle WebGLRenderingContextBase_getShaderParameter(Handle, bool, Handle, uint);
extern (C) Optional!(WebGLShaderPrecisionFormat) WebGLRenderingContextBase_getShaderPrecisionFormat(Handle, uint, uint);
extern (C) Optional!(string) WebGLRenderingContextBase_getShaderInfoLog(Handle, bool, Handle);
extern (C) Optional!(string) WebGLRenderingContextBase_getShaderSource(Handle, bool, Handle);
extern (C) Handle WebGLRenderingContextBase_getTexParameter(Handle, uint, uint);
extern (C) Handle WebGLRenderingContextBase_getUniform(Handle, bool, Handle, bool, Handle);
extern (C) Optional!(WebGLUniformLocation) WebGLRenderingContextBase_getUniformLocation(Handle, bool, Handle, string);
extern (C) Handle WebGLRenderingContextBase_getVertexAttrib(Handle, uint, uint);
extern (C) long WebGLRenderingContextBase_getVertexAttribOffset(Handle, uint, uint);
extern (C) void WebGLRenderingContextBase_hint(Handle, uint, uint);
extern (C) bool WebGLRenderingContextBase_isBuffer(Handle, bool, Handle);
extern (C) bool WebGLRenderingContextBase_isEnabled(Handle, uint);
extern (C) bool WebGLRenderingContextBase_isFramebuffer(Handle, bool, Handle);
extern (C) bool WebGLRenderingContextBase_isProgram(Handle, bool, Handle);
extern (C) bool WebGLRenderingContextBase_isRenderbuffer(Handle, bool, Handle);
extern (C) bool WebGLRenderingContextBase_isShader(Handle, bool, Handle);
extern (C) bool WebGLRenderingContextBase_isTexture(Handle, bool, Handle);
extern (C) void WebGLRenderingContextBase_lineWidth(Handle, float);
extern (C) void WebGLRenderingContextBase_linkProgram(Handle, bool, Handle);
extern (C) void WebGLRenderingContextBase_pixelStorei(Handle, uint, int);
extern (C) void WebGLRenderingContextBase_polygonOffset(Handle, float, float);
extern (C) void WebGLRenderingContextBase_readPixels(Handle, int, int, int, int, uint, uint, bool, scope ref ArrayBufferView);
extern (C) void WebGLRenderingContextBase_renderbufferStorage(Handle, uint, uint, int, int);
extern (C) void WebGLRenderingContextBase_sampleCoverage(Handle, float, bool);
extern (C) void WebGLRenderingContextBase_scissor(Handle, int, int, int, int);
extern (C) void WebGLRenderingContextBase_shaderSource(Handle, bool, Handle, string);
extern (C) void WebGLRenderingContextBase_stencilFunc(Handle, uint, int, uint);
extern (C) void WebGLRenderingContextBase_stencilFuncSeparate(Handle, uint, uint, int, uint);
extern (C) void WebGLRenderingContextBase_stencilMask(Handle, uint);
extern (C) void WebGLRenderingContextBase_stencilMaskSeparate(Handle, uint, uint);
extern (C) void WebGLRenderingContextBase_stencilOp(Handle, uint, uint, uint);
extern (C) void WebGLRenderingContextBase_stencilOpSeparate(Handle, uint, uint, uint, uint);
extern (C) void WebGLRenderingContextBase_texImage2D__uint_int_uint_int_int_int_uint_uint_optional_ArrayBufferView(Handle, uint, int, uint, int, int, int, uint, uint, bool, scope ref ArrayBufferView);
extern (C) void WebGLRenderingContextBase_texImage2D__uint_int_uint_uint_uint_optional_TexImageSource(Handle, uint, int, uint, uint, uint, bool, scope ref TexImageSource);
extern (C) void WebGLRenderingContextBase_texParameterf(Handle, uint, uint, float);
extern (C) void WebGLRenderingContextBase_texParameteri(Handle, uint, uint, int);
extern (C) void WebGLRenderingContextBase_texSubImage2D__uint_int_int_int_int_int_uint_uint_optional_ArrayBufferView(Handle, uint, int, int, int, int, int, uint, uint, bool, scope ref ArrayBufferView);
extern (C) void WebGLRenderingContextBase_texSubImage2D__uint_int_int_int_uint_uint_optional_TexImageSource(Handle, uint, int, int, int, uint, uint, bool, scope ref TexImageSource);
extern (C) void WebGLRenderingContextBase_uniform1f(Handle, bool, Handle, float);
extern (C) void WebGLRenderingContextBase_uniform1fv__optional_Handle_Handle(Handle, bool, Handle, Handle);
extern (C) void WebGLRenderingContextBase_uniform1fv__optional_Handle_sequence(Handle, bool, Handle, Handle);
extern (C) void WebGLRenderingContextBase_uniform1i(Handle, bool, Handle, int);
extern (C) void WebGLRenderingContextBase_uniform1iv__optional_Handle_Handle(Handle, bool, Handle, Handle);
extern (C) void WebGLRenderingContextBase_uniform1iv__optional_Handle_sequence(Handle, bool, Handle, Handle);
extern (C) void WebGLRenderingContextBase_uniform2f(Handle, bool, Handle, float, float);
extern (C) void WebGLRenderingContextBase_uniform2fv__optional_Handle_Handle(Handle, bool, Handle, Handle);
extern (C) void WebGLRenderingContextBase_uniform2fv__optional_Handle_sequence(Handle, bool, Handle, Handle);
extern (C) void WebGLRenderingContextBase_uniform2i(Handle, bool, Handle, int, int);
extern (C) void WebGLRenderingContextBase_uniform2iv__optional_Handle_Handle(Handle, bool, Handle, Handle);
extern (C) void WebGLRenderingContextBase_uniform2iv__optional_Handle_sequence(Handle, bool, Handle, Handle);
extern (C) void WebGLRenderingContextBase_uniform3f(Handle, bool, Handle, float, float, float);
extern (C) void WebGLRenderingContextBase_uniform3fv__optional_Handle_Handle(Handle, bool, Handle, Handle);
extern (C) void WebGLRenderingContextBase_uniform3fv__optional_Handle_sequence(Handle, bool, Handle, Handle);
extern (C) void WebGLRenderingContextBase_uniform3i(Handle, bool, Handle, int, int, int);
extern (C) void WebGLRenderingContextBase_uniform3iv__optional_Handle_Handle(Handle, bool, Handle, Handle);
extern (C) void WebGLRenderingContextBase_uniform3iv__optional_Handle_sequence(Handle, bool, Handle, Handle);
extern (C) void WebGLRenderingContextBase_uniform4f(Handle, bool, Handle, float, float, float, float);
extern (C) void WebGLRenderingContextBase_uniform4fv__optional_Handle_Handle(Handle, bool, Handle, Handle);
extern (C) void WebGLRenderingContextBase_uniform4fv__optional_Handle_sequence(Handle, bool, Handle, Handle);
extern (C) void WebGLRenderingContextBase_uniform4i(Handle, bool, Handle, int, int, int, int);
extern (C) void WebGLRenderingContextBase_uniform4iv__optional_Handle_Handle(Handle, bool, Handle, Handle);
extern (C) void WebGLRenderingContextBase_uniform4iv__optional_Handle_sequence(Handle, bool, Handle, Handle);
extern (C) void WebGLRenderingContextBase_uniformMatrix2fv__optional_Handle_bool_Handle(Handle, bool, Handle, bool, Handle);
extern (C) void WebGLRenderingContextBase_uniformMatrix2fv__optional_Handle_bool_sequence(Handle, bool, Handle, bool, Handle);
extern (C) void WebGLRenderingContextBase_uniformMatrix3fv__optional_Handle_bool_Handle(Handle, bool, Handle, bool, Handle);
extern (C) void WebGLRenderingContextBase_uniformMatrix3fv__optional_Handle_bool_sequence(Handle, bool, Handle, bool, Handle);
extern (C) void WebGLRenderingContextBase_uniformMatrix4fv__optional_Handle_bool_Handle(Handle, bool, Handle, bool, Handle);
extern (C) void WebGLRenderingContextBase_uniformMatrix4fv__optional_Handle_bool_sequence(Handle, bool, Handle, bool, Handle);
extern (C) void WebGLRenderingContextBase_useProgram(Handle, bool, Handle);
extern (C) void WebGLRenderingContextBase_validateProgram(Handle, bool, Handle);
extern (C) void WebGLRenderingContextBase_vertexAttrib1f(Handle, uint, float);
extern (C) void WebGLRenderingContextBase_vertexAttrib1fv__uint_Handle(Handle, uint, Handle);
extern (C) void WebGLRenderingContextBase_vertexAttrib1fv__uint_sequence(Handle, uint, Handle);
extern (C) void WebGLRenderingContextBase_vertexAttrib2f(Handle, uint, float, float);
extern (C) void WebGLRenderingContextBase_vertexAttrib2fv__uint_Handle(Handle, uint, Handle);
extern (C) void WebGLRenderingContextBase_vertexAttrib2fv__uint_sequence(Handle, uint, Handle);
extern (C) void WebGLRenderingContextBase_vertexAttrib3f(Handle, uint, float, float, float);
extern (C) void WebGLRenderingContextBase_vertexAttrib3fv__uint_Handle(Handle, uint, Handle);
extern (C) void WebGLRenderingContextBase_vertexAttrib3fv__uint_sequence(Handle, uint, Handle);
extern (C) void WebGLRenderingContextBase_vertexAttrib4f(Handle, uint, float, float, float, float);
extern (C) void WebGLRenderingContextBase_vertexAttrib4fv__uint_Handle(Handle, uint, Handle);
extern (C) void WebGLRenderingContextBase_vertexAttrib4fv__uint_sequence(Handle, uint, Handle);
extern (C) void WebGLRenderingContextBase_vertexAttribPointer(Handle, uint, int, uint, bool, int, long);
extern (C) void WebGLRenderingContextBase_viewport(Handle, int, int, int, int);
extern (C) int WebGLShaderPrecisionFormat_rangeMin_Get(Handle);
extern (C) int WebGLShaderPrecisionFormat_rangeMax_Get(Handle);
extern (C) int WebGLShaderPrecisionFormat_precision_Get(Handle);