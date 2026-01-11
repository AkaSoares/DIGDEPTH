// camera follow player
x = fer.x;



// RESET
if (keyboard_check_pressed(vk_escape)) {
	 audio_sound_pitch(Sound1, 1.0);
		game_restart()
}
//PONTOS
show_debug_message("points: "+string(points));


//timer
if (time ==0) {

	fer.alive = false
}



// pisca
if (!instance_exists(o_door)) {
    time--;
    drawRed = true;
	 audio_sound_pitch(Sound1, 1.2);
}


