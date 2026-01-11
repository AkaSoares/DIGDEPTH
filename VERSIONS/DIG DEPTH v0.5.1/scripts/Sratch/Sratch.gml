

//scratch attack
function Scratch() {
    // Calcular a posição baseada na direção do sprite
    var spawn_x = x;
    var spawn_y = y;

    // Calcular a posição de scratch
    var offset = 3;
    var offsety = -6;
    var offsetx = 32;

    // Inicializar as variáveis para rotação e espelhamento
    var rotation_angle = 0;
    var xscale_factor = 1;

    // Definir IDs das camadas
    var layer_above = layer_get_id("Above");
    var layer_below = layer_get_id("Below");

    var scratch_instance_above;
    var scratch_instance_below;

    if (sprite_index == s_fer_RIGHT) {
        spawn_x += offset;
        scratch_instance_above = instance_create_layer(spawn_x, spawn_y, layer_above, o_scratch_LEFT);
        scratch_instance_below = instance_create_layer(spawn_x, spawn_y, layer_below, o_scratch_lefta);
    } else if (sprite_index == s_fer_LEFT) {
        spawn_x -= offsety;
        xscale_factor = -1;
        scratch_instance_above = instance_create_layer(spawn_x, spawn_y, layer_above, o_scratch_LEFT);
        scratch_instance_below = instance_create_layer(spawn_x, spawn_y, layer_below, o_scratch_lefta);
    } else if (sprite_index == s_fer_UP) {
        spawn_y -= offsety;
        rotation_angle = 90;
        scratch_instance_above = instance_create_layer(spawn_x, spawn_y, layer_above, o_scratch_UP);
		scratch_instance_below = instance_create_layer(spawn_x, spawn_y, layer_below, o_scratch_UPa);
    } else if (sprite_index == s_fer_DOWN) {
        spawn_y += offsetx;
        rotation_angle = 90;
        scratch_instance_above = instance_create_layer(spawn_x, spawn_y, layer_above, o_scratch_UP);
        scratch_instance_below = instance_create_layer(spawn_x, spawn_y, layer_above, o_scratch_UPa);
    }

    // Ajustar a rotação e o espelhamento da instância na camada "Above"
    if (scratch_instance_above != noone) {
        scratch_instance_above.image_angle = rotation_angle;
        scratch_instance_above.image_xscale = xscale_factor;
    }
   
    // Ajustar a rotação e o espelhamento da instância na camada "Below"
    if (scratch_instance_below != noone) {
        scratch_instance_below.image_angle = rotation_angle;
        scratch_instance_below.image_xscale = xscale_factor;
    }
   
    if (keyboard_check_pressed(vk_space)) {
        audio_play_sound(a_scratch, 1, 0);
    }
}
