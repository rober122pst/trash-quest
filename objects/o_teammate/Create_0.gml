hvel = 0;
max_spd = o_player.max_spd / 2.5;

magnetism = o_player.magnetism / 2;
magnet_force = 1;
max_catch = max(int64(o_player.max_catch / 2), 1);
spd_hook_down = max(o_player.spd_hook_down / 2, .02);
spd_hook_up = o_player.spd_hook_up / 2;
target = noone;
pescou = false;
minimal_distance = infinity;
dir = 0;

state_string = "";

state_fishing = function() {
	state_string = "Pescando"
	if !pescou {
		audio_play_sound(snd_fishing, 10, false, 1, .8);
		pescou  = true;
		var hook = instance_create_layer(x, y, "Instances", o_hook_teammate);
		hook.father = id;
	}
}

state_move = function() {
	state_string = "Movendo"
	if instance_exists(target) and !target.grab {
		var _dir = sign(target.x - x);
		var _dist = abs(x - target.x);
		x += max_spd*_dir;
		
		if _dist <= .5 {
			x = target.x;
			state = state_fishing;
		}
		
		
	}else {
		target = noone;
		state = state_search;
	}

}

state_search = function() {
	state_string = "Procurando"
	minimal_distance = infinity;
	var _old_target = target;
	target = noone;
	with o_trash {
		if !grab and !is_move and (targeted == noone or targeted == other.id) { // Verifica se o lixo está livre pra seguir (se não foi pescado, não se move e nem tem um barco seguindo)
			var _dist = point_distance(other.x, other.y, x, y);
			if _dist < other.minimal_distance { // Vê o mais próximo
				other.minimal_distance = _dist;
				other.target = id;
			}
		}
	}
	
	if _old_target != noone and _old_target != target {
		if instance_exists(_old_target) {
			with _old_target {
				if targeted == other.id {
					targeted = noone;	// Libera o alvo antigo pra outro barquinho seguir ele
				}
			}
		}
	}
	
	if target != noone {
		if instance_exists(target) {
			with target {
				targeted = other.id;	// Ocupa o papel de seguir o lixo
			}
		}
	}
	
	state = state_move
	pescou = false;
}

state = state_search;