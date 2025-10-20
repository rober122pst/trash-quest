if descendo {
	y = lerp(y, destiny, spd_down);
	if int64(y) >= destiny-1 {
		arrive = true;
		descendo = false;
	}
}

if arrive {
	alarm[0] = game_get_speed(gamespeed_fps) / 1.2;
	arrive = false;
}

if subindo {
	if !audio_is_playing(snd_reel) audio_play_sound(snd_reel, 2, true, 1, 0, random_range(0.9, 1.1));
	y -= spd_up;
	var _list_size = array_length(caught);
	if _list_size > 0 {
		for (var i = 0; i < _list_size; i++) {
			if instance_exists(caught[i]) {
				caught[i].y = y; 	
			}
		}
	}
	if y <= initial_y {
		if _list_size > 0 {
			for (var i = 0; i < _list_size; i++) {
				with caught[i] {
					if object_index == o_fish {
						audio_play_sound(snd_cry, 1, 0);
						o_player.life--;
					}else if object_index == o_trash {
						if self.is_move {
							audio_play_sound(snd_heheha, 1, 0);
							global.points+=2;
							global.run_points+=2;
						}else {
							global.points++;
							global.run_points++;
						}
					}
					instance_destroy(self);	
				}
			}
		}else {
			audio_play_sound(snd_grrrr, 1, 0);	
		}
		o_player.state = o_player.state_free;
		audio_stop_sound(snd_reel);
		instance_destroy(self); 
	}	
}


with o_trash {
	if !other.subindo and !grab {
		var dist = point_distance(x, y, other.x, other.y);
		if dist < other.magnetism+8 && dist > 5 {
			var dir = point_direction(x, y, other.x, other.y);
			var intensity = power((1 - dist / other.magnetism), 2);
			var force = other.magnet_force * 1;

			x += lengthdir_x(force, dir);
			y += lengthdir_y(force, dir);
		}
	}
}




// show_debug_message("Y: "+string(int64(y))+" Dest: "+string(destiny))