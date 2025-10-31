if (instance_exists(objPlayer)) {
    var dist = point_distance(x, y, objPlayer.x, objPlayer.y);

    if (dist < activate_distance) {
		
		            // Salva dados de retorno
            global.minigame_return_x = 748;
            global.minigame_return_y = 145;
            global.minigame_return_room = mainGame;
    
			
       room_goto(mainGame);
	   
	   
    }
}
