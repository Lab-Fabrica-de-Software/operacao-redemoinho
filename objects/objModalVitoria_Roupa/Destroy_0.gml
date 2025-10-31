  global.isRunning = true;
  
    ds_map_add(global.played_minigames, global.current_minigame, "win");
    global.score += 50;
    global.minigames_done += 1;
    room_goto(mainGame);