// Arrastando o feno
if (mouse_check_button(mb_left)) {
    if (dragging) {
        x = mouse_x + offset_x;
        y = mouse_y + offset_y;
    }
} else {
    // Soltou o mouse — tenta soltar o feno no monte
    dragging = false;
    
    var target = instance_place(x, y, objFenoMonte);
    if (target != noone) {
        target.addFeno(); // chama função no monte
        instance_destroy(); // some com o feno
    }
}
