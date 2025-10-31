// Só funciona se o jogo ainda não acabou
if (!objControl.jogo_terminou && global.isRunning) {

    // Caso o jogador clique durante o vento → DERROTA
    if (objControl.ventando) {
        instance_create_layer(x, y, "Instances", objFazendeiro);
        objControl.jogo_terminou = true;
        //show_message("O fazendeiro te pegou!");
		ds_map_add(global.played_minigames, global.current_minigame, "lose");
		room_goto(mainGame);
    }
    else {
        // Jogada correta (sem vento)
        objControl.roupas_restantes--;

        // Movimento da roupa até o mato (opcional)
        move_towards_point(objMato.x, objMato.y, 5);

        // Destroi a roupa após 0.5s
        alarm[0] = room_speed / 2;

        // Verifica vitória
        if (objControl.roupas_restantes <= 0) {
            objControl.jogo_terminou = true;
           // show_message("Você jogou todas as roupas! Vitória!");
		   ds_map_add(global.played_minigames, global.current_minigame, "win");
			global.score += 50;
			global.minigames_done +=1;
			room_goto(mainGame);

        }
    }
}
