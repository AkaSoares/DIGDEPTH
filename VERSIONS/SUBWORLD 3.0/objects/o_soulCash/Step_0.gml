/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// block

if broke = 0 {
	instance_destroy();
	if (irandom(2) == 0) {
	instance_create_depth(x,  y, depth, o_Ruby);
	} else if (irandom(1) == 0) {
	instance_create_depth(x,  y, depth, o_amber);
	} else if (irandom(1) == 0) {
	instance_create_depth(x,  y, depth, o_amethyst);
	} else if (irandom(1) == 0) {
	instance_create_depth(x,  y, depth, o_diamond);
	} else if (irandom(1) == 0) {
	instance_create_depth(x,  y, depth, o_safira);
	} else if (irandom(1) == 0) {
	instance_create_depth(x,  y, depth, o_emerald);
	}
	global.cube += 1;
	o_bar.image_speed = 1;
	o_bar.image_index = 1;
	instance_create_depth(x, y, depth, o_spart);
	audio_play_sound(a_soulblock, 1 ,0 );
}

if broke = 1 {
	image_index = 0;
}




if (!instance_exists(o_HOLE)) {

    if (has_door) {
        instance_create_depth(x, y, depth, o_HOLE);
    }
}








