/// Evento Draw GUI do objControlador

// === CONFIGURAÇÕES GERAIS ===

var bar_w = 500;    // largura total da tela
var bar_h = 20;       // altura da barra principal (progresso)
var bar_x = objTempoDespertador.x;        // começa do canto esquerdo
var bar_y = objTempoDespertador.y;        // topo da tela

// === BARRA DE PROGRESSO (VERDE) ===
var progresso_norm = clamp(progresso, 0, 100) / 100; // normaliza entre 0 e 1

// Fundo
draw_set_color(c_black);
draw_rectangle(bar_x, bar_y, bar_x + bar_w, bar_y + bar_h, false);

// Preenchimento (progresso)
draw_set_color(c_lime);
draw_rectangle(bar_x, bar_y, bar_x + (bar_w * progresso_norm), bar_y + bar_h, false);

// === BARRA DE TEMPO (VERMELHA, METADE DA ALTURA, ABAIXO DA VERDE) ===
var tempo_norm = clamp(tempo / tempo_total, 0, 1);
var tempo_h = bar_h * 0.5;
var tempo_y = bar_y + bar_h + 2; // 2px de espaço entre as barras

// Fundo
draw_set_color(c_black);
draw_rectangle(bar_x, tempo_y, bar_x + bar_w, tempo_y + tempo_h, false);

// Preenchimento (tempo)
draw_set_color(c_red);
draw_rectangle(bar_x, tempo_y, bar_x + (bar_w * tempo_norm), tempo_y + tempo_h, false);
