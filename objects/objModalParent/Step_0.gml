// Atualiza o timer usando delta_time (microssegundos → segundos)
timer += delta_time / 1000000;

// Destroi o modal após o tempo
if (timer >= lifetime || mouse_check_button_pressed(mb_left)) {
    instance_destroy();
	
}
