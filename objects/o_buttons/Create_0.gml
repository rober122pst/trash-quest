buttons = [
	function() { 
		room_goto(Room1);	
	},
	function() {
		show_message("Em breve!")
	},
	function() {
		instance_create_layer(room_width/2, room_height/2, "Instances", o_options_menu);
		instance_destroy(o_buttons)
	},
	function() {
		game_end();	
	}
];