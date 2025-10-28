// Segurar ESC com tempo real (independente do FPS)
if (keyboard_check(vk_escape)) {
    reset_timer += delta_time / 1000000; // converte microssegundos → segundos
    if (reset_timer >= reset_hold_time) {
      
        reset_timer = 0;
		game_restart();
    }
} else {
    reset_timer = 0; // Soltou a tecla → zera
}

if(global.isRunning){
	 global.gametimer -= delta_time / 1000000; // converte microssegundos → segundos
    if (global.gametimer <= 0) {
        global.gametimer = 0;
		room_goto(Score);
		global.isRunning = false;
    }	
}

if(ds_map_size(global.played_minigames) >= total_minigames && room == mainGame){
	room_goto(Score);
	global.isRunning = false;
}