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
                if (irandom(15) == 0) 
                    instance_create_depth(i*16+xOffset, j*16+yOffset, depth, o_dirt);
               
			    else if (irandom(20) == 0) 
                    instance_create_depth(i*16+xOffset, j*16+yOffset, depth, o_shiny);
				
				else if (irandom(15) == 0) 
                    instance_create_depth(i*16+xOffset, j*16+yOffset, depth, o_softdirt);
				
				else if (irandom(15) == 0) 
                    instance_create_depth(i*16+xOffset, j*16+yOffset, depth, o_harddirt);
                
				else if (irandom(20) == 0) 
                    instance_create_depth(i*16+xOffset, j*16+yOffset, depth, o_slime);
				
				else if (irandom(40) == 0) 
                    instance_create_depth(i*16+xOffset, j*16+yOffset, depth, o_soulbonus);
					
				
            }
        }
    }
}


//spawn door / bonus
var _num = instance_number(o_soulbonus);
var _door = irandom(_num);
do {
	_bonus = irandom(_num);
}
	until (_bonus != _door );
with instance_find(o_soulbonus, _door) has_door = true;

//instance_create_depth(336,80, depth, p_phew);

audio_play_sound(a_dirts,1,1);














