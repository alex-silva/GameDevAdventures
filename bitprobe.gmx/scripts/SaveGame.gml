//
// Salva todas as variáveis necessárias no ini especificado
//

show_debug_message("Saving game ("+string(argument0)+")...");


ini_open(argument0);

ini_write_real("Rooms", "RoomAtual", global.rooms[? "RoomAtual"]);

ini_close()
/*
//global.lastSaveGame = argument0;

// Salva stats gerais
with (objStats)
    {
    ini_write_string("Stats", "MundoAtual", ds_list_write(manager[? "MundoAtual"]));
    ini_write_string("Stats", "FasesCompletadas", ds_list_write(manager[? "FasesCompletadas"]));
    }
    
// Salva rooms habilitadas
with (objRooms)
    {
    ini_write_string("Rooms", "rmLevel01", ds_list_write(manager[? "HabilitarmLevel01"]));
    ini_write_string("Rooms", "rmLevel02", ds_list_write(manager[? "HabilitarmLevel02"]));
    }
    
// Salva stats das rooms
/*with (objStats)
    {
    ini_write_string("TempoRoom", "rmLevel01", ds_list_write(manager[? "TempormLevel01"]));
    ini_write_string("TempoRoom", "rmLevel02", ds_list_write(manager[? "TempormLevel02"]));
    ini_write_string("scoreRoom", "rmLevel01", ds_list_write(manager[? "ScorermLevel01"]));
    ini_write_string("scoreRoom", "rmLevel02", ds_list_write(manager[? "ScorermLevel02"]));
    }
    
/*
// room atual
ini_write_string("Location", "Room", room_get_name(room));

// Save stats.
ini_write_real("Player", "Gems", objPlayer.coins);
ini_write_real("Player", "Hearts", objPlayer.hearts);
ini_write_real("Player", "Life", objPlayer.life);
ini_write_string("Player", "Character", global.character);

// Save inventory
with (objInventory)
    {
    ini_write_string("Items", "Equipped", ds_list_write(Array2List(objPlayer.equippedWeapon)));
    ini_write_string("Items", "Inventory", ds_grid_write(slots));
    }


// Save quests
with (objQuestManager)
    {
    ini_write_string("Quests", "Completed", ds_list_write(manager[? "QuestsCompleted"]));
    ini_write_string("Quests", "Progress", ds_list_write(manager[? "QuestsInProgress"]));
    ini_write_string("Quests", "HandIn", ds_list_write(manager[? "QuestsHandIn"]));
    ini_write_string("Quests", "Events", ds_list_write(manager[? "Events"]));
    }

// Save persistant changes
ini_write_string("Persistance", "Instances", ds_list_write(objGame.persistanceEvents));
*/
ini_close();
