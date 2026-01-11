 
    //loop
    for (var i = 0; i < width; i++) {
        //loop
        for (var j = 0; j < height; j++) {
            //criar parede
            if (i == 0 || j == 0 || i == width-1 || j == height-1) {
                instance_create_depth(i*16, j*16+yOffset, depth, o_wall);
            }
            else if ((i == 1 && j == 1) 
            ||      (i == 1 && j == 2)
            ||      (i == 2 && j ==1))
            {}
            else {
                // build blocks
                if ((i+1) mod 2 && (j+1) mod 2 ) instance_create_depth(i*16, j*16+yOffset, depth, o_wall);
                //build blocks
                else { 
                    if (irandom(2) == 0) instance_create_depth(i*16, j*16+yOffset, depth, o_block);
                    if (irandom(5) == 0) instance_create_depth(i*16, j*16+yOffset, depth, o_shiny);
                }
            }
        }
    }



// Evento Create da Sala

// Verificar se há um objeto "o_block" na posição (x 16, y 128)
var inst = instance_position(16, 128, o_block);

// Se encontrou um objeto "o_block" na posição desejada, destrua-o
if(inst != noone) {
    instance_destroy(inst);
}
// Evento Create da Sala

// Verificar se há um objeto "o_block" na posição (x 0, y 128)
var inst = instance_position(0, 128, o_wall);

// Se encontrou um objeto "o_block" na posição desejada, destrua-o
if(inst != noone) {
    instance_destroy(inst);
}

//SPAWN BADDIES
for (var i = 0; i <7; i++) {
	var didspawn = false;
	
	while(!didspawn) {
	var RX = 1 +irandom(width	-2);
	var RY = 1 + irandom(height -2)
	if (position_empty(16*RX, 16*RY)) {
		didspawn = true;
	 instance_create_depth(RX*16, RY*16+yOffset, depth, o_slime)
		}	
	}

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


	






	
	





