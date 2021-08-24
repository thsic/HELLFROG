
if(global.floor_enemy_number_now <= 0){
	var _alpha = ceil(time/fadein_time*8)/8;
	draw_set_color(c_black);
	draw_set_alpha(_alpha);
	draw_rectangle(0, 0, global.camera_width, global.camera_height, false);
	
	
}

