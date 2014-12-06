/// InventoryFindSlotEmpty();
//
//  This function returns the first free slot that it can find. Or -1 if
//  there are no free slots left.
//
//*****************************************************************************

// Setup stuff
var _inventory, _totalCells, _index;
_inventory = objInventory.slots;
_slotCount = objInventory.width*objInventory.height;
_index = 0;

// Traverse inventory. If slot is empty, return slot index
repeat (_slotCount)
    {
    if (_inventory[# _index++, ITEM_COUNT] == -1)
        return _index-1;
    }

// No empty slot was found
return -1;
