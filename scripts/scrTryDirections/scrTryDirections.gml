function tryDirections(start_direction) {
	if(irandom_range(1,global.taxaCurva) == 1 ){
    direction = start_direction + (90 * irandom_range(-1, 1));
	}
    for (var i = 0; i < 4; i++) {
        var nx = x + lengthdir_x(global.tile_size, direction);
        var ny = y + lengthdir_y(global.tile_size, direction);

        var gx = nx div global.tile_size;
        var gy = ny div global.tile_size;

        if (gx >= global.border_size && gy >= global.border_size &&
            gx < global.grid_w - global.border_size && gy < global.grid_h - global.border_size) {

            if (global.maze_grid[# gx, gy] == 0) {
                drawMaze();
            }
        }

        direction += 90;
    }

    direction = start_direction;
}
