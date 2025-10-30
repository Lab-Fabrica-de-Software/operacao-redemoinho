/// Evento Step do objRelogio

// Pegar o ponteiro
if (mouse_check_button_pressed(mb_left)) {
    // Checa se clicou perto do centro (como se pegasse o ponteiro)
    if (point_distance(mouse_x, mouse_y, x, y) < sprite_width / 2) {
        girando = true;
        angulo_anterior = point_direction(x, y, mouse_x, mouse_y);
    }
}

// Soltar o ponteiro
if (mouse_check_button_released(mb_left)) {
    girando = false;
}

// Se estiver girando
if (girando) {
    var novo_angulo = point_direction(x, y, mouse_x, mouse_y);
    var diferenca = angle_difference(novo_angulo, angulo_anterior);

    // Atualiza apenas o ponteiro (não o relógio inteiro)
    image_angle += diferenca; // rotaciona visualmente o ponteiro
    angulo_anterior = novo_angulo;

    // Incremento moderado de progresso
    var incremento = abs(diferenca) / 6; // valor reduzido para evitar vitória instantânea

    with (objControlador) {
        progresso = clamp(progresso + incremento, 0, 100);
    }
}
