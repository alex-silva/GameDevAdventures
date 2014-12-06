/// draw_text_outline(x, y, string, borderWidth, fillColor, borderColor);
//
//  Draws text with a border. Fill and border can be coloured separately.
//  Note that this script has a different naming convention to other scripts, but
//  that's so it's more in line with the text functions it's meant to extend upon.
//
//*****************************************************************************

// Get stuff
var _dir, _x, _y, _borderWidth, _fillColor, _borderColor;
_borderWidth = argument3;
_fillColor = argument4;
_borderColor = argument5;

// Draw border
draw_set_color(_borderColor);
for (_dir=0; _dir<360; _dir+=360/3)
    {
    _x = argument0+lengthdir_x(_borderWidth, _dir);
    _y = argument1+lengthdir_y(_borderWidth, _dir);
    draw_text(_x, _y, argument2);
    }

// Draw inner text
draw_set_color(_fillColor);
draw_text(argument0, argument1, argument2);