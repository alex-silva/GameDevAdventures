/// ItemGetLifePotion();
//
//*****************************************************************************

var _item;
_item[ITEM_NAME]        = "Life Potion";              // Name of item
_item[ITEM_TYPE]        = ITEM_TYPE_POTION_HEALTH; // Type of item
_item[ITEM_COUNT]       = 1;                   // Default 1 item, so we don't have to always define it
_item[ITEM_OBJECT]      = -1;                  // Default NO associated object
_item[ITEM_ICON]        = sprIconLifePotion;                // Icon for the item, used in inventory
_item[ITEM_DESCRIPTION] = "Restores your hearts!";  // Item description, used in inventory
_item[ITEM_SPRITESET]   = -1;
_item[ITEM_EFFECT]      = -1;
_item[ITEM_VALUE]       = 10;

return _item;