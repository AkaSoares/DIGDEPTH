/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if !file_exists("savefile.ini") {
    global.spd = 1;
    ini_open("savefile.ini");
    ini_write_real("Game", "spd", global.spd);
    ini_close();
} else {
    ini_open("savefile.ini");
    global.spd = ini_read_real("Game", "spd", 1);
    ini_close();
}
