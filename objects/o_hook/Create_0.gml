destiny = y+120;
initial_y = y;

arrive = false;

magnetism = o_player.magnetism;
magnet_force = o_player.magnet_force;

spd_down = o_player.spd_hook_down;
spd_up = o_player.spd_hook_up;

subindo = false;
descendo = true;

alarm[0] = 0;

caught = [];
can_catch_trash = false;

max_catch = o_player.max_catch;

audio_play_sound(snd_splash, 2, false, 1, 0, random_range(0.9, 1.1));