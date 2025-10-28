draw_set_font(fnt_ui);
draw_set_color(c_white);

var margem_x = 40;
var margem_y = 40;
var offset_y = 0;

// Desenhar para cada QTE ativo
with (objQTE) {
    if (qte_ativo) {
        var texto =  " | Erros " + string(erros) + "/" + string(erros_max);
        draw_text(margem_x, margem_y + offset_y, texto);		
    }
}