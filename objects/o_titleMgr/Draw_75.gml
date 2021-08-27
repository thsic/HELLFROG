
var _alpha = 0;
if(fade_time > 0){
	_alpha = fade_time / fade_time_base;
}

if(pressed_button != -1){
	_alpha = 1 - fadein_time / fadein_time_base;
}

draw_set_alpha(_alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);

draw_set_default()
