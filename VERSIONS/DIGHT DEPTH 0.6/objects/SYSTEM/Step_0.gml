// Verificar se o jogador está fora da tela
if (instance_exists(p_phew)) {
    x = p_phew.x;
    y = p_phew.y;
}

if  (ATIME == true) {
	atime--;

//timer
if (atime == 0) {
	alarm[0] = room_speed * 2
	audio_stop_sound(a_dirts);
	move = false;
	
}
}
// RESET
if (keyboard_check_pressed(vk_escape)) {
	 audio_sound_pitch(a_digdeep, 1.0);
		game_restart()
}
//PONTOS
show_debug_message("points: "+string(points));



