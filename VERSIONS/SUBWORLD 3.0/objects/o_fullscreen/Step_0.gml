/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// RESET
if (keyboard_check_pressed(vk_escape)) {
	 audio_sound_pitch(a_digdeep, 1.0);
		game_restart()
}

/*
if (keyboard_check_pressed(ord("Q"))) {
    if (room != PAUSE && room != START_SCREEN && room != HIGHSC) {
		SYSTEM.ATIME = false 


        // Armazena a sala atual e muda para a sala de pausa
        global.previous_room = room;
        room_goto(PAUSE);
    } else if (room == PAUSE) {
	SYSTEM.ATIME = true 



		
        // Retorna para a sala anterior, se não for a tela de início ou HIGHSC
        if (global.previous_room != -1 && global.previous_room != START_SCREEN && global.previous_room != HIGHSC) {
            room_goto(global.previous_room);
            global.previous_room = -1;
        }
    }
}
















