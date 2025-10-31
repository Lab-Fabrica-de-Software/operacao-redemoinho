if (maze.game_over) exit;

if (maze.mazeDone && global.isRunning) {

    target_x = device_mouse_x(0);
    target_y = device_mouse_y(0);

    var dist = point_distance(x, y, target_x, target_y);

    if (dist > move_speed) {
        var dir = point_direction(x, y, target_x, target_y);
        var next_x = x + lengthdir_x(move_speed, dir);
        var next_y = y + lengthdir_y(move_speed, dir);

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

// --- Vitória ---
if (point_distance(x, y, maze.goal_x, maze.goal_y) < maze.tile_size / 2 && global.isRunning) {
    maze.game_over = true;
    instance_create_layer(0, 0, "GUI", objModalVitoria_Maze);
    objMazeTime.isVitoria = true;
    global.isRunning = false; // pausa até o modal acabar
}
