randomize();
audio_stop_sound(snd_background_menu);
audio_play_sound(snd_background, 2, true);
WAVE = 0;
max_trashs = 5;
max_peixes = 10;
spawn_interval_fish = game_get_speed(gamespeed_fps) * 5;
alarm[0] = spawn_interval_fish;
choosing = false;
evos = EVOLUTIONS();
showing = false;
spawn_move_trash_interval = game_get_speed(gamespeed_fps) * 3;
spawn_move_trash_timer = 0;
move_trash_count = 0;
num_moveis = 0;

reroll_price = 10;

global.game_over = false;
global.run_points = 0;

spawn_wave_trash = function() {
	var num_estaticos = 1 + WAVE; // cresce com wave
    
    for (var i = 0; i < num_estaticos; i++) {
        var xx = irandom_range(64, room_width - 64);
        var yy = room_height - irandom_range(80, 112);
        instance_create_layer(xx, yy, "Instances", o_trash);
    }
}

spawn_move_trash = function() {
	var xx = choose(-16, room_width + 16);
    var yy = irandom_range(room_height * 0.3, room_height * 0.5);
	var trash = instance_create_layer(xx, yy, "Instances", o_trash);
	trash.spd = .7;
	trash.direction = (xx < 0) ? 1 : 180;
	trash.is_move = true;
}

spawn_fishes = function() {
	if instance_number(o_fish) > max_peixes exit;
	
	var xx = choose(-16, room_width + 16);
    var yy = irandom_range(room_height * 0.3, room_height * 0.6);
	var fish = instance_create_layer(xx, yy, "Instances", o_fish);
	fish.dir = (xx < 0) ? 1 : -1;
	fish.image_xscale = fish.dir;
}

show_evo_cards = function() {
	var list = array_create(array_length(evos));
	array_copy(list, 0, evos, 0, array_length(evos));
	
	var options = [];
	repeat 3 {
		var i = irandom(array_length(list) - 1);
		array_push(options, list[i]);
		array_delete(list, i, 1);
	}
	
	for (var i = 0; i < 3; i++) {
		var evo = options[i];
		var xx = (room_width/2 - sprite_get_width(spr_card)-20) + (sprite_get_width(spr_card)+20)*i;
		var yy = room_height/2
		var card = instance_create_layer(xx, yy, "Cards", o_card);
		card.card_name = evo.card_name;
		card.icon_idx = evo.icon_idx;
		card.description = evo.description;
		card.effect = evo.effect;
		card.image_index = i;
		
		if !instance_exists(o_reroll) {
			instance_create_layer(room_width/2, room_height-42, "Cards", o_reroll);	
		}
	}
}

// Mostrar fim de jogo
if global.game_over {
	if !instance_exists(o_game_over) {
		instance_create_layer(room_width/2, room_height/2, "Cards", o_game_over);	
	}
}