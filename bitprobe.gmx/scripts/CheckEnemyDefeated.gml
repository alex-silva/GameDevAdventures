/// CheckEnemyDefeated(enemy);
//
//*****************************************************************************

//
var _allQuests;
with (objQuestManager)
    _allQuests = manager[? "Quests"];

//
var _quest, _name, _enemy;
_quest = _allQuests[? global.questCurrent];
_name = _quest[? "Name"];
_enemy = argument0;

//
EventScanStart();
return EventScanAdvanceTo("QuestStarted", _name)
    && EventScanAdvanceTo("EnemyDefeated", _enemy);