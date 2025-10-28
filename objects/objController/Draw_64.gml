// Mostra a barra de progresso quando ESC está sendo segurado
if (keyboard_check(vk_escape)) {
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();

    var bar_w = 200; // largura da barra
    var bar_h = 20;  // altura da barra
    var posx = gui_w / 2 - bar_w / 2;
    var posy = gui_h - 80;

    // Progresso (0 a 1)
    var progress = reset_timer / reset_hold_time;
    if (progress > 1) progress = 1;

    // Fundo da barra
    draw_set_color(c_gray);
    draw_rectangle(posx, posy, posx + bar_w, posy + bar_h, false);

    // Barra de preenchimento
    draw_set_color(c_red);
    draw_rectangle(posx, posy, posx + bar_w * progress, posy + bar_h, false);

    // Texto
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_text(gui_w / 2, posy - 20, "Segure ESC para reiniciar");
}


if (isRunning) {
    var bar_w = display_get_gui_width();
    var bar_h = 20; // um pouco maior pra caber o texto
    var bar_y = 0;

    // Progresso (0 a 1)
    var progress = global.gametimer / 300;
    if (progress < 0) progress = 0;

    // Fundo da barra
    draw_set_color(c_black);
    draw_rectangle(0, bar_y, bar_w, bar_y + bar_h, false);

    // Barra de progresso
    draw_set_color(c_red);
    draw_rectangle(0, bar_y, bar_w * progress, bar_y + bar_h, false);

    // === Texto central ===
    var minutos = floor(global.gametimer div 60);
    var segundos = floor(global.gametimer mod 60);

    var tempo_texto = string_format(minutos, 2, 0) + ":" + string_format(segundos, 2, 0);

    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(fnt_ui); // opcional, se você tiver uma fonte própria

    draw_text(bar_w / 2, bar_y + bar_h / 2, tempo_texto);
}
