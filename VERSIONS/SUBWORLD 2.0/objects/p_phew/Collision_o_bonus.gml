
spd = 2;

alarm[0] = room_speed * spd_time;
instance_create_layer(x,y, "above" ,o_bonus_follow);
instance_destroy(o_bonus);
spd_time ++;












