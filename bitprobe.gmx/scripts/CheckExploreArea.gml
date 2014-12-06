/// CheckExploreArea(questMarker);
//
//  Usage:
//  CONDITION
//
//*****************************************************************************

//
var _allQuests;
with (objQuestManager)
    _allQuests = manager[? "Quests"];

//
var _quest, _name, _questMarker;
_quest = _allQuests[? global.questCurrent];
_name = _quest[? "Name"];
_questMarker = argument0;

//
var _return;
EventScanStart();
_return = EventScanAdvanceTo("QuestStarted", _name)
    && EventScanAdvanceTo("AreaExplored", _questMarker);
    
//
var _newlyCompleted;
_newlyCompleted = _return && !EventScanAdvanceTo("TalkToNpc", _questMarker);
if (_newlyCompleted)
    ShowDialogue(_questMarker);

//
return _return;