//loop
for (var i = 0; i < width; i++) {
    //loop
    for (var j = 0; j < height; j++) {
        // Verificar se não há nenhum objeto na posição atual (i, j)
        var isEmpty = instance_position(i*16+xOffset, j*16+yOffset, all) == noone;

        // Se estiver vazio, criar um objeto
        if (isEmpty) {
            //create walls
            if (i == 0 || j == 0 || i == width-1 || j == height-1) {
                instance_create_depth(i*16+xOffset, j*16+yOffset, depth, o_wall);
            }
            else {
                if (irandom(2) == 0) 
                    instance_create_depth(i*16+xOffset, j*16+yOffset, depth, o_block);
                else if (irandom(5) == 0) 
                    instance_create_depth(i*16+xOffset, j*16+yOffset, depth, o_shiny);
                else if (irandom(3) == 0) 
                    instance_create_depth(i*16+xOffset, j*16+yOffset, depth, o_wall);
                else if (irandom(20) == 0) 
                    instance_create_depth(i*16+xOffset, j*16+yOffset, depth, o_slime);
            }
        }
    }
}






//door
var inst = instance_position(32, 256, o_block);
if(inst != noone) {
    instance_destroy(inst);
}

var inst = instance_position(32, 256, o_wall);
if(inst != noone) {
    instance_destroy(inst);
}



//spawn
var inst = instance_position(16, 256, o_wall);

if(inst != noone) {
    instance_destroy(inst);
}
var inst = instance_position(16, 256, o_block);

if(inst != noone) {
    instance_destroy(inst);
}
var inst = instance_position(16, 256, o_shiny);

if(inst != noone) {
    instance_destroy(inst);
}



//spawn door / bonus
var _num = instance_number(o_block);
var _door = irandom(_num);
var _bonus = -1;
do {
	_bonus = irandom(_num);
}
	until (_bonus != _door );
with instance_find(o_block, _door) has_door = true;
with instance_find(o_block, _bonus) has_bonus = true;	


















