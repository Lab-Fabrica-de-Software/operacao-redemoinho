if (can_pick && global.isRunning) {
    // cria o objeto arrastável
    var feno = instance_create_layer(mouse_x, mouse_y, "Instances", objFeno);
    feno.sprite_index = sprite_index;
    feno.image_xscale = 2;
    feno.image_yscale = 2;
	
  //  image_yscale -= 0.5;

    // condição de derrota (acabou o tamanho)
    if (image_yscale <= 0.5) {
        global.isRunning = false; // pausa o jogo
        can_pick = false;
        instance_create_layer(0, 0, "GUI", objModalDerrota_Maze_1);
    }
}
