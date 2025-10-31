  global.isRunning = true;
  
  ds_map_add(global.played_minigames, global.current_minigame, "win");
    global.score += 100;
    global.minigames_done += 1;
    room_goto(DentroCasa);