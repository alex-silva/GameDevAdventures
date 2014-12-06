/// QuestCheckRequisites();

var _n, _array, _size, _script, _return, _requisites, _numberOfRequisites;
_requisites = argument0;
if (ds_list_size(_requisites))
    {
    _numberOfRequisites = ds_list_size(_requisites);
    _return = true;
    for (_n=0; _n<_numberOfRequisites; _n++)
        {
        _array = _requisites[| _n];
        _size = array_length_1d(_array);
        switch (_size)
            {
            case (2): _return &= script_execute(_array[0], _array[1]); break;
            default: show_debug_message("BAD: Unable to handle. (QuestCheckRequisites)");
            }
        }
    
    return _return;
    }

// No requisites
else return 4;