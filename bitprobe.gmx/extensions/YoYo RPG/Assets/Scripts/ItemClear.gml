/// ItemClear(dsGrid, column);
//
//  Deletes the given item from the inventory.
//
//*****************************************************************************

// Get stuff
var _grid, _index;
_grid  = argument0;
_index = argument1;

// Create array and fill it up in reverse order with the grid data
ds_grid_set(_grid, _index, ITEM_NAME,        -1);
ds_grid_set(_grid, _index, ITEM_TYPE,        -1);
ds_grid_set(_grid, _index, ITEM_ICON,        -1);
ds_grid_set(_grid, _index, ITEM_COUNT,       -1);
ds_grid_set(_grid, _index, ITEM_OBJECT,      -1);
ds_grid_set(_grid, _index, ITEM_DESCRIPTION, -1);
ds_grid_set(_grid, _index, ITEM_EFFECT,      -1);
ds_grid_set(_grid, _index, ITEM_SPRITESET,   -1);
ds_grid_set(_grid, _index, ITEM_VALUE,       -1);
