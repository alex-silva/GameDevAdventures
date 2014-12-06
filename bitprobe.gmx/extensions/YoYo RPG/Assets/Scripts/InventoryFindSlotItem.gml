/// InventoryFindSlotItem(itemArray);
//
//  Takes an array and compares it's contents to the contents of item arrays
//  already stored in the inventory. Compares againsts certain values to see
//  if the stacks can be merged.
//  For example, you may have 2 items called "Wood", but they have different
//  icons or maybe other stats, thus are not the same and can't be merged.
//
//*****************************************************************************

// Setup stuff
var _inventory, _totalCells, _testArray, _index, _inventoryItem;
_inventory = objInventory.slots;
_slotCount = ds_grid_width(_inventory);
_testArray = argument0;
_index = 0;

// Traverse inventory. If slot contains an item, check it out
repeat (_slotCount)
    {
    if (_inventory[# _index, ITEM_COUNT] != -1)
    if (_inventory[# _index, ITEM_COUNT] < 99)
        {
        _inventoryItem = ItemExtractArray(_inventory, _index);
        if (ItemMatch(_inventoryItem, _testArray))
            return _index;
        }
    _index++;
    }

//
return -1;