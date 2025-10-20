draw_sprite_ext(spr_points, 0, (x+24)*SCALE, y*SCALE, SCALE, SCALE, 0, c_white, 1);
draw_set_font(fnt_title);
draw_text((x+34)*SCALE, (y-1)*SCALE, o_controller.reroll_price)