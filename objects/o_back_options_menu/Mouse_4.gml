audio_play_sound(snd_click, 5, false);

var objs = [
	o_options_menu,
	o_toggle_fullscreen,
	o_toggle_music,
	o_toggle_sounds
]

for (var i = 0; i < array_length(objs); i++) {
	instance_destroy(objs[i]);
}

o_menu_buttons.show_buttons();

save_game();

instance_destroy(self);