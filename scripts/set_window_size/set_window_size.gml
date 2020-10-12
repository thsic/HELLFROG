///@param mag
function set_window_size(argument0) {
	var mag = argument0;

	window_set_size(GAMESCREEN_WSIZE*mag, GAMESCREEN_HSIZE*mag);
	global.window_magnification = mag;
	//ウィンドウを中央にセット
	var _dis_center_x = display_get_width()/2;
	var _dis_center_y = display_get_height()/2;
	var _win_w = window_get_width();
	var _win_h = window_get_height();
	
	var _window_posx = _dis_center_x-_win_w;
	var _window_posy = _dis_center_y-_win_h;
	
	window_set_position(_window_posx, _window_posy);


}
