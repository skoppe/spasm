module game.level;

import game.renderer;
import game.entity;
import game.math;
import game.terminal;
import game.game;
import spasm.rt.array;
import spasm.array;
import std.range : only;
import spasm.rt.memory;
import game.chain;

nothrow:
@safe:

enum Input {
  None = 0,
  Left = 1,
  Right = 2,
  Up = 4,
  Down = 8,
  Shoot = 16
}

Input getKey(string key) {
  if (key == "ArrowLeft" || key == "a")
    return Input.Left;
  if (key == "ArrowRight" || key == "d")
    return Input.Right;
  if (key == "ArrowUp" || key == "w")
    return Input.Up;
  if (key == "ArrowDown" || key =="s")
    return Input.Down;
  return Input.None;
}

__gshared Terminal* gTerminal;
__gshared Game* gGame;
__gshared int current_level = 1;

struct Level {
  nothrow:
  enum Block {empty=0, floor=1, wall=2, player=3, cpu=4, sentry=5}
  Player player;
  ubyte[] data;
  int cpus_rebooted = 0;
  PointerArray!(Cpu*) cpus;
  PointerArray!(PlayerPlasma*) pPlasma;
  PointerArray!(Spider*) spiders;
  PointerArray!(Health*) healths;
  PointerArray!(Sentry*) sentries;
  PointerArray!(SentryPlasma*) sPlasma;
  PointerArray!(Particle*) particles;
  PointerArray!(Explosion*) explosions;
  void updateEntities(float tick, Input input, int mouseX, int mouseY) @trusted {
    if (player.entity.dead || gGame.finished)
      return;
    player.update(this,tick,input,mouseX, mouseY);
    collision();
    foreach(ref cpu; cpus[]) cpu.update(this, tick);
    foreach(ref pp; pPlasma[]) pp.update(this, tick);
    foreach(ref s; spiders[]) s.update(this, tick);
    foreach(ref s; sentries[]) s.update(this, tick);
    foreach(ref s; sPlasma[]) s.update(this, tick);
    foreach(ref p; particles[]) p.update(this, tick);
    foreach(ref e; explosions[]) e.update(this, tick);
  }
  void collision() {
    static bool collides(ref Entity a, ref Entity b) {
      return !(a.x >= b.x + 9 ||
               a.x + 9 <= b.x ||
               a.z >= b.z + 9 ||
               a.z + 9 <= b.z);
    }
    static void checkPlayerCollision(T)(T[] ts, ref Level level, ref Player player) {
      foreach(ref t; ts) {
        if (collides(player.entity,t.entity)) {
          t.check(level, player);
          break;
        }
      }
    }
    // check player against cpus, spiders, healths, sentryPlasmas
    checkPlayerCollision(cpus[],this,player);
    checkPlayerCollision(spiders[],this,player);
    checkPlayerCollision(healths[],this,player);
    checkPlayerCollision(sPlasma[],this,player);

    // check plasma against spiders, sentries
  outer: foreach(ref pp; pPlasma[]) {
      foreach(ref s; spiders[]) {
        if (collides(pp.entity,s.entity)) {
          pp.check(this, s);
          break outer;
        }
      }
      foreach(ref s; sentries[]) {
        if (collides(pp.entity,s.entity)) {
          pp.check(this, s);
          break outer;
        }
      }
    }
  }
  void render(ref Renderer renderer, float tick) @trusted {
    if (!gGame.finished && !player.entity.dead)
      player.render(renderer);
    foreach(i; 0..player.entity.health)
      renderer.push_sprite(-renderer.camera_x - 50 + i * 4, 29-renderer.camera_y, -renderer.camera_z-30, 26);
    foreach(ref cpu; cpus[]) cpu.render(renderer);
    foreach(ref pp; pPlasma[]) pp.render(renderer);
    foreach(ref s; spiders[]) s.render(renderer);
    foreach(ref h; healths[]) h.render(renderer);
    foreach(ref s; sentries[]) s.render(renderer);
    foreach(ref sp; sPlasma[]) sp.render(renderer);
    foreach(ref p; particles[]) p.render(renderer);
    foreach(ref e; explosions[]) e.render(renderer);
  }
  void put(Explosion* e) {
    explosions.put(e);
  }
  void put(Particle* p) {
    particles.put(p);
  }
  void put(PlayerPlasma* p) {
    pPlasma.put(p);
  }
  void put(Sentry* s) {
    sentries.put(s);
  }
  void put(SentryPlasma* p) {
    sPlasma.put(p);
  }
  void remove(Explosion* e) {
    explosions.removeItem(e);
  }
  void remove(Particle* p) {
    particles.removeItem(p);
  }
  void remove(Health* h) {
    healths.removeItem(h);
  }
  void remove(Spider* s) {
    spiders.removeItem(s);
  }
  void remove(PlayerPlasma* p) {
    pPlasma.removeItem(p);
  }
  void remove(Sentry* s) {
    sentries.removeItem(s);
  }
  void remove(SentryPlasma* s) {
    sPlasma.removeItem(s);
  }
  void rebootCpu() @trusted {
    cpus_rebooted++;

    enum reboot_message = only(
                           l(3,"REBOOTING..."),
                           l(13,"SUCCESS")
                               );
    enum stillOffline = " SYSTEM(S) STILL OFFLINE";

    if (cpus.length-cpus_rebooted > 0) {
      (*gTerminal).terminal_show_notice(
                           chain(reboot_message,only(l(14,text(cpus.length-cpus_rebooted,stillOffline))))
      );
    }
    else {
      if (current_level != 3) {
        (*gTerminal).terminal_show_notice(chain(
                                   reboot_message,
                                   only(l(14,"ALL SYSTEMS ONLINE"),
                                        l(15,"TRIANGULATING POSITION FOR NEXT HOP..."),
                                        l(45,"TARGET ACQUIRED"),
                                        l(46,"JUMPING..."))
                                   ),
                             &this.nextLevel
                             );
      }
      else {
        (*gTerminal).terminal_show_notice(chain(
                                   reboot_message,
                                   only(l(14,"ALL SYSTEMS ONLINE"))
                                   ),&this.nextLevel);
      }
    }
    // TODO
    // audio_play(audio_sfx_beep);
  }
  void clearEntities() {
    cpus.shrinkTo(0);
    pPlasma.shrinkTo(0);
    spiders.shrinkTo(0);
    healths.shrinkTo(0);
    sentries.shrinkTo(0);
    sPlasma.shrinkTo(0);
    particles.shrinkTo(0);
    explosions.shrinkTo(0);
  }
  void nextLevel() @trusted {
    gGame.loadNextLevel();
  }
  void decodeLevel(ref Renderer renderer, int id = 0) @trusted {
    clearEntities();
    cpus_rebooted = 0;
    auto randomWallTile() {
      if (random() < 0.8f)
        return 7;
      return cast(int)(random()*8f+8.5f);
    }
    auto randomFloorTile() {
      auto i = cast(int)(random()*16f+0.5f);
      if (i < 5) return 0;
      if (i < 6) return 1;
      if (i < 8) return 2;
      if (i < 14) return 4;
      if (i < 15) return 5;
      return 6;
    }
    renderer.begin_build_level();
    for(int idx = 0; idx < 64*64; idx++) {
      if (data[idx] == Block.empty)
        continue;
      auto y = cast(int)(idx / 64);
      auto x = idx % 64;
      if (data[idx] != Block.wall) {
        renderer.push_floor(x*8,y*8,randomFloorTile());
      }
      with (Block) {
        switch(data[idx]) {
        case floor: break;
        case wall: renderer.push_block(x*8,y*8,4,randomWallTile());
          break;
        case player:
          this.player.entity = Entity(x*8,0,y*8,5,18);
          break;
        case cpu:
          cpus.put(allocator.make!(Cpu)(Entity(x*8, 0, y*8, 0, 18)));
          break;
        case sentry:
          sentries.put(allocator.make!Sentry(Entity(x*8, 0, y*8, 5, 32)));
          break;
        default: assert(0);
        }
      }
    }
    // generate spiders/health
    float spiderProb = 1f / (16-(id*2));
    enum healthProb = 1f / 100;
    for(int idx = 0; idx < 64*64; idx++) {
      if (data[idx] != Block.floor)
        continue;
      auto y = cast(int)(idx / 64);
      auto x = idx % 64;
      bool toCloseForSpiders = abs(player.entity.x - x*8) < 64 || abs(player.entity.y - y*8) < 64;
      if (!toCloseForSpiders && random() <= spiderProb)
        spiders.put(allocator.make!(Spider)(Entity(x*8, 0, y*8, 5, 27)));
      if (random() <= healthProb)
        healths.put(allocator.make!(Health)(Entity(x*8, 0, y*8, 5, 31)));
    }
    renderer.end_build_level(-player.entity.x,-300,-player.entity.z-100);
  }
  bool collides(int x, int z) {
    enum w = 64;
		return data[(x >> 3) + (z >> 3) * w] == Block.wall || // top left
      data[(x >> 3) + (z >> 3) * w] == Block.cpu || // top left
			data[((x + 6) >> 3) + (z >> 3) * w] == Block.wall || // top right
			data[((x + 6) >> 3) + (z >> 3) * w] == Block.cpu || // top right
			data[((x + 6) >> 3) + ((z+4) >> 3) * w] == Block.wall || // bottom right
			data[((x + 6) >> 3) + ((z+4) >> 3) * w] == Block.cpu || // bottom right
			data[(x >> 3) + ((z+4) >> 3) * w] == Block.wall || // bottom left
			data[(x >> 3) + ((z+4) >> 3) * w] == Block.cpu; // bottom left
	}
}
