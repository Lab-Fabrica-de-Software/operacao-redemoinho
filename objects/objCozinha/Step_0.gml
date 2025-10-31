if (instance_exists(objPlayer)) {
    var dist = point_distance(x, y, objPlayer.x, objPlayer.y);

    if (dist < activate_distance) {
        if (!ds_map_exists(global.played_minigames, minigame_id)) {
            
            // Salva dados de retorno
            global.current_minigame = minigame_id;

            // Vai para o minigame
            room_goto(target_room);
        }
    }
}
