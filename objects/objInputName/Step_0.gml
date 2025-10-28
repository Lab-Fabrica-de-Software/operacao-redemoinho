if(!onFocus) {
 keyboard_string = "";
};

if(string_length(string(global.playerName)) < 16){
	if (keyboard_string != "" && string_length(string(global.playerName)) < 20) {
	    global.playerName += keyboard_string;
	    keyboard_string = "";
	}
}

// --- BACKSPACE ---
if (keyboard_check_pressed(vk_backspace)) {
    global.playerName = string_delete(global.playerName, string_length(global.playerName), 1);
    delete_timer = 0;
	  keyboard_string = "";
} 
else if (keyboard_check(vk_backspace)) {
    delete_timer += 1;
	keyboard_string = "";
    if (delete_timer > 15 && delete_timer mod 4 == 0) {
        global.playerName = string_delete(global.playerName, string_length(global.playerName), 1);
    }
} 
else {
	keyboard_string = "";
    delete_timer = 0;
}
