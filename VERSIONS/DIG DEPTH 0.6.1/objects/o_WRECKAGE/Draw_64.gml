draw_sprite(s_timer, image_index, 545 ,8);
draw_set_halign(fa_center);

if (drawRed) {
    draw_set_color(c_red);
	
}

draw_set_color(c_black); // Define a cor para a borda preta
for (var i = -2; i <= 2; i++) {
    for (var j = -2; j <= 2; j++) {
        if (abs(i) + abs(j) > 2) continue; // Controla a largura da borda
        draw_text(640 + i, 40 + j, string(max(0, time) div 60)); 
		
		// Desenha o texto com borda preta
    }
}

draw_set_color(c_red);
draw_text(640, 40, string(max(0, time) div 60)); // Alterado para desenhar o tempo no centro

// Reset the drawRed variable
drawRed = false;


















