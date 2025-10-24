if (global.time_left > 0) {
    global.time_left -= 1;
    alarm[1] = game_get_speed(gamespeed_fps); // repete a cada segundo
} else {
    // tempo acabou
    global.game_over = true;
    show_debug_message("Tempo esgotado! Você perdeu.");
   
   global.game_over = true;
 room_goto(mainGame);
   // room_restart();
}
