//画面座標をマップ座標に変換


if(center){
	var _button_x1_window = window_x-width/2;
	var _button_y1_window = window_y-height/2;
	var _button_x2_window = window_x+width/2;
	var _button_y2_window = window_y+height/2;
}
else{
	var _button_x1_window = window_x;
	var _button_y1_window = window_y;
	var _button_x2_window = window_x+width;
	var _button_y2_window = window_y+height;	
}


var _mouse_x = window_mouse_get_x()/global.window_magnification;
var _mouse_y = window_mouse_get_y()/global.window_magnification;
if(is_in_range(_button_x1_window, _button_x2_window, _mouse_x) and is_in_range(_button_y1_window, _button_y2_window ,_mouse_y)){
	//マウスカーソルがボタンに重なっている
	if(state = ButtonState.Released){
		state = ButtonState.OnMouse;
	}
	if(mouse_check_button_pressed(global.shotgun_button)){
		switch(state){
		case ButtonState.Released:
		case ButtonState.OnMouse:
			state = ButtonState.Pressed;
		break
		case ButtonState.Pressed:
			if(link){
				//linkされてるなら同じb_typeのボタンが全てリリースになる
				change_button_state(b_type, ButtonState.Released);
			}
			state = ButtonState.OnMouse;
		break
		}
		
	}
}
else{
	//ボタンから離れた
	if(state = ButtonState.OnMouse){
		state = ButtonState.Released;
	}
}


switch(state){
case ButtonState.Released:
	subimage = 0;
	global.ds_button[| button_number] = 0;
break
case ButtonState.OnMouse:
	subimage = 1;
	global.ds_button[| button_number] = 1;
break
case ButtonState.Pressed:
	subimage = 2;
	global.ds_button[| button_number] = 2;
break
case ButtonState.Destroy:
	global.ds_button[| button_number] = noone;
	instance_destroy()
break
default:

break
}