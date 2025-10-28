/// Evento Draw GUI do objControlador

// Barra de progresso
draw_set_color(c_black);
draw_rectangle(100, 100, 500, 130, false);

draw_set_color(c_lime);
draw_rectangle(100, 100, 100 + (progresso * 4), 130, false);

// Tempo restante
var tempo_passado = (current_time - tempo_inicio) / 1000;
var tempo_restante = max(0, tempo_limite - tempo_passado);
draw_set_color(c_white);
draw_text(100, 140, "Tempo: " + string_format(tempo_restante, 2, 1));

// =====================================================
// Mensagem de vitória ou derrota
// =====================================================
if (finalizado) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    // Se venceu (progresso completo)
    if (progresso >= 100) {
        draw_set_color(make_color_rgb(255, 215, 0)); // dourado
        draw_set_font(-1); // fonte padrão (ou use sua fonte personalizada)
        draw_text(room_width / 2, room_height / 2, "Você atrasou o despertador com sucesso!");
    }
    else {
        draw_set_color(c_red);
        draw_text(room_width / 2, room_height / 2, "O fazendeiro te pegou!");
    }
}
