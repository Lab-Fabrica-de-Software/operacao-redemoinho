if (global.isRunning) {
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

        // --- Troca de sprite conforme direção ---
        // Define ângulo normalizado (0 a 360)
        var ang = dir mod 360;

        // Define o sprite dependendo da direção principal
        if (ang >= 45 && ang < 135) {
            // Indo para baixo 
            sprite_index = sprPlayer_Cima ;
            image_xscale = 1;
        }
        else if (ang >= 135 && ang < 225) {
            // Indo para a esquerda
            sprite_index = sprPlayer_Lados;
            image_xscale = -1; // flip horizontal
        }
        else if (ang >= 225 && ang < 315) {
            // Indo para cima
            sprite_index =sprPlayer_Baixo;
            image_xscale = 1;
        }
        else {
            // Indo para a direita
            sprite_index = sprPlayer_Lados;
            image_xscale = 1;
        }
    }

}
