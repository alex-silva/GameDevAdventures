/// DrawPanel(x, y, w, h, cornerDecor, topDecor);
//
//*****************************************************************************

// Get stuff
var _startX, _startY, _width, _height, _hasDecorCorner, _hasDecorTop;
_startX = argument0;
_startY = argument1;
_endX = _startX+argument2-64;
_endY = _startY+argument3-64;
_hasDecorCorner = argument4;
_hasDecorTop = argument5;

// Setting the seed with a consistant value is a neat trick to get the same
// random values in following steps. Here it is used to chose between two tiles
// without flickering between them on different steps.
random_set_seed(_endX+_endY);

// Draw drop shadow
draw_set_color(c_black);
draw_set_alpha(0.6);
draw_roundrect(_startX, _endY+64-8, _endX+64, _endY+64+8, false);

// Draw the panels
draw_set_color(c_white);
draw_set_alpha(1.0);
for (_x=_startX; _x<=_endX; _x+=64)
for (_y=_startY; _y<=_endY; _y+=64)
    {
    if (_x == _startX)
        {
        if (_y == _startY)    draw_sprite(sprPanels, 9, _x, _y);
        else if (_y == _endY) draw_sprite(sprPanels, 8, _x, _y);
        else                  draw_sprite(sprPanels, 5, _x, _y);
        }
    else if (_x == _endX)
        {
        if (_y == _startY)    draw_sprite(sprPanels, 6, _x, _y);
        else if (_y == _endY) draw_sprite(sprPanels, 7, _x, _y);
        else                  draw_sprite(sprPanels, 3, _x, _y);
        }
    else if (_y == _startY) draw_sprite(sprPanels, 2, _x, _y);
    else if (_y == _endY)   draw_sprite(sprPanels, 4, _x, _y);
    else                    draw_sprite(sprPanels, irandom(1), _x, _y);
    }
    
// Draw the gradient shading
draw_primitive_begin(pr_trianglestrip);
draw_vertex_colour(_startX+5,  _startY+5,  c_black, 0.0);
draw_vertex_colour(_endX+64-5, _startY+5,  c_black, 0.0);
draw_vertex_colour(_startX+5,  _endY+64-6, c_black, 0.5);
draw_vertex_colour(_endX+64-5, _endY+64-6, c_black, 0.5);
draw_primitive_end();

if (_hasDecorCorner)
    draw_sprite(sprPanelDecorCorner, 0, _endX+64-5, _endY+64-6);
    
if (_hasDecorTop)
    draw_sprite(sprPanelDecorTop, 0, _startX+argument2*0.5, _startY+4);