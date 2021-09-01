//背景
if(now_screen == TITLESCREEN.MAIN){
	draw_set_alpha(1);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false);
	
	
	if(fade_time > 0){
		_alpha = 1-fade_time / fade_time_base;
		_alpha = ceil(_alpha*6)/6;
	}
	else{
		var _alpha = 1;
	}

	draw_set_alpha(_alpha);
	draw_set_color(title_background_color);
	draw_rectangle(0, 0, room_width, room_height, false);

	draw_set_default();
}
