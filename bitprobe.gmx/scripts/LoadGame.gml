//
// Carrega todas as variáveis necessárias no ini especificado
//

show_debug_message("Loading game ("+string(argument0)+")...");

ini_open(argument0);

global.rooms[? "RoomAtual"] = ini_read_real("Rooms", "RoomAtual", rmLevel11);
global.rooms[? "MundoAtual"] = ini_read_real("Rooms", "MundoAtual", rmMapa11);

if (ini_read_real("PlayerStats", "PlayerRed", 0) == 0)
    global.playerStats[? "PlayerRed"] = false;
else
    global.playerStats[? "PlayerRed"] = true;

if (ini_read_real("PlayerStats", "PlayerGreen", 0) == 0)
    global.playerStats[? "PlayerGreen"] = false;
else
    global.playerStats[? "PlayerGreen"] = true;

if (ini_read_real("PlayerStats", "PlayerBlue", 0) == 0)
    global.playerStats[? "PlayerBlue"] = false;
else
    global.playerStats[? "PlayerBlue"] = true;

if (ini_read_real("PlayerStats", "PlayerWhite", 0) == 0)
    global.playerStats[? "PlayerWhite"] = false;
else
    global.playerStats[? "PlayerWhite"] = true;
    
if (instance_exists(objPlayer))
{
    objPlayer.cor = ini_read_real("PlayerStats", "CorAtual", Cor.White)
    TrocaSpritePlayer();
}
ini_close();
