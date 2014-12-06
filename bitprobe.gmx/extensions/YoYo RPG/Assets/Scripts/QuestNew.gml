/// QuestNew(name, mask);
//
//*****************************************************************************

// Get stuff
var _name, _mask;
_name = argument0;
_mask = argument1;
show_debug_message("Adding a new quest ["+_mask+"]("+_name+")...");

// Fill up dialogue maps for each context
var _context;
_context = 0;
for (_n=0; _n<3; _n++)
    {
    _newMap = ds_map_create();
    _newMap[? "Text"]     = 0;
    _newMap[? "Type"]     = 0;
    _newMap[? "Response"] = 0;
    _newMap[? "Outcome"]  = 0;
    _context[_n] = _newMap;
    }

// Create new quest template
var _newQuest;
_newQuest = ds_map_create();
_newQuest[? "Name"] = _name;
_newQuest[? "Mask"] = "";
_newQuest[? "Giver"] = -1;
_newQuest[? "Dialogue"] = _context;
_newQuest[? "Requisites"] = ds_list_create();
_newQuest[? "Conditions"] = ds_list_create();
_newQuest[? "Effects"] = ds_list_create();

// Add to manager
var _allQuests;
_allQuests = manager[? "Quests"];   // Get that map that contains all quests
_allQuests[? _name] = _newQuest;    // Add this quest to that map, name as index
manager[? "NumberOfQuests"]++;      // Increase the total number of quests

// Return quest as it's map id
global.questIndex = _newQuest;      // Set the global quest to this, other Quest scripta just pick this up
return _newQuest;