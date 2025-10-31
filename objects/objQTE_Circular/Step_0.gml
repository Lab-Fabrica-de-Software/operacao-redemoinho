
if(global.isRunning){
	if(ativo){
		// Atualiza ângulo do ponteiro
		angulo_ponteiro += velocidade * sentido;
		angulo_ponteiro = (angulo_ponteiro + 360) mod 360;

		// Input de ação (barra de espaço)
		if (mouse_check_button_pressed(mb_left)&& global.isRunning) {
		    if (esta_na_zona(angulo_ponteiro, zona_inicio, zona_inicio + zona_tamanho)) {
		        acertos += 1;
		        if (acertos >= max_acertos) {
		            resultado = "vitoria";
		            ativo = false;
					 instance_create_layer(0, 0, "GUI", objModalVitoria);
		        }
		    } else {
		        erros += 1;

		        if (erros >= max_erros) {
		            resultado = "derrota";
		            ativo = false;
				 instance_create_layer(0, 0, "GUI", objModalDerrota);
		        }
		    }
			  sentido *= -1; // inverte a rotação
		        zona_inicio = irandom_range(0, 359 - zona_tamanho);
				zona_tamanho = random_range(20,80);
		
		}
	}else{
	  if (acertos >= max_acertos) {     
		ds_map_add(global.played_minigames, global.current_minigame, "win");
		global.score += 50;
		global.minigames_done +=1;
		room_goto(mainGame);
	   }else if (erros >= max_erros) {    
				ds_map_add(global.played_minigames, global.current_minigame, "lose");
				room_goto(mainGame);
	        }
		}
}