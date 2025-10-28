/// Evento Step do objControlador

if (!finalizado) {
    // Calcula o tempo restante
    var tempo_passado = (current_time - tempo_inicio) / 1000;
    var tempo_restante = tempo_limite - tempo_passado;

    // Condição de derrota
    if (tempo_restante <= 0 && progresso < 100) {
        var faz = asset_get_index("objetoFazendeiro");
        if (faz != -1) {
            instance_create_layer(x, y, "Instances", faz);
            show_debug_message("O fazendeiro te pegou!");
        } else {
            show_debug_message("ERRO: objeto do fazendeiro não encontrado!");
        }
        finalizado = true;
        mensagem_vitoria = "";
        alarm[1] = room_speed * 3;
    }

    // Condição de vitória
    if (progresso >= 100 && !finalizado) {
        finalizado = true;
        mensagem_vitoria = "Você atrasou o despertador com sucesso!";
        tempo_mensagem = current_time;
        show_debug_message(mensagem_vitoria);
        alarm[1] = room_speed * 3;
    }
}
