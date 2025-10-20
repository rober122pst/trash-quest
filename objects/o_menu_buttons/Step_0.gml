if !instance_exists(o_buttons) {
	show_debug_message("Criou")
	var spr_height = sprite_get_height(spr_menu_buttons);
	var gap = 10;
	var step_y = spr_height + gap;
	var total_block_height = (num_buttons - 1) * step_y;
	var start_y = (room_height / 2) - (total_block_height / 2);
	for (var i = 0; i < num_buttons; i++) {	
		var yy = start_y + (i * step_y);	
		instance_create_layer(room_width / 2, yy, "Instances", o_buttons, { image_index: i });	
	}
}