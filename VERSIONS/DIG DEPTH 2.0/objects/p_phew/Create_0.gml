move = true;
//movimento
image_speed = 0;



//Follow
array_size = 94;

for(var i = array_size-1 ; i >= 0; i--) {
	pos_x[i] = x;
	pos_y[i] = y;
}



gem = 0;


dano = false;
vida_max = 3;
vida = vida_max;
if (vida >= 3) {
	vida = 3;	
}



toma_dano = function() {
	if (dano) return;
	vida--;
	audio_play_sound(a_hurt, 1,0 );
	sprite_index = s_p_DAMAGE;
	dano = true;
	spd = 0.5;
	alarm[0] = room_speed * 3; //invenci

}




L = 0;
R = 0;
U = 0;
D = 0;
hsp = 0;
vsp = 0;
streng = 1;
spd = 1;
tar_x = x;
tar_y = y;


cooldown = 0;
cooldown_delay = 50;
alive = true;

//o_bonus spd_time
spd_time = 2;






