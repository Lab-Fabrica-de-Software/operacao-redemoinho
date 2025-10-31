if (global.isRunning) {
    timerCount -= delta_time / 1000000;

    if (timerCount <= 0) {
        objMaze.game_over = true;
        instance_create_layer(0, 0, "GUI", objModalDerrota_Maze);
        isVitoria = false;
        global.isRunning = false; // pausa até o modal sumir
    }
}
