move = true;
//movimento
image_speed = 0;

dano = false;
vida_max = 3;
vida = vida_max;
if (vida >= 3) {
	vida = 3;	
}

inv_time =  alarm[1] = room_speed * 3;

toma_dano = function() {
	if (dano) return;
	vida--;
	dano = true;
	image_blend = c_green
	spd = 0.5; 
	image_speed = 0.5;
	alarm[1] = room_speed * 3;

}



L = 16;
R = 16;
U = 16;
D = 16;
hsp = 0;
vsp = 0;
spd = 1;
tar_x = x;
tar_y = y;


cooldown = 0;
cooldown_delay = 15;
alive = true;








