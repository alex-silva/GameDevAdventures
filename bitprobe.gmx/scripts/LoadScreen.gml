// Remember to round theese
display_w = round(display_get_width());
display_h = round(display_get_height());
views_aspect_ratio = view_wview[0] / view_hview[0];
display_aspect_ratio = display_w / display_h;
// If we have to enlarge vertically
//if views_aspect_ratio >= display_aspect_ratio {
    view_hview[0] = view_wview[0] / display_aspect_ratio;
    view_hport[0] = view_wview[0] / display_aspect_ratio;
    surface_resize(application_surface, view_wview[0], view_hview[0]);
//}
// Else we have to enlarge horizontally
/*else {
    view_wview[0] = view_hview[0] / display_aspect_ratio;
    view_wport[0] = view_hview[0] / display_aspect_ratio;
    surface_resize(application_surface, view_wview[0], view_hview[0]);
}
// Else they already match! we dont have to do anything
