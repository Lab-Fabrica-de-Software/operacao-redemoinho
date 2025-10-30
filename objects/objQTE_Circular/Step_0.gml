if (!ativo) exit;

// Atualiza ângulo do ponteiro
angulo_ponteiro += velocidade * sentido;
angulo_ponteiro = (angulo_ponteiro + 360) mod 360;

// Input de ação (barra de espaço)
if (mouse_check_button_pressed(mb_left)) {
    if (esta_na_zona(angulo_ponteiro, zona_inicio, zona_inicio + zona_tamanho)) {
        acertos += 1;
        if (acertos >= max_acertos) {
            resultado = "vitoria";
            ativo = false;
			ds_map_add(global.played_minigames, global.current_minigame, "win");
				global.score += 50;
				global.minigames_done +=1;
				room_goto(mainGame);
        }
    } else {
        erros += 1;

        if (erros >= max_erros) {
            resultado = "derrota";
            ativo = false;
			ds_map_add(global.played_minigames, global.current_minigame, "lose");
		room_goto(mainGame);
        }
    }
	  sentido *= -1; // inverte a rotação
        zona_inicio = irandom_range(0, 359 - zona_tamanho);
		zona_tamanho = random_range(20,80);
		
}
