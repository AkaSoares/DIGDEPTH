// player input
inp_R = keyboard_check(vk_right);
inp_U = keyboard_check(vk_up);
inp_L = keyboard_check(vk_left);
inp_D = keyboard_check(vk_down);

//movimento
var move_h = inp_R - inp_L;
var move_v = inp_D - inp_U;

//move
if (x == tar_x && y == tar_y) {
	hsp = 0;
	vsp = 0;
	if (abs(move_h)) {
	tar_x = x + move_h*16;
	move_v = 0;
	}
	else if (abs(move_v)) {
		tar_y = y + move_v*16;
		
	}
	//avoid wall
	if(!place_meeting(tar_x, tar_y, o_wall)) {
			hsp = move_h*spd;
			vsp = move_v*spd;
		}
		else {
			//reser target
			tar_x = x;
			tar_y = y;
		}
		//animação
		if (move_h == 0 && move_v == 0) {
			image_speed = 0;
			sprite_index = s_fer_IDEL;
		}
		else {
			image_speed = 1;
			if (move_h ==  1) sprite_index = s_fer_RIGHT;
			if (move_v == -1) sprite_index = s_fer_UP;
			if (move_h == -1) sprite_index = s_fer_LEFT;
			if (move_v ==  1) sprite_index = s_fer_DOWN;
		}
		//animation
		image_speed = 1;
		if (move_h == 0 && move_v == 0) {
			image_speed = 0;
			sprite_index = s_fer_IDEL
		}
		else if (move_h ==  1) sprite_index = s_fer_RIGHT;
		else if (move_v == -1) sprite_index = s_fer_UP;
		else if (move_h == -1) sprite_index = s_fer_LEFT;
		else if (move_v ==  1) sprite_index = s_fer_DOWN;
}
else { 
	if (alive) {
	//move towards
	x +=  hsp;
	y +=  vsp;
	}
	else {
	hsp = 0;
	vsp = 0;
	move_h = 0;
	move_v = 0;
	sprite_index = s_fer_DEATH;
	cooldown = 99;
	}
}

cooldown = max(0, cooldown-1);

//debug death
if (position_meeting(mouse_x, mouse_y, id)) {
	if (alive) {
		alive = false
		sprite_index = s_fer_DEATH;
		image_speed = 0.5;
		tar_x = -1;
		tar_y = -1;
	}
}	
   