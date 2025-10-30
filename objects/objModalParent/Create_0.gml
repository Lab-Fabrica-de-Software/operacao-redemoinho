/// Inicialização do modal

// Tempo de vida
lifetime = 5;
timer = 0;

// Texto a exibir
modal_text = "Mensagem temporária!";

// Sprite de fundo


// Posição e tamanho desejado (pode mudar externamente)
modal_x = display_get_gui_width() / 2;
modal_y = display_get_gui_height() / 2;

modal_w = 1500; // largura final
modal_h = 250; // altura final
global.isRunning = false;
