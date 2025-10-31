draw_set_font(fnt_ui);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// Título
draw_set_color(c_white);
draw_text(gui_w/2, gui_h/2 - 100, "Fim do Jogo");

// Tempo
var minutos = floor(global.time div 60);
var segundos = floor(global.time mod 60);
var tempo_texto = string_format(minutos, 2, 0) + ":" + string_format(segundos, 2, 0);

	
draw_text(gui_w/2, gui_h/2 - 40, "Tempo: " + tempo_texto);

// Pontuação
draw_text(gui_w/2, gui_h/2 + 10, "Pontuação: " + string(global.score));

// Número de minigames concluídos
draw_text(gui_w/2, gui_h/2 + 60, "Minigames feitos: " + string(global.minigames_done)+"/"+string(global.total_minigames));
// Número de minigames concluídos
draw_text(gui_w/2, gui_h/2 + 110, "Deseja enviar sua pontuação para o ranking?");
