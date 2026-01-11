//ROOM CONFIG
width = 64;
height = 64;
yOffset = 16;
xOffset = 16;

/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
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
                instance_create_depth(i*16+xOffset, j*16+yOffset, depth, o_Block);
            }
            else {
          if (irandom(60) == 0) 
                    instance_create_depth(i*16+xOffset, j*16+yOffset, depth, o_dirt);
               
			    else if (irandom(120) == 0) 
                    instance_create_depth(i*16+xOffset, j*16+yOffset, depth, o_shiny);
				
				else if (irandom(100) == 0) 
                    instance_create_depth(i*16+xOffset, j*16+yOffset, depth, o_softdirt);
				
				else if (irandom(100) == 0) 
                    instance_create_depth(i*16+xOffset, j*16+yOffset, depth, o_harddirt);
                
				else if (irandom(100) == 0) 
                    instance_create_depth(i*16+xOffset, j*16+yOffset, depth, o_slime);
					
				else if (irandom(200) == 0) 
                    instance_create_depth(i*16+xOffset, j*16+yOffset, depth, o_slime2);
			
				else if (irandom(200) == 0) 
                    instance_create_depth(i*16+xOffset, j*16+yOffset, depth, o_soulbonus);
					
					
				
            }
        }
    }
}







