
if(now_draw_achievement_window != noone){
	var _win_w = 130;
	var _win_h = 40;
	var _win_x = global.camera_width-_win_w;
	var _win_y = global.camera_height-_win_h-16;
	
	var _t = achievement_window_time_base - achievement_window_time;
	if(0 < _t and _t <= 5){
		var _win_col = c_white;
	}
	else{
		var _win_col = 2565930;
	}
	
	
	draw_achievement_window(now_draw_achievement_window, _win_x, _win_y, _win_w, _win_h,
	_win_col, _win_col, title_text_color, description_text_color);

}
