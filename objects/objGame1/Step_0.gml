// Verifica se o player existe
if (instance_exists(objPlayer)) {
    var dist = point_distance(x, y, objPlayer.x, objPlayer.y);

    if (dist < minDist) { 
       room_goto(minigame1);
    }
}
