
if(keyboard_check_pressed(ord("R"))){
	game_restart();
}
if(keyboard_check_pressed(ord("L"))){
	/*if(!debug_window){
		debug_window = true;
		if(global.debug_invincible_mode){
			var _button_default_state = 2;
		}
		else{
			var _button_default_state = 0;
		}
		invincible_button = create_button(noone, 4, 4, 60, 16, _button_default_state, "muteki", ButtonType.DebugWindow, false, false, "UI", c_aqua);
		//--------------
		if(global.debug_stop_curse_mode){
			var _button_default_state = 2;
		}
		else{
			var _button_default_state = 0;
		}
		stop_curse_button = create_button(noone, 4, 24, 60, 16, _button_default_state, "nodotdmg", ButtonType.DebugWindow, false, false, "UI", c_aqua);
		//--------------
		
		
		
	}
	else{
		debug_window = false;
		change_button_state(ButtonType.DebugWindow, ButtonState.Destroy);
	}*/
	global.debug_invincible_mode = !global.debug_invincible_mode;
	global.debug_stop_curse_mode = !global.debug_stop_curse_mode;
	
	if(global.debug_invincible_mode){
		global.enemy_damage = 0;
	}
	else{
		global.enemy_damage = 1;
	}
	if(global.debug_stop_curse_mode){
		global.dot_damage = 0;
	}
	else{
		global.dot_damage = 1;
	}

}

if(keyboard_check_pressed(ord("O"))){
	global.debug_wall_collision = !global.debug_wall_collision;
	
}



#region デバッグモード処理
	//無敵
	/*if(invincible_button != noone){
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
	
	//ドットダメージ無効
	if(stop_curse_button != noone){
		switch(is_button_state(stop_curse_button)){
		case 0:
		case 1:
			global.debug_stop_curse_mode = false;
		break
		case 2:
			global.debug_stop_curse_mode = true;
		break
		}
		
	}
	if(global.debug_stop_curse_mode){
		stop_cursed_damage(5);
	}*/
#endregion