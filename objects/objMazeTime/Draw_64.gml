var bar_w = 200;
var bar_h = 30; // um pouco maior pra caber o texto
var bar_x = x;
var bar_y = y;

var progress = timerCount /totalTime;
if (progress < 0) progress = 0;


// Fundo da barra
draw_set_color(c_black);
draw_rectangle(bar_x, bar_y, bar_x + bar_w, bar_y + bar_h, false);

 // Barra de progresso
draw_set_color(c_red);
draw_rectangle(bar_x, bar_y, bar_x + bar_w * progress, bar_y + bar_h, false);