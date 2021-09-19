
if(surface_filename != noone){
	if(!surface_exists(surf_id)){
		var _win_w = window_get_width();
		var _win_h = window_get_height();
		surface_create(_win_w, _win_h);
		view_surface_id[0] = surf_id;
	
	}
	
	surface_save(o_shaderMgr.gray_surface, surface_filename);
	
}