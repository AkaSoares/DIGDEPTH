/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// block

if broke = 0 {
	instance_destroy();
	if (irandom(1) == 0) {
	instance_create_depth(x,  y, depth, o_bonus);
	} else if (irandom(1) == 0) {
	instance_create_depth(x,  y, depth, o_fork);
	} else if (irandom(1) == 0) {
	instance_create_depth(x,  y, depth, o_streng);
	} else if (irandom(3) == 0) {
	instance_create_depth(x,  y, depth, o_fiveblus);
	} else if (irandom(10) == 0) {
	instance_create_depth(x,  y, depth, o_beet);
	}
	global.cube += 1;
	o_bar.image_speed = 1;
	o_bar.image_index = 1;
	instance_create_depth(x, y, depth, o_spart);
	audio_play_sound(a_soulblock, 1 ,0 );
}

if broke = 2 {
	image_index = 0;
}
if broke = 1 {
	image_index = 1;
}





if (!instance_exists(o_HOLE)) {

    if (has_door) {
        instance_create_depth(x, y, depth, o_HOLE);
    }
}








