/// Array2List(array);
//
//*****************************************************************************

var _array, _n, _size, _list;
_array = argument0;
_list = ds_list_create();
_size = array_length_1d(_array);
for (_n=0; _n<_size; _n++)
    ds_list_add(_list, _array[_n]);

return _list;