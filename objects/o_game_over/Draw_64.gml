draw_set_font(fnt_title);

var _center_x = display_get_gui_width() / 2;
var _center_y = display_get_gui_height() / 2;
var _padding = 5;

var _spr_width = sprite_get_width(spr_points)*SCALE;
var _text_w = string_width(string(global.run_points));

var _total_width = _spr_width + _text_w + _padding;

var _initial_x = _center_x - (_spr_width / 2);

var _spr_x = _initial_x + (_spr_width / 2);
var _txt_x = _initial_x + _spr_width + _padding;

draw_set_halign(fa_left);

draw_sprite_ext(spr_points, 0, _spr_x, _center_y-5*SCALE, SCALE, SCALE, 0, c_white, 1);
draw_text(_txt_x, _center_y-2-(5*SCALE), string(global.run_points)); 

draw_set_halign(fa_center);