
//
switch(state){
case Menustate.Closing:

break
case Menustate.Main:
	
	draw_set_halign(fa_middle);
	draw_set_font(fo_menu)
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	var _button_name;
	_button_name[0] = ButtonName.Resume;
	_button_name[1] = ButtonName.Option;
	_button_name[2] = ButtonName.Retry;
	_button_name[3] = ButtonName.AssistMode;
	_button_name[4] = ButtonName.SaveAndQuit;
	
	//ボタン
	for(var i=0; i<array_length(_button_name); i++){
		if(button_param[# _button_name[i], ButtonParam.OnCursor]){
			//ブレさせる
			var _add = 0;
			repeat(3){
				if(random(1) < 0.1){
					_add += irandom_range(-2, 2);
				}
				else{
					break;
				}
			}
			var _x = global.camera_width/2 + _add;
			var _color = text_oncursor_color;
		}
		else{
			
			var _x = global.camera_width/2
			var _color = text_color;
		}
		draw_set_color(_color);
		
		draw_text(_x, button_param[# _button_name[i], ButtonParam.Y], button_param[# _button_name[i], ButtonParam.Text]);
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
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_set_font(fo_menu)
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	
	var _button_name;
	_button_name[0] = ButtonName.SEVol;
	_button_name[1] = ButtonName.BGMVol;
	_button_name[2] = ButtonName.Launguage;
	
	
	//バー
	for(var i=0; i<2; i++){
		var _w = button_param[# _button_name[i], ButtonParam.Width];
		var _h = button_param[# _button_name[i], ButtonParam.Height];
		var _x = button_param[# _button_name[i], ButtonParam.X] - _w/2;
		var _y = button_param[# _button_name[i], ButtonParam.Y];
		
		
		draw_set_color(option_bar_outline);
		draw_rectangle(_x, _y, _x+_w, _y+_h, true);
		
		if(_button_name[i] == ButtonName.SEVol){
			var _ratio = global.se_volume;
		}
		else{
			var _ratio = global.bgm_volume;
		}
		
		
		draw_set_color(option_bar_color);
		draw_rectangle(_x+1, _y+1, _x+((_w-2)*_ratio), _y+_h-2, false);
		
		draw_set_color(text_color);
		draw_text(_x-24, _y+_h, button_param[# _button_name[i], ButtonParam.Text]);
	}
	
	//言語
	draw_set_halign(fa_middle);
	draw_set_valign(fa_top);
	if(global.launguage == Launguage.English){
		var _eng_color = text_oncursor_color;
		var _jpn_color = text_color;
	}
	else{
		var _eng_color = text_color;
		var _jpn_color = text_oncursor_color;
	}
	var _w = button_param[# ButtonName.Launguage, ButtonParam.Width];
	var _h = button_param[# ButtonName.Launguage, ButtonParam.Height];
	var _x = button_param[# ButtonName.Launguage, ButtonParam.X];
	var _y = button_param[# ButtonName.Launguage, ButtonParam.Y];
	
	var _eng_x = _x - _w/4;
	var _jpn_x = _x + _w/4;
	
	draw_set_color(_eng_color);
	draw_text(_eng_x, _y, "ENGLISH");
	
	draw_set_color(_jpn_color);
	draw_text(_jpn_x, _y, "日本語");
	
	
	draw_set_halign(fa_middle);
	draw_set_color(text_color);
	draw_text(_x, _y - _h, button_param[# ButtonName.Launguage, ButtonParam.Text]);
	
	draw_set_default();
break
case Menustate.AssistMode:
	
break
case Menustate.SaveAndQuit:
	
break
default:
	debug_message("Error! o_menuMgr");
break
}