sprite_index = sprBotaoSimApertado

var url = "https://ranking-operacao-redemoinho.vercel.app/api/scores";

var json_data = json_stringify({
    "playerName": global.playerName,
    "score": global.score,
    "time": global.time
});

var headers = ds_map_create();
ds_map_add(headers, "Content-Type", "application/json");

var request_id = http_request(url, "POST", headers, json_data);

ds_map_destroy(headers);

global.last_request_id = request_id;