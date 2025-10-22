function drawMaze() {
    // desenha o carimbo
    if (surface_exists(surface_stamp)) {
        surface_set_target(surface_stamp);
        draw_sprite_ext(spr_corridor, 0, x, y, image_xscale, image_yscale, direction, c_white, 1);
        surface_reset_target();
    }

    // move TILE_SIZE passos
    x += lengthdir_x(global.tile_size, direction);
    y += lengthdir_y(global.tile_size, direction);

    // marca célula atual
    var gx = x div global.tile_size;
    var gy = y div global.tile_size;

    // se fora da área, volta (fim da recursão)
    if (gx < 0 || gy < 0 || gx >= global.grid_w || gy >= global.grid_h)
        return;

    // se já visitado, volta
    if (global.maze_grid[# gx, gy] == 1)
        return;

    global.maze_grid[# gx, gy] = 1;

    // chama tryDirections recursivamente
    tryDirections(direction);

    // ao voltar, move pra trás (undo do move)
    x -= lengthdir_x(global.tile_size, direction);
    y -= lengthdir_y(global.tile_size, direction);
}

function tryDirections(start_direction) {
    // faz uma leve rotação aleatória antes de começar
    direction = start_direction + (90 * irandom_range(-1, 1));

    // testa 4 direções
    for (var i = 0; i < 4; i++) {
        var nx = x + lengthdir_x(global.tile_size, direction);
        var ny = y + lengthdir_y(global.tile_size, direction);

        var gx = nx div global.tile_size;
        var gy = ny div global.tile_size;

        // se a próxima célula é válida e livre
        if (gx >= 0 && gy >= 0 && gx < global.grid_w && gy < global.grid_h) {
            if (global.maze_grid[# gx, gy] == 0) {
                drawMaze(); // recursão — chama outro ramo
            }
        }

        // vira 90 graus para testar nova direção
        direction += 90;
    }

    // volta à direção original (como o bloco "point in direction start_direction")
    direction = start_direction;
}
