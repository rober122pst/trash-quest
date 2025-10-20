function save_game(){
	var _filename = "savegame.ini";
	ini_open(_filename);
	ini_write_real("Player_Data", "points", global.points);
	ini_close();
}

function load_game(){
	var _filename = "savegame.ini";
	ini_open(_filename);
	global.points = ini_read_real("Player_Data", "points", 0);
	ini_close();
}

