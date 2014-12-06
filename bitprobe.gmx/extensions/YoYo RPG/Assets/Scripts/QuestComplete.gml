/// QuestComplete(questName);
//
//*****************************************************************************

// Get stuff
var _name, _allQuests, _completed, _progress, _index;
_name = argument0;
with (objQuestManager)
    {
    _allQuests = manager[? "Quests"];
    _completed = manager[? "QuestsCompleted"];
    _progress = manager[? "QuestsInProgress"];
    }
_quest = _allQuests[? _name];
_index = ds_list_find_index(_progress, _name);

// Move from "In Progress" to "Completed"
ds_list_delete(_progress, _index);
ds_list_add(_completed, _name);

// Check and execute effects, if any
QuestCheckEffects(_quest[? "Effects"]); 

// Update on following step, in case completion of this quest has other effects
objQuestManager.alarm[0] = 1;
