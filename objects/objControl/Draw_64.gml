draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_ui); // opcional, se você tiver uma fonte própria
draw_text(32, 32, "Roupas restantes: " + string(roupas_restantes));


if (ventando) {
    draw_text(32, 40, "Está ventando!");
} else {
    draw_text(32, 40, "Sem vento!");
}
