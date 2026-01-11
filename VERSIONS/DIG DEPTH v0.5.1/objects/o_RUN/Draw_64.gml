// Draw time
draw_set_halign(fa_center);

if (drawRed) {
    draw_set_color(c_red);
}

draw_set_color(c_black); // Define a cor para a borda preta
for (var i = -2; i <= 2; i++) {
    for (var j = -2; j <= 2; j++) {
        if (abs(i) + abs(j) > 2) continue; // Controla a largura da borda
        draw_text(room_width/2 + i, 34 + j, string(max(0, time) div 60)); // Desenha o texto com borda preta
    }
}

draw_set_color(c_red);
draw_text(room_width/2, 34, string(max(0, time) div 60)); // Alterado para desenhar o tempo no centro

// Reset the drawRed variable
drawRed = false;

















