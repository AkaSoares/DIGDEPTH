/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

/*draw_set_color(c_white);
draw_text(320, 64, "BLOCKS: " + string(global.cube));
draw_text(320, 128, "SHARDS: " + string(global.score));
*/

draw_set_font(fnt_Impact);
draw_set_color(c_white);
draw_text(640, 128, "SHARDS: " + string(global.current_score));
draw_text(640, 60, "HIGHSCORE: " + string(global.highscore));
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












