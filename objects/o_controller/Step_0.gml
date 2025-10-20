if instance_number(o_trash) == 0 and !choosing {
	instance_destroy(o_fish);
	WAVE++;
	spawn_interval_fish = max(game_get_speed(gamespeed_fps) * (5/WAVE), 40);
	num_moveis = clamp(WAVE - 2, 0, 6+WAVE);
	move_trash_count = 0;
	if WAVE > 1 {
		choosing = true;
		showing = false;
	}else {
		spawn_wave_trash();	
	}
}

if choosing {
	o_player.state = o_player.state_freeze;
	if !showing and !global.game_over show_evo_cards(); showing = true;	
}

spawn_move_trash_timer++;
if spawn_move_trash_timer >= spawn_move_trash_interval {
	if move_trash_count < num_moveis and !choosing {
		spawn_move_trash_timer = 0;
		move_trash_count++;
		spawn_move_trash();
	}
}

if global.game_over {
	if !instance_exists(o_game_over) {
		instance_create_layer(room_width/2, room_height/2, "Cards", o_game_over);
		instance_destroy(o_fish);
		instance_destroy(o_trash);
		o_player.state = o_player.state_freeze;
	}
}