/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var move_h = 0;
var move_v = 0;

if (x == tar_x && y == tar_y) {
    // Avoid wall
    if (!place_meeting(tar_x, tar_y, o_null)) {
        hsp = move_h * spd;
        vsp = move_v * spd;
    } else
	
	{
        // Reset target
        tar_x = x;
        tar_y = y;
    }
}
else {
	if (alive) {
		x += hsp;
		y += vsp;
	}
}

