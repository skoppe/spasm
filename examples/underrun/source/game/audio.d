module game.audio;

import game.math;
import spasm.rt.memory;

enum WAVE_SPS = 44100;					// Samples per second
enum MAX_TIME = 33; // maximum time, in millis, that the generator can use consecutively

// Oscillators
auto osc_sin(float value) {
	return sin(value * 6.283184);
}

float osc_square(float value) {
	return osc_sin(value) < 0 ? -1.0 : 1.0;
}

float osc_saw(float value) {
	return (value % 1) - 0.5;
}

auto osc_tri(float value) {
	auto v2 = (value % 1) * 4;
	return v2 < 2 ? v2 - 1 : 3 - v2;
}

auto getnotefreq(int n)
{
	return 0.00390625 * pow(1.059463094, n - 128);
}

__gshared SoundPlayer* gSoundPlayer;

alias WaveForm = float function(float);

struct Instrument {
  ubyte osc1_oct;
  ubyte osc1_det;
  ubyte osc1_detune;
  ubyte osc1_xenv;
  ubyte osc1_vol;
  WaveForm osc1_waveform;
  ubyte osc2_oct;
  ubyte osc2_det;
  ubyte osc2_detune;
  ubyte osc2_xenv;
  ubyte osc2_vol;
  WaveForm osc2_waveform;
  ubyte noise_fader;
  uint env_attack;
  uint env_sustain;
  uint env_release;
  uint env_master;
  ubyte fx_filter;
  uint fx_freq;
  ubyte fx_resonance;
  ubyte fx_delay_time;
  ubyte fx_delay_amt;
  ubyte fx_pan_freq;
  ubyte fx_pan_amt;
  ubyte lfo_osc1_freq;
  ubyte lfo_fx_freq;
  ubyte lfo_freq;
  ubyte lfo_amt;
  WaveForm lfo_waveform;
}

struct Buffer {
  float[] left;
  float[] right;
}

auto generateBuffer(size_t samples) {
  return Buffer(
                allocator.make!(float[])(samples),
                allocator.make!(float[])(samples));
}

auto applyDelay(Buffer chnBuf, uint waveSamples, immutable Instrument* instr, uint rowLen) {
	auto p1 = (instr.fx_delay_time * rowLen) >> 1;
	auto t1 = instr.fx_delay_amt / 255;

	auto n1 = 0;
	while(n1 < waveSamples - p1) {
		auto l = (n1 + p1);
		chnBuf.left[l] += chnBuf.right[n1] * t1;
		chnBuf.right[l] += chnBuf.left[n1] * t1;
		n1++;
	}
}

import spasm.types;

struct BaseAudioContext {
  JsHandle handle;
  alias handle this;
  @property AudioDestinationNode destination() {
    return AudioDestinationNode(baseAudioContextDestination(handle));
  }
}

struct AudioContext {
  BaseAudioContext base;
  this(JsHandle handle) {
    base.handle = handle;
  }
  alias base this;
}

struct Float32Array {
  JsHandle handle;
  alias handle this;
}

struct AudioBuffer {
  JsHandle handle;
  alias handle this;
}

struct AudioBufferSourceNode {
  JsHandle handle;
  alias handle this;
  @disable this(this);
  ~this() {
    audioFree(handle);
  }
  @property void loop(bool l) {
    audioBufferSourceNodeLoopSet(handle, l);
  }
  @property void buffer(AudioBuffer buffer) {
    audioBufferSourceNodeBuffer(handle, buffer.handle);
  }
}

struct AudioDestinationNode {
  JsHandle handle;
  alias handle this;
}

extern(C) JsHandle baseAudioContextDestination(JsHandle ctx);
extern(C) void audioBufferSourceNodeLoopSet(JsHandle ctx, bool loop);
extern(C) JsHandle windowNewAudioContext();
extern(C) void audioBufferSourceNodeConnect(JsHandle node, JsHandle destination);
extern(C) void audioBufferSourceNodeStart(JsHandle node);
extern(C) void audioBufferSourceNodeBuffer(JsHandle node, JsHandle buffer);
extern(C) void audioFree(JsHandle node);

void connect(ref AudioBufferSourceNode node, AudioDestinationNode destination) {
  audioBufferSourceNodeConnect(node.handle, destination.handle);
}

void start(ref AudioBufferSourceNode node) {
  audioBufferSourceNodeStart(node.handle);
}

AudioContext newAudioContext() {
  return AudioContext(windowNewAudioContext());
}
// TODO: can we combine both functions into one with pragma mangle and implicit conversions?
extern(C) JsHandle baseAudioContextCreateBuffer(JsHandle ctx, uint numberOfChannels, uint length, float sampleRate);

AudioBuffer createBuffer(ref BaseAudioContext ctx, uint numberOfChannels, uint length, float sampleRate) {
  return AudioBuffer(baseAudioContextCreateBuffer(ctx.handle, numberOfChannels, length, sampleRate));
}

extern(C) JsHandle baseAudioContextCreateBufferSource(JsHandle ctx);

AudioBufferSourceNode createBufferSource(ref BaseAudioContext ctx) {
  return AudioBufferSourceNode(baseAudioContextCreateBufferSource(ctx.handle));
}

extern(C) JsHandle audioBufferGetChannelData(JsHandle ctx, uint channel);

Float32Array getChannelData(ref AudioBuffer buffer, uint channel) {
  return Float32Array(audioBufferGetChannelData(buffer.handle, channel));
}

extern(C) void float32ArraySet(JsHandle ctx, float[] array);

void set(Float32Array arr, float[] array) {
  float32ArraySet(arr.handle, array);
}

auto getAudioBuffer(ref AudioContext ctx, ref Buffer mixBuf) {
	auto buffer = ctx.createBuffer(2, mixBuf.left.length, WAVE_SPS); // Create Mono Source Buffer from Raw Binary
	buffer.getChannelData(0).set(mixBuf.left);
	buffer.getChannelData(1).set(mixBuf.right);
	return buffer;
}

struct SoundGenerator {
  private {
    AudioContext ctx;
    immutable Instrument* instr;
    uint rowLen;
    float panFreq;
    float lfoFreq;
  }
  this(ref AudioContext ctx, immutable Instrument* instr, ulong rowLen) {
    this.ctx = ctx;
    this.instr = instr;
    this.rowLen = rowLen || 5605;
    this.panFreq = (cast(float)pow(2, instr.fx_pan_freq - 8)) / this.rowLen;
    this.lfoFreq = (cast(float)pow(2, instr.lfo_freq - 8)) / this.rowLen;
  }
  auto genSound(int n, ref Buffer chnBuf, uint currentpos) {
    float c1 = 0;
    float c2 = 0;

    // Precalculate frequencues
    auto o1t = getnotefreq(n + (cast(int)instr.osc1_oct - 8) * 12 + instr.osc1_det) * (1.0 + 0.0008 * instr.osc1_detune);
    auto o2t = getnotefreq(n + (cast(int)instr.osc2_oct - 8) * 12 + instr.osc2_det) * (1.0 + 0.0008 * instr.osc2_detune);

    // State variable init
    float q = cast(float)instr.fx_resonance / 255;
    float low = 0;
    float band = 0;
    auto chnbufLength = chnBuf.left.length;
    auto numSamples = instr.env_attack + instr.env_sustain + instr.env_release - 1;
    for (uint j = numSamples; j >= 0; --j) {
      uint k = j + currentpos;

      // LFO
      auto lfor = instr.lfo_waveform(cast(float)k * this.lfoFreq) * (cast(float)instr.lfo_amt) / 512 + 0.5;

      // Envelope
      float e = 1;
      if (j < instr.env_attack) {
        e = (cast(float)j) / instr.env_attack;
      } else if (j >= instr.env_attack + instr.env_sustain) {
        e -= (cast(float)(j - instr.env_attack - instr.env_sustain)) / instr.env_release;
      }

      // Oscillator 1
      float t = o1t;
      if (instr.lfo_osc1_freq) {
        t += lfor;
      }
      if (instr.osc1_xenv) {
        t *= e * e;
      }
      c1 += t;
      float rsample = instr.osc1_waveform(c1) * instr.osc1_vol;
      // Oscillator 2
      t = o2t;
      if (instr.osc2_xenv) {
        t *= e * e;
      }
      c2 += t;
      rsample += instr.osc2_waveform(c2) * instr.osc2_vol;
      // Noise oscillator
      if (instr.noise_fader) {
        rsample += (2.0*random()-1.0) * instr.noise_fader * e;
      }
      rsample *= e / 255;

      // State variable filter
      float f = cast(float)instr.fx_freq;
      if (instr.lfo_fx_freq) {
        f *= lfor;
      }
      f = 1.5 * sin(f * 3.141592 / WAVE_SPS);
      low += f * band;
      float high = q * (rsample - band) - low;
      band += f * high;
      switch (instr.fx_filter) {
      case 1: // Hipass
        rsample = high;
        break;
      case 2: // Lopass
        rsample = low;
        break;
      case 3: // Bandpass
        rsample = band;
        break;
      case 4: // Notch
        rsample = low + high;
        break;
      default:
      }
      // Panning & master volume
      t = osc_sin((cast(float)k) * this.panFreq) * (cast(float)instr.fx_pan_amt) / 512 + 0.5;
      rsample *= 0.00476 * instr.env_master; // 39 / 8192 = 0.00476

      // Add to 16-bit channel buffer
      // k = k * 2;
      if (k < chnbufLength) {
        chnBuf.left[k] = rsample * (1.0-t) ;
        chnBuf.right[k] = rsample * t;
      }
      if (j == 0)
        break;
    }
  }

  auto createAudioBuffer(uint n) {
    size_t bufferSize = (instr.env_attack + instr.env_sustain + instr.env_release - 1) + (32 * this.rowLen);
    auto buffer = generateBuffer(bufferSize);
    genSound(n, buffer, 0);
    applyDelay(buffer, bufferSize, instr, this.rowLen);

    return getAudioBuffer(this.ctx, buffer);
  }
}

struct SoundPlayer {
  AudioContext ctx;
  AudioBuffer terminal;
  AudioBuffer shoot;
  AudioBuffer hit;
  AudioBuffer explode;
  private void play(ref AudioBuffer buffer, bool loop) {
    auto source = ctx.createBufferSource();
    source.buffer = buffer;
    source.loop = loop;
    source.connect(ctx.destination);
    source.start();
  }
  void playTerminal() {
    play(terminal, false);
  }
  void playShoot() {
    play(shoot, false);
  }
  void playHit() {
    play(hit, false);
  }
  void playExplode() {
    play(explode, false);
  }
}

static immutable Instrument terminalFx = {
		osc1_oct: 6,
		osc1_det: 0,
		osc1_detune: 0,
		osc1_xenv: 0,
		osc1_vol: 0,
		osc1_waveform: &osc_sin,
		osc2_oct: 10,
		osc2_det: 0,
		osc2_detune: 0,
		osc2_xenv: 0,
		osc2_vol: 168,
		osc2_waveform: &osc_tri,
		noise_fader: 0,
		env_attack: 351,
		env_sustain: 0,
		env_release: 444,
		env_master: 192,
		fx_filter: 2,
		fx_freq: 7355,
		fx_resonance: 130,
		fx_delay_time: 3,
		fx_delay_amt: 36,
		fx_pan_freq: 0,
		fx_pan_amt: 0,
		lfo_osc1_freq: 0,
		lfo_fx_freq: 0,
		lfo_freq: 0,
		lfo_amt: 0,
		lfo_waveform: &osc_sin
};

static immutable Instrument shootFx = {
  osc1_oct: 7,
  osc1_det: 0,
  osc1_detune: 0,
  osc1_xenv: 0,
  osc1_vol: 192,
  osc1_waveform: &osc_sin,
  osc2_oct: 2,
  osc2_det: 0,
  osc2_detune: 0,
  osc2_xenv: 0,
  osc2_vol: 192,
  osc2_waveform: &osc_sin,
  noise_fader: 28,
  env_attack: 269,
  env_sustain: 0,
  env_release: 444,
  env_master: 255,
  fx_filter: 0,
  fx_freq: 272,
  fx_resonance: 25,
  fx_delay_time: 5,
  fx_delay_amt: 29,
  fx_pan_freq: 0,
  fx_pan_amt: 47,
  lfo_osc1_freq: 0,
  lfo_fx_freq: 0,
  lfo_freq: 0,
  lfo_amt: 0,
  lfo_waveform: &osc_sin
};

static immutable Instrument hitFx = {
  osc1_oct: 8,
		osc1_det: 0,
		osc1_detune: 0,
		osc1_xenv: 1,
		osc1_vol: 160,
		osc1_waveform: &osc_tri,
		osc2_oct: 8,
		osc2_det: 0,
		osc2_detune: 0,
		osc2_xenv: 1,
		osc2_vol: 99,
		osc2_waveform: &osc_saw,
		noise_fader: 60,
		env_attack: 50,
		env_sustain: 200,
		env_release: 6800,
		env_master: 125,
		fx_filter: 4,
		fx_freq: 11025,
		fx_resonance: 254,
		fx_delay_time: 0,
		fx_delay_amt: 13,
		fx_pan_freq: 5,
		fx_pan_amt: 0,
		lfo_osc1_freq: 0,
		lfo_fx_freq: 1,
		lfo_freq: 4,
		lfo_amt: 60,
		lfo_waveform: &osc_sin
};

static immutable Instrument explodeFx ={
  		osc1_oct: 8,
		osc1_det: 0,
		osc1_detune: 0,
		osc1_xenv: 1,
		osc1_vol: 147,
		osc1_waveform: &osc_square,
		osc2_oct: 6,
		osc2_det: 0,
		osc2_detune: 0,
		osc2_xenv: 1,
		osc2_vol: 159,
		osc2_waveform: &osc_square,
		noise_fader: 255,
		env_attack: 197,
		env_sustain: 1234,
		env_release: 21759,
		env_master: 232,
		fx_filter: 2,
		fx_freq: 1052,
		fx_resonance: 255,
		fx_delay_time: 4,
		fx_delay_amt: 73,
		fx_pan_freq: 3,
		fx_pan_amt: 25,
		lfo_osc1_freq: 0,
		lfo_fx_freq: 0,
		lfo_freq: 0,
		lfo_amt: 0,
		lfo_waveform: &osc_sin
};
auto createSfx(ref AudioContext ctx, immutable Instrument* instrument, uint note) {
  auto generator = SoundGenerator(ctx, instrument, 5606);
  return generator.createAudioBuffer(note);
}
auto createSoundPlayer() {
  auto ctx = newAudioContext();
  auto terminal = ctx.createSfx(&terminalFx, 156);
  auto shoot = ctx.createSfx(&shootFx, 140);
  auto hit = ctx.createSfx(&hitFx, 134);
  auto explode = ctx.createSfx(&explodeFx, 114);
  return SoundPlayer(ctx, terminal, shoot, hit, explode);
}

