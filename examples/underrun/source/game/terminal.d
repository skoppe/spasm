module game.terminal;

import spasm.types;
import spasm.spa;
import spasm.rt.memory;
import game.math;
import game.audio;

import std.range : only;

struct Bold {
  mixin Node!"b";
  @prop string innerText = "█";
}
struct Line {
  mixin Node!"div";
  @prop string innerText;
  @child Bold bold;
  @visible!"bold" bool isLast = false;
  void setLast(bool l) {
    this.update!isLast(l);
  }
  this(string line) {
    this.innerText = line;
  }
}

alias TerminalCallback = void delegate();
struct Terminal {
  mixin Node!"div";
  @style!"transparent" bool transparent = false;
  @style!"hide" bool hidden;
  @prop id = "a";
  @child List!(Line, "code") terminal_text_buffer;
  @property bool indent = true;
  @property int wait = 100;
  @property int timeoutId;
  @property int hideTimeoutId;
  void cancel() {
    clearTimeout(timeoutId);
  }
  void show() {
    clearTimeout(hideTimeoutId);
    spasm.dom.update!transparent(this,false);
    spasm.dom.update!hidden(this,false);
  }
  void hide() {
    spasm.dom.update!transparent(this,true);
    hideTimeoutId = setTimeout(&setHidden, 1000);
  }
  void setHidden() {
    spasm.dom.update!hidden(this,true);
  }
  void add(string line) {
    add(allocator.make!(Line)(line));
  }
  void add(Line* line) {
    gSoundPlayer.playTerminal();
    if (terminal_text_buffer.items.length > 0)
      terminal_text_buffer.items[$-1].setLast(false);
    line.isLast = true;
    if (terminal_text_buffer.items[].length > 20)
      terminal_text_buffer.remove(0);
    terminal_text_buffer.put(line);
  }
  void clear() {
    terminal_text_buffer.shrinkTo(0);
  }
}

enum terminal_text_ident = "&gt; ";

struct TextItem {
  int idx;
  string text;
}

auto l(int t, string line) {
  return TextItem(t,line);
}

enum terminal_text_garbage = "´A1e{∏éI9·NQ≥ÀΩ¸94CîyîR›kÈ¡˙ßT-;ûÅf^˛,¬›A∫Sã€«ÕÕ1f@çX8ÎRjßf•ò√ã0êÃcÄ]Î≤moDÇ’ñ‰\\ˇ≠n=(s7É;";

enum terminal_text_title =
	only(
	l(0,"> UNDERRUN"),
	l(20,">  "),
	l(21,"> CONCEPT, GRAPHICS &AMP; PROGRAMMING:"),
	l(22,"> DOMINIC SZABLEWSKI // PHOBOSLAB.ORG"),
	l(42,">  "),
	l(43,"> MUSIC:"),
	l(44,"> ANDREAS LÖSCH // NO-FATE.NET"),
	l(74,">  "),
	l(75,"> SYSTEM VERSION: 13.20.18"),
	l(76,"> CPU: PL(R) Q-COATL 7240 @ 12.6 THZ"),
	l(77,"> MEMORY: 108086391056891900 BYTES"),
	l(78,">  "),
	l(79,"> CONNECTING...")
       );

enum terminal_text_story =
	only(
	l(0,"> DATE: SEP. 13, 2718 - 13:32"),
	l(1,"> CRITICAL SOFTWARE FAILURE DETECTED"),
	l(2,"> ANALYZING..."),
	l(41,">  "),
	l(42,"> ERROR CODE: JS13K2018"),
	l(43,"> STATUS: SYSTEMS OFFLINE"),
	l(44,"> DESCRIPTION: BUFFER UNDERRUN DUE TO SATCOM R.U.D."),
	l(45,"> AFFECTED SYSTEM: FACILITY AUTOMATION"),
	l(46,"> AFFECTED SUBSYSTEMS: AI, RADIATION SHIELDS, POWER MANAGEMENT"),
	l(47,">  "),
	l(48,"> INITIATING RESCUE SYSTEM..."),
	l(78,"> FAILED"),
	l(79,">  "),
	l(80,"> ATTEMPTING AUTOMATED REBOOT..."),
	l(110,"> FAILED"),
	l(120,">  "),
	l(121,">  "),
	l(122,"> MANUAL REBOOT OF ALL SYSTEMS REQUIRED"),
	l(132,">  "),
	l(133,"> USE WASD OR CURSOR KEYS TO MOVE, MOUSE TO SHOOT"),
	l(134,"> CLICK TO INITIATE YOUR DEPLOYMENT"),
	l(135,">  ")
       );

enum terminal_text_outro =
	only(
	l(0,"> ALL SATELLITE LINKS ONLINE"),
	l(1,"> CONNECTING..."),
	l(31,"> CONNECTION ESTABLISHED"),
	l(32,"> RECEIVING TRANSMISSION..."),
	l(62,">  "),
	l(63,"> SENT: SEP. 13, 2018"),
	l(64,"> RCVD: SEP. 13, 2718"),
	l(65,">  "),
	l(66,"> THANKS FOR PLAYING ❤"),
	l(76,">  "),
	l(77,"> I HAVE PREVIOUSLY BEEN A PROUD SPONSOR OF THE JS13K"),
	l(78,"> COMPETITION SINCE THE VERY FIRST ONE BACK IN 2012."),
	l(79,"> HOWEVER, THIS YEAR\"S COMPETITION WAS MY FIRST ONE"),
	l(80,"> AS A PARTICIPANT AND IT HAS BEEN TREMENDOUS FUN!"),
	l(81,">  "),
	l(82,"> I WANT TO THANK MY DEAR FRIEND ANDREAS LÖSCH OF"),
	l(83,"> NO-FATE.NET FOR COMPOSING SOME AWESOME MUSIC ON"),
	l(84,"> SUCH SHORT NOTICE."),
	l(85,">  "),
	l(86,"> FURTHER THANKS GO OUT TO THE JS13K STAFF, THE"),
	l(87,"> SONANT-X DEVELOPERS AND ALL OTHER PARTICIPANTS"),
	l(88,"> IN THIS YEAR\"S JS13K. SEE YOU NEXT YEAR!"),
	l(89,">  "),
	l(90,"> DOMINIC"),
	l(110,"> END OF TRANSMISSION")
	);

struct TerminalWriter(LineRange) {
  Terminal* terminal;
  LineRange lines;
  TerminalCallback callback;
  int idx = 0;
  this(Terminal* terminal, ref LineRange lines, TerminalCallback callback) {
    this.terminal = terminal;
    this.lines = lines;
    this.callback = callback;
  }
  void writeLine() {
    if (lines.empty) {
      if (callback) callback();
      return;
    }
    if (lines.front().idx == idx) {
      // TODO:
      // audio_play(audio_sfx_terminal);
      terminal.add(lines.front().text);
      lines.popFront();
    }
    idx++;
    terminal.timeoutId = setTimeout(&writeLine, terminal.wait);
  }
}

void terminal_write_text(LineRange)(ref Terminal terminal, LineRange lines, TerminalCallback callback = null) {
  auto writer = allocator.make!(TerminalWriter!(LineRange))(&terminal, lines, callback);
  writer.writeLine();
}

auto terminal_show_notice(LineRange)(ref Terminal terminal, LineRange notice, TerminalCallback callback = null) {
  static struct Handler {
    Terminal* terminal;
    TerminalCallback callback;
    void trigger() {
      terminal.timeoutId = setTimeout(&end,2000);
    }
    void end() {
      terminal.hide();
      if (callback) callback();
    }
  }
  terminal.clear();
  terminal.cancel();
  terminal.show();
  auto handler = allocator.make!(Handler)(&terminal, callback);
  terminal.terminal_write_text(notice, &handler.trigger);
}

extern(C) int setTimeout(int ctx, int ptr, int ms);
extern(C) void clearTimeout(int id);

int setTimeout(Delegate)(Delegate del, int ms) {
  return setTimeout(del.toTuple.expand,ms);
}

auto terminal_run_intro(ref Terminal terminal) {
  terminal.clear();
  static struct Handler {
    Terminal* terminal;
    this(Terminal* t) {
      this.terminal = t;
    }
    void trigger() {
      setTimeout(&end, 4000);
    }
    void end() {
      (*terminal).terminal_run_garbage();
    }
  }
  auto handler = allocator.make!(Handler)(&terminal);
	terminal.terminal_write_text(terminal_text_title, &handler.trigger);
}

struct TerminalGarbage {
  int idx, s, e;
  this(int i) {
    idx = i;
    popFront();
  }
  void popFront() {
		s = cast(int)(random()*terminal_text_garbage.length);
		e = cast(int)(random()*(terminal_text_garbage.length - s));
    idx++;
  }
  auto empty() { return idx > 64; }
  auto front() {
    return l(idx,terminal_text_garbage[s .. s+e]);
  }
}

auto terminal_run_garbage(ref Terminal terminal) {
  terminal.indent = false;
  terminal.wait = 16;
  static struct Handler {
    Terminal* terminal;
    this(Terminal* t) {
      this.terminal = t;
    }
    void end() {
      (*terminal).terminal_run_story();
    }
  }
  auto handler = allocator.make!(Handler)(&terminal);
  terminal.terminal_write_text(TerminalGarbage(0), &handler.end);
}

auto terminal_run_story(ref Terminal terminal) {
	terminal.indent = true;
	terminal.wait = 100;
	terminal.terminal_write_text(terminal_text_story);
}

auto terminal_run_outro(ref Terminal terminal) {
  // TODO
	// c.style.opacity = 0.3;
  terminal.clear();

	terminal.cancel();
	terminal.show();
	terminal.terminal_write_text(terminal_text_outro);
}
