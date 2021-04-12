//
function virtual_cursor_manage(_virtual_cursol_enable){
	if(_virtual_cursol_enable){
		var _middle_center_x = window_get_width()/2;
		var _middle_center_y = window_get_height()/2;
		
		//仮想カーソル on
		if(!virtual_cursol_enable){
			//モード変更時の処理
			virtual_cursol_enable = true;
			
			global.win_vmouse_x = window_mouse_get_x();
			global.win_vmouse_y = window_mouse_get_y();
			window_set_cursor(cr_none);//本物のカーソルを透明に
			
		}
		else{
			//onにする瞬間以外
			//中心との差を計算
			var x_difference = window_mouse_get_x() - _middle_center_x;
			var y_difference = window_mouse_get_y() - _middle_center_y;
		
			global.win_vmouse_x += x_difference;
			global.win_vmouse_y += y_difference;
		
			
		}
		//仮想カーソル時は常に中央にマウス
		window_mouse_set(_middle_center_x, _middle_center_y);
		mouse_within_window()//win_vmouse_xとyを画面内に収める
	}
	else{
		//off
		if(virtual_cursol_enable){
			//モード変更時の処理
			virtual_cursol_enable = false;
			
			window_mouse_set(global.win_vmouse_x, global.win_vmouse_y);
			window_set_cursor(cr_default);//カーソルをもとに戻す
		}
		global.win_vmouse_x = window_mouse_get_x();
		global.win_vmouse_y = window_mouse_get_y();
	}
	
	
	global.vmouse_x = global.win_vmouse_x / WINDOW_SIZE_MAGNIFICATION;
	global.vmouse_y = global.win_vmouse_y / WINDOW_SIZE_MAGNIFICATION;
	
}