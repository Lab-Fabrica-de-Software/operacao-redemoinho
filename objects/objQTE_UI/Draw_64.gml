draw_set_font(fnt_ui);
draw_set_color(c_white);

var margem_x = 40;
var margem_y = 40;
var offset_y = 0;

// Desenhar para cada QTE ativo
with (objQTE) {
    if (qte_ativo) {
        var texto =  " | Erros " + string(erros) + "/" + string(erros_max);

        // Posição dinâmica (para não sobrepor)
        draw_text(margem_x, margem_y + offset_y, texto);

        /*/ Resultado (vitória/derrota)
        if (resultado == "vitória!") {
            draw_set_color(c_lime);
        } else if (resultado == "derrota!") {
            draw_set_color(c_red);
        } else {
            draw_set_color(c_yellow);
        }
        draw_text(margem_x, margem_y + offset_y + 20, resultado);
        draw_set_color(c_white);

        // Avança o espaço para o próximo QTE
        offset_y += 60;*/
		
    }
}
