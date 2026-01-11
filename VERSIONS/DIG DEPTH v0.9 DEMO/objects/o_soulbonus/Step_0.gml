/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// block

if broke = 0 {
	instance_destroy();
	if (irandom(3) == 0) {
	instance_create_depth(x,  y, depth, o_bonus);
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








