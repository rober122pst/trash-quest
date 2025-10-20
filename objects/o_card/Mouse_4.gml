for (var i = 0; i < array_length(o_controller.evos); i++) {
	var evo = o_controller.evos[i];
	if (card_name == evo.card_name) {
		evo.lvl++;
		effect();
		o_controller.choosing = false;
		o_controller.spawn_wave_trash();
		o_player.state = o_player.state_free;
		instance_destroy(o_card);
		instance_destroy(o_reroll);
		if evo.lvl == 1 {
			array_push(o_player.evos, evo)	
		}
		
		break;
	}
}
audio_play_sound(snd_click, 5, false);

