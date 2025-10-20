
if room == Room1 {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_geral);
	if instance_exists(o_controller)
		draw_text(display_get_gui_width()/2, 60, "Wave "+ string(o_controller.WAVE));
	
	if instance_exists(o_player) {
		for (var i = 0; i < array_length(o_player.evos); i++) {
			var evo = o_player.evos[i];
			draw_sprite_ext(spr_icons, evo.icon_idx, (20+42*i)*(SCALE/2), display_get_gui_height() - 128, SCALE/2, SCALE/2, 0, c_white, 1);
			draw_set_font(fnt_description);
			draw_text((42+42*i)*(SCALE/2), display_get_gui_height() - 128, evo.lvl);
		}
	}


	// DRAW LIFE
	for (var i = 0; i < o_player.life; i++) {
		draw_sprite_ext(spr_life, 0, (20+12*i)*SCALE, 15*SCALE, SCALE, SCALE, 0, c_white, 1);	
	}
}

// DRAW POINTS
draw_sprite_ext(spr_points, 0, display_get_gui_width()-32*SCALE, 15*SCALE, SCALE, SCALE, 0, c_white, 1);
draw_set_valign(fa_middle);
draw_set_halign(fa_left);
draw_set_font(fnt_title)
draw_text(display_get_gui_width()-25*SCALE, 14*SCALE, global.points);
draw_set_halign(fa_center);