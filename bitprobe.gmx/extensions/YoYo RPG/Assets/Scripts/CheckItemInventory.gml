/// CheckItemInventory(item);
//
//  Checks wether the given item array matches the equipped item of any item
//  in the player's inventory.
//
//*****************************************************************************

return (CheckItemEquipped(argument0) || InventoryFindSlotItem(argument0) >= 0);
