
instance_destroy();

var _win_w = window_get_width();
var _win_h = window_get_height();
surf_id = surface_create(_win_w, _win_h);
view_surface_id[0] = surf_id;

surface_filename = noone;