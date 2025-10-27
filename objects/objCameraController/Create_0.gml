cam = view_camera[0];
alvo_x = 0;
alvo_y = 0;
animando = false;

function moveCameraTo(section) {  
	global.current_section = section;
	switch(section){
		case "1_1":
		
		alvo_x = 0;
	    alvo_y = 0;
		break;
		
		case "1_2":
		alvo_x = 480;
	    alvo_y = 0;
		break;
		
		case "2_1":
		alvo_x = 0;
	    alvo_y = 270;
		break;
		
		case "2_2":
		alvo_x = 480;
	    alvo_y = 270;
	  
		break;
	} 
	  animando = true;
}