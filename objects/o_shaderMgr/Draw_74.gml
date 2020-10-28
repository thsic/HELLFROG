var _cx = camera_get_view_x(view_camera[0]);
var _cy = camera_get_view_y(view_camera[0]);

if(global.gamestate = gamestate.incheckpointbarrier){
	var _checkpoint_id = instance_nearest(o_player.x, o_player.y, o_checkPointMarker);
	var _cp_barrier_size = _checkpoint_id.barrier_size;
	var _cpx = _checkpoint_id.x - _cp_barrier_size/2 - _cx;
	var _cpy = _checkpoint_id.y - _cp_barrier_size/2 - _cy;
	
	//黒で塗りつぶす
	surface_set_target(gray_surf_copy);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();
	
	surface_copy_part(gray_surf_copy, _cpx, _cpy, gray_surface, _cpx, _cpy, _cp_barrier_size, _cp_barrier_size);
	
	if(surface_exists(gray_surface)){
		shader_set(sh_gray);
		draw_surface(gray_surface, 0, 0);
		shader_reset();
		draw_surface(gray_surf_copy, 0, 0);
	}

}
else{
	draw_surface(gray_surface, 0, 0);
}


	

/*var _px = o_player.x-;
var _py = o_player.y-camera_get_view_y(o_camera.camera);
draw_circle(_px, _py, 20, false);*/


draw_circle(o_camera.x-_cx, o_camera.y-_cy, 10, true);
