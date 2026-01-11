/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//movimento
hsp = 0;
vsp = 0;
hp = 1;
tar_x = x;
tar_y = y;
dir = choose(0,1,2,3);
dir_delay = choose(60,120,180);
dir_chance = dir_delay;

alive = true;

pts = 4;

// Evento Create do objeto
spd = 0.5; // Velocidade inicial
spd_timer = room_speed * 5; // Defina o temporizador inicial para 5 segundos (em frames)
spd_duration = room_speed * 2; // Defina a duração da velocidade aumentada para 3 segundos (em frames)
alarm[0] = spd_timer; 











