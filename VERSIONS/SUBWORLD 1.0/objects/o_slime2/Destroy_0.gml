/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if alive == false {
instance_destroy();	

if (irandom(3) == 0) {
	instance_create_depth(x,  y, depth, o_oneblu);
	} else if (irandom(10) == 0) {
	instance_create_depth(x,  y, depth, o_beet);
	}

audio_play_sound(a_baddiedmg, 1 ,0 );
instance_create_depth(x,  y, depth, o_baddiedeath);
}














