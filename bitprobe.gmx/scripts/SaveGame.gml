//
// Salva todas as variáveis necessárias no ini especificado
//

show_debug_message("Saving game ("+string(argument0)+")...");


ini_open(argument0);

ini_write_string("Rooms", "RoomAtual", Encrypt(global.rooms[? "RoomAtual"], 2));
ini_write_string("Rooms", "MundoAtual", Encrypt(global.rooms[? "MundoAtual"], 5));

var PlayerRed = 0;
if (global.playerStats[? "PlayerRed"] == true) PlayerRed = 1;
var PlayerGreen = 0;
if (global.playerStats[? "PlayerGreen"] == true) PlayerGreen = 1;
var PlayerBlue = 0;
if (global.playerStats[? "PlayerBlue"] == true) PlayerBlue = 1;
var PlayerWhite = 0;
if (global.playerStats[? "PlayerWhite"] == true) PlayerWhite = 1;
ini_write_string("PlayerStats", "PlayerRed", Encrypt(PlayerRed, 7));
ini_write_string("PlayerStats", "PlayerGreen", Encrypt(PlayerGreen, 3));
ini_write_string("PlayerStats", "PlayerBlue", Encrypt(PlayerBlue, 8));
ini_write_string("PlayerStats", "PlayerWhite", Encrypt(PlayerWhite, 6));

if (instance_exists(objPlayer))
    ini_write_string("PlayerStats", "CorAtual", Encrypt(objPlayer.cor, 11));
    
  
ini_close();