/// ItemGetAwesomeSword();
//
//*****************************************************************************

var _item;
_item[ITEM_NAME]        = "Awesome Sword";         // Name of item
_item[ITEM_TYPE]        = ITEM_TYPE_WEAPON;                // Type of item
_item[ITEM_COUNT]       = 1;                 // Default 1 item, so we don't have to always define it
_item[ITEM_OBJECT]      = -1;                // Default NO associated object
_item[ITEM_ICON]        = sprIconAwesomeSword;                // Icon for the item, used in inventory
_item[ITEM_DESCRIPTION] = "This is a deadly steel blade!";  // Item description, used in inventory
_item[ITEM_SPRITESET]   = SetWeapon_MetalSword;
_item[ITEM_EFFECT]      = 2;
_item[ITEM_VALUE]       = 1;

return _item;
