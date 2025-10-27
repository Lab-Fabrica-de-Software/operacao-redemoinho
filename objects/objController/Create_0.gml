// Dados globais
global.minigame_return_x = 0;
global.minigame_return_y = 0;
global.minigame_return_room = mainGame;

global.current_section = "";
// Mapa de minigames jogados
if (!variable_global_exists("played_minigames")) {
    global.played_minigames = ds_map_create();
}

// Qual minigame está ativo
global.current_minigame = "";

// Tamanho base do jogo (igual à sua tela principal)
global.base_w = 480;
global.base_h = 270;

// Redimensiona a surface do jogo
surface_resize(application_surface, global.base_w, global.base_h);

// Ajusta o GUI para o mesmo tamanho
display_set_gui_maximize(global.base_w, global.base_h);

// Desativa suavização de textura (evita borrado em pixel art)
gpu_set_texfilter(false);
