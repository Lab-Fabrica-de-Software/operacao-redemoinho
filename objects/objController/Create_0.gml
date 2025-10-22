// Dados globais
global.minigame_return_x = 0;
global.minigame_return_y = 0;
global.minigame_return_room = noone;

// Mapa de minigames jogados
if (!variable_global_exists("played_minigames")) {
    global.played_minigames = ds_map_create();
}

// Qual minigame está ativo
global.current_minigame = "";