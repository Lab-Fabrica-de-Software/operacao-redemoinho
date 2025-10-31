/// Evento Step do objControlador

if (global.isRunning) {
    
    if (!finalizado) {
        // Atualiza o tempo com delta_time (microsegundos → segundos)
        tempo += delta_time / 1000000;

        // === Condição de DERROTA ===
        if (tempo >= tempo_total && progresso < 100) {
            finalizado = true;
            instance_create_layer(0, 0, "GUI", objModalDerrota);
            isVitoria = false; // garante que a flag esteja correta
        }

        // === Condição de VITÓRIA ===
        if (progresso >= 100 && !finalizado) {
            finalizado = true;
            instance_create_layer(0, 0, "GUI", objModalVitoria);
            isVitoria = true; // marca que venceu
        }
    }

    // === Quando o jogo terminar (finalizado) ===
    if (finalizado) {
        if (isVitoria) {
            // Marca vitória
            ds_map_add(global.played_minigames, global.current_minigame, "win");
            global.score += 50;
            global.minigames_done += 1;

          room_goto(mainGame);
        } else {
            // Marca derrota
            ds_map_add(global.played_minigames, global.current_minigame, "lose");
            room_goto(mainGame);
        }

        // Garante que não repete a lógica a cada frame
        global.isRunning = false;
    }
}
