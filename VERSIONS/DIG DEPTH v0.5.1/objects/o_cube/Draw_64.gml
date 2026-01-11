/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if instance_exists(o_bar) {
    var cube_x = 370; // Coordenada X
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
        draw_text(360 + i, 32 + j, string(global.cube) + "X"); // Desenha o texto com borda preta
    }
}

// Desenhar o texto real
draw_set_color(c_white);
draw_text(360, 32, string(global.cube) + "X"); // Desenhar o texto real










