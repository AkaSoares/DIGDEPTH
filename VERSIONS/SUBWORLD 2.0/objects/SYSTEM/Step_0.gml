// Verificar se o jogador está fora da telaimage_alpha -= fadespeed;s_fade.image_alpha -= fadespeed;
//is following?

/*if (instance_exists(p_phew)) {
    x = p_phew.x;
    y = p_phew.y;
}*/

if global.gems == 6 {
    if (room == DIRTSHUB) {
        instance_create_depth(-1000, -1000, depth, o_WRECKAGE);
        audio_play_sound(a_wreckage,1,1)
        global.gems++;
    }
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







//SETAR DIFICULDADE
if (room == DIRTKAGE && !LEVEL1) {
    if (global.gems == 1) {
        instance_create_depth(-1000, -1000, depth, DIRTS_LEVEL1);
        // Marque que o código foi executado
        LEVEL1 = true;
		instance_destroy(DOOR_1);
    }
}

if (room == all && !LEVEL2) {
    if (global.gems == 2) {
        instance_create_depth(-1000, -1000, depth, DIRTS_LEVEL2);
        // Marque que o código foi executado
        LEVEL2 = true;
		instance_destroy(DIRTS_LEVEL1);
    }
}

if (room == all && !LEVEL3) {
    if (global.gems == 3) {
        instance_create_depth(-1000, -1000, depth, DIRTS_LEVEL3);
        // Marque que o código foi executado
        LEVEL3 = true;
    }
}

if (room == all && !LEVEL4) {
    if (global.gems == 4) {
        instance_create_depth(-1000, -1000, depth, DIRTS_LEVEL4);
        // Marque que o código foi executado
        LEVEL4 = true;
    }
}

if (room == all && !LEVEL5) {
    if (global.gems == 5) {
        instance_create_depth(-1000, -1000, depth, DIRTS_LEVEL5);
        // Marque que o código foi executado
        LEVEL5 = true;
    }
}

if (room == all && !LEVEL6) {
    if (global.gems == 6) {
        instance_create_depth(-1000, -1000, depth, DIRTS_LEVEL6);
        // Marque que o código foi executado
        LEVEL6 = true;
    }
}


 
		

