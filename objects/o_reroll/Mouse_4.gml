if global.points >= o_controller.reroll_price {
	instance_destroy(o_card);
	o_controller.show_evo_cards();
	global.points-=o_controller.reroll_price;
}
audio_play_sound(snd_click, 5, false);