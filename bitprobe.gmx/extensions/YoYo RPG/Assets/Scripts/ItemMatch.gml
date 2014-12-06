/// ItemMatch(item, item);
//
//  Compares 2 item arrays to see if they are (mostly) the same item.
//
//  Notes:
//  This doesn't look for item number or values.
//  Omitting value means we can give certain items different prices in certain
//  situations and have it restored to normal later.
//
//*****************************************************************************

// Get stuff
var _item1, _item2;
_item1 = argument0;
_item2 = argument1;

// Compare relevant stats of both arrays to see if they all match
return (_item1[ITEM_NAME]        == _item2[ITEM_NAME])
    && (_item1[ITEM_TYPE]        == _item2[ITEM_TYPE])
    && (_item1[ITEM_OBJECT]      == _item2[ITEM_OBJECT])
    && (_item1[ITEM_ICON]        == _item2[ITEM_ICON])
    && (_item1[ITEM_DESCRIPTION] == _item2[ITEM_DESCRIPTION])
    && (_item1[ITEM_EFFECT]      == _item2[ITEM_EFFECT])
    && (_item1[ITEM_SPRITESET]   == _item2[ITEM_SPRITESET]);
