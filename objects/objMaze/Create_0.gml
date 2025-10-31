tile_size = 40;
border_size = 5; // ← quantidade de tiles de borda
taxaCurva = 5;

furthest_x =0;
furthest_y =0;

furthest_distance = 0;
distance =0;


randomize();

var maxParam =(10-border_size );
var minParam =(1.1+border_size );

if(minParam > maxParam){
	goal_x = room_width / 2;
	goal_y = room_height /2;
}else{
	goal_x = room_width / random_range(minParam,maxParam);
	goal_y = room_height / random_range(minParam,maxParam);
}
// escala baseada no tile_size
var size_scale = (1 / 48) * tile_size;
image_xscale = size_scale;
image_yscale = size_scale;

// posição inicial (centro)
x = goal_x;
y = goal_y;

// direção inicial
randomize();
var rotation_index = irandom_range(-1, 2);
direction = 90 * rotation_index;
image_angle = direction;

// cria surface
surface_stamp = surface_create(room_width, room_height);
surface_set_target(surface_stamp);
draw_clear_alpha(c_black, 0);
surface_reset_target();

// cria grid
grid_w = room_width div tile_size;
grid_h = room_height div tile_size;
maze_grid = ds_grid_create(grid_w, grid_h);
ds_grid_clear(maze_grid, 0);

// marca posição inicial
var gx = x div tile_size;
var gy = y div tile_size;
maze_grid[# gx, gy] = 1;

// inicia geração
drawMaze();

// troca para o X no final
sprite_index = sprMilk;
image_angle = 0;

alarm[0] =1;

maze_surface = surface_stamp;
mazeDone = true;

// tempo limite em segundos
time_limit = 60;
time_left = time_limit;
game_over = false;


function drawMaze() {
    if (surface_exists(surface_stamp)) {
        surface_set_target(surface_stamp);
        draw_sprite_ext(sprCorridor, 0, x, y, image_xscale, image_yscale, direction, c_white, 1);
        surface_reset_target();
    }

    x += lengthdir_x(tile_size, direction);
    y += lengthdir_y(tile_size, direction);
	distance += 1;	
	scrRecordDistance();

    var gx = x div tile_size;
    var gy = y div tile_size;

    // checa se está dentro dos limites considerando a borda
    if (gx < border_size || gy < border_size ||
        gx >= grid_w - border_size || gy >= grid_h - border_size)
        return;

    // se já visitado, volta
    if (maze_grid[# gx, gy] == 1)
        return;

    maze_grid[# gx, gy] = 1;

    tryDirections(direction);

    // volta posição
    x -= lengthdir_x(tile_size, direction);
    y -= lengthdir_y(tile_size, direction);
	distance -= 1;
}

function scrRecordDistance(){
	if( distance > furthest_distance){
		furthest_distance = distance;
		furthest_x = x;
		furthest_y = y;	
	}	
}

function tryDirections(start_direction) {
	if(irandom_range(1,taxaCurva) == 1 ){
		direction = start_direction + (90 * irandom_range(-1, 1));
	}
	
    for (var i = 0; i < 4; i++) {
        var nx = x + lengthdir_x(tile_size, direction);
        var ny = y + lengthdir_y(tile_size, direction);

        var gx = nx div tile_size;
        var gy = ny div tile_size;

        if (gx >= border_size 
		&& gy >= border_size 
		&& gx < grid_w - border_size
		&& gy < grid_h - border_size) {

            if (maze_grid[# gx, gy] == 0) {
                drawMaze();
            }
        }
        direction += 90;
    }
    direction = start_direction;
}