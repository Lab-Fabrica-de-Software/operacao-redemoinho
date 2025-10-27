if (canGo) {   
	if (instance_exists(objPlayer)) {
	    var dist = point_distance(x, y, objPlayer.x, objPlayer.y);

	    if (dist < 16) {
			// Encontra o controlador
			var camCtrl = instance_find(objCameraController, 0);

			// Muda para o próximo quadro
			if (camCtrl != noone && !camCtrl.animando) {
				objPlayer.moveTo(returnX,returnY);
				camCtrl.moveCameraTo(section);			
			}
		}
	}
}