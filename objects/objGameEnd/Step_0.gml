 timer += delta_time / 1000000; // converte microssegundos → segundos
    if (timer >= waitTime) {
      
		game_restart();
    }