var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// --- Desenhar fundo com escala ---
var spr_w = sprite_get_width(sprModal);
var spr_h = sprite_get_height(sprModal);

var scale_x = modal_w / spr_w;
var scale_y = modal_h / spr_h;

draw_sprite_ext(
    sprModal,
    0,
    modal_x,
    modal_y,
    scale_x,
    scale_y,
    0,
    c_white,
    1
);

// --- Configuração do texto ---
draw_set_font(fnt_ui);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

// --- Quebra automática precisa ---
var margin = 16;
var max_width = modal_w - margin * 2;

// Usa a função corrigida
var wrapped_text = string_wrap(modal_text, max_width);

// Calcula altura total do bloco de texto
var line_height = string_height("A");
var num_lines = array_length(wrapped_text);
var total_height = num_lines * line_height;

// Centraliza verticalmente dentro do modal
var yy = modal_y - total_height / 2 + line_height / 2;

// Desenha cada linha centralizada
for (var i = 0; i < num_lines; i++) {
    draw_text(modal_x, yy, wrapped_text[i]);
    yy += line_height;
}
