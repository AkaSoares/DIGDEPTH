/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//door
var inst = instance_position(32, 256, o_block);
if(inst != noone) {
    instance_destroy(inst);
}

var inst = instance_position(32, 256, o_wall);
if(inst != noone) {
    instance_destroy(inst);
}



//spawn
var inst = instance_position(16, 256, o_wall);

if(inst != noone) {
    instance_destroy(inst);
}
var inst = instance_position(16, 256, o_block);

if(inst != noone) {
    instance_destroy(inst);
}
var inst = instance_position(16, 256, o_shiny);

if(inst != noone) {
    instance_destroy(inst);
}


//timer
if (time ==0) {

	fer.alive = false
}

// pisca
if (!instance_exists(o_door)) {
    time--;
    drawRed = true;
	 audio_sound_pitch(Sound1, 1.2);
}


















