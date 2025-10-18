
if (global.game_over) exit;

var isClickMove = false;

if (global.mazeDone) {
	
	if(isClickMove){
	    // Atualiza destino quando clicar
	    if (mouse_check_button_pressed(mb_left)) {
	        target_x = device_mouse_x(0);
	        target_y = device_mouse_y(0);
	    }	
	}else{
		target_x = device_mouse_x(0);
		target_y = device_mouse_y(0);
	}

    // Calcula distância até o alvo
    var dist = point_distance(x, y, target_x, target_y);

    // Só anda se estiver longe o suficiente (evita tremedeira)
    if (dist > move_speed) {
        var dir = point_direction(x, y, target_x, target_y);
        var next_x = x + lengthdir_x(move_speed, dir);
        var next_y = y + lengthdir_y(move_speed, dir);

        // Checa se pode andar (em cima do labirinto)
        if (surface_exists(global.maze_surface)) {
            var color = surface_getpixel(global.maze_surface, next_x, next_y);

            if (color != c_black) {
                x = next_x;
                y = next_y;
                image_angle = dir;
            }
        }
    }
}


// verifica vitória (distância até o X)
if (point_distance(x, y, global.goal_x, global.goal_y) < global.tile_size / 2) {
    global.game_over = true;
    show_message("Você venceu!");
    room_restart();
}


