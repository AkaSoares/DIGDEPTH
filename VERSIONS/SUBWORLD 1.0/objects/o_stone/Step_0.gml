// block

if brokey = 0 {
	if (irandom(3) == 0) {
	instance_create_depth(x,  y, depth, o_fiveblus);
	} else if (irandom(10) == 0) {
	instance_create_depth(x,  y, depth, o_beet);
	}
	instance_destroy();
	global.cube += 1;
	o_bar.image_speed = 1;
	o_bar.image_index = 1;
	instance_create_depth(x, y, depth, o_spart);
	audio_play_sound(a_soulblock, 1 ,0 );
}

if brokey = 2 {
	image_index = 0 ;
}
if brokey = 1 {
	image_index = 1 ;
}




if (!instance_exists(o_bonus)) {

    if (has_bonus) {
        instance_create_depth(x, y, depth, o_bonus);
    }
}

