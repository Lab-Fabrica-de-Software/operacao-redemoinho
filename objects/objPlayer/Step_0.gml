// Atualiza destino quando clicar
if (mouse_check_button_pressed(mb_left)) {
    target_x = device_mouse_x(0);
    target_y = device_mouse_y(0);
}

// Velocidade de movimento
var speedPlayer = move_speed;

// Calcula distância e direção
var dist = point_distance(x, y, target_x, target_y);
var dir  = point_direction(x, y, target_x, target_y);

// Só se move se estiver longe o suficiente
if (dist > target_tolerance) {
    
    // Calcula próximo passo
    var next_x = x + lengthdir_x(speedPlayer, dir);
    var next_y = y + lengthdir_y(speedPlayer, dir);
    
    // Sliding: tenta andar nos eixos separadamente
    if (!place_meeting(next_x, y, objCollision)) {
        x = next_x;
    }
    
    if (!place_meeting(x, next_y, objCollision)) {
        y = next_y;
    }
}
