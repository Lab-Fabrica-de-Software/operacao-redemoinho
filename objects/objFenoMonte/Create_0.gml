image_speed = 0;
image_index = 0;//0 ate 2

feno_count = 0;

// Define a função (ela só é executada quando chamada)
function addFeno() {
	image_yscale = image_xscale;
    feno_count += 1;

    switch (feno_count) {
        case 1:
		
			image_index = 1; 
		
		break;
        case 2: image_index = 2; break;
        case 3:
            image_index = 3;
            	// Marca o minigame como jogado
			ds_map_add(global.played_minigames, global.current_minigame, true);

			// Retorna para a room principal
			
			room_goto(mainGame_1);
			

           break;
    }
}
