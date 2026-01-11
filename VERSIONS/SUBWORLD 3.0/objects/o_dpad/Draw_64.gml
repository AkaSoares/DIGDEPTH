if (room != START_SCREEN && room != HIGHSC && room != PAUSE) {
    var _escala = 1.3;
    var button_size = sprite_get_width(s_dpad) * _escala;

    // Ajustar coordenadas para mover os botões mais para cima e separá-los
    var left_button_x = 90;
    var left_button_y = 550;
    var right_button_x = 230;
    var right_button_y = 550;
    var up_button_x = 160;
    var up_button_y = 470;
    var down_button_x = 160;
    var down_button_y = 630;

    var button_alpha = 0.6;

    draw_sprite_ext(s_dpad, 0, left_button_x, left_button_y, _escala, _escala, 0, c_white, button_alpha);
    draw_sprite_ext(s_dpad, 0, right_button_x, right_button_y, _escala, _escala, 0, c_white, button_alpha);
    draw_sprite_ext(s_dpad, 0, up_button_x, up_button_y, _escala, _escala, 0, c_white, button_alpha);
    draw_sprite_ext(s_dpad, 0, down_button_x, down_button_y, _escala, _escala, 0, c_white, button_alpha);

    // Definir coordenadas e tamanho do botão de ataque
    var _escala = 1.4;
    var atk_size = sprite_get_width(s_atk) * _escala;
    var btn_x = 1200;
    var btn_y = 550;

    draw_sprite_ext(s_atk, 0, btn_x, btn_y, _escala, _escala, 0, c_white, button_alpha);

    // Inicializar variáveis de entrada
    global.inp_left = false;
    global.inp_right = false;
    global.inp_up = false;
    global.inp_down = false;
    global.inp_S = false;

    // Verificar múltiplos toques
    for (var i = 0; i < 5; i++) {
        var _mouse_x = device_mouse_x_to_gui(i);
        var _mouse_y = device_mouse_y_to_gui(i);
        var mouse_click = device_mouse_check_button(i, mb_left);

        if (mouse_click) {
            if (point_in_rectangle(_mouse_x, _mouse_y, left_button_x - button_size / 2, left_button_y - button_size / 2, left_button_x + button_size / 2, left_button_y + button_size / 2)) {
                global.inp_left = true;
            }
            if (point_in_rectangle(_mouse_x, _mouse_y, right_button_x - button_size / 2, right_button_y - button_size / 2, right_button_x + button_size / 2, right_button_y + button_size / 2)) {
                global.inp_right = true;
            }
            if (point_in_rectangle(_mouse_x, _mouse_y, up_button_x - button_size / 2, up_button_y - button_size / 2, up_button_x + button_size / 2, up_button_y + button_size / 2)) {
                global.inp_up = true;
            }
            if (point_in_rectangle(_mouse_x, _mouse_y, down_button_x - button_size / 2, down_button_y - button_size / 2, down_button_x + button_size / 2, down_button_y + button_size / 2)) {
                global.inp_down = true;
            }
            if (point_in_rectangle(_mouse_x, _mouse_y, btn_x - atk_size / 2, btn_y - atk_size / 2, btn_x + atk_size / 2, btn_y + atk_size / 2)) {
                global.inp_S = true;
            }
        }
    }
}

