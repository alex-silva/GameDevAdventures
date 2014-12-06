/// QuestRequisite(script, arg0, ...);
//
//*****************************************************************************

// Get stuff
var _script, _allQuests, _quest, _requisiteList;
_script = argument[0];
_quest = global.questIndex;
_requisiteList = _quest[? "Requisites"]

//
var _array;
_array[0] = _script;
for (_n=1; _n<argument_count; _n++)
    _array[_n] = argument[_n];

//
ds_list_add(_requisiteList, _array);
show_debug_message("Requisite added: "+string(_array));