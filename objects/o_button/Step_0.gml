//画面座標をマップ座標に変換


if(center){
	var _button_x1 = x-width/2;
	var _button_y1 = y-height/2;
	var _button_x2 = x+width/2;
	var _button_y2 = y+height/2;
}
else{
	var _button_x1 = x;
	var _button_y1 = y;
	var _button_x2 = x+width;
	var _button_y2 = y+height;	
}


if(is_in_range(_button_x1, _button_x2, window_mouse_get_x()/global.window_magnification)){
	
}
