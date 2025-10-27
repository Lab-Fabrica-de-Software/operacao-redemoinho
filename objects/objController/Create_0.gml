// Dados globais
global.minigame_return_x = 64;
global.minigame_return_y = 480;
global.minigame_return_room = mainGame;

global.current_section = "2_1";
// Mapa de minigames jogados
if (!variable_global_exists("played_minigames")) {
    global.played_minigames = ds_map_create();
}

// Qual minigame está ativo
global.current_minigame = "";

//player
global.PlayerID = 0;
global.PlayerScore =0;


esc_timer = 0;
esc_hold_time = 2; // tempo em segundos
