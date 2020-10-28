if(!surface_exists(gray_surface)){
	var _camw = view_wport[0];
	var _camh = view_hport[0];
	
	gray_surface = surface_create(_camw, _camh);
	view_set_surface_id(0, gray_surface);
}
if(!surface_exists(gray_surf_copy)){
	var _camw = view_wport[0];
	var _camh = view_hport[0];
	
	gray_surf_copy = surface_create(_camw, _camh);
}
//debug_draw_rectnagle(view_)
