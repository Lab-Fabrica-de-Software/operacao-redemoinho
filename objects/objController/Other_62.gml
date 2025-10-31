// Evento HTTP assíncrono
var request_id = async_load[? "id"];

if (request_id == global.last_request_id) {
    var status = async_load[? "status"];
    var result = async_load[? "result"];

    if (status == 0) {
        // Parse do JSON -> struct (não mais ds_map)
        var response = json_parse(result);

        // Verifica se existe campo "error"
        if (variable_struct_exists(response, "error")) {
            var error_message = response.error;
            show_debug_message("Erro da API: " + error_message);
            global.api_message = error_message;
			global.api_error = true;
			
        } else {
            show_debug_message("Score enviado com sucesso!");
            global.api_message = "Score enviado com sucesso!";
			global.api_error = false;
			game_restart();
        }

    } else {
        show_debug_message("Erro HTTP: " + string(status));
        global.api_message = "Erro de conexão com o servidor.";
		global.api_error = true
    }
}
