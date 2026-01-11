/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//door
image_speed = 1;
var inst = instance_position(32, 256, o_dirt);
if(inst != noone) {
    instance_destroy(inst);
}

var inst = instance_position(32, 256, o_Block);
if(inst != noone) {
    instance_destroy(inst);
}



//spawn
var inst = instance_position(16, 256, o_Block);

if(inst != noone) {
    instance_destroy(inst);
}
var inst = instance_position(16, 256, o_dirt);

if(inst != noone) {
    instance_destroy(inst);
}
var inst = instance_position(16, 256, o_shiny);

if(inst != noone) {
    instance_destroy(inst);
}


//timer
if (time ==0) {
	p_phew.vida = 0
}

// pisca
if (!instance_exists(o_Ruby)) {
    time--;
    drawRed = true;
	 audio_sound_pitch(a_digdeep, 1.2);
}


















