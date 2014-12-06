/// QuestCheckEffects();
//
//*****************************************************************************

var _effects;
_effects = argument0;
if (ds_list_size(_effects))
    {
    var _n, _array, _size, _script, _effects, _numberOfEffects;
    _numberOfEffects = ds_list_size(_effects);
    for (_n=0; _n<_numberOfEffects; _n++)
        {
        _array = _effects[| _n];
        _size = array_length_1d(_array);
        switch (_size)
            {
            case (2): script_execute(_array[0], _array[1]); break;
            case (3): script_execute(_array[0], _array[1], _array[2]); break;
            case (4): script_execute(_array[0], _array[1], _array[2], _array[3]); break;
            case (5): script_execute(_array[0], _array[1], _array[2], _array[3], _array[4]); break;
            default: show_debug_message("BAD: Unable to handle. (QuestCheckEffects)");
            }
        }
    }