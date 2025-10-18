global.tile_size = 40;
global.border_size = 5; // ← quantidade de tiles de borda
global.taxaCurva = 5;

global.furthest_x =0;
global.furthest_y =0;

global.furthest_distance = 0;
global.distance =0;




randomize();

var maxParam =(10-global.border_size );
var minParam =(1.1+global.border_size );
if(minParam > maxParam){

global.goal_x = room_width / 2;
global.goal_y = room_height /2;

}else{

global.goal_x = room_width / random_range(minParam,maxParam);
global.goal_y = room_height / random_range(minParam,maxParam);
}
// escala baseada no tile_size
var size_scale = (1 / 12) * global.tile_size;
image_xscale = size_scale;
image_yscale = size_scale;

// posição inicial (centro)
x = global.goal_x;
y = global.goal_y;

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
global.grid_w = room_width div global.tile_size;
global.grid_h = room_height div global.tile_size;
global.maze_grid = ds_grid_create(global.grid_w, global.grid_h);
ds_grid_clear(global.maze_grid, 0);

// marca posição inicial
var gx = x div global.tile_size;
var gy = y div global.tile_size;
global.maze_grid[# gx, gy] = 1;

// inicia geração
drawMaze();

// troca para o X no final
sprite_index = sprMilk;
image_angle = 0;

alarm[0] =1;

global.maze_surface = surface_stamp;
global.mazeDone = true;



// tempo limite em segundos
global.time_limit = 60;
global.time_left = global.time_limit;
global.game_over = false;

// configura o temporizador (1 segundo por vez)
alarm[1] = game_get_speed(gamespeed_fps);