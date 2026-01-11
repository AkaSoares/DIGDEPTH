random_number = (irandom(1) == 0);

// Adicionar 1 ao número gerado para obter 1 ou 2
random_number += 1;

if rom <= 2
{
	rom++;
    if random_number == 1
    {
        room_goto(DIRTS_1);
    }
    else if random_number == 2
    {
        room_goto(DIRTS_2);
    }
}
else
{
    room_goto(DIRTSHUB);
}



audio_stop_all();






