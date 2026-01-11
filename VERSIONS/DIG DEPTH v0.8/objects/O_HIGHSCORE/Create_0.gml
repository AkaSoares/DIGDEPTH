/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

instance_destroy(p_phew);
instance_destroy(o_bar);
instance_destroy(SYSTEM);
audio_stop_all();
audio_play_sound(a_win, 0, 0);

global.highscore += global.current_score;
opcoes = ["RETRY","EXIT"]

index = 0;
op_max = array_length(opcoes)

// Evento Create ou Room Start na sala "sala_highscore"

    // Salva o score atual ao entrar na sala de highscore




