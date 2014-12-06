/// List2Array(list);
//
//*****************************************************************************

var _array, _n, _size, _list;
_array = 0;
_list = argument0;
_size = ds_list_size(_list);
for (_n=0; _n<_size; _n++)
    _array[_n] = ds_list_find_value(_list, _n);

return _array;