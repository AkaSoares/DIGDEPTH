//movimento


image_speed = 1;

dano = false;

inv_time =  alarm[1] = room_speed * 3;
toma_dano = function() {
	if (dano) return;
	SYSTEM.points +=vida;
	dano = true;
	image_blend = c_green
	spd = 0.5; 
	image_speed = 0.5;
	alarm[1] = room_speed * 3;

}




hsp = 0;
vsp = 0;
spd = 1;
tar_x = x;
tar_y = y;

cooldown = 0;
cooldown_delay = 15;
alive = true;
vida = -50






