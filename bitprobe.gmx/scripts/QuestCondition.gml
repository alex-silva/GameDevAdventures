/// QuestCondition(script, questName);
//
//*****************************************************************************

// Get stuff
var _quest, _conditionList;
_quest = global.questIndex;
_conditionList = _quest[? "Conditions"]

//
var _array, _n;
_array[0] = argument[0];
for (_n=1; _n<argument_count; _n++)
    _array[_n] = argument[_n];

//
ds_list_add(_conditionList, _array);
show_debug_message("Condition added: "+string(_array));