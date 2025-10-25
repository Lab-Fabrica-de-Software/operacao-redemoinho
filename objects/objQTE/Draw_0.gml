// Borda
draw_sprite(sprQteBorda, 0, barra_x + barra_largura / 2, barra_y + barra_altura / 2);

/*
caso a resolução da borda for diferente
draw_sprite_ext(spr_qte_borda, 0, barra_x + barra_largura / 2, barra_y + barra_altura / 2, 1.2, 1.2, 0, c_white, 1);
*/

// Fundo da barra
draw_set_color(c_red);
draw_rectangle(barra_x, barra_y, barra_x + barra_largura, barra_y + barra_altura, false);

// Zona verde
draw_set_color(c_green);
draw_rectangle(zona_verde_inicio, barra_y, zona_verde_fim, barra_y + barra_altura, false);

// Ponteiro
draw_sprite(sprPonteiro, 0, ponteiro_x, barra_y + barra_altura / 2);

// Barrinha de tempo
var tempo_ratio = tempo_atual / tempo_max;
draw_set_color(c_yellow);
draw_rectangle(barra_x, barra_y - 10, barra_x + barra_largura * tempo_ratio, barra_y - 5, false);


