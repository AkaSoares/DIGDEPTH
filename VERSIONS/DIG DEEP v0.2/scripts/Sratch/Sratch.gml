//scratch attack
function Scratch(){
//scratch attack
// Calcular a posição baseada na direção do sprite
   var spawn_x = x;
   var spawn_y = y;

   // Calcular a posição de scratch
   var offset = 6;
   var offsety = -6;
   var offsetx = 32;

   // Inicializar as variáveis para rotação e espelhamento
   var rotation_angle = 0;
   var xscale_factor = 1;

   // Definir IDs das camadas
   var layer_above = layer_get_id("Above");

   var scratch_instance; 

   if (sprite_index == s_fer_RIGHT) {
       spawn_x += offset;
       scratch_instance = instance_create_layer(spawn_x, spawn_y, layer_above, o_scratch_LEFT);
   } else if (sprite_index == s_fer_LEFT) {
       spawn_x -= offsety;
       xscale_factor = -1;
       scratch_instance = instance_create_layer(spawn_x, spawn_y, layer_above, o_scratch_LEFT);
   } else if (sprite_index == s_fer_UP) {
       spawn_y -= offsety;
       rotation_angle = 90;
       scratch_instance = instance_create_layer(spawn_x, spawn_y, layer_above, o_scratch_UP);
   } else if (sprite_index == s_fer_DOWN) {
       spawn_y += offsetx;
	   rotation_angle = 90;
       scratch_instance = instance_create_layer(spawn_x, spawn_y, layer_above, o_scratch_UP);
   }


// Ajustar a rotação e o espelhamento da instância
   if (scratch_instance != noone) {
       scratch_instance.image_angle = rotation_angle;
       scratch_instance.image_xscale = xscale_factor;
   }
}

