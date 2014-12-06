/// DrawCoinsCounter(x, y);
//
//*****************************************************************************

var _x, _y;
_x = argument0;
_y = argument1;

draw_sprite(sprCoinCounter, 0, _x+8, _y+4);

draw_set_halign(fa_left);
draw_text(_x+32, _y+4,coins);
