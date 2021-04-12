//マウスが外にはみ出さないようにする 
//マウスがはみ出しそうになったらマウスの速度を遅くする処理を作ったけどあんまり操作感が良くなかったのでボツ
function mouse_within_window(){
	
	var _mouse_x = display_mouse_get_x();
	var _mouse_y = display_mouse_get_y();
	var _win_x = window_get_x();
	var _win_y = window_get_y();
	var _win_w = window_get_width();
	var _win_h = window_get_height();
	/*
	var _dis = point_distance(mouse_x_prev, mouse_y_prev, _mouse_x, _mouse_y);
	var _dir = point_direction(mouse_x_prev, mouse_y_prev, _mouse_x, _mouse_y);
	
	var _x_1 = lengthdir_x(_dis, _dir)+_mouse_x;
	var _y_1 = lengthdir_y(_dis, _dir)+_mouse_y;
	var _x_2 = lengthdir_x(_dis*2, _dir)+_mouse_x;
	var _y_2 = lengthdir_y(_dis*2, _dir)+_mouse_y;
	
	
	
	var _mouse_hspd = mouse_x_prev - _mouse_x;
	var _mouse_vspd = mouse_y_prev - _mouse_y;
	var _modefy_enable = false;
	
	if(!is_in_range(_win_x, _win_x+_win_w, _x_2)){
		_mouse_hspd *= 0.5;
		_modefy_enable = true;
	}
	if(!is_in_range(_win_x, _win_x+_win_w, _x_1)){
		_mouse_vspd *= 0.25;
		_modefy_enable = true;
	}
	if(!is_in_range(_win_y, _win_y+_win_h, _y_2)){
		_mouse_vspd *= 0.5;
		_modefy_enable = true;
	}
	if(!is_in_range(_win_y, _win_y+_win_h, _y_1)){
		_mouse_vspd *= 0.25;
		_modefy_enable = true;
	}
	
	if(_modefy_enable){
		var _modefy_mouse_x = mouse_x_prev-_mouse_hspd;
		var _modefy_mouse_y = mouse_y_prev-_mouse_vspd;
		
		display_mouse_set(_modefy_mouse_x, _modefy_mouse_y);
	}
	sdm(_modefy_enable)*/
	var _modefy_mouse_x = clamp(_mouse_x, _win_x+64, _win_x+_win_w-64);
	var _modefy_mouse_y = clamp(_mouse_y, _win_y+64, _win_y+_win_h-64);
	
	//display_mouse_set(_modefy_mouse_x, _modefy_mouse_y);
	
	global.win_vmouse_x = clamp(global.win_vmouse_x, 0, _win_w);
	global.win_vmouse_y = clamp(global.win_vmouse_y, 0, _win_h);
	
}