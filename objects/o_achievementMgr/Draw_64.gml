
if(now_draw_achievement_window != noone){
	var _win_w = 120;
	var _win_h = 48;
	var _win_x = global.camera_x-_win_w;
	var _win_y = global.camera_y-_win_h-16;

	draw_achievement_window(now_draw_achievement_window, _win_x, _win_y, _win_w, _win_h,
	window_color1, window_color2, title_text_color, description_text_color);
}

