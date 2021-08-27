
//

function menu_background_clear(){
	draw_set_color(c_black);
	if(room != r_title){
		draw_set_alpha(0.5);
	}
	else{
		draw_set_alpha(0.8);
	}
	
	draw_rectangle(0, 0, global.camera_width, global.camera_height, false);
	
	draw_set_default();
}

function shake_text(_ratio, _pixel){
	//ブレさせる
	var _add = 0;
	repeat(3){
		if(random(1) < _ratio){
			_add += irandom_range(-_pixel, _pixel);
		}
		else{
			break;
		}
	}
	return _add;
}

switch(state){
case Menustate.Closing:

break
case Menustate.Main:
	
	menu_background_clear();
	draw_set_halign(fa_middle);
	draw_set_font(fo_menu)
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	if(global.language == language.English){
		var _text_mode = ButtonParam.TextEn
	}
	else{
		var _text_mode = ButtonParam.TextJp;
	}
	
	var _button_name;
	_button_name[0] = ButtonName.Resume;
	_button_name[1] = ButtonName.Option;
	_button_name[2] = ButtonName.Retry;
	_button_name[3] = ButtonName.AssistMode;
	_button_name[4] = ButtonName.SaveAndQuit;
	
	//ボタン
	for(var i=0; i<array_length(_button_name); i++){
		
		var _text_y = button_param[# _button_name[i], ButtonParam.Y];
		
		//日本語表示でもマウスオーバーしてない時は英語で表示
		if(button_param[# _button_name[i], ButtonParam.OnCursor]){
			var _text = button_param[# _button_name[i], _text_mode];
		}
		else{
			var _text = button_param[# _button_name[i], ButtonParam.TextEn];
		}
		
		if(_button_name[i] == ButtonName.AssistMode
		and global.assist_mode == -1){
			var _hell_mode = true;
			if(global.language == language.English){//ヘルモードなら"ヘルモード"と表示させる
				_text = menu_hell_button_text_en;
			}
			else{
				_text = menu_hell_button_text_jp;

			}
		}
		else{
			var _hell_mode = false;
		}
		
		if(button_param[# _button_name[i], ButtonParam.OnCursor]){
			if(!_hell_mode){
				var _add = shake_text(0.1, 2);
				var _color = text_oncursor_color;
			}
			else{
				var _add = shake_text(0.2, 7);
				var _color = text_oncursor_color;
				
			}
			var _text_x = global.camera_width/2 + _add;
			
		}
		else{
			if(!_hell_mode){
				var _color = text_color;
			}
			else{
				//truehellならメニュー画面の色も変わる
				if(global.true_hell){
					var _color = true_hell_color;
				}
				else{
					var _color = hell_mode_menu_text_color;
				}
				
			}
			var _text_x = global.camera_width/2
		}
		
		draw_set_color(_color);

		
		
		
		draw_text(_text_x, _text_y, _text);
	}
	
	//上のでか文字
	var _x = global.camera_width/2
	draw_set_color(bigtext_color);
	draw_set_font(fo_menuBig);
	draw_text(_x, global.camera_height / 12, "PAUSE");
	
	draw_set_default();
break
case Menustate.Option:
	//オプション画面
	
	menu_background_clear();
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_set_font(fo_menu)
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	if(global.language == language.English){
		var _text_mode = ButtonParam.TextEn
	}
	else{
		var _text_mode = ButtonParam.TextJp;
	}
	
	
	var _button_name;
	_button_name[0] = ButtonName.SEVol;
	_button_name[1] = ButtonName.BGMVol;
	_button_name[2] = ButtonName.language;
	
	
	//バー
	for(var i=0; i<2; i++){
		var _w = button_param[# _button_name[i], ButtonParam.Width];
		var _h = button_param[# _button_name[i], ButtonParam.Height];
		var _x = button_param[# _button_name[i], ButtonParam.X] - _w/2;
		var _y = button_param[# _button_name[i], ButtonParam.Y];
		
		
		draw_set_color(option_bar_outline);
		//draw_rectangle(_x, _y, _x+_w, _y+_h, true);
		
		if(_button_name[i] == ButtonName.SEVol){
			var _ratio = global.se_volume;
		}
		else{
			var _ratio = global.bgm_volume;
		}
		
		
		draw_set_color(option_bar_color);
		draw_rectangle(_x+1, _y+1, _x+((_w-2)*_ratio), _y+_h-2, false);
		
		draw_set_valign(fa_middle);
		draw_set_color(text_color);
		draw_set_halign(fa_right);
		draw_text(_x-24, _y+_h/2, button_param[# _button_name[i], _text_mode]);
		
		var _volume = round(_ratio*100);
		draw_set_halign(fa_left);
		draw_text(_x+_w, _y+_h/2, _volume);
	}
	
	//言語
	draw_set_halign(fa_middle);
	draw_set_valign(fa_top);
	if(global.language == language.English){
		var _eng_color = text_oncursor_color;
		var _jpn_color = text_color;
	}
	else{
		var _eng_color = text_color;
		var _jpn_color = text_oncursor_color;
	}
	
	var _w = button_param[# ButtonName.language, ButtonParam.Width];
	var _h = button_param[# ButtonName.language, ButtonParam.Height];
	var _x = button_param[# ButtonName.language, ButtonParam.X];
	var _y = button_param[# ButtonName.language, ButtonParam.Y];
	
	var _eng_x = _x - _w/4;
	var _jpn_x = _x + _w/4;
	
	//マウスオーバー時色変える
	if(button_param[# ButtonName.language, ButtonParam.OnCursor]){
		if(global.vmouse_x < _x){
			var _eng_color = text_oncursor_color;
		}
		else{
			var _jpn_color = text_oncursor_color;
		}
	}

	
	draw_set_color(_eng_color);
	draw_text(_eng_x, _y, "ENGLISH");
	
	draw_set_color(_jpn_color);
	draw_text(_jpn_x, _y, "日本語");
	
	draw_set_halign(fa_middle);
	draw_set_color(text_color);
	draw_text(_x, _y - _h, button_param[# ButtonName.language, _text_mode]);
	
	
	
	//タイマー
	if(global.timer_enable = true){
		var _timer_on_color = text_oncursor_color;
		var _timer_off_color = text_color;
	}
	else{
		var _timer_on_color = text_color;
		var _timer_off_color = text_oncursor_color;
	}
	
	
	var _w = button_param[# ButtonName.Timer, ButtonParam.Width];
	var _h = button_param[# ButtonName.Timer, ButtonParam.Height];
	var _x = button_param[# ButtonName.Timer, ButtonParam.X];
	var _y = button_param[# ButtonName.Timer, ButtonParam.Y];
	
	
	var _timer_on_x = _x - _w/4;
	var _timer_off_x = _x + _w/4;
	
	if(button_param[# ButtonName.Timer, ButtonParam.OnCursor]){
		if(global.vmouse_x < _x){
			var _timer_on_color = text_oncursor_color;
		}
		else{
			var _timer_off_color = text_oncursor_color;
		}
	}
	
	
	draw_set_color(_timer_on_color);
	draw_text(_timer_on_x, _y, "ON");
	
	draw_set_color(_timer_off_color);
	draw_text(_timer_off_x, _y, "OFF");
	
	draw_set_halign(fa_middle);
	draw_set_color(text_color);
	draw_text(_x, _y - _h, button_param[# ButtonName.Timer, _text_mode]);
	
	
	draw_set_default();
break
case Menustate.AssistMode:
	
	if(global.assist_mode == 0){
		draw_set_alpha(0.3);
	}
	else{
		draw_set_alpha(1);//アシストモードかヘルモードなら薄くしない
	}
	
	if(global.language == language.English){
		var _text_mode = ButtonParam.TextEn
	}
	else{
		var _text_mode = ButtonParam.TextJp;
	}
	
	menu_background_clear();
	if(global.assist_mode != -1){
		//通常
		var _assist_bar_color_under = assist_mode_bar_color_under;
	}
	else{
		//ヘルモード
		var _assist_bar_color_under = assist_mode_disable_bar_color;
		
	}
	draw_set_alpha(1);
	draw_set_font(fo_assistMode);
	
	var _button_name;
	_button_name[0] = ButtonName.EnemyDamage;
	_button_name[1] = ButtonName.DotDamage;
	_button_name[2] = ButtonName.PlayerAttackDamage;
	_button_name[3] = ButtonName.ToggleAssistMode;
	
	var _assist_level;
	_assist_level[0] = global.assist_level_enemy_damage;
	_assist_level[1] = global.assist_level_dot_damage;
	_assist_level[2] = global.assist_level_player_damage;
	
	var _hell_enable;
	_hell_enable[0] = global.hell_enemy_damage_enable;
	_hell_enable[1] = global.hell_dot_damage_enable;
	_hell_enable[2] = global.hell_player_damage_enable;
	
	var _hell_ratio;
	_hell_ratio[0] = HELL_ENEMY_DAMAGE_RATIO;
	_hell_ratio[1] = HELL_DOT_DAMAGE_RATIO;
	_hell_ratio[2] = HELL_PLAYER_DAMAGE_RATIO;
	
	for(var i=0; i<3; i++){
		draw_set_alpha(1);
		var _w = button_param[# _button_name[i], ButtonParam.Width];
		var _h = button_param[# _button_name[i], ButtonParam.Height];
		var _x = button_param[# _button_name[i], ButtonParam.X] - _w/2;
		var _y = button_param[# _button_name[i], ButtonParam.Y] + _h/2;
		var _var = button_param[# _button_name[i], ButtonParam.Variable];
		var _text = button_param[# _button_name[i], _text_mode];
		var _bar_h = _h/16;
		
		draw_set_color(_assist_bar_color_under);
		draw_rectangle(_x, _y-_bar_h/2, _x+_w, _y+_bar_h/2, false);
		
		
		var _scale_number = array_length(_var);
		var _one_scale_pixel_size = _w/(_scale_number-1);
		
		if(_assist_level[i] > 0){//アシストレベルが0のときは描画しない
			if(_assist_level[i] = 3){//アシストレベルが最大の時は色が変わる
				draw_set_color(assist_mode_max_level_color);
			}
			else{
				draw_set_color(assist_mode_bar_color_top);
			}
			
			draw_rectangle(_x, _y-_bar_h/2, _x+_one_scale_pixel_size*_assist_level[i], _y+_bar_h/2, false);
		}
		
		draw_set_halign(fa_middle);
		draw_set_valign(fa_bottom);
		
		//目盛り描画
		var _scale_y = _y - _bar_h/2;
		var _scale_x, _scale_value, _scale_string;
		
		for(var j=0; j<_scale_number; j++){
			_scale_x = _x + _one_scale_pixel_size * j;
			_scale_value = _var[j];
			
			//小数点第二位が0の場合は小数点第二位を隠す
			if(_scale_value * 100 mod 10 != 0){
				_scale_string = string_format(_scale_value, 1, 2);
			}
			else{
				_scale_string = string_format(_scale_value, 1, 1);
			}
			
			//現在のレベルのとこハイライト
			if(_assist_level[i] == j){
				if(j == 0){
					draw_set_color(assist_mode_scale_color);
				}
				else{
					if(_assist_level[i] = 3){
						draw_set_color(assist_mode_max_level_color);
					}
					else{
						draw_set_color(assist_mode_enable_text_color);
					}
					
				}
			}
			else{
				draw_set_color(assist_mode_disable_text_color);
				
				
				
			}
			
			//ヘルモードのときはアシストバーは暗くする、ただしヘルレベルが上がってないやつはx1.0のとこにハイライト
			if(global.assist_mode == -1){
				if(!_hell_enable[i]
				and j == 0){
					draw_set_color(assist_mode_scale_color);//ハイライト
				}
				else{
					draw_set_color(assist_mode_disable_text_color);//ヘルレベルが上がってるので暗くする
				}
				
			}
			
			draw_text(_scale_x, _scale_y, "x" + string(_scale_string));
		}
		
		//文字
		var _scale_text_height = string_height(_scale_string);
		
		draw_set_halign(fa_left);
		draw_set_valign(fa_bottom);
		draw_set_alpha(1);
		var _text_y = _y - _scale_text_height - 2;
		
		//ヘルモードだと色と配置がかわる
		if(global.assist_mode != -1){
			var _text_x = _x;
			draw_set_color(assist_mode_text_color);
		
		}
		else{
			var _text_x = _x - hell_mode_pixel;
			draw_set_color(text_color);
		}
		
		draw_text(_text_x, _text_y, _text);
		
		
		
		//ヘルモード描画
		if(global.assist_mode == -1){
			draw_set_alpha(1);
			var _hell_bar_x = _x - hell_mode_pixel;
			
			draw_set_color(hell_mode_bar_color_under);
			draw_rectangle(_hell_bar_x, _y-_bar_h/2, _x, _y+_bar_h/2, false);
			
			if(_hell_enable[i]){
				draw_set_color(hell_mode_bar_color_top);
				draw_rectangle(_hell_bar_x, _y-_bar_h/2, _x, _y+_bar_h/2, false);
			}
			
			//めもり
			
			draw_set_halign(fa_middle);
			draw_set_valign(fa_bottom);
			
			//小数点第二位が0の場合は小数点第二位を隠す
			if(_hell_ratio[i] * 100 mod 10 != 0){
				var _hell_string = string_format(_hell_ratio[i], 1, 2);
			}
			else{
				var _hell_string = string_format(_hell_ratio[i], 1, 1);
			}
			
			if(_hell_enable[i]){
				draw_set_color(hell_mode_scale_color);
			}
			else{
				draw_set_color(assist_mode_disable_text_color);
			}
			
			draw_text(_hell_bar_x, _y - _bar_h/2, "x"+string(_hell_string));
		}
		else{
			//ヘルモードじゃないときは薄くバーを描画
			draw_set_alpha(0.07);
			var _hell_bar_x = _x - hell_mode_pixel;
			
			draw_set_color(hell_mode_bar_color_under);
			draw_rectangle(_hell_bar_x, _y-_bar_h/2, _x, _y+_bar_h/2, false);
		}
	}
	
	draw_set_alpha(1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	switch(global.assist_mode){
	case 0:
		var _color = assist_mode_text_color;
	break
	case 1:
		if(global.assist_level_max){
			var _color = assist_mode_max_level_color;
		}
		else{
			var _color = assist_mode_bar_color_top;	
		}
	
	break
	case -1:
		if(global.true_hell){
			var _color = true_hell_color;
		}
		else{
			var _color = text_color;
		}
		
	break
	}

	
	draw_set_color(_color);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	draw_set_alpha(1);
	var _x = button_param[# ButtonName.ToggleAssistMode, ButtonParam.X];
	var _y = button_param[# ButtonName.ToggleAssistMode, ButtonParam.Y];
	var _h = button_param[# ButtonName.ToggleAssistMode, ButtonParam.Height];
	var _text = button_param[# ButtonName.ToggleAssistMode, _text_mode];
	var _text_y = _y+_h/2;
	switch(global.assist_mode){
	case 0:
		_text += " OFF";
	break
	case 1:
		_text += " ON";
	break
	case -1:
		_text = "HELL MODE"
		draw_set_font(fo_menuBig);
		draw_set_valign(fa_top);
		var _text_y = _y-16;
	break
	}
	draw_text(_x, _text_y, _text);
	
	if(global.assist_level_max){
		var _x = button_param[# ButtonName.MaxLevelText, ButtonParam.X];
		var _y = button_param[# ButtonName.MaxLevelText, ButtonParam.Y];
		var _h = button_param[# ButtonName.MaxLevelText, ButtonParam.Height];
		var _text = button_param[# ButtonName.MaxLevelText, _text_mode];
		var _text_y = _y+_h/2;
		
		var _color = assist_mode_max_level_text_color;
		draw_set_font(fo_assistMode);
		draw_set_halign(fa_middle);
		draw_set_valign(fa_middle);
		draw_set_color(_color);
		
		draw_text(_x, _text_y, _text);
	}
	
	
	draw_set_default();
break
case Menustate.SaveAndQuit:
	
break
case Menustate.CloseStart:

break
default:
	debug_message("Error! o_menuMgr");
break
}