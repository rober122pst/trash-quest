draw_set_color(#BAC7DB);
draw_set_alpha(.5);
draw_circle(x-1, y, magnetism, 1);

draw_set_alpha(1);
draw_set_color(#ebf0f6);
draw_rectangle(x-1, initial_y-5, x-1, y, 0);

draw_self();
draw_set_color(c_white);