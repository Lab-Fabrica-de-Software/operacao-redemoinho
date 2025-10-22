// Detecta clique do mouse
if (mouse_check_button_pressed(mb_left)) {
    var _mx = device_mouse_x_to_gui(0);
    var _my = device_mouse_y_to_gui(0);

    // Verifica se o clique foi em objGame1
    var _clicked = instance_position(_mx, _my, objGame1);

    if (_clicked != noone) {
        // Se clicou em objGame1, define como alvo
        target_object = _clicked;
        target_x = _clicked.x;
        target_y = _clicked.y;
    } else {
        // Se clicou em outro lugar, move até o ponto clicado
        target_object = noone;
        target_x = _mx;
        target_y = _my;
    }
}

// Calcula a distância até o destino
var _dist = point_distance(x, y, target_x, target_y);

// Move o player se ainda não chegou
if (_dist > target_tolerance) {
    var _dir = point_direction(x, y, target_x, target_y);
    x += lengthdir_x(move_speed, _dir);
    y += lengthdir_y(move_speed, _dir);
} else {
    // Se chegou no alvo e o alvo é o objGame1
    if (target_object != noone) {
        if (instance_exists(target_object)) {
            // 🟢 Muda para a sala "minigame1"
            room_goto(minigame1);
        }
        target_object = noone;
    }
}
