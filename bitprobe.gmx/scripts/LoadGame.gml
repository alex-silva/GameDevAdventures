/// LoadGame();
//
//*****************************************************************************

show_debug_message("");
show_debug_message("Loading game...");
show_debug_message("********************");

global.lastSaveGame = global.loadFile;

if (!instance_exists(objTransition))
    {
    // Create object to handle transition to next room
    var _transition;
    _transition = instance_create(0, 0, objTransition);
    
    // Create persisant gameplay objects
    instance_create(0, 0, objGame);
    instance_create(0, 0, objPlayer);
    instance_create(0, 0, objInventory);
    instance_create(0, 0, objOptions);
    instance_create(0, 0, objSaveLoad);
    instance_create(0, 0, objMusicPlayer);
    instance_create(0, 0, objQuestManager);
    
    // Actual loading...
    ini_open(global.loadFile);
    
    // Associated file (in case of autosave)
    global.saveFile = ini_read_string("File", "Save", global.saveFile);
    show_debug_message("Associated file name: "+global.saveFile);
    
    // Room
    _transition.destRoom = asset_get_index(ini_read_string("Location", "Room", rmTownNew));
    
    // Player stats
    objPlayer.coins = ini_read_real("Player", "Gems", 0);
    objPlayer.hearts = ini_read_real("Player", "Hearts", 5);
    objPlayer.life = ini_read_real("Player", "Life", 5);
    global.character = ini_read_string("Player", "Character", "Boy");
    
    // Inventory
    var _tempList = ds_list_create();
    ds_list_read(_tempList, ini_read_string("Items", "Equipped", ""));
    ds_grid_read(objInventory.slots, ini_read_string("Items", "Inventory", ""));
    objPlayer.equippedWeapon = List2Array(_tempList);
    
    // Quests
    with (objQuestManager)
        {
        ds_list_read(manager[? "QuestsCompleted"], ini_read_string("Quests", "Completed", ""));
        ds_list_read(manager[? "QuestsInProgress"], ini_read_string("Quests", "Progress", ""));
        ds_list_read(manager[? "QuestsHandIn"], ini_read_string("Quests", "HandIn", ""));
        ds_list_read(manager[? "Events"], ini_read_string("Quests", "Events", ""));
        }
    
    // Persistant changes
    ds_list_read(objGame.persistanceEvents, ini_read_string("Persistance", "Instances", ""));
    
    ini_close();
    }
    
show_debug_message("");