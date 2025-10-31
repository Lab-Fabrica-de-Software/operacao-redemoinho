// Configurações básicas
randomize();
raio = 100;
velocidade = 3;
angulo_ponteiro = irandom_range(0, 359);
sentido = choose(1, -1); // 1 horário, -1 anti-horário

// Zona de acerto (em graus)
zona_tamanho = random_range(20,80);
zona_inicio = irandom_range(0, 359 - zona_tamanho);

// Contadores
acertos = 0;
erros = 0;
max_acertos = 4;
max_erros = 5;

// Controle de estado
ativo = true;
resultado = "";


function esta_na_zona(ang, ini, fim) {
// Normaliza ângulos para 0–360
    ang = (ang + 360) mod 360;
    ini = (ini + 360) mod 360;
    fim = (fim + 360) mod 360;

    // Caso normal (não cruza 0°)
    if (ini <= fim) {
        return (ang >= ini && ang <= fim);
    }
    // Caso onde a zona cruza 0° (ex: 350° até 20°)
    else {
        return (ang >= ini || ang <= fim);
    }
}