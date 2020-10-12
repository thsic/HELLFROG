///@param mag
function set_window_size(_mag) {
	var _win_w = GAMESCREEN_WSIZE*_mag;
	var _win_h = GAMESCREEN_HSIZE*_mag
	window_set_size(_win_w, _win_h);
	global.window_magnification = _mag;
	//ウィンドウを中央にセット
	var _dis_center_x = display_get_width()/2;
	var _dis_center_y = display_get_height()/2;
	
	var _window_posx = _dis_center_x-_win_w/2;
	var _window_posy = _dis_center_y-_win_h/2;
	
	window_set_position(_window_posx, _window_posy);


}
