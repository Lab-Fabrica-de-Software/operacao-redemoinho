if (variable_global_exists("played_minigames")) {
	ds_map_clear(global.played_minigames);
}

if(room_exists(mainGame)){
	room_goto(mainGame);
}
