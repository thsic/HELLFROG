var _x = o_camera.x;
var _y = o_camera.y;


switch(state){
case Menustate.Closing://メニューが完全に閉じている

	if(keyboard_check_pressed(global.menu_key)){
		switch(global.gamestate){
		case gamestate.main:
		case gamestate.incheckpointbarrier:
		case gamestate.waitforkeyinput:
			after_menu_gamestate = global.gamestate;
			change_gamestate(gamestate.menu);
			state = Menustate.Main;
		break
		}
	}
	
break
/*case Menustate.OpenStart://開き始めた瞬間 1f

	openmenu_sequence_element = layer_sequence_create("UI", _x, _y, sq_openMenu);
	layer_sequence_play(openmenu_sequence_element);
	state = Menustate.OpenSequence;
	
break
case Menustate.OpenSequence://開くシーケンス描画中

	layer_sequence_x(openmenu_sequence_element, _x);
	layer_sequence_y(openmenu_sequence_element, _y);
	if(layer_sequence_is_finished(openmenu_sequence_element) == true){
		state = Menustate.Main;
	}	
	
break*/
case Menustate.Main://プレイヤーが操作できる メニューのいろいろ
	
	/*layer_sequence_x(openmenu_sequence_element, _x);
	layer_sequence_y(openmenu_sequence_element, _y);*/
	
	
	
	var _on_cursor_button = noone;
	var _button_name;
	_button_name[0] = ButtonName.Resume;
	_button_name[1] = ButtonName.Option;
	_button_name[2] = ButtonName.Retry;
	_button_name[3] = ButtonName.AssistMode;
	_button_name[4] = ButtonName.SaveAndQuit;
	for(var i=0; i<array_length(_button_name); i++){
		var _bw = button_param[# _button_name[i], ButtonParam.Width];
		var _bh = button_param[# _button_name[i], ButtonParam.Height];
		var _x = button_param[# _button_name[i], ButtonParam.X] - _bw/2;
		var _y = button_param[# _button_name[i], ButtonParam.Y];
		
		if(is_in_place(_x, _y, _x+_bw, _y+_bh, global.vmouse_x, global.vmouse_y)){
			var _on_cursor = true;
			_on_cursor_button = _button_name[i];
		}
		else{
			var _on_cursor = false;
		}
		button_param[# _button_name[i], ButtonParam.OnCursor] = _on_cursor;
		
	}
	
	//クリック
	var _menu_close = false;
	if(mouse_check_button_pressed(global.shotgun_button)){
		switch(_on_cursor_button){
		case ButtonName.Resume:
			var _menu_close = true;
		break
		case ButtonName.Retry:
			state = Menustate.Closing;
			gameover_script(o_player.player_direction);
		break
		case ButtonName.Option:
			state = Menustate.Option;
		break
		case ButtonName.AssistMode:
			state = Menustate.AssistMode;
		break
		case ButtonName.SaveAndQuit:
			game_restart();
		break
		case noone:
		
		break
		default:
			debug_message("Error! o_menuMgr");
		break
		}
	}
	
	//メニューを閉じる
	if(keyboard_check_pressed(global.menu_key)
	or _menu_close){
		state = Menustate.Closing;
		change_gamestate(after_menu_gamestate);
		lagging_start(10, ac_lagRatio);//メニューを閉じるときラグを発生させる
	}
	
break
case Menustate.Option:
	var _menu_close = false;
	
	
	var _on_cursor_button = noone;
	var _button_name;
	_button_name[0] = ButtonName.SEVol;
	_button_name[1] = ButtonName.BGMVol;
	_button_name[2] = ButtonName.Launguage;
	for(var i=0; i<array_length(_button_name); i++){
		var _bw = button_param[# _button_name[i], ButtonParam.Width];
		var _bh = button_param[# _button_name[i], ButtonParam.Height];
		var _x = button_param[# _button_name[i], ButtonParam.X] - _bw/2;
		var _y = button_param[# _button_name[i], ButtonParam.Y];
		
		if(is_in_place(_x, _y, _x+_bw, _y+_bh, global.vmouse_x, global.vmouse_y)){
			var _on_cursor = true;
			_on_cursor_button = _button_name[i];
		}
		else{
			var _on_cursor = false;
		}

		button_param[# _button_name[i], ButtonParam.OnCursor] = _on_cursor;
	}	
	
	
	//クリック
	
	if(mouse_check_button_pressed(global.shotgun_button)){
		if(_on_cursor_button == ButtonName.Launguage){
			var _x = button_param[# _on_cursor_button, ButtonParam.X];
			var _w = button_param[# _on_cursor_button, ButtonParam.Width];
			//言語設定
			if(global.vmouse_x < _x){
				global.launguage = Launguage.English;
			}
			else{
				global.launguage = Launguage.Japanese;
			}
		}
		else{
			//バー
			grab_bar = _on_cursor_button;
		}
		
	}
	
	//音量調節
	if(mouse_check_button(global.shotgun_button) == 0){
		grab_bar = noone;
	}
	switch(grab_bar){
	case ButtonName.SEVol:
		var _x = button_param[# grab_bar, ButtonParam.X];
		var _w = button_param[# grab_bar, ButtonParam.Width];
		var _ratio = clamp((global.vmouse_x - (_x - _w/2)) / _w, 0, 1);
		global.se_volume = floor(_ratio * 100)/100;
			
	break
	case ButtonName.BGMVol:
		var _x = button_param[# grab_bar, ButtonParam.X];
		var _w = button_param[# grab_bar, ButtonParam.Width];
		var _ratio = clamp((global.vmouse_x - (_x- _w/2)) / _w, 0, 1);
		global.bgm_volume = floor(_ratio * 100)/100;
			
	break
	case noone:
		
	break
	default:
		debug_message("Error! o_menuMgr");
	break
	}
	
	
	if(mouse_check_button_pressed(global.hook_button)){
		_menu_close = true;
	}
	
	if(keyboard_check_pressed(global.menu_key)
	or _menu_close){
		state = Menustate.Main;
	}
break
case Menustate.AssistMode:
	var _menu_close = false;
	
	var _on_cursor_button = noone;
	var _button_name;
	_button_name[0] = ButtonName.EnemyDamage;
	_button_name[1] = ButtonName.DotDamage;
	_button_name[2] = ButtonName.PlayerAttackDamage;
	_button_name[3] = ButtonName.ToggleAssistMode;
	for(var i=0; i<array_length(_button_name); i++){
		var _bw = button_param[# _button_name[i], ButtonParam.Width];
		var _bh = button_param[# _button_name[i], ButtonParam.Height];
		var _x = button_param[# _button_name[i], ButtonParam.X] - _bw/2;
		var _y = button_param[# _button_name[i], ButtonParam.Y];
		
		if(global.assist_mode == -1){
			//ヘルモードの場合つかめる範囲が広がる
			_bw += hell_mode_pixel;
			_x -= hell_mode_pixel;
		}
		
		if(is_in_place(_x, _y, _x+_bw, _y+_bh, global.vmouse_x, global.vmouse_y)){
			var _on_cursor = true;
			_on_cursor_button = _button_name[i];
		}
		else{
			var _on_cursor = false;
		}

		button_param[# _button_name[i], ButtonParam.OnCursor] = _on_cursor;
	}	
	
	function reset_assist_mode(){
		global.assist_mode = 0;
		global.enemy_damage = 1;
		global.dot_damage = 1;
		global.player_damage = 1;
		
		assist_level_enemy_damage = 0;
		assist_level_dot_damage = 0;
		assist_level_player_damage = 0;
		
		hell_enemy_damage_enable = false;
		hell_dot_damage_enable = false;
		hell_player_damage_enable = false;
		
	}
	

	function change_hell_mode_ratio(){
		var _x = button_param[# grab_bar, ButtonParam.X];
		var _w = button_param[# grab_bar, ButtonParam.Width];
		
		if(global.vmouse_x < _x - _w/2 - hell_mode_pixel/2){
			var _enable = true;
			if(global.assist_mode != -1){
				reset_assist_mode();
				global.assist_mode = -1;
			}
		}
		else{
			var _enable = false;
		}
		
		switch(grab_bar){
		case ButtonName.EnemyDamage:
			hell_enemy_damage_enable = _enable;
			
		break
		case ButtonName.DotDamage:
			hell_dot_damage_enable = _enable;
			
		break
		case ButtonName.PlayerAttackDamage:
			hell_player_damage_enable = _enable;
			
		break
		}
		
	}
	
	//クリック
	if(mouse_check_button_pressed(global.shotgun_button)){
		if(_on_cursor_button == ButtonName.ToggleAssistMode){
			switch(global.assist_mode){
			case 0:
				global.assist_mode = 1;
				
			break
			case 1:
				//通常モードに戻す
				reset_assist_mode();
				
			break
			case -1:
				//ヘルモードから通常に戻す
				reset_assist_mode();
				
			break
			}

			
		}
		else{
			//バー
			grab_bar = _on_cursor_button;
		}
		
	}
	
	if(mouse_check_button(global.shotgun_button) == 0){
		grab_bar = noone;
	}
	
	if(grab_bar != noone){
		var _x = button_param[# grab_bar, ButtonParam.X];
		var _w = button_param[# grab_bar, ButtonParam.Width];
		var _var = button_param[# grab_bar, ButtonParam.Variable];
		var _scale_number = array_length(_var)-1;
		var _one_scale_pixel_size = _w/_scale_number;
		
		var _mouse_pos = clamp(global.vmouse_x - (_x - _w/2), 0, _w);
		
		change_hell_mode_ratio();
	}
	

	if(global.assist_mode != -1){//ヘルモードのときはアシストレベルの変更ができない
		switch(grab_bar){
		case ButtonName.EnemyDamage:
			assist_level_enemy_damage = round(_mouse_pos / _one_scale_pixel_size);
		
		break
		case ButtonName.DotDamage:
			assist_level_dot_damage = round(_mouse_pos / _one_scale_pixel_size);
			
		break
		case ButtonName.PlayerAttackDamage:
			assist_level_player_damage = round(_mouse_pos / _one_scale_pixel_size);
		
		break
		case noone:
		
		break
		default:
			debug_message("Error! o_menuMgr");
		break
		}
	}
	
	if(global.assist_mode != -1){
		if(assist_level_enemy_damage == 0
		and assist_level_dot_damage == 0
		and assist_level_player_damage == 0){
			global.assist_mode = 0;
		}
		else{
			global.assist_mode = 1;
		}
	}
	else{
		if(hell_enemy_damage_enable == false
		and hell_dot_damage_enable == false
		and hell_player_damage_enable = false){
			//すべてオフのときはヘルモードから通常モードに
			reset_assist_mode();
			global.assist_mode = 0;
		}
	}
	
	
		
	global.enemy_damage = am_enemy_damage[assist_level_enemy_damage];
	global.dot_damage = am_dot_damage[assist_level_dot_damage];
	global.player_damage = am_player_damage[assist_level_player_damage];
	
	if(mouse_check_button_pressed(global.hook_button)){
		_menu_close = true;
	}
	
	if(keyboard_check_pressed(global.menu_key)
	or _menu_close){
		state = Menustate.Main;
	}
break
case Menustate.CloseStart://閉じ始める 1f
	
	closemenu_sequence_element = layer_sequence_create("UI", _x, _y, sq_closeMenu);
	layer_sequence_play(closemenu_sequence_element);
	state = Menustate.CloseSequence;
	
break
case Menustate.CloseSequence://閉じるシーケンス描画中
	
	if(layer_sequence_exists("UI", openmenu_sequence_element)){
		layer_sequence_destroy(openmenu_sequence_element);
	}
	layer_sequence_x(closemenu_sequence_element, _x);
	layer_sequence_y(closemenu_sequence_element, _y);
	if(layer_sequence_is_finished(closemenu_sequence_element) == true){
		state = Menustate.Closing;
		//change_gamestate(gamestate.main);
		layer_sequence_destroy(closemenu_sequence_element);
	}	
	
break
default:
debug_message("Error! o_menuMgr")
break
}
