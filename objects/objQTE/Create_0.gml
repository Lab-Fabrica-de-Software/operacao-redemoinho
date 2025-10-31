ativo = true;

// Área e barra
barra_x = x;
barra_y = y;
barra_largura = 194;
barra_altura = 20 ;

// Função para criar zona verde aleatória
function gerar_zona_verde() {
    var zona_largura = irandom_range(30, 60);
    var zona_inicio = irandom_range(barra_x, barra_x + barra_largura - zona_largura);
    zona_verde_inicio = zona_inicio;
    zona_verde_fim = zona_inicio + zona_largura;
}
gerar_zona_verde();

// Ponteiro
ponteiro_x = barra_x;
ponteiro_vel = 4;
direcao = 1;

// Estado geral
qte_ativo = true;
resultado = "none";
acertos = 0;
necessarios = 4;
erros = -1;
erros_max = 5;

// Tempo limite (fixo, 60 FPS)
tempo_max = 120; // 2 segundos
tempo_atual = tempo_max;

rabo = objRabo;