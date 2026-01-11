// block

if brokk = 0 {
	instance_destroy();
	instance_create_depth(x, y, depth, o_part);
	audio_play_sound(a_dirt_break, 1 ,0 );
	instance_create_depth(x,  y, depth, o_oneblu);
	global.cube += 1;
	o_bar.image_speed = 1;
	o_bar.image_index = 1;
}

if brokk = 2 {
	image_index = 0 ;
}
if brokk = 1 {
	image_index = 1 ;
}


//debug destroy
if (position_meeting(mouse_x, mouse_y, id)) {
	instance_destroy();
}



