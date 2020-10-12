
if(keyboard_check_pressed(ord("R"))){
	game_restart();
}
if(keyboard_check_pressed(ord("L"))){
	if(!debug_window){
		debug_window = true;
		invincible_button = create_button(noone, 4, 4, 60, 20, global.debug_invincible_mode, ButtonType.DebugWindow, false, false, "UI", c_green);
	}
	else{
		debug_window = false;
	}
}
if(debug_window){
	
}



#region デバッグモード処理
	if(invincible_button != noone){
		switch(is_button_state(invincible_button)){
		case 0:
		case 1:
			global.debug_invincible_mode = false;
		break
		case 2:
			global.debug_invincible_mode = true;
		break
		}
	}
	if(global.debug_invincible_mode){
		set_invincible_time(5);
	}
#endregion