
if(fadeout_end = false){
	var _alpha = ceil((1-time/fadeout_time)*8)/8;
	draw_set_alpha(_alpha);
	draw_set_color(c_black);
	
	draw_rectangle(0, 0, global.camera_width, global.camera_height, false);
	draw_set_default();
}