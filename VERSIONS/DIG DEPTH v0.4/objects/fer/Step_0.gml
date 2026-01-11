// INPUTS
inp_R = keyboard_check(vk_right);
inp_U = keyboard_check(vk_up);
inp_L = keyboard_check(vk_left);
inp_D = keyboard_check(vk_down);
inp_S = keyboard_check_pressed(vk_space);


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


// Move and handle player logic

// Check if player has reached the target position
if (x == tar_x && y == tar_y) {
    // Movement in the right direction
    if (move_h == 1) {
        tar_x = x + move_h * 16;
        move_v = 0;
    } 
    // Movement in the up direction
    else if (move_v == -1) {
        tar_y = y + move_v * 16;
        move_h = 0;
    }
    // Movement in the left direction
    else if (move_h == -1) {
        tar_x = x + move_h * 16;
        move_v = 0;
    }
    // Movement in the down direction
    else if (move_v == 1) {
        tar_y = y + move_v * 16;
        move_h = 0;
    }

    // Stop moving
    hsp = 0;
    vsp = 0;

    // Avoid wall
    if (!place_meeting(tar_x, tar_y, o_wall)) {
        hsp = move_h * spd;
        vsp = move_v * spd;
    } else {
        // Reset target
        tar_x = x;
        tar_y = y;
    }

    // Set animation based on movement direction
    image_speed = 1;
    // Check movement direction and set sprite accordingly
    if (move_h == 1) sprite_index = s_fer_RIGHT;
    else if (move_v == -1) sprite_index = s_fer_UP;
    else if (move_h == -1) sprite_index = s_fer_LEFT;
    else if (move_v == 1) sprite_index = s_fer_DOWN;
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
}

cooldown = max(0, cooldown - 1);

// Debug death
if (position_meeting(mouse_x, mouse_y, id)) {
    if (alive) {
        alive = false;
        sprite_index = s_fer_DEATH;
        image_speed = 0.5;
        tar_x = -1;
        tar_y = -1;
		
    }
}
