/// InventoryAdd(itemArray);
//
//  This function adds the given item to the inventory. Returns true if
//  sucessful and false if the item could not be added (inventory full).
//
//*****************************************************************************

// Find a slot
var _array, _number, _emptyCell, _inventory;
_array = argument0;
_emptyCell = InventoryFindSlotEmpty();
_existingCell = InventoryFindSlotItem(_array);
_inventory = objInventory.slots;

// Add item to existing stack
if (_existingCell != -1)
    {
    Debug("Found an existing stack of item");
    Debug("Stack size: "+string(_inventory[# _existingCell, ITEM_COUNT])+", new stack size: "+string(_inventory[# _existingCell, ITEM_COUNT] + _array[ITEM_COUNT]));
    if (_inventory[# _existingCell, ITEM_COUNT] + _array[ITEM_COUNT] <= 99)
        {
        // Add items to existing stack
        ds_grid_add(objInventory.slots, _existingCell, ITEM_COUNT, _array[ITEM_COUNT]);
        show_debug_message("SUCCESS. Added item to existing stack!");
        
        // Return sucess
        return true;
        }
    else
        show_debug_message("New item count won't fit inside existing stack");
    }

// Add item in the empty slot
if (_emptyCell != -1)
    {
    ds_grid_set(objInventory.slots, _emptyCell, ITEM_NAME,        _array[0]);
    ds_grid_set(objInventory.slots, _emptyCell, ITEM_TYPE,        _array[1]);
    ds_grid_set(objInventory.slots, _emptyCell, ITEM_COUNT,       _array[2]);
    ds_grid_set(objInventory.slots, _emptyCell, ITEM_OBJECT,      _array[3]);
    ds_grid_set(objInventory.slots, _emptyCell, ITEM_ICON,        _array[4]);
    ds_grid_set(objInventory.slots, _emptyCell, ITEM_DESCRIPTION, _array[5]);
    ds_grid_set(objInventory.slots, _emptyCell, ITEM_EFFECT,      _array[6]);
    ds_grid_set(objInventory.slots, _emptyCell, ITEM_SPRITESET,   _array[7]);
    ds_grid_set(objInventory.slots, _emptyCell, ITEM_VALUE,       _array[8]);
    show_debug_message("SUCCESS. Item added!");
    
    // Create notification
    var _newNotification;
    _newNotification = instance_create(x, y, objPickupNotification);
    _newNotification.text = string(_array[2])+" "+string(_array[0]);
    
    // Return sucess
    return true;
    }

// No slot found (inventory full).
else
    {
    show_debug_message("FAILED. Inventory full!");
    return false;
    }
