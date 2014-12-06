/// InventoryFindNumberItem(itemArray);
//
//  Takes an array and compares it's contents to the contents of item arrays
//  already stored in the inventory. Compares againsts certain values to see
//  if the stacks are in fact the same item, if so then that's added to the
//  total.
//
//*****************************************************************************

// Setup stuff
var _inventory, _totalCells, _testArray;
_inventory = objInventory.slots;
_slotCount = objInventory.width*objInventory.height;
_testArray = argument0;

// Traverse inventory. If slot contains an item, check it out
var _total, _index, _inventoryItem;
_total = 0;
_index = 0;
repeat (_slotCount)
    {
    if (_inventory[# _index, ITEM_COUNT] != -1)
    if (_inventory[# _index, ITEM_COUNT] < 99)
        {
        _inventoryItem = ItemExtractArray(_inventory, _index);
        if (ItemMatch(_inventoryItem, _testArray))
            _total += _inventoryItem[ITEM_COUNT];
        }
    _index++;
    }

// Return total
return _total;
