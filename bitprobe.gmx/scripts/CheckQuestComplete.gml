/// CheckQuestComplete(questName);
//
//*****************************************************************************

//
var _questName, _completedQuests;
_questName = argument0;
with (objQuestManager)
    _completedQuests = manager[? "QuestsCompleted"];

//
return (ds_list_find_index(_completedQuests, _questName) != -1);