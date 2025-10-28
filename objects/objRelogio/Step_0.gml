/// Evento Step do objRelogio – Quick Time Event simples

// Gera a posição do ponto de acerto se ainda não existir
if (!variable_instance_exists(id, "alvo_x")) {
    alvo_x = x + irandom_range(-50, 50);
    alvo_y = y + irandom_range(-50, 50);
    tempo_mudar = room_speed * 1.2; // tempo até o ponto mudar
    alarm[0] = tempo_mudar;
}

// Se o jogador clicar
if (mouse_check_button_pressed(mb_left)) {
    var dist = point_distance(mouse_x, mouse_y, alvo_x, alvo_y);
    if (dist < 30) { // clicou no alvo
        with (objControlador) {
            progresso = clamp(progresso + 15, 0, 100);
        }
        effect_create_above(ef_ring, alvo_x, alvo_y, 1, c_lime);
    } else {
        // clique errado (opcional: penalidade)
        with (objControlador) {
            progresso = max(progresso - 5, 0);
        }
        effect_create_above(ef_ring, mouse_x, mouse_y, 1, c_red);
    }
}
