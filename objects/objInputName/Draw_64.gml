
var h = sprite_get_height(sprite_index);

draw_set_font(fnt_input);
draw_set_halign(fa_center)
draw_set_valign(fa_middle);
if(room == Menu or string_trim(global.playerName) == "" ){
	draw_text(x,y-h ,"Digite o seu nome:");
}else{
	draw_text(x,y-h ,"Verifique o seu nome:");
}