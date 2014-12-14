//
// Carrega todas as variáveis necessárias no ini especificado
//

show_debug_message("Loading game ("+string(argument0)+")...");

ini_open(argument0);

global.rooms[? "RoomAtual"] = ini_read_real("Rooms", "RoomAtual", 0);
global.rooms[? "HabilitarmLevel01"] = ini_read_real("Rooms", "HabilitarmLevel01", false);
global.rooms[? "HabilitarmLevel02"] = ini_read_real("Rooms", "HabilitarmLevel02", false);

ini_close();
