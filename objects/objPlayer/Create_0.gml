if (variable_global_exists("minigame_return_room")) {
    if (global.minigame_return_room == room) {
		
        x = global.minigame_return_x;
        y = global.minigame_return_y;
		
		target_x = x;
target_y = y;
    }
}

// Velocidade de movimento
move_speed = 4;

// Posição alvo (ponto para onde o player vai andar)
target_x = x;
target_y = y;

// Objeto alvo (objGame1 ou nenhum)
target_object = noone;

// Distância mínima para considerar que chegou
target_tolerance = 4;


function moveTo(toX,toY){
	target_x = x + toX;
	target_y = y +toY;
}