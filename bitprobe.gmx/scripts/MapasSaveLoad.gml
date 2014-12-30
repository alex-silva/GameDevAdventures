//cria mapas para gravar informações do jogo
globalvar rooms; global.rooms = ds_map_create();
global.rooms[? "RoomAtual"] = rmLevel11;
global.rooms[? "MundoAtual"] = rmMapa11;

globalvar playerStats; global.playerStats = ds_map_create();
global.playerStats[? "CorAtual"] = Cor.White;
global.playerStats[? "PlayerRed"] = false;
global.playerStats[? "PlayerGreen"] = false;
global.playerStats[? "PlayerBlue"] = false;
global.playerStats[? "PlayerWhite"] = true;
