// incrementa o timer pra variar o shake
shake_timer += shake_speed;

// usa seno e cosseno pra dar um movimento suave e "vivo"
x_offset = sin(shake_timer * 0) * shake_intensity;
y_offset = cos(shake_timer * 2.7) * shake_intensity;
