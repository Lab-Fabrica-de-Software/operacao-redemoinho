if (!jogo_terminou) {

    if (!ventando) {
        tempo_proxima_ventania--;
        if (tempo_proxima_ventania <= 0) {
            ventando = true;
            tempo_ventania = irandom_range(60, 120);
        }
    } else {
        tempo_ventania--;
        if (tempo_ventania <= 0) {
            ventando = false;
            tempo_proxima_ventania = irandom_range(90, 180);
        }
    }

}
else {
    // Se terminou, aguarda uns segundos e volta pro mapa
    alarm[0] = room_speed * 2;
}

// Verifica se está perto do varal
perto_do_varal = distance_to_object(objRoupa) < 100;
