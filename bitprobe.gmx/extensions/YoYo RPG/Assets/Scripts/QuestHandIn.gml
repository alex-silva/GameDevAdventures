/// QuestHandIn(quest);
//
//*****************************************************************************

// Get stuff
var _name, _handIn, _progress, _index;
_name = argument0;
_allQuests = manager[? "Quests"];
_quest = _allQuests[? _name];
_effects = _quest[? "Effects"];
_handIn = manager[? "QuestsHandIn"];
_progress = manager[? "QuestsInProgress"];
_index = ds_list_find_index(_progress, _name);

// Move from "In Progress" to "Completed"
ds_list_delete(_progress, _index);
ds_list_add(_handIn, _name);

// Check and execute effects, if any
QuestCheckEffects(_quest[? "Effects"]); 

// Update on following step, in case completion of this quest has other effects
objQuestManager.alarm[0] = 1;
