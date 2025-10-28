// Detecta clique do mouse
if (mouse_check_button_pressed(mb_left)) {
    var _mx = device_mouse_x_to_gui(0);
    var _my = device_mouse_y_to_gui(0);

    // Verifica se clicou no objGame1
    var _clicked = instance_position(_mx, _my, objGame1);

    if (_clicked != noone) {
        // Define o objGame1 como alvo
        target_object = _clicked;
        target_x = _clicked.x;
        target_y = _clicked.y;
    } else {
        // Move até o ponto clicado (se não clicou em objGame1)
        target_object = noone;
        target_x = _mx;
        target_y = _my;
    }
}

// Calcula distância e direção até o alvo
var _dx = target_x - x;
var _dy = target_y - y;
var _dist = point_distance(x, y, target_x, target_y);

// Movimento em direção ao alvo
if (_dist > target_tolerance) {
    var _dir = point_direction(x, y, target_x, target_y);
    x += lengthdir_x(move_speed, _dir);
    y += lengthdir_y(move_speed, _dir);
} else {
    // Se chegou ao alvo e for o objGame1, troca de sala
    if (target_object != noone) {
        if (instance_exists(target_object)) {
            // Executa a ação desejada
            room_goto(minigame1); // 🟢 troque por sua room destino
        }
        target_object = noone;
    }
}
