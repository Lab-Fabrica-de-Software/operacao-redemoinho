if (animando) {
    var atual_x = camera_get_view_x(cam);
    var atual_y = camera_get_view_y(cam);

    // movimento suave com lerp
    var novo_x = lerp(atual_x, alvo_x, 0.15);
    var novo_y = lerp(atual_y, alvo_y, 0.15);

    camera_set_view_pos(cam, novo_x, novo_y);

    // quando estiver perto o suficiente, trava
    if (point_distance(novo_x, novo_y, alvo_x, alvo_y) < 1) {
        camera_set_view_pos(cam, alvo_x, alvo_y);
        animando = false;
    }
}
