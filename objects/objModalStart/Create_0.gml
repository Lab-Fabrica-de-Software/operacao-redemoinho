
if (global.isOpen){
instance_destroy();
}else{
// Tempo de vida
lifetime = 5;
timer = 0;

// Texto a exibir
modal_text = "Você é o Saci e sua missão é bagunçar a fazenda! Use o botão direito do mouse para se mover e causar confusão!";

// Posição e tamanho desejado (pode mudar externamente)
modal_x = display_get_gui_width() / 2;
modal_y = display_get_gui_height() / 2;

modal_w = 500; // largura final
modal_h = 300; // altura final
global.isRunning = false;
}