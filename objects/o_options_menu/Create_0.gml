var pad = 5;
var box_size = sprite_get_width(spr_toggle_music) + pad + sprite_get_width(spr_toggle_sounds);
var initial_x = room_width/2 - box_size/2;
var sounds_x = initial_x + sprite_get_width(spr_toggle_music) + pad;
var yy = y-20;
instance_create_depth(initial_x, yy, -1, o_toggle_music);
instance_create_depth(sounds_x, yy, -1, o_toggle_sounds);

instance_create_depth(x, y, -1, o_toggle_fullscreen);

instance_create_depth(x, y+35, -1, o_back_options_menu);