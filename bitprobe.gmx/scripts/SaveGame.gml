/// SaveGame(filename);
//
//  Saves all the data we need to load the game mostly the same later on. Uses
//  an INI to keep thing simple.
//
//  NOTE: Some things are saved containing asset indexes. When more assets are
//      added, those indexes can change... This is fixed with the rooms however, 
//      so that may serve as a template.
//
//  ToDo: Some kind of basic compression,  we have a lot of zeros everywhere,
//  we could shrink that a lot.
//
//*****************************************************************************

show_debug_message("Saving game ("+string(argument0)+")...");

global.lastSaveGame = argument0;

ini_open(argument0);

// Associated file (in case of autosave)
ini_write_string("File", "Save", global.saveFile);

// Save current room
ini_write_string("Location", "Room", room_get_name(objGame.lastCheckpointRoom));

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

ini_close();