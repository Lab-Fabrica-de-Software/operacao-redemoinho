if (mouse_check_button_pressed(mb_left)){
	// Marca o minigame como jogado
ds_map_add(global.played_minigames, global.current_minigame, true);

// Retorna para a room principal
room_goto(global.minigame_return_room);

}