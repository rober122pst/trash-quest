var point = is_move ? "+2" : "+1";
if grab {
	show_popup(x, y - 16, point, #417455, 45, 0, -0.8, fnt_default);
	audio_play_sound(snd_catch, 5, false);
}