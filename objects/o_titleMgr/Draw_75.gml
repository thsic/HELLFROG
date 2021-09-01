
if(now_screen == TITLESCREEN.MAIN
or now_screen == TITLESCREEN.DIFFICULTY){
	var _alpha = 0;
	if(fade_time > 0){
		_alpha = fade_time / fade_time_base;
	}

	if(pressed_button != -1){
		_alpha = 1 - fadein_time / fadein_time_base;
	}
	
	_alpha = ceil(_alpha*6)/6;

	draw_set_alpha(_alpha);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false);

	draw_set_default();
}

