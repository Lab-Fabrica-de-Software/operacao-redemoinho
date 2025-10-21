// Atualiza destino quando clicar
if (mouse_check_button_pressed(mb_left)) {
	target_x = device_mouse_x(0);
	target_y = device_mouse_y(0);
}	

// Calcula distância até o alvo
var dist = point_distance(x, y, target_x, target_y);

// Só anda se estiver longe o suficiente (evita tremedeira)
if (dist > move_speed) {
    var dir = point_direction(x, y, target_x, target_y);
    var next_x = x + lengthdir_x(move_speed, dir);
    var next_y = y + lengthdir_y(move_speed, dir);
	
	 x = next_x;
	 y = next_y;
}

global.playerX = x;
global.playerY = y;