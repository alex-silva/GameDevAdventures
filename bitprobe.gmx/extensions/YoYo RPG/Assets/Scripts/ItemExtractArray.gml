/// ItemExtractArray(dsGrid, column);
//
//  This function takes the item data from a ds_grid, such as the one used
//  in the inventory, and puts it into an array, as is used for equipped
//  items like weapons. It then returns this array.
//
//*****************************************************************************

// Get stuff
var _grid, _index;
_grid  = argument0;
_index = argument1;

// Create array and fill it up in reverse order with the grid data
var _newArray;
_newArray[ITEM_EFFECT]      = ds_grid_get(_grid, _index, ITEM_EFFECT);
_newArray[ITEM_DESCRIPTION] = ds_grid_get(_grid, _index, ITEM_DESCRIPTION);
_newArray[ITEM_OBJECT]      = ds_grid_get(_grid, _index, ITEM_OBJECT);
_newArray[ITEM_COUNT]       = ds_grid_get(_grid, _index, ITEM_COUNT);
_newArray[ITEM_ICON]        = ds_grid_get(_grid, _index, ITEM_ICON);
_newArray[ITEM_TYPE]        = ds_grid_get(_grid, _index, ITEM_TYPE);
_newArray[ITEM_NAME]        = ds_grid_get(_grid, _index, ITEM_NAME);
_newArray[ITEM_SPRITESET]   = ds_grid_get(_grid, _index, ITEM_SPRITESET);
_newArray[ITEM_VALUE]       = ds_grid_get(_grid, _index, ITEM_VALUE);

// Return the array
return _newArray;
