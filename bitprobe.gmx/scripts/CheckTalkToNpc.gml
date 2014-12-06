/// CheckTalkToNpc(npc);
//
//*****************************************************************************

//
var _allQuests;
with (objQuestManager)
    _allQuests = manager[? "Quests"];

//
var _quest, _name, _npc;
_quest = _allQuests[? global.questCurrent];
_name = _quest[? "Name"];
_npc = argument0;

//
EventScanStart();
return EventScanAdvanceTo("QuestStarted", _name)
    && EventScanAdvanceTo("TalkToNpc", _npc);