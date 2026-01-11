//scratch attack
function rush() {
    // Calcular a posição baseada na direção do sprite

    var spawn_x = x;
    var spawn_y = y;

    // Calcular a posição de scratch
    var offset = 16;

    // Definir IDs das camadas
    var layer_above = layer_get_id("Above");
    var layer_below = layer_get_id("Baixo");

    var scratch_instance_above = noone;
    var scratch_instance_below = noone;

    if (sprite_index == s_capRIGHT) {
        spawn_x += offset;
        scratch_instance_above = instance_create_layer(spawn_x, spawn_y, layer_above, o_rush);


		
    } else if (sprite_index == s_capLEFT) {
        spawn_x -= offset;
        scratch_instance_above = instance_create_layer(spawn_x, spawn_y, layer_above, o_rush);

   
   } else if (sprite_index == s_capUP) {
        spawn_y -=  offset;
        scratch_instance_above = instance_create_layer(spawn_x, spawn_y, layer_below, o_rush);


    
	} else if (sprite_index == s_capDOWN) {
        spawn_y += offset;
        scratch_instance_above = instance_create_layer(spawn_x, spawn_y, layer_above, o_rush);


    } else {
        // Default behavior if none of the conditions are met
        return; // Exit the function
    }
}
