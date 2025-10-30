if (!global.control.jogo_terminou) {

    if (global.control.ventando) {
        // Derrota
        instance_create_layer(x, y, "Instances", objFazendeiro);
		// global.control.jogo_terminou = true;
        //show_message("O fazendeiro te pegou!");
		ds_map_add(global.played_minigames, global.current_minigame, "lose");
		room_goto(mainGame);
    } 
    else if (perto_do_varal && pode_jogar) {
        // Jogada correta
        global.control.roupas_restantes--;
        show_message("Roupa lançada!");

        if (global.control.roupas_restantes <= 0) {
			// global.control.jogo_terminou = true;
            //global.control.resultado = "vitoria";
            //show_message("Você venceu!");
			ds_map_add(global.played_minigames, global.current_minigame, "win");
			global.score += 50;
			global.minigames_done +=1;
			room_goto(mainGame);

        }
    }
}
