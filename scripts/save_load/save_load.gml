function save_game(){
	var _filename = "savegame.ini";
	ini_open(_filename);
	ini_write_real("Player_Data", "points", global.points);
	ini_close();
	var _json_string = json_stringify(global.options);
	var _file = file_text_open_write("savegame.sav");
	file_text_write_string(_file, _json_string);
	file_text_close(_file);
}

function load_game(){
	var _filename = "savegame.ini";
	ini_open(_filename);
	global.points = ini_read_real("Player_Data", "points", 0);
	ini_close();
	
	if file_exists("savegame.sav") {
		var _file = file_text_open_read("savegame.sav");
		var _json_string = file_text_read_string(_file);
		var _loaded_data = json_parse(_json_string);
		file_text_close(_file);
		show_debug_message(_loaded_data);
		
		global.options = _loaded_data;
	}else {
		show_debug_message("Save não encontrado")	
	}
}

