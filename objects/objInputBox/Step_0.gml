if(!onFocus) {
 keyboard_string = "";
};

// --- INPUT DE TEXTO ---
// Adicionar caracteres


if (keyboard_string != "" && string_length(global.PlayerName) < 20) {
    global.PlayerName += keyboard_string;
    keyboard_string = "";
}

// --- BACKSPACE ---
if (keyboard_check_pressed(vk_backspace)) {
    // Primeira exclusão imediata
    global.PlayerName = string_delete(global.PlayerName, string_length(global.PlayerName), 1);
    delete_timer = 0;
} 
else if (keyboard_check(vk_backspace)) {
    // Enquanto estiver segurando
    delete_timer += 1;

    // Atraso inicial (15 frames = ~0.25s), depois apaga a cada 4 frames (~0.07s)
    if (delete_timer > 15 && delete_timer mod 4 == 0) {
        global.PlayerName = string_delete(global.PlayerName, string_length(global.PlayerName), 1);
    }
} 
else {
    delete_timer = 0; // reset quando solta a tecla
}
