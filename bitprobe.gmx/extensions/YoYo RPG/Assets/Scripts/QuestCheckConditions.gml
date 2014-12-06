/// QuestCheckConditions();

var _n, _array, _size, _script, _return, _instantFinish, _conditions, _numberOfConditions;
_conditions = argument0;
if (ds_list_size(_conditions))
    {
    _numberOfConditions = ds_list_size(_conditions);
    _return = true;
    _instantFinish = 0;
    for (_n=0; _n<_numberOfConditions; _n++)
        {
        _array = _conditions[| _n];
        _size = array_length_1d(_array);
        if (_array[0] == EffectFinishQuest)
            {
            show_debug_message("Found EffectFinishQuest");
            _return &= true;
            _instantFinish = 2;
            }
        else
            {
            switch (_size)
                {
                case (2): _return &= script_execute(_array[0], _array[1]); break;
                }
            }
        }
    
    return _return | _instantFinish;
    }
    
// No conditions
else return 4;