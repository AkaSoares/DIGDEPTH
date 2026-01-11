// Place this code where you want to restart a specifriin

instance_destroy();
//loop
for (var i = 0; i < width; i++) {
	//loop
	for (var j = 0; j < height; j++) {
		//criar parede
		if (i == 0 || j == 0 || i == width-1 || j == height-1) {
		instance_create_depth(i*16, j*16+yOffset, depth, o_wall);
		}
		else if ((i == 1 && j == 1) 
		||		(i == 1 && j == 2)
		||		(i == 2 && j ==1))
	{}
	else {
		// build blocks
			if ((i+1) mod 2 && (j+1) mod 2 ) instance_create_depth(i*16, j*16+yOffset, depth, o_wall);
		//build blocks
		else { 
			if (irandom(2) == 0) instance_create_depth(i*16, j*16+yOffset, depth, o_harder);
					
			}
		}
	}
}

// Check if there's an object "o_block" at the position (x 16, y 128)
var inst_harder = instance_position(464, 128, o_harder);


// If found either "o_block" or "o_shiny" at the desired position, destroy it
if (inst_harder != noone) {
    instance_destroy(inst_harder);
}

var inst = instance_position(0, 128, o_wall);

// Se encontrou um objeto "o_block" na posição desejada, destrua-o
if(inst != noone) {
    instance_destroy(inst);
}













