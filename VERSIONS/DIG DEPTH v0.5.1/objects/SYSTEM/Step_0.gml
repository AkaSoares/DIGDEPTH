// Verificar se o jogador está fora da tela
if (instance_exists(fer)) {
    x = fer.x;
    y = fer.y;
}



// RESET
if (keyboard_check_pressed(vk_escape)) {
	 audio_sound_pitch(Sound1, 1.0);
		game_restart()
}
//PONTOS
show_debug_message("points: "+string(points));



