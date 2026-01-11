// Reduz o valor de alpha gradualmente para criar o efeito de fade-out


alpha -= fade_speed;

// Garante que o alpha não seja menor que 0
if (alpha < 0) {
    instance_destroy(s_fade); // Destroi o objeto quando o fade-out estiver completo
}

