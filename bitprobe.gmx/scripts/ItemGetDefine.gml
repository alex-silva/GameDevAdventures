/// ItemGetDefine(name, type, count, object, icon, description, spriteSet, effect, value);
//
//  Take all the values needed to create a new item, and returns it's array.
//
//*****************************************************************************

var _item;
_item[ITEM_NAME]        = argument0;    // Name of item
_item[ITEM_TYPE]        = argument1;    // Type of item
_item[ITEM_COUNT]       = argument2;    // Default 1 item, so we don't have to always define it
_item[ITEM_OBJECT]      = argument3;    // Default NO associated object
_item[ITEM_ICON]        = argument4;    // Icon for the item, used in inventory
_item[ITEM_DESCRIPTION] = argument5;    // Item description, used in inventory
_item[ITEM_SPRITESET]   = argument6;
_item[ITEM_EFFECT]      = argument7;
_item[ITEM_VALUE]       = argument8;

return _item;
