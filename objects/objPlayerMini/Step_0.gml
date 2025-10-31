if (maze.game_over) exit;


if (maze.mazeDone && global.isRunning ) {
	
	target_x = device_mouse_x(0);
	target_y = device_mouse_y(0);
	

    // Calcula distância até o alvo
    var dist = point_distance(x, y, target_x, target_y);

    // Só anda se estiver longe o suficiente (evita tremedeira)
    if (dist > move_speed) {
        var dir = point_direction(x, y, target_x, target_y);
        var next_x = x + lengthdir_x(move_speed, dir);
        var next_y = y + lengthdir_y(move_speed, dir);

        // Checa se pode andar (em cima do labirinto)
        if (surface_exists(maze.maze_surface)) {
            var color = surface_getpixel(maze.maze_surface, next_x, next_y);

            if (color != c_black) {
                x = next_x;
                y = next_y;
                image_angle = dir;
            }
        }
    }
}


// verifica vitória (distância até o X)
if (point_distance(x, y, maze.goal_x, maze.goal_y) < maze.tile_size / 2) {
    maze.game_over = true;
    ds_map_add(global.played_minigames, global.current_minigame, "win");
	global.score += 100;
	global.minigames_done +=1;
	room_goto(DentroCasa);
}
