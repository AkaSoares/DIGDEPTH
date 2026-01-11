// Obter o número de instâncias de o_cap
var num_caps = instance_number(o_cap);

// Loop através de todas as instâncias
for (var i = 0; i < num_caps; i++) {
    // Obter a instância atual
    var cap = instance_find(o_cap, i);
    
    // Verificar sprite atual e ajustar posição
    if (cap.sprite_index == s_capRIGHT) {
        x = cap.tar_x + 8;
        y = cap.tar_y;
    } else if (cap.sprite_index == s_capLEFT) {
        x = cap.tar_x - 8;
        y = cap.tar_y;
    } else if (cap.sprite_index == s_capUP) {
        x = cap.tar_x;
        y = cap.tar_y - 8;
    } else if (cap.sprite_index == s_capDOWN) {
        x = cap.tar_x;
        y = cap.tar_y + 8;
    }
}
