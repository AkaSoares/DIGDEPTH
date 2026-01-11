//ROOM CONFIG


width = 64;
height = 64;
yOffset = 16;
xOffset = 16;
var layer_above = layer_get_id("BAIXO");
//loop
for (var i = 0; i < width; i++) {
    //loop
    for (var j = 0; j < height; j++) {
        // Verificar se está vazio antes de criar
        if (!instance_position(i*16+xOffset, j*16+yOffset, all)) {
            //create walls
            if (i == 0 || j == 0 || i == width-1 || j == height-1) {
                instance_create_depth(i*16+xOffset, j*16+yOffset, depth, o_Block);
            }
            else {
                if (irandom(10) == 0) 
                    instance_create_layer(i*16+xOffset, j*16+yOffset, layer_above, o_falling);
            }
        }
    }
}

instance_destroy(o_doorclose);

SYSTEM.ATIME = false;

// time
TIME = false;
time = 100*60;
// Create event










