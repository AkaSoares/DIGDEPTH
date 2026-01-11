/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Código para ser colocado no evento draw_gui
// Desenhar o botão de pausa

if (room != START_SCREEN && room != HIGHSC) {
var btn_x = 15; // Posição X do botão
var btn_y = 15;  // Posição Y do botão
var btn_width = 48;  // Largura do botão
var btn_height = 48; // Altura do botão

// Desenha o sprite do botão (s_PAUSE_Buttom)
draw_sprite(s_PAUSE_Button, 0, btn_x, btn_y);



// Detectar toque ou clique no botão
if (mouse_check_button_pressed(mb_left)) {
    var _mouse_x = device_mouse_x_to_gui(0);
    var _mouse_y = device_mouse_y_to_gui(0);

    if (_mouse_x >= btn_x && _mouse_x <= btn_x + btn_width &&
        _mouse_y >= btn_y && _mouse_y <= btn_y + btn_height) {

        // Logica de pausar ou despausar o jogo
        if (room != PAUSE && room != START_SCREEN && room != HIGHSC) {
            SYSTEM.ATIME = false;

		global.previous_room = room;
            room_goto(PAUSE);
        } else if (room == PAUSE) {
            SYSTEM.ATIME = true;
		

            if (global.previous_room != -1 && global.previous_room != START_SCREEN && global.previous_room != HIGHSC) {
                room_goto(global.previous_room);
                global.previous_room = -1;
            }
        }
    }
}
}