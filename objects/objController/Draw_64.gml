
if (room != Menu) {
    draw_set_font(fnt_ui);
    draw_set_halign(fa_left);
    draw_set_valign(fa_middle);

    var texto = "Player Name: " + string(global.PlayerName);
    var posx = 16;
    var posy = 16;

    // 🧮 Calcular tamanho do texto
    var tw = string_width(texto);
    var th = string_height(texto);

    // 🎨 Desenhar fundo opaco
    draw_set_color(make_color_rgb(0, 0, 0)); // fundo preto
    draw_set_alpha(0.6); // opacidade
    draw_rectangle(posx - 4, posy - th / 2 - 2, posx + tw + 4, posy + th / 2 + 2, false);
    draw_set_alpha(1); // volta pro normal

    // ✏️ Desenhar texto
    draw_set_color(c_white);
    draw_text(posx, posy, texto);
}


// Mostra a barra de progresso quando ESC está sendo segurado
if (keyboard_check(vk_escape)) {
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();

    var bar_w = 200; // largura da barra
    var bar_h = 20;  // altura da barra
    var posx = gui_w / 2 - bar_w / 2;
    var posy = gui_h - 80;

    // Progresso (0 a 1)
    var progress = esc_timer / esc_hold_time;
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
