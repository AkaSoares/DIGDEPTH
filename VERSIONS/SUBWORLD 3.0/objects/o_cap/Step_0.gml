
var move_h = 0;
var move_v = 0;

dir_chance = max(0,dir_chance-1);

// Move and handle player logic
if (x == tar_x && y == tar_y) {

//change direction
if (!dir_chance) {
	//reset delay time
	dir_delay = choose(60,120,180);
	dir_chance = dir_delay;
	dir = choose(0,1,2,3);

}
	switch(dir) {
			case 0:
				move_h = 1;
				sprite_index = s_capRIGHT;
				image_speed = 1;
			break;
				case 1:
				move_v = -1;
				sprite_index = s_capUP;
				image_speed = 1;
			break;
				case 2:
				move_h = -1;
				sprite_index = s_capLEFT;
				image_speed = 1;
			break;
			case 3:
				move_v = 1;
				sprite_index = s_capDOWN;
				image_speed = 1;
			break;
	}
    hsp = 0;
    vsp = 0;

    if (abs(move_h)) {
        tar_x = x + move_h * 16;
        move_v = 0;
    } else if (abs(move_v)) {
        tar_y = y + move_v * 16;
    }

  // Avoid wall and void
	if (!place_meeting(tar_x, tar_y, o_Block) && !place_meeting(tar_x, tar_y, o_null)) {
		hsp = move_h * spd;
		vsp = move_v * spd;
	} else {
		// Reset target
		tar_x = x;
		tar_y = y;
	}
} else {
	if (alive) {
		x += hsp;
		y += vsp;
	}
}

// Verifica se o objeto está se movendo
if (hsp != 0 || vsp != 0) {
    image_speed = 1; // Se estiver se movendo, define a image_speed para 1
} else {
    image_speed = 0; // Se estiver parado, define a image_speed para 0
}

