//cria mapas para gravar informações do jogo
globalvar rooms; global.rooms = ds_map_create();
global.rooms[? "RoomAtual"] = rmLevel1_1;
global.rooms[? "MundoAtual"] = rmMapa01;

globalvar playerStats; global.playerStats = ds_map_create();
global.playerStats[? "CorAtual"] = Cor.White;
global.playerStats[? "PlayerRed"] = false;
global.playerStats[? "PlayerGreen"] = false;
global.playerStats[? "PlayerBlue"] = false;
global.playerStats[? "PlayerWhite"] = true;

//configs
globalvar enableAudio; global.enableAudio = true;
globalvar enableMusic; global.enableMusic = true;