if show {
	var xx = 64;
	var yy = 128;
	draw_set_halign(fa_left)
	draw_set_font(fnt_description);
	draw_text(xx, yy, "Vel hook: " + string(o_player.spd_hook_up));
	draw_text(xx, yy + 20, "Max cath: " + string(o_player.max_catch));
	if instance_exists(o_hook)
		draw_text(xx, yy + 40, "Grabs: " + string(o_hook.caught));
	if instance_exists(o_hook_teammate)		
		draw_text(xx, yy + 60, "Grabs Team: " + string(o_hook_teammate.caught));
	draw_set_halign(fa_center)
}