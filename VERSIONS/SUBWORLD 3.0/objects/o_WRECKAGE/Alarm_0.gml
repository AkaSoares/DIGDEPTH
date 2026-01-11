/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


var layer_above = layer_get_id("Above");
for (var i = 0; i < width; i++) {
    //loop
    for (var j = 0; j < height; j++) {
        // Verificar se está vazio antes de criar
        if (!instance_position(i*16+xOffset, j*16+yOffset, all)) {
            //create walls
            if (i == 0 || j == 0 || i == width-1 || j == height-1) {
                instance_create_depth(i*16+xOffset, j*16+yOffset, depth, o_Block);
            }
            else {
                 alarm[1] = room_speed * 10;
				 if (irandom(30) == 0) 
                    instance_create_layer(i*16+xOffset, j*16+yOffset, layer_above, o_falling);
					
            }
        }
    }
}











