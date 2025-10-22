// fundo transparente escuro
draw_set_color(make_color_rgb(0, 0, 0));
draw_set_alpha(0.5);
draw_rectangle(10, 10, 150, 50, false);
draw_set_alpha(1);

// texto do tempo
draw_set_color(c_white);
draw_set_font(-1); // usa a fonte padrão
draw_text(25, 25, "Tempo: " + string(global.time_left));
