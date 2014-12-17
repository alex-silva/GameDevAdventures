//cria mapas para gravar informações do jogo
globalvar rooms; global.rooms = ds_map_create();
global.rooms[? "RoomAtual"] = room;
global.rooms[? "HabilitarmLevel01"] = false;
global.rooms[? "HabilitarmLevel02"] = false;

globalvar playerStats; global.playerStats = ds_map_create();
global.playerStats[? "CorAtual"] = Cor.White;
global.playerStats[? "PlayerRed"] = false;
global.playerStats[? "PlayerGreen"] = false;
global.playerStats[? "PlayerBlue"] = false;
global.playerStats[? "PlayerWhite"] = true;
