//setup
draw_set_font(fnt_Impact);
draw_set_valign(fa_center);

// Draw points
draw_set_halign(fa_left); // Alterado para desenhar pontos à esquerda

// Check if previous_points exists and initialize if not
if (!variable_instance_exists(id, "previous_points")) {
    previous_points = global.score;
}

// Check if points have increased
if (points > previous_points) {
    blink_timer = blink_duration;  // Reset blink timer
}

// Blink effect
if (blink_timer > 0) {
    draw_set_color(c_black); // Define a cor para a borda preta
    for (var i = -2; i <= 2; i++) {
        for (var j = -2; j <= 2; j++) {
            if (abs(i) + abs(j) > 2) continue; // Controla a largura da borda
            draw_text(15 + i, 31 + j, string(global.score)); // Desenha o texto com borda preta
        }
    }
    draw_set_color(c_yellow);
    draw_text(15, 31, string(global.score)); // Alterado para desenhar pontos à esquerda
    blink_timer--;
} else {
    draw_set_color(c_black); // Define a cor para a borda preta
    for (var i = -2; i <= 2; i++) {
        for (var j = -2; j <= 2; j++) {
            if (abs(i) + abs(j) > 2) continue; // Controla a largura da borda
            draw_text(15 + i, 31 + j, string(global.score)); // Desenha o texto com borda preta
        }
    }
    draw_set_color(c_white);
    draw_text(15, 31, string(global.score)); // Alterado para desenhar pontos à esquerda
}

// Store the previous points for comparison in the next frame
previous_points = global.score;




