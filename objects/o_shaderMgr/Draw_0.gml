if(surface_exists(gray_surface)){
	var _camw = camera_get_view_width(o_camera.camera);
	var _camh = camera_get_view_height(o_camera.camera);
	gray_surface = surface_create(_camw, _camh);
	view_set_surface_id(0, gray_surface);
}
//debug_draw_rectnagle(view_)
