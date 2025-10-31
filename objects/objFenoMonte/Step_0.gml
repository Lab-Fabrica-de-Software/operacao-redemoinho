if (feno_count >= numMaxFenos && global.isRunning) {
    global.isRunning = false; // pausa o jogo
    instance_create_layer(0, 0, "GUI", objModalVitoria_Feno);
}
