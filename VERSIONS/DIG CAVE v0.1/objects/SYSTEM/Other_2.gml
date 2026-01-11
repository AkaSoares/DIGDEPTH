// criar sala

for (var i = 0; i < width; i++) {
	for (var j = 0; j < height; j++) {
		//criar parede
		if (i == 0 || j == 0 || i== width-1 || j == height-1) {
		instance_create_depth(i*16, j*16+yOffset, depth, o_wall);
		}
		else if ((i == 1 && j == 1) 
		||		(i == 1 && j == 2)
		||		(i == 2 && j ==1))
	{}
	else {
		// build blocs
			if ((i+1) mod 2 && (j+1)mod 2 ) instance_create_depth(i*16, j*16+yOffset, depth, o_wall);
		//build blocks
		else { 
			if (irandom(2) == 0) instance_create_depth(i*16, j*16+yOffset, depth, o_block);
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









