
draw_self();

if (surface_exists(surface_stamp)) {
    draw_surface(surface_stamp, 0, 0);
}

// desenha o X por cima, se estiver com o sprite dele
if (sprite_index == sprMilk) {
    draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
}