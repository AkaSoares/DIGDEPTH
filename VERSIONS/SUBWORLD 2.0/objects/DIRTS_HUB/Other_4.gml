//instance_create_depth(32,256,depth, p_phew);
audio_play_sound(a_dirthub,1,1)

var _num = instance_number(o_dirtGem);
var _door = irandom(_num);
var _bonus = -1;
do {
	_bonus = irandom(_num);
}
	until (_bonus != _door );
with instance_find(o_dirtGem, _door) has_door = true;
with instance_find(o_dirtGem, _bonus) has_bonus = true;
