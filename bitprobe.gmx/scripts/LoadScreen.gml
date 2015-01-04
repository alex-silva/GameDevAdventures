var base_w = 960;
var base_h = 640;
var max_w = display_get_width();
var max_h = display_get_height();
var aspect = display_get_width() / display_get_height();
if (max_w < max_h)
    {
    // portait
    var VIEW_WIDTH = min(base_w, max_w);
    var VIEW_HEIGHT = VIEW_WIDTH / aspect;
    display_set_gui_size(base_w, base_w / aspect);
    }
else
    {
    // landscape
    var VIEW_HEIGHT = min(base_h, max_h);
    var VIEW_WIDTH = VIEW_HEIGHT * aspect;
    display_set_gui_size(base_h * aspect, base_h);
    }
//view_wview[0] = floor(VIEW_WIDTH);
//view_hview[0] = floor(VIEW_HEIGHT);
view_wport[0] = max_w;
view_hport[0] = max_h;
surface_resize(application_surface, floor(VIEW_WIDTH), floor(VIEW_HEIGHT));
