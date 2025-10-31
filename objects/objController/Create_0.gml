// Dados globais
global.minigame_return_x = 64;
global.minigame_return_y = 480;
global.minigame_return_room = mainGame;
global.minigames_done = 0;
global.total_minigames = 5;

global.current_section = "2_1";
// Mapa de minigames jogados
if (!variable_global_exists("played_minigames")) {
    global.played_minigames = ds_map_create();
}

global.isOpen = false;

// Qual minigame está ativo
global.current_minigame = "";

//player
global.time = 0;
global.playerName = "";
global.score =0;
global.isRunning = false;
global.gameoverTime = 200;
global.gametimer = global.gameoverTime;

reset_timer = 0;
reset_hold_time = 2; // tempo em segundos
