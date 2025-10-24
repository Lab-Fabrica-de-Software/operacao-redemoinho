if (can_pick) {
    // cria o objeto arrastável
    var feno = instance_create_layer(mouse_x, mouse_y, "Instances", objFeno);
    
    // opcional: se quiser copiar o sprite
   feno.sprite_index = sprite_index;
	feno.image_xscale = 2;
	feno.image_yscale = 2;
    //can_pick = false; // impede pegar novamente
}
