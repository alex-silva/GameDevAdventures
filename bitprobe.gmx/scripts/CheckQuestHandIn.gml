/// CheckQuestHandIn(questName);
//
//*****************************************************************************

//
var _questName, _handInQuests;
_questName = argument0;
with (objQuestManager)
    _handInQuests = manager[? "QuestsHandIn"];

// Is the given quest in the hand-in list?
return (ds_list_find_index(_handInQuests, _questName) != -1);