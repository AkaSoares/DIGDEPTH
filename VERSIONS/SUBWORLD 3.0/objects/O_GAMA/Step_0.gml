// No evento Step (Step Event)
if instance_exists(o_WRECKAGE) {
    speed = 0.2;
    image_speed = 1;
	sprite_index = s_GAMA_laugh;
    
    if (alarm[1] == -1) { // Verifica se o alarme não está ativo
        alarm[1] = 180; // Inicia o alarme para 3 segundos
    }
} else {
    speed = 0;
    image_speed = 0;
    alarm[1] = -1; // Para o alarme se a instância não existir
}

// Obter as coordenadas do p_phew
var target_x = p_phew.x;
var target_y = p_phew.y;

// Calcular a direção para o p_phew
direction = point_direction(x, y, target_x, target_y);

// Calcular a distância até o p_phew
var distance = point_distance(x, y, target_x, target_y);

// Mover o o_gama em direção ao p_phew se a distância for maior que um certo valor (opcional)
if (distance > 10) {
    // Atualizar a posição
    x += lengthdir_x(speed, direction);
    y += lengthdir_y(speed, direction);
}

