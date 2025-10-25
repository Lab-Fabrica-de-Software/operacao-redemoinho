if (canGo) {   
	if (instance_exists(objPlayer)) {
	    var dist = point_distance(x, y, objPlayer.x, objPlayer.y);

	    if (dist < 16) {
			// Encontra o controlador
			var camCtrl = instance_find(objCameraController, 0);

			// Muda para o próximo quadro
			if (camCtrl != noone && !camCtrl.animando) {
				switch(image_angle){
				case 0:
				  //direita
				  objPlayer.moveTo(180,0);
					camCtrl.moveCameraHorizontal(1);
				break
				case 90:
					//cima
					objPlayer.moveTo(0,180);
					camCtrl.moveCameraVertical(0);
				break
				case 180:
				//esquerda
				objPlayer.moveTo(-180,0);
					camCtrl.moveCameraHorizontal(0);
				break
				case 270:
				objPlayer.moveTo(0,-180);
				//baixo
					camCtrl.moveCameraVertical(1);
				break 
				}
			
			}
		}
	}
}