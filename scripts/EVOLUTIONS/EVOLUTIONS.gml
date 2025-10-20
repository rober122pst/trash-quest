enum Types {
	COMMON,
	RARE
}

function EVOLUTIONS(){
	return 
	[
		{
			card_name: "Pesca Veloz",
			description: "Aumenta a velocidade da vara de pesca em 20%.",
			lvl: 0,
			max_lvl: 10,
			icon_idx: 0, 
			type: Types.COMMON,
			effect: function() { 
				o_player.spd_hook_down *= 1.2;
				o_player.spd_hook_up *= 1.2;
			}
		},
		{
			card_name: "Vento Favorável",
			description: "Aumenta aceleração do barco em 25%.",
			lvl: 0,
			max_lvl: 10,
			icon_idx: 1, 
			type: Types.COMMON,
			effect: function() { 
				o_player.acc *= 1.25;
			}
		},
		{
			card_name: "Maré Veloz",
			description: "Aumenta velocidade máxima do barco em 20%.",
			lvl: 0,
			max_lvl: 10,
			icon_idx: 2, 
			type: Types.COMMON,
			effect: function() { 
				o_player.max_spd *= 1.20;
			}
		},
		{
			card_name: "Isca Fantasma",
			description: "Reduz 10% de chance do peixe pegar a isca.",
			lvl: 0,
			max_lvl: 10,
			icon_idx: 4, 
			type: Types.COMMON,
			effect: function() { 
				o_player.grab_fish_chance *= .9;
			}
		},
		{
			card_name: "Ímã dos Mares",
			description: "Ganha magnetismo. Aumenta 10% da área conforme o nível.",
			lvl: 0,
			max_lvl: 10,
			icon_idx: 3, 
			type: Types.COMMON,
			effect: function() { 
				if o_player.magnetism == 0 {
					o_player.magnetism = 16;
					exit;
				}
				
				o_player.magnetism *= 1.1;
			}
		},
		{
			card_name: "Mão de Netuno",
			description: "Permite pescar +2 lixo por vez.",
			lvl: 0,
			max_lvl: 1,
			icon_idx: 5, 
			type: Types.RARE,
			effect: function() { 
				o_player.max_catch += 2;
			}
		},
		{
			card_name: "Parceiro Marítimo",
			description: "Adiciona um mini barco que herda metade dos seus atributos.",
			lvl: 0,
			max_lvl: 1,
			icon_idx: 6, 
			type: Types.RARE,
			effect: function() { 
				instance_create_layer(32, 64, "Instances", o_teammate)
			}
		}
	]
}