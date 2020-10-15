
var _cw = camera_get_view_width(0);
var _ch = camera_get_view_height(0);
var _cx = o_camera.x-_cw/2;
var _cy = o_camera.y-_ch/2;
var _oversize = 32

if(!surface_exists(surface_id)){
	//サーフェス生成
	//カメラサイズぴったりだと支店を動かしたときに外側が一瞬うつるので
	surface_id = surface_create(_cw+_oversize*2, _ch+_oversize*2);
	
	surface_set_target(surface_id);
	draw_clear_alpha(c_black, 0.6);
	
	surface_reset_target();
}



surface_set_target(surface_id);
//黒リセット
draw_clear_alpha(c_black, 0.6);

gpu_set_blendmode(bm_subtract);
draw_primitive_begin(pr_trianglefan);
draw_vertex(plx-_cx+_oversize, ply-_cy+_oversize);

for(var i=0; i<vertices_number+1; i++){
	draw_vertex(vert_x[i]-_cx+_oversize, vert_y[i]-_cy+_oversize);
}

draw_primitive_end();

gpu_set_blendmode(bm_normal);

surface_reset_target();
draw_surface(surface_id, _cx-_oversize, _cy-_oversize)