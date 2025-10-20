// desenha no mundo (Draw). Se quiser fixo na tela, use Draw GUI e converta coords.
draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// cor + alpha
draw_set_color(color);
draw_set_alpha(alpha);

// deslocamento para dar aquele "pop" pra cima
draw_text(x, y + y_offset, text);

// reset
draw_set_color(c_white);
draw_set_alpha(1);
