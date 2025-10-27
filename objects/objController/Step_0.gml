// Segurar ESC com tempo real (independente do FPS)
if (keyboard_check(vk_escape)) {
    esc_timer += delta_time / 1000000; // converte microssegundos → segundos
    if (esc_timer >= esc_hold_time) {
      
        esc_timer = 0;
		game_restart();
    }
} else {
    esc_timer = 0; // Soltou a tecla → zera
}
