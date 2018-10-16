module game.renderer;

import spasm.webgl;
import spasm.types;
import spasm.rt.memory;
import game.entity;
import game.math;
import std.range : only;

immutable GLuint max_verts = 1024 * 64;
immutable GLint max_lights = 16;
__gshared float camera_shake = 0f;

extern(C) JsHandle getContext(JsHandle);
extern(C) void glSetContext(JsHandle);

auto compile_shader(int shader_type, string shader_source) {
    auto shader = glCreateShader(shader_type);
    glShaderSource(shader, shader_source);
    glCompileShader(shader);
    return shader;
};

auto enable_vertex_attrib(GLint shader_program, string attrib_name, int count, int vertex_size, int offset) {
    auto location = glGetAttribLocation(shader_program, attrib_name);
    glEnableVertexAttribArray(location);
    glVertexAttribPointer(location, count, GL_FLOAT, false, vertex_size * 4, offset * 4);
};

struct Renderer {
	GLuint vertex_buffer;
	GLuint shader_program;

	immutable GLuint texture_size = 1024;
  immutable GLuint tile_size = 16;
  immutable GLfloat tile_fraction = cast(float)tile_size / texture_size;
  immutable GLfloat px_nudge = 0.5 / texture_size;
	GLuint num_verts = 0;
	GLuint level_num_verts;
	float[] buffer_data;

	GLint light_uniform;
	GLint num_lights = 0;
	float[] light_data;

	GLfloat camera_x = 0, camera_y = 0, camera_z = 0;
	GLint camera_uniform;

	immutable string shader_attribute_vec = "attribute vec";
	immutable string shader_varying =
		"precision highp float;" ~
		"varying vec3 vl;" ~
		"varying vec2 vuv;";
	immutable string shader_uniform = "uniform ";
	immutable string shader_const_mat4 = "const mat4 ";

	immutable string vertex_shader =
		shader_varying ~
		shader_attribute_vec ~ "3 p;" ~
		shader_attribute_vec ~ "2 uv;" ~
		shader_attribute_vec ~ "3 n;" ~
		shader_uniform ~ "vec3 cam;" ~
		shader_uniform ~ "float l[7*16];" ~
		shader_const_mat4 ~ "v=mat4(1,0,0,0,0,.707,.707,0,0,-.707,.707,0,0,-22.627,-22.627,1);" ~ // view
		shader_const_mat4 ~ "r=mat4(.977,0,0,0,0,1.303,0,0,0,0,-1,-1,0,0,-2,0);"~ // projection
		"void main(void){" ~
			"vl=vec3(0.3,0.3,0.6);" ~ // ambient color
			"for(int i=0; i<16; i++) {"~
				"vec3 lp=vec3(l[i*7],l[i*7+1],l[i*7+2]);" ~ // light position
				"vl+=vec3(l[i*7+3],l[i*7+4],l[i*7+5])" ~ // light color *
					"*max(dot(n,normalize(lp-p)),0.)" ~ // diffuse *
					"*(1./(l[i*7+6]*(" ~ // attentuation *
						"length(lp-p)" ~ // distance
					")));" ~
			"}" ~
			"vuv=uv;" ~
			"gl_Position=r*v*(vec4(p+cam,1.));" ~
		"}";

	immutable string fragment_shader =
		shader_varying ~
		shader_uniform ~ "sampler2D s;" ~
		"void main(void){" ~
			"vec4 t=texture2D(s,vuv);" ~
			"if(t.a<.8)" ~ // 1) discard alpha
				"discard;" ~
			"if(t.r>0.95&&t.g>0.25&&t.b==0.0)" ~ // 2) red glowing spider eyes
				"gl_FragColor=t;" ~
			"else{" ~  // 3) calculate color with lights and fog
				"gl_FragColor=t*vec4(vl,1.);" ~
				"gl_FragColor.rgb*=smoothstep(" ~
					"112.,16.," ~ // fog far, near
					"gl_FragCoord.z/gl_FragCoord.w" ~ // fog depth
				");" ~
			"}" ~
			"gl_FragColor.rgb=floor(gl_FragColor.rgb*6.35)/6.35;" ~ // reduce colors to ~256
		"}";

  auto begin_build_level() {
    num_verts = 0;
  }

  auto end_build_level(float x, float y, float z) {
    camera_x = x;
    camera_y = y;
		camera_z = z;
    level_num_verts = num_verts;
  }

  auto update_camera(ref Player player) {
    // center camera on player, apply damping
    camera_x = camera_x * 0.92 - player.entity.x * 0.08;
    camera_y = camera_y * 0.92 - player.entity.y * 0.08;
    camera_z = camera_z * 0.92 - player.entity.z * 0.08;

    // add camera shake
    camera_shake *= 0.9;
    camera_x += camera_shake * (random()-0.5);
    camera_z += camera_shake * (random()-0.5);
  }
  auto renderer_init(int width, int height) {

    buffer_data = allocator.make!(float[max_verts*8]);
    light_data = allocator.make!(float[max_lights*7]);
    vertex_buffer = glCreateBuffer();
    glBindBuffer(GL_ARRAY_BUFFER, vertex_buffer);
    glBufferData(GL_ARRAY_BUFFER, buffer_data, GL_DYNAMIC_DRAW);

    shader_program = glCreateProgram();
    glAttachShader(shader_program, compile_shader(GL_VERTEX_SHADER, vertex_shader));
    glAttachShader(shader_program, compile_shader(GL_FRAGMENT_SHADER, fragment_shader));
    glLinkProgram(shader_program);
    glUseProgram(shader_program);

    camera_uniform = glGetUniformLocation(shader_program, "cam");
    light_uniform = glGetUniformLocation(shader_program, "l");

    glEnable(GL_DEPTH_TEST);
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    glViewport(0,0,width,height);

    shader_program.enable_vertex_attrib("p", 3, 8, 0);
    shader_program.enable_vertex_attrib("uv", 2, 8, 3);
    shader_program.enable_vertex_attrib("n", 3, 8, 5);
  }

  void renderer_bind_image(JsHandle image) {
    auto texture_2d = GL_TEXTURE_2D;
    glBindTexture(texture_2d, glCreateTexture());
    glTexImage2D(texture_2d, 0, GL_RGBA, GL_RGBA, GL_UNSIGNED_BYTE, image);
    glTexParameteri(texture_2d, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(texture_2d, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(texture_2d, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(texture_2d, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
  }
  auto renderer_prepare_frame() {
    num_verts = level_num_verts;
    num_lights = 0;

    // reset all lights
    light_data[] = 1f;
  }

  auto renderer_end_frame() {
    glUniform3f(camera_uniform, camera_x, camera_y - 10, camera_z-30);
    glUniform1fv(light_uniform, light_data);

    glClearColor(0,0,0,1);
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);

    glBufferData(GL_ARRAY_BUFFER, buffer_data, GL_DYNAMIC_DRAW);
    glDrawArrays(GL_TRIANGLES, 0, num_verts);
  }

  auto push_quad(float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3, float x4, float y4, float z4, float nx, float ny, float nz, int tile) {
    auto u = tile * tile_fraction + px_nudge;
  import std.range : only;
  import std.algorithm : copy;
    only(
                     x1, y1, z1, u, 0, nx, ny, nz,
                     x2, y2, z2, u + tile_fraction - px_nudge, 0, nx, ny, nz,
                     x3, y3, z3, u, 1, nx, ny, nz,
                     x2, y2, z2, u + tile_fraction - px_nudge, 0, nx, ny, nz,
                     x3, y3, z3, u, 1, nx, ny, nz,
                     x4, y4, z4, u + tile_fraction - px_nudge, 1, nx, ny, nz
         ).copy(buffer_data[num_verts*8..$]);
    num_verts += 6;
  }
  auto push_sprite(float x, float y, float z, int tile) {
	// Only push sprites near to the camera
	if (
		abs(-x - camera_x) < 128 &&
		abs(-z - camera_z) < 128
	) {
		auto tilt = 3+(camera_z + z)/12; // tilt sprite when closer to camera
		push_quad(x, y + 6, z, x + 6, y + 6, z, x, y, z + tilt, x + 6, y, z + tilt, 0, 0, 1, tile);
	}
}
  auto push_floor(float x, float z, int tile) {
	push_quad(x, 0, z, x + 8, 0, z, x, 0, z + 8, x + 8, 0, z + 8, 0,1,0, tile);
};
  auto push_block(float x, float z, int tile_top, int tile_sites) {
	// tall blocks for certain tiles
    bool tall = tile_sites == 8 || tile_sites == 9 || tile_sites == 17;
    float y = tall ? 16 : 8;

	push_quad(x, y, z, x + 8, y, z, x, y, z + 8, x + 8, y, z + 8, 0, 1, 0, tile_top); // top
	push_quad(x + 8, y, z, x + 8, y, z + 8, x + 8, 0, z, x + 8, 0, z + 8, 1, 0, 0, tile_sites); // right
	push_quad(x, y, z + 8, x + 8, y, z + 8, x, 0, z + 8, x + 8, 0, z + 8, 0, 0, 1, tile_sites); // front
	push_quad(x, y, z, x, y, z + 8, x, 0, z, x, 0, z + 8, -1, 0, 0, tile_sites); // left
};
  auto push_light(float x, float y, float z, float r, float g, float b, float falloff) {
  import std.algorithm : copy;
	// Only push lights near to the camera
	float max_light_distance = (128f + 1f/falloff); // cheap ass approximation
	if (
      num_lights < max_lights &&
		abs(-x - camera_x) < max_light_distance &&
		abs(-z - camera_z) < max_light_distance
	) {
    only(x, y, z, r, g, b, falloff).copy(light_data[num_lights*7..$]);
		num_lights++;
	}
}
}

