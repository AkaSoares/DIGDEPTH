/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// block

if (broke <= 0) {
    instance_destroy();

    // Definir os pesos para cada item
    var rand = irandom(100);

    if (rand < 60) { // 60% de chance
        instance_create_depth(x, y, depth, o_oneblu);
    } else if (rand < 80) { // 20% de chance
        instance_create_depth(x, y, depth, o_fiveblus);
    } else if (rand < 70) { // 5% de chance
        instance_create_depth(x, y, depth, o_bonus);
    } else if (rand < 90) { // 5% de chance
        instance_create_depth(x, y, depth, o_fork);
    } else if (rand < 95) { // 5% de chance
        instance_create_depth(x, y, depth, o_streng);
    } else { // 5% de chance restante
        instance_create_depth(x, y, depth, o_beet);
    }

	global.cube += 1;
	o_bar.image_speed = 1;
	o_bar.image_index = 1;
	instance_create_depth(x, y, depth, o_spart);
	audio_play_sound(a_soulblock, 1 ,0 );
}

if broke == 2 {
	image_index = 0;
}
if broke == 1 {
	image_index = 1;
}





/*if (!instance_exists(o_HOLE)) {

    if (has_door) {
        instance_create_depth(x, y, depth, o_HOLE);
    }
}








