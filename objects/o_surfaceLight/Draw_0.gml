
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
	draw_clear_alpha(c_black, 0.1);
	
	surface_reset_target();
}



surface_set_target(surface_id);
//黒リセット
draw_clear_alpha(c_black, 0.1);

gpu_set_blendmode(bm_subtract);
var _light_tex = sprite_get_texture(s_lightCircle, 0);
draw_primitive_begin_texture(pr_trianglefan, _light_tex);
draw_vertex_texture(plx-_cx+_oversize, ply-_cy+_oversize, 0.5, 0.5);

for(var i=0; i<vertices_number; i++){
	draw_vertex_texture(vert_x[i]-_cx+_oversize, vert_y[i]-_cy+_oversize, x_tex[i], y_tex[i]);
}

draw_primitive_end();

gpu_set_blendmode(bm_normal);

surface_reset_target();
draw_surface(surface_id, _cx-_oversize, _cy-_oversize)