/// ItemGetGoldenSword();
//
//*****************************************************************************

var _item;
_item[ITEM_NAME]        = "Golden Sword";           // Name of item
_item[ITEM_TYPE]        = ITEM_TYPE_WEAPON;         // Type of item
_item[ITEM_COUNT]       = 1;                        // Default 1 item, so we don't have to always define it
_item[ITEM_OBJECT]      = -1;                       // Default NO associated object
_item[ITEM_ICON]        = sprIconGoldenSword;       // Icon for the item, used in inventory
_item[ITEM_DESCRIPTION] = "It's so shiny!";         // Item description, used in inventory
_item[ITEM_SPRITESET]   = SetWeapon_GoldenSword;
_item[ITEM_EFFECT]      = 3;
_item[ITEM_VALUE]       = 300;

return _item;
