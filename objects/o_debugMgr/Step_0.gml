
if(keyboard_check_pressed(ord("R"))){
	game_restart();
}
if(keyboard_check_pressed(ord("L"))){
	game_restart();
}

sdm(window_mouse_get_x()/global.window_magnification);