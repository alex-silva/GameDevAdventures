/// QuestEffect(script, arguments...);
//
//*****************************************************************************

// Get stuff
var _quest, _effectList;
_quest = global.questIndex;
_effectList = _quest[? "Effects"]

//
var _array, _n;
_array[0] = argument[0];;
for (_n=1; _n<argument_count; _n++)
    _array[_n] = argument[_n];

//
ds_list_add(_effectList, _array);
show_debug_message("Effect added: "+string(_array));
