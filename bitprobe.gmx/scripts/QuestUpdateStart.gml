/// QuestUpdateStart();
//
//*****************************************************************************

global.questFirst = ds_map_find_first(manager[? "Quests"]);
global.questLast  = ds_map_find_last(manager[? "Quests"]);
global.questCurrent = global.questFirst;