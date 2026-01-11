/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

hp --;
instance_destroy(o_scratch);
instance_create_depth(x,y, depth, o_spart);

if (hp <= 0) {
instance_destroy();
instance_create_depth(x,y, depth, o_spart);
audio_play_sound(a_soulblock, 1 ,0 );
audio_play_sound(a_baddiedmg, 1 ,0 );
}










