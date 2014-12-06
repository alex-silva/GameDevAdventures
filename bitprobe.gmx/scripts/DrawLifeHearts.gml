/// DrawLifeHearts(x, y);
//
//*****************************************************************************

// Position
var _x, _y;
_x = argument0;
_y = argument1;


// Title
//draw_text(_x-88, _y, "----- LIFE -----");

// Draw current life
_x -= 36*5;
//_y += 32;
repeat (life)
    {
    draw_sprite(sprLifeHeart, 0, _x, _y);
    _x += 36;
    }
    
// Draw remaining empty hearts
repeat (hearts-life)
    {
    draw_sprite(sprLifeHeart, 1, _x, _y);
    _x += 36;
    }