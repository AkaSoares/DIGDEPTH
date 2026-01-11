draw_set_font(fnt_Impact);

//TEXTO DO SCORE
draw_set_color(c_white);
draw_text(130, 70, "X" + string(global.highscore));
draw_text(1110,700, "by: SoulYard")

for(var i=0;i<op_max;i++) {
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	
	if(index == i) {
		draw_set_color(c_yellow); 
	} else {
		draw_set_color(c_white);
	}
	
	draw_text(640,500+ (30 *i),opcoes[i])	
	
}












