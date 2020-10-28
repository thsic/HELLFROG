last_key_pushed_frame();
switch(global.gamestate){
case gamestate.main:
case gamestate.incheckpointbarrier:
	mouse_within_window();//マウスを範囲内に
break;
}
mouse_x_prev = display_mouse_get_x();
mouse_y_prev = display_mouse_get_y();

global.mx = window_mouse_get_x() / global.window_magnification;
global.my = window_mouse_get_y() / global.window_magnification;
