//ROOM CONFIG
width = 31;
height = 31;
yOffset = 16;
xOffset = 16;

//loop
for (var i = 0; i < width; i++) {
    //loop
    for (var j = 0; j < height; j++) {
        // Verificar se está vazio antes de criar
        if (!instance_position(i*16+xOffset, j*16+yOffset, all)) {
            //create walls
            if (i == 0 || j == 0 || i == width-1 || j == height-1) {
                instance_create_depth(i*16+xOffset, j*16+yOffset, depth, o_wall);
            }
            else {
                if (irandom(1) == 0) 
                    instance_create_depth(i*16+xOffset, j*16+yOffset, depth, o_harder);
                else if (irandom(2) == 0) 
                    instance_create_depth(i*16+xOffset, j*16+yOffset, depth, o_stone);
            }
        }
    }
}

instance_destroy(o_doorclose);

// time
TIME = false;
time = 50*60;
// Create event
drawRed = false;










