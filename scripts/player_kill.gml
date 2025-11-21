///player_kill()

if global.debug_god_mode {
    exit;
}

with(Player) {
    save_set_persistent("deaths", save_get("deaths") + 1);
    h = instance_create(x, y, Head);
    h.speed = random(8);
    h.direction = random(360);
    h.image_xscale = image_xscale;
    g = instance_create(x, y, Gun);
    g.speed = random(8);
    g.direction = random(360);
    for(i = 0; i < 2; i += 1) {
        a = instance_create(x, y, Arm);
        a.speed = random(8);
        a.direction = random(360);
        f = instance_create(x, y, Foot);
        f.speed = random(8);
        f.direction = random(360);
    }
    instance_create(x, y, BloodEmitter);
    sound_kind_pause(1)
    sound_kind_stop(0)
    sound_play_single("player_death");
    sound_play_single("ahh")

    instance_create(0, 0, GameOver);
    instance_destroy();
}
