if (instance_exists(objPlayer)) {
    var dist = point_distance(x, y, objPlayer.x, objPlayer.y);

    if (dist < minDist) {
		canGo = true;
	}else{
		canGo =false;
	}
}