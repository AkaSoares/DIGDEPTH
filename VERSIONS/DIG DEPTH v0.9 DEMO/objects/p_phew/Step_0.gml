

//update recording
if (tar_x != xprevious or tar_y != yprevious) {
	for(var i = array_size-1 ; i > 0; i--)	{
		pos_x[i] = pos_x[i-1];
		pos_y[i] = pos_y[i-1];
	}
	pos_x[0] = x;
	pos_y[0] = y;
}

if instance_exists(o_ruby_follow) {
	var follow_1 = o_ruby_follow; 	
	follow_1.record = 10;
}

// O WAYS
if sprite_index == s_p_DOWN {
	instance_deactivate_object(o_wayDOWN);
} else {
	instance_activate_object(o_wayDOWN);
}
if sprite_index == s_p_UP {
	instance_deactivate_object(o_wayUP);
} else {
	instance_activate_object(o_wayUP);
}
if sprite_index == s_p_LEFT {
	instance_deactivate_object(o_wayLEFT);
} else {
	instance_activate_object(o_wayLEFT);
}
if sprite_index == s_p_RIGHT {
	instance_deactivate_object(o_wayRIGHT);
} else {
	instance_activate_object(o_wayRIGHT);
}






if (move == true) {
// INPUTS
inp_R = keyboard_check(vk_right);
inp_U = keyboard_check(vk_up);
inp_L = keyboard_check(vk_left);
inp_D = keyboard_check(vk_down);
inp_S = keyboard_check(ord("Z"));



// Uma tecla por vez
if (inp_R) {
    inp_L = 0;
    inp_U = 0;
    inp_D = 0;
} else if (inp_L) {
    inp_R = 0;
    inp_U = 0;
    inp_D = 0;
} else if (inp_U) {
    inp_R = 0;
    inp_L = 0;
    inp_D = 0;
} else if (inp_D) {
    inp_R = 0;
    inp_L = 0;
    inp_U = 0;
}


// Movimento
var move_h = inp_R - inp_L;
var move_v = inp_D - inp_U;


if (cooldown == 0 && inp_S) {
    cooldown = cooldown_delay;
     
    // Chamar o script para spawna o scratch
    script_execute(Scratch, x, y, sprite_index);
}

// Check if player has reached the target position
if (x == tar_x && y == tar_y) {
    
	// Movement in the right direction
    if (inp_R) {
        tar_x = x + move_h * R;
        move_v = 0;
	
    } 
    // Movement in the up direction
    else if (inp_U) {
        tar_y = y + move_v * U;
        move_h = 0;

		
    }
    // Movement in the left direction
    else if (inp_L) {
        tar_x = x + move_h * L;
        move_v = 0;
	
		
    }
    // Movement in the down direction
    else if (inp_D) {
        tar_y = y + move_v * D;
        move_h = 0;

    }

	if (sprite_index = s_p_RIGHT && inp_R) {
	R = 16;	
	U = 0;
	L = 0;
	D = 0;
	}
	if (sprite_index = s_p_UP && inp_U) {
	R = 0;	
	U = 16;
	L = 0;
	D = 0;
	
	}
	if (sprite_index = s_p_LEFT && inp_L) {
	R = 0;	
	U = 0;
	L = 16;
	D = 0;
	}
	if (sprite_index = s_p_DOWN && inp_D) {
	R = 0;	
	U = 0;
	L = 0;
	D = 16;
	}
	
    // Stop moving
    hsp = 0;
    vsp = 0;
	

   
   // Avoid wall
    if (!place_meeting(tar_x, tar_y, o_Block)) {
        hsp = move_h * spd;
		vsp = move_v * spd;
		
    } else  {
		tar_x = x;
		tar_y = y;
    } 
	
    // Set animation based on movement direction
    image_speed = 1;
    // Check movement direction and set sprite accordingly
	if		(inp_R) sprite_index = s_p_RIGHT;
    else if (inp_U) sprite_index = s_p_UP;
    else if (inp_L) sprite_index = s_p_LEFT;
    else if (inp_D) sprite_index = s_p_DOWN;
} else {
    // Player is not at the target position

    if (alive) {
        // Move towards the target
        x += hsp;
        y += vsp;
    } else {
        // Player is not alive, set cooldown
        cooldown = 0;
    }
}

// Reset image_speed to 0 when no keys are being pressed and there is no movement
if (!keyboard_check(vk_right) && !keyboard_check(vk_up) && !keyboard_check(vk_left) && !keyboard_check(vk_down) && hsp == 0 && vsp == 0) {
    image_speed = 0;
	image_index = 0;
}
}

cooldown = max(0, cooldown - 1);




//MORTE
if (vida <= 0) {
    image_speed = 1;
    alive = false;
    sprite_index = s_p_DEATH;
	move = false;
	image_blend = c_white
}

if (image_index == 3 && sprite_index == s_p_DEATH) {
	game_restart();

}



// Debug death

