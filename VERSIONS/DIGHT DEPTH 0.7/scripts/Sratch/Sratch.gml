//scratch attack
function Scratch() {
    // Calcular a posição baseada na direção do sprite

    var spawn_x = x;
    var spawn_y = y;

    // Calcular a posição de scratch
    var offset = 6;

    // Definir IDs das camadas
    var layer_above = layer_get_id("Above");
    var layer_below = layer_get_id("Below");

    var scratch_instance_above = noone;
    var scratch_instance_below = noone;

    if (sprite_index == s_p_RIGHT) {
        spawn_x += offset;
        scratch_instance_above = instance_create_layer(spawn_x, spawn_y, layer_above, o_scratch);
		scratch_instance_above = instance_create_layer(spawn_x, spawn_y, layer_above, o_scratchANIM);

		
    } else if (sprite_index == s_p_LEFT) {
        spawn_x -= offset;
        scratch_instance_above = instance_create_layer(spawn_x, spawn_y, layer_above, o_scratch);
		scratch_instance_above = instance_create_layer(spawn_x, spawn_y, layer_above, o_scratchANIM);
   
   } else if (sprite_index == s_p_UP) {
        spawn_y -=  offset;
        scratch_instance_above = instance_create_layer(spawn_x, spawn_y, layer_below, o_scratch);
		scratch_instance_above = instance_create_layer(spawn_x, spawn_y, layer_above, o_scratchANIM);

    
	} else if (sprite_index == s_p_DOWN) {
        spawn_y += offset;
        scratch_instance_above = instance_create_layer(spawn_x, spawn_y, layer_above, o_scratch);
		scratch_instance_above = instance_create_layer(spawn_x, spawn_y, layer_above, o_scratchANIM);

    } else {
        // Default behavior if none of the conditions are met
        return; // Exit the function
    }

   
    if (keyboard_check(ord("Z"))) {
        audio_play_sound(a_scratch, 1, 0);
    }
}
