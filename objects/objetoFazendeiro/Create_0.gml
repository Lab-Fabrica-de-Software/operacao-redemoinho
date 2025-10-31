/// Evento Create do objetoFazendeiro

// Tamanho e posição
image_xscale = 1.8;
image_yscale = 1.8;

// Começa fora da tela à direita
x = room_width + sprite_width * image_xscale;
y = room_height / 2;

// Velocidade negativa (movendo da direita para o centro)
velocidade = -8;

// Volta ao quarto após 4 segundos
alarm[0] = game_get_speed * 4; 

show_debug_message("O fazendeiro apareceu do lado direito!");
