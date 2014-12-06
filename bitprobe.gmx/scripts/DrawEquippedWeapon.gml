/// DrawEquippedWeapon(x, y);
//
//  This function draws the currently equipped weapon in the given position
//  on the HUD.
//
//*****************************************************************************

// Get stuff
var _x, _y;
_x = argument0;
_y = argument1;

// Draw empty slot
draw_sprite(sprIconCircle, 0, _x, _y);

// Draw item
var _icon;
_icon = objPlayer.equippedWeapon[ITEM_ICON];
if (_icon != -1)
    draw_sprite_stretched(_icon, 0, _x-24, _y-24, 48, 48);