// block

if brokk = 0 {
	instance_destroy()
	global.score+=pts;
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



