//
// Carrega todas as variáveis necessárias no ini especificado
//

show_debug_message("Loading game ("+string(argument0)+")...");

if (!file_exists(argument0))
    SaveGame(argument0);

ini_open(argument0);

global.rooms[? "RoomAtual"] = Decrypt(ini_read_string("Rooms", "RoomAtual", rmLevel11), 2);
show_debug_message("room load");
show_debug_message(global.rooms[? "RoomAtual"]);

global.rooms[? "MundoAtual"] = Decrypt(ini_read_string("Rooms", "MundoAtual", rmMapa11), 5);

if (Decrypt(ini_read_string("PlayerStats", "PlayerRed", 0), 7) == 0)
    global.playerStats[? "PlayerRed"] = false;
else
    global.playerStats[? "PlayerRed"] = true;

if (Decrypt(ini_read_string("PlayerStats", "PlayerGreen", 0), 3) == 0)
    global.playerStats[? "PlayerGreen"] = false;
else
    global.playerStats[? "PlayerGreen"] = true;

if (Decrypt(ini_read_string("PlayerStats", "PlayerBlue", 0), 8) == 0)
    global.playerStats[? "PlayerBlue"] = false;
else
    global.playerStats[? "PlayerBlue"] = true;

if (Decrypt(ini_read_string("PlayerStats", "PlayerWhite", 0), 6) == 0)
    global.playerStats[? "PlayerWhite"] = false;
else
    global.playerStats[? "PlayerWhite"] = true;
    
if (instance_exists(objPlayer))
{
    objPlayer.cor = Decrypt(ini_read_string("PlayerStats", "CorAtual", Cor.White), 11);
    TrocaSpritePlayer();
}

///cor para testes
global.playerStats[? "PlayerBlue"] = false;
global.playerStats[? "PlayerGreen"] = false;
global.playerStats[? "PlayerRed"] = true;



ini_close();
