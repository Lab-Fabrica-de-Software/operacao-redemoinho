cam = view_camera[0];
quad_atualY = 0; 
quad_atualX = 0; 
quad_largura = 480;
quad_altura = 270;    

alvo_x = 0;
alvo_y = 0;
animando = false;

function moveCameraHorizontal(n) {
    var destino_x = n * quad_largura;
    //var destino_y = 0;
    
    alvo_x = destino_x;
    //alvo_y = destino_y;
    animando = true; 
}


function moveCameraVertical(n) {
   // var destino_x = 0;
    var destino_y = n * quad_altura;
    
   // alvo_x = destino_x;
    alvo_y = destino_y;
    animando = true; 
}