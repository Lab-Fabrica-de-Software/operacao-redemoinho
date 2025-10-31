if(global.isRunning){
	 timerCount -= delta_time / 1000000;
	if (timerCount <= 0) {
	    objMaze.game_over = true;
	  	ds_map_add(global.played_minigames, global.current_minigame, "lose");
		room_goto(DentroCasa);   
	}
}