/// CheckQuestInProgress(questName);
//
//*****************************************************************************

//
var _questName, _progressQuests;
_questName = argument0;
with (objQuestManager)
    _progressQuests = manager[? "QuestsInProgress"];
    
// Is the given quest in the progress list?
return (ds_list_find_index(_progressQuests, _questName) != -1);
