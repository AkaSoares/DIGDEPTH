// block

if broke = 0 {
	instance_destroy()
}

if broke = 5 {
	image_index = 0 ;
}
if broke = 4 {
	image_index = 1 ;
}
if broke = 3 {
	image_index = 2 ;
}
if broke = 1 {
	image_index = 3 ;
}

//debug destroy
if (position_meeting(mouse_x, mouse_y, id)) {
	instance_destroy();
}

// Verificar se os objetos foram destruidos para criar bonus e door
if (!instance_exists(o_door)) {

    if (has_door) {
        instance_create_depth(x, y, depth, o_door);
    }
}


if (!instance_exists(o_bonus)) {

    if (has_bonus) {
        instance_create_depth(x, y, depth, o_bonus);
    }
}

