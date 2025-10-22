function drawMaze() {
    if (surface_exists(surface_stamp)) {
        surface_set_target(surface_stamp);
        draw_sprite_ext(sprCorridor, 0, x, y, image_xscale, image_yscale, direction, c_white, 1);
        surface_reset_target();
    }

    x += lengthdir_x(global.tile_size, direction);
    y += lengthdir_y(global.tile_size, direction);
	global.distance += 1;	
	scrRecordDistance();

    var gx = x div global.tile_size;
    var gy = y div global.tile_size;

    // checa se está dentro dos limites considerando a borda
    if (gx < global.border_size || gy < global.border_size ||
        gx >= global.grid_w - global.border_size || gy >= global.grid_h - global.border_size)
        return;

    // se já visitado, volta
    if (global.maze_grid[# gx, gy] == 1)
        return;

    global.maze_grid[# gx, gy] = 1;

    tryDirections(direction);

    // volta posição
    x -= lengthdir_x(global.tile_size, direction);
    y -= lengthdir_y(global.tile_size, direction);
	global.distance -= 1;
}
