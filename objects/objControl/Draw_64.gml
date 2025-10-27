draw_set_color(c_white);
draw_text(20, 20, "Roupas restantes: " + string(roupas_restantes));

if (ventando) {
    draw_text(20, 40, "💨 Está ventando!");
} else {
    draw_text(20, 40, "😌 Sem vento!");
}
