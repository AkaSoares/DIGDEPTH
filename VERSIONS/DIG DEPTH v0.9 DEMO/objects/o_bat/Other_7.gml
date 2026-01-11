/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (irandom(3) == 0) {
	instance_create_depth(x,  y, depth, o_oneblu);
	} else if (irandom(10) == 0) {
	instance_create_depth(x,  y, depth, o_beet);
	}
instance_destroy();
instance_create_depth(x,  y, depth, o_baddiedeath);
audio_play_sound(a_baddiedmg, 1 ,0 );
image_blend = c_red;











