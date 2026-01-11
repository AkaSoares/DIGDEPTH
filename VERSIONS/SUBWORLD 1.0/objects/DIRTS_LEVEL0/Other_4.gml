


//spawn door / bonus
var _num = instance_number(o_soulbonus);
var _door = irandom(_num);
do {
	_bonus = irandom(_num);
}
	until (_bonus != _door );
with instance_find(o_soulbonus, _door) has_door = true;

//instance_create_depth(336,80, depth, p_phew);
















