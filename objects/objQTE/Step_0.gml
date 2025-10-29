if (qte_ativo) {
    // Mover ponteiro
    ponteiro_x += ponteiro_vel * direcao;

    // Inverter direção nas bordas
    if (ponteiro_x > barra_x + barra_largura || ponteiro_x < barra_x) {
        direcao *= -1;
    }

    // Contar tempo
    tempo_atual -= 1;

    // Se tempo acabou
    if (tempo_atual <= 0) {
        resultado = "tempo esgotado!";
        acertos = 0;
        erros += 1;
        gerar_zona_verde();
        tempo_atual = tempo_max;
    }

    // Detectar input
    if (mouse_check_button_pressed(mb_left)) {
        if (ponteiro_x >= zona_verde_inicio && ponteiro_x <= zona_verde_fim) {
            resultado = "acerto!";
            acertos += 1;
			rabo.setNo(acertos);
            gerar_zona_verde();
            tempo_atual = tempo_max; // reinicia tempo

            if (acertos >= necessarios) {
				
                resultado = "vitória!";
                qte_ativo = false;
				ds_map_add(global.played_minigames, global.current_minigame, "win");
				global.score += 50;
				global.minigames_done +=1;
				room_goto(mainGame);
            }
        } else {
            resultado = "erro!";
            acertos = 0;
			rabo.setNo(0);
            erros += 1;
            gerar_zona_verde();
            tempo_atual = tempo_max;
        }
    }

    // Se ultrapassar o limite de erros
    if (erros >= erros_max) {
        resultado = "derrota!";
        qte_ativo = false;
	  	ds_map_add(global.played_minigames, global.current_minigame, "lose");
		room_goto(mainGame);
    }
}
