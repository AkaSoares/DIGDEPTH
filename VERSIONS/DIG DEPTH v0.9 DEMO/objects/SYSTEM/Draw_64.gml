//setup
draw_set_font(fnt_Impact);
draw_set_valign(fa_center);

draw_sprite(s_HUDshinyy, image_number, 10, 70 ); // Desenha o sprite

// Desenha pontos
draw_set_halign(fa_left); // Alterado para desenhar pontos à esquerda

// Verifica se previous_points existe e inicializa se não existir
if (!variable_instance_exists(id, "previous_points")) {
    previous_points = global.current_score;
}

// Verifica se os pontos aumentaram
if (points > previous_points) {
    blink_timer = blink_duration;  // Reinicia o temporizador de piscar
}

// Efeito de piscar
if (blink_timer > 0) {
    draw_set_color(c_black); // Define a cor para a borda preta
    for (var i = -2; i <= 2; i++) {
        for (var j = -2; j <= 2; j++) {
            if (abs(i) + abs(j) > 2) continue; // Controla a largura da borda
            draw_text(80 + i, 102 + j, string(global.current_score)); // Desenha o texto com borda preta
        }
    }
    draw_set_color(c_yellow);
    draw_text(80, 102, string(global.current_score)); // Alterado para desenhar pontos em (16, 16)
    blink_timer--;
} else {
    draw_set_color(c_black); // Define a cor para a borda preta
    for (var i = -2; i <= 2; i++) {
        for (var j = -2; j <= 2; j++) {
            if (abs(i) + abs(j) > 2) continue; // Controla a largura da borda
            draw_text(80 + i, 102 + j, string(global.current_score) + "X"); // Desenha o texto com borda preta
        }
    }
    draw_set_color(c_white);
    draw_text(80, 102, string(global.current_score) + "X"); // Alterado para desenhar pontos em (16, 16)
}

// Armazena os pontos anteriores para comparação no próximo quadro
previous_points = global.current_score;

if  (ATIME == true) {
// Draw time
draw_set_halign(fa_center);
draw_set_color(c_white);

draw_set_color(c_black); // Define a cor para a borda preta
for (var i = -2; i <= 2; i++) {
    for (var j = -2; j <= 2; j++) {
        if (abs(i) + abs(j) > 2) continue; // Controla a largura da borda
        draw_text(640, 40 + j, string(max(0, atime) div 60)); // Desenha o texto com borda preta
    }
}

draw_set_color(c_white);
draw_text(640, 40, string(max(0, atime) div 60)); // Alterado para desenhar o tempo no centro

}

//DESENHAR CUBO E CONTADOR

if (o_bar.image_index >= 1) {
if instance_exists(o_bar) {
    var cube_x = 950; // Coordenada X
    var cube_y = 4; // Coordenada Y
    
    // Desenhar borda para o sprite do cubo
    draw_set_color(c_black); // Define a cor para a borda preta
    draw_sprite_ext(s_cube, image_index, cube_x - 2, cube_y - 2, 1, 1, 0, c_black, 1);
    draw_sprite_ext(s_cube, image_index, cube_x - 2, cube_y + 2, 1, 1, 0, c_black, 1);
    draw_sprite_ext(s_cube, image_index, cube_x + 2, cube_y - 2, 1, 1, 0, c_black, 1);
    draw_sprite_ext(s_cube, image_index, cube_x + 2, cube_y + 2, 1, 1, 0, c_black, 1);
    draw_sprite(s_cube, image_index, cube_x, cube_y);

};

// Desenhar borda para o texto
draw_set_halign(fa_center);

draw_set_color(c_black); // Define a cor para a borda preta
for (var i = -2; i <= 2; i++) {
    for (var j = -2; j <= 2; j++) {
        if (abs(i) + abs(j) > 2) continue; // Controla a largura da borda
        draw_text(980 + i, 64 + j, string(global.cube) + "X"); // Desenha o texto com borda preta
    }
}

// Desenhar o texto real
draw_set_color(c_white);
draw_text(980, 64, string(global.cube) + "X"); // Desenhar o texto real

}

