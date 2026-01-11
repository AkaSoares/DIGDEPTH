// block

if broke = 0 {
	instance_destroy();
	SYSTEM.points+=pts;
	
}

if broke = 2 {
	image_index = 2 ;
}
if broke = 1 {
	image_index = 3 ;
}

//debug destroy
if (position_meeting(mouse_x, mouse_y, id)) {
	instance_destroy();
}


if (!instance_exists(o_bonus)) {

    if (has_bonus) {
        instance_create_depth(x, y, depth, o_bonus);
    }
}

