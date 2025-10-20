key_right = 0;
key_left = 0;
key_fishing = 0;

hvel = 0;
max_spd = 2;
acc = .03;

evos = [];

max_life = 5;
life = max_life;

magnetism = 0;
magnet_force = 1;

max_catch = 1;

grab_fish_chance = 100;

spd_hook_down = .02;
spd_hook_up = .45;

dist = 0;

state_free = function() {
	image_speed = 1;
	var dir = key_right - key_left;
	if dir != 0 {
		sprite_index = spr_player_move;
		if !audio_is_playing(snd_row) {
			audio_play_sound(snd_row, 2, true);
		}else {
			audio_sound_gain(snd_row, 1, 500);	
		}
		hvel += acc * dir;
		hvel = clamp(hvel, -max_spd, max_spd);
		dist = 0;
	}else {
		sprite_index = spr_player_idle;
		if audio_is_playing(snd_row) {
			audio_sound_gain(snd_row, 0, 500);
		}
		hvel = lerp(hvel, 0, acc);
		dist += hvel;
	}
	
	if abs(hvel) < 0.1 {
		if key_fishing {
			state = state_throw;
			audio_play_sound(snd_fishing, 10, false, 1, .8);
			image_index = 0;
			hvel = 0;
		}
	}
}

state_throw = function() {
	hvel = 0;
	sprite_index = spr_player_fishing;
	if image_index >= 6 {
		state = state_fishing;
	}
}

state_fishing = function() {
	image_speed = 0;
	
	if !instance_exists(o_hook) {
		var obj = instance_create_layer(x+22, y, "Instances", o_hook);
	}
}

state_freeze = function() { image_speed = 0; hvel = 0; }

state = state_free;