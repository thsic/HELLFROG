last_key_pushed_frame();

if(global.gamestate == gamestate.main
or global.gamestate == gamestate.incheckpointbarrier){
	virtual_cursor_manage(true);
}
else{
	virtual_cursor_manage(false);
}
mouse_x_prev = display_mouse_get_x();
mouse_y_prev = display_mouse_get_y();

/*global.mx = window_mouse_get_x() / global.window_magnification;
global.my = window_mouse_get_y() / global.window_magnification;*/
