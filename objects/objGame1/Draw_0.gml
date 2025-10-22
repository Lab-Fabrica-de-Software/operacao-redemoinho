if (ds_map_exists(global.played_minigames, "game1")) {
    draw_sprite_ext(sprGame1Done, 0, x, y, 1, 1, 0, c_white, 1);
} else {
    draw_sprite(sprGame1, 0, x, y);
}