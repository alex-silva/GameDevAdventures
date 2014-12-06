/// DrawButton(label, state, x, y);
//
//*****************************************************************************

draw_set_color(c_white);
draw_set_alpha(1.0);
draw_sprite(sprButton, argument1, argument2, argument3);

draw_set_font(fntInterface);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw white edge at bottom, to look like the text is indented
draw_set_color($FFFFFF);
draw_text(argument2, argument3+1, argument0);

// Draw the darker text
draw_set_color($303030);
draw_text(argument2, argument3, argument0);