/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Verifica se o arquivo de salvamento existe

/// Evento Create do objeto inicializador do jogo
// Carregar a pontuação salva
if file_exists("savefile.ini") {
    ini_open("savefile.ini");
    global.highscore = ini_read_real("SaveData", "current_score", 0);
    ini_close();
} else {
    // Se não houver arquivo de salvamento, inicialize a pontuação
    global.highscore = 0;
}













