/// ItemInsertArray(dsGrid, column, array);
//
//  This function take the data from an item array, as is used by
//  equipped items, and puts it into a ds_grid, such as the one used by
//  the inventory.
//
//*****************************************************************************

// Get stuff
var _grid, _index, _array;
_grid  = argument0;
_index = argument1;
_array = argument2;

// Add data from the array into the grid
ds_grid_set(_grid, _index, ITEM_NAME,        _array[ITEM_NAME]);
ds_grid_set(_grid, _index, ITEM_TYPE,        _array[ITEM_TYPE]);
ds_grid_set(_grid, _index, ITEM_ICON,        _array[ITEM_ICON]);
ds_grid_set(_grid, _index, ITEM_COUNT,       _array[ITEM_COUNT]);
ds_grid_set(_grid, _index, ITEM_OBJECT,      _array[ITEM_OBJECT]);
ds_grid_set(_grid, _index, ITEM_DESCRIPTION, _array[ITEM_DESCRIPTION]);
ds_grid_set(_grid, _index, ITEM_EFFECT,      _array[ITEM_EFFECT]);
ds_grid_set(_grid, _index, ITEM_SPRITESET,   _array[ITEM_SPRITESET]);
ds_grid_set(_grid, _index, ITEM_VALUE,       _array[ITEM_VALUE]);
