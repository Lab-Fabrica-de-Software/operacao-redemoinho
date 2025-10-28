if (can_pick) {
    // cria o objeto arrastável
    var feno = instance_create_layer(mouse_x, mouse_y, "Instances", objFeno);

	feno.sprite_index = sprite_index;
	feno.image_xscale = 2;
	feno.image_yscale = 2;
    //can_pick = false; // impede pegar novamente
	
	image_yscale -=0.5
	
	if( image_yscale <=0.5){
		
		ds_map_add(global.played_minigames, global.current_minigame, "lose");
		room_goto(mainGame);
		can_pick = false
	}
}
