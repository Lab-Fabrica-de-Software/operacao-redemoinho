if (time_left > 0) {
    time_left -= 1;
    alarm[1] = game_get_speed(gamespeed_fps); // repete a cada segundo
} else {
    // tempo acabou
    game_over = true;
  	ds_map_add(global.played_minigames, global.current_minigame, "lose");
	room_goto(mainGame);   
}
