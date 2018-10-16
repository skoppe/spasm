module game.entity;

import game.level;
import game.renderer;
import game.math;
import game.terminal;
import spasm.rt.memory;
import std.range : only;
import game.audio;

struct Entity {
  float x=0,y=0,z=0;
  float vx=0,vy=0,vz=0;
  float ax=0,ay=0,az=0;
  float friction;
  int sprite, health=5;
  bool dead = false;
  this(float x, float y, float z, float friction, int sprite) {
    this.x=x;this.y=y;this.z=z;this.friction=friction;this.sprite=sprite;
    health=5;
  }
  void kill() {
    dead = true;
  }
}

int roundf(float v) {
  if (v > 0f)
    return cast(int)(v + 0.5f);
  return cast(int)(v - 0.5f);
}
int truncf(float v) {
  return cast(int)v;
}
Level.Block update(ref Level level, ref Entity entity, float elapsed) {
    float last_x = entity.x, last_z = entity.z;
    auto r = Level.Block.empty;
    import std.algorithm : min;
    auto f = min(entity.friction*elapsed, 1);
    entity.vx += entity.ax * elapsed - entity.vx * f;
    entity.vy += entity.ay * elapsed - entity.vy * f;
    entity.vz += entity.az * elapsed - entity.vz * f;
    entity.x += entity.vx * elapsed;
    entity.y += entity.vy * elapsed;
    entity.z += entity.vz * elapsed;
    auto xi = entity.x.truncf;
    if (level.collides(xi, last_z.truncf)) {
      entity.x = last_x;
      entity.vx = 0;
      r = Level.Block.wall;
    }
    if (level.collides(xi, entity.z.truncf)) {
      entity.z = last_z;
      entity.vz = 0;
      r = Level.Block.wall;
    }
    return r;
}

void render(ref Renderer renderer, ref Entity entity) {
    renderer.push_sprite(entity.x-1,entity.y,entity.z,entity.sprite);
}

struct Spider {
  Entity entity;
  float animation_time = 0;
  float select_target_counter = 0;
  float target_x, target_z;
  this(Entity entity) {
    this.entity = entity;
    target_x = entity.x;
    target_z = entity.z;
  }
	void render(ref Renderer renderer) {
		renderer.render(entity);
	}
  void update(ref Level level, float elapsed) {
		auto txd = entity.x - target_x;
		auto tzd = entity.z - target_z;
    auto xd = entity.x - level.player.entity.x;
    auto zd = entity.z - level.player.entity.z;
    auto dist = sqrt(xd * xd + zd * zd);

    select_target_counter -= elapsed;

		// select new target after a while
		if (select_target_counter < 0 && dist < 64) {
			select_target_counter = random() * 0.5 + 0.3;
			target_x = level.player.entity.x;
			target_z = level.player.entity.z;
		}

		// set velocity towards target
		entity.ax = abs(txd) > 2 ? (txd > 0 ? -160 : 160) : 0;
		entity.az = abs(tzd) > 2 ? (tzd > 0 ? -160 : 160) : 0;

		level.update(entity, elapsed);
		animation_time += elapsed;
		entity.sprite = 27 + (cast(int)(animation_time*15f)|0)%3;
	}
  void receive_damage(ref Level level, ref Entity from, int amount) {
    entity.health -= amount;
    if (entity.health <= 0)
      kill(level);
    entity.vx = from.vx;
    entity.vz = from.vz;
    import std.range : take;
    foreach(p;ParticleSpawner(entity.x,entity.z).take(5))
      level.put(p);
  }
  void check(Spider other) {
    if (abs(other.entity.x - entity.x) > abs(other.entity.z - entity.z)) {
      auto amount = entity.x > other.entity.x ? 0.6 : -0.6;
      entity.vx += amount;
      other.entity.vx -= amount;
    } else {
      auto amount = entity.z > other.entity.z ? 0.6 : -0.6;
      entity.vz += amount;
      other.entity.vz -= amount;
    }
  }
  void check(ref Level level, ref Player other) {
			entity.vx *= -1.5;
			entity.vz *= -1.5;
			other.receive_damage(level, 1);
  }
  void kill(ref Level level) {
		entity.kill();
    level.remove(&this);
    level.put(allocator.make!Explosion(Entity(entity.x, 0, entity.z, 0, 26)));
		camera_shake = 1f;
    gSoundPlayer.playExplode();
	}
}

struct ParticleSpawner {
  enum empty = false;
  Particle* p;
  float x, z;
  void gen() {
    p = allocator.make!Particle(Entity(this.x, 0, this.z, 1, 30));
    p.entity.vx = (random() - 0.5) * 128;
    p.entity.vy = random() * 96;
    p.entity.vz = (random() - 0.5) * 128;
  }
  this(float x, float z) {
    this.x = x; this.z = z;
    gen();
  }
  auto front() {
    return p;
  }
  auto popFront() {
    gen();
  }
}

struct Sentry {
  Entity entity;
  float select_target_counter = 0;
  float target_x, target_z;
  this(Entity entity) {
    this.entity = entity;
		target_x = entity.x;
		target_z = entity.z;
		entity.health = 20;
	}

  void render(ref Renderer renderer) {
    renderer.render(entity);
  }

	void update(ref Level level, float elapsed) {
		auto txd = entity.x - target_x;
		auto tzd = entity.z - target_z;
    auto xd = entity.x - level.player.entity.x;
    auto zd = entity.z - level.player.entity.z;
    auto dist = sqrt(xd * xd + zd * zd);

		select_target_counter -= elapsed;

		// select new target after a while
		if (select_target_counter < 0) {
			if (dist < 64) {
				select_target_counter = random() * 0.5 + 0.3;
				target_x = level.player.entity.x;
				target_z = level.player.entity.z;
			}
			if (dist < 48) {
				auto angle = atan2(
					level.player.entity.z - entity.z,
					level.player.entity.x - entity.x
				);
        level.put(allocator.make!SentryPlasma(Entity(entity.x, 0, entity.z, 0, 26), angle + random() * 0.2 - 0.11));
			}
		}
		// set velocity towards target
		if (dist > 24) {
			entity.ax = abs(txd) > 2 ? (txd > 0 ? -48 : 48) : 0;
			entity.az = abs(tzd) > 2 ? (tzd > 0 ? -48 : 48) : 0;
		} else {
			entity.ax = entity.az = 0;
		}

    level.update(entity, elapsed);
	}

	void receive_damage(ref Level level, Entity from, int amount) {
    entity.health -= amount;
    if (entity.health <= 0)
      kill(level);
		entity.vx = from.vx * 0.1;
		entity.vz = from.vz * 0.1;
    import std.range : take;
    foreach(p;ParticleSpawner(entity.x,entity.z).take(3))
      level.put(p);
	}

	void kill(ref Level level) {
    entity.kill();
    level.remove(&this);
    level.put(allocator.make!Explosion(Entity(entity.x, 0, entity.z, 0, 26)));
		camera_shake = 3f;
    gSoundPlayer.playExplode();
	}
}

struct SentryPlasma {
  Entity entity;
  this(Entity entity, float angle) {
    this.entity = entity;
		enum speed = 64;
		this.entity.vx = cos(angle) * speed;
		this.entity.vz = sin(angle) * speed;
	}

  void update(ref Level level, float elapsed) {
    if (level.update(entity, elapsed) == Level.Block.wall)
      kill(level);
  }

	void render(ref Renderer renderer) {
		renderer.render(entity);
		renderer.push_light(entity.x, 4, entity.z + 6, 1.5, 0.2, 0.1, 0.04);
	}

  void kill(ref Level level) {
    entity.kill;
    level.remove(&this);
  }

	void check(ref Level level, Player other) {
    other.receive_damage(level, 1);
    kill(level);
	}
}

enum PI = 3.141592654f;

struct Player {
  Entity entity;
  float last_shot = 0, last_damage = 0, bob = 0;
  int frame = 0;
  this(Entity entity) {
    this.entity = entity;
	}

	void update(ref Level level, float elapsed, Input input, int mouseX, int mouseY) {
		enum speed = 128;

		// movement
		entity.ax = (input & Input.Left) == Input.Left ? -speed : (input & Input.Right) ? speed : 0;
		entity.az = (input & Input.Up) ? -speed : (input & Input.Down) ? speed : 0;

		// rotation - select appropriate sprite
		auto angle = atan2(
                       mouseY - (-34 + 180 /*c.height*/ * 0.8),
                       mouseX - (6 + /*camera_x +*/ 320/*c.width*/ * 0.5)
		);
		entity.sprite = 18 + cast(int)((angle / PI * 4f + 10.5f) % 8)|0;

		// bobbing
		bob += elapsed * 1.75 * (abs(entity.vx) + abs(entity.vz));
		entity.y = sin(bob) * 0.25;

		last_damage -= elapsed;
		last_shot -= elapsed;

		if (input & Input.Shoot && last_shot < 0) {
      // TODO
			gSoundPlayer.playShoot();
      level.put(
                allocator.make!PlayerPlasma(Entity(entity.x, 0, entity.z, 0, 26), angle + random() * 0.2 - 0.11)
                );
			last_shot = 0.1;
		}

		level.update(entity, elapsed);
	}

	void render(ref Renderer renderer) {
		frame++;
		if (last_damage < 0 || frame % 6 < 4) {
			renderer.render(entity);
		}
		renderer.push_light(entity.x, 4, entity.z + 6, 1,0.5,0, 0.04);
	}

	void kill(ref Level level) {
    if (entity.dead)
      return;
		entity.kill();
		entity.y = 10;
		entity.z += 5;
		(*gTerminal).terminal_show_notice(
                                      only(
                                           l(0,"DEPLOYMENT FAILED"),
                                           l(1,"RESTORING BACKUP...")
                                           )
                                      );
		setTimeout(&gGame.loadLevel, 3000);
	}

	void receive_damage(ref Level level, int amount) {
		if (last_damage < 0) {
      // TODO
			// audio_play(audio_sfx_hurt);
      entity.health -= amount;
      if (entity.health <= 0)
        kill(level);
			last_damage = 2;
		}
	}
}

struct PlayerPlasma {
  Entity entity;
  this(Entity entity, float angle) {
    this.entity = entity;
		enum speed = 96;
		this.entity.vx = cos(angle) * speed;
		this.entity.vz = sin(angle) * speed;
	}
  void update(ref Level level, float elapsed) {
    if (level.update(entity, elapsed) == Level.Block.wall)
      kill(level);
  }
	void render(ref Renderer renderer) {
		renderer.render(entity);
		renderer.push_light(entity.x, 4, entity.z + 6, 0.9, 0.2, 0.1, 0.04);
	}
  void kill(ref Level level) {
    entity.kill();
    level.remove(&this);
  }
  void check(ref Level level, Sentry* other) {
    gSoundPlayer.playHit();
    other.receive_damage(level, entity, 1);
    kill(level);
  }
	void check(ref Level level, Spider* other) {
    gSoundPlayer.playHit();
    other.receive_damage(level, entity, 1);
    kill(level);
	}
}

struct Particle {
  Entity entity;
  float lifetime = 3;
  this(Entity entity) {
    this.entity = entity;
	}

  void render(ref Renderer renderer) {
    renderer.render(entity);
  }

	void update(ref Level level, float elapsed) {
		entity.ay = -320;

		if (entity.y < 0) {
			entity.y = 0;
			entity.vy = -entity.vy * 0.96;
		}
		level.update(entity, elapsed);
		lifetime -= elapsed;
		if (lifetime < 0) {
      entity.kill();
      level.remove(&this);
		}
	}
}

struct Health {
  Entity entity;
  this(Entity entity) {
    this.entity = entity;
	}
  void render(ref Renderer renderer) {
    renderer.render(entity);
  }
  void kill(ref Level level) {
    entity.kill();
    level.remove(&this);
  }
	void check(ref Level level, ref Player other) {
    kill(level);
    other.entity.health += other.entity.health < 5 ? 1 : 0;
    // TODO:
    // audio_play(audio_sfx_pickup);
  }
}

struct Explosion {
  Entity entity;
  float lifetime;
  this(Entity entity) {
    this.entity = entity;
    lifetime = 1;
	}

	void update(ref Level level, float elapsed) {
		lifetime -= elapsed;
		if (lifetime < 0) {
			entity.kill();
      level.remove(&this);
		}
	}

	void render(ref Renderer renderer) {
    renderer.render(entity);
		renderer.push_light(entity.x, 4, entity.z + 6, 1,0.7,0.3, 0.08*(1-lifetime));
	}
}

struct Cpu {
  Entity entity;
  float animation_time = 0f;
  void update(ref Level level, float elapsed) {
		animation_time += elapsed;
  }
	void render(ref Renderer renderer) {
		renderer.push_block(entity.x, entity.z, 4, 17);
		float intensity = entity.health == 5
			? 0.02f + sin(animation_time*10f+random()*2f) * 0.01f
			: 0.01f;
		renderer.push_light(entity.x + 4, 4, entity.z + 12, 0.2, 0.4, 1.0, intensity);
	}

	void check(ref Level level, ref Player other) {
		if (entity.health == 5) {
			entity.health = 10;
			level.rebootCpu();
		}
	}
}
