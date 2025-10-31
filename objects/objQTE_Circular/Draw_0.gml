var cx = x;
var cy = y;


// Base
draw_sprite_ext(sprQteBase, 0, cx, cy,image_xscale, image_yscale,0, c_white, 1);


var passos = 100; // mais = arco mais suave
var raio = 32 * image_xscale;
var fim = zona_inicio + zona_tamanho;

draw_primitive_begin(pr_trianglefan);
draw_vertex_color(cx, cy, c_black, c_black); // centro (transparente se quiser)

for (var a = zona_inicio; a < fim; a += zona_tamanho / passos) {
    var px = cx + lengthdir_x(raio, a);
    var py = cy + lengthdir_y(raio, a);
    draw_vertex_color(px, py, make_color_rgb(0,255,0), make_color_rgb(0,255,0));
}

draw_primitive_end();
/*

// Zona verde
draw_sprite_ext(sprQteZona, 1, cx, cy, 1, 1, zona_inicio, c_white, 1);
*/
draw_set_color(c_white);
draw_circle(cx,cy, 21 * image_xscale, false);

// Ponteiro
draw_sprite_ext(sprQtePonteiro, 0, cx, cy, image_xscale, image_yscale, angulo_ponteiro, c_white, 1);

// Resultado (opcional)
if (!ativo) {
    draw_set_font(fnt_ui);
    draw_set_color(c_white);
    var txt = (resultado == "vitoria") ? "Vitória!" : "Derrota!";
    draw_text(cx - 20, cy + raio + 15,string(acertos));
}

