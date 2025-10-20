key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_fishing = keyboard_check_pressed(ord("F"));

state();

x+=hvel;
if (x <= sprite_width / 2) {
    x = sprite_width / 2;
    hvel = 0;
}
if (x >= room_width - sprite_width / 2) {
    x = room_width - sprite_width / 2;
    hvel = 0;
}

if life <= 0 {
	save_game();
	global.game_over = true; // Fim de jogo	
}

y += sin(current_time / 500) * 0.03;