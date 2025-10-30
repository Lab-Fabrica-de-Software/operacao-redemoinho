if (variable_global_exists("played_minigames")) {
	ds_map_clear(global.played_minigames);
}

global.isRunning = true;
if(room_exists(mainGame)){
	room_goto(mainGame);
	
}