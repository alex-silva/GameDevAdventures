/// EffectStartQuest();
//
//  Moves the given quest name into the "In Progress" list, this esentialy starts it.
//  And from now on it's conditions will be checked for completion.
//
//  Usage:
//  EFFECT
//
//*****************************************************************************

// Get stuff
var _progress, _questName;
_questName = argument0;
with (objQuestManager)
    _progress = manager[? "QuestsInProgress"];

// Add quest name to progress list
ds_list_add(_progress, _questName);

// Debug, log...
show_debug_message("QUEST added to 'In Progress' list: "+string(_quest[? "Name"]));
EventLog("QuestStarted", _questName);
