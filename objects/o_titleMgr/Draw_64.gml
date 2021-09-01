
var _button_num = ds_grid_width(title_param);

switch(now_screen){
case TITLESCREEN.SETLANGUAGE:
	draw_set_alpha(1);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false);
	
	
	draw_set_alpha(1);
	draw_set_font(fo_menu);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	
	for(var i=0; i<_button_num; i++){
		if(title_param[# i, TITLEPARAM.SCREEN] == TITLESCREEN.SETLANGUAGE){
			var _x = title_param[# i, TITLEPARAM.X];	
			var _y = title_param[# i, TITLEPARAM.Y];
			var _w = title_param[# i, TITLEPARAM.WIDTH];
			var _h = title_param[# i, TITLEPARAM.HEIGHT];
			var _on_mouse = title_param[# i, TITLEPARAM.ONMOUSE];
			var _text = title_param[# i, TITLEPARAM.TEXT];
		
			if(_on_mouse){
				var _text_color = set_language_on_mouse_color;
			
			}
			else{
				var _text_color = set_language_color;
			
			}
			draw_set_color(_text_color);
			draw_text(_x, _y, _text);
		}
	}
	
	/*draw_set_font(fo_ending24);
	draw_set_color(set_language_color);
	var _logo_x = room_width/2;
	var _logo_y = room_height/5*2;
	draw_text(_logo_x, _logo_y, "Language?");*/
	
break;
case TITLESCREEN.MAIN:

	draw_set_alpha(1);
	draw_set_font(fo_menu);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	
	for(var i=0; i<_button_num; i++){
		if(title_param[# i, TITLEPARAM.SCREEN] == TITLESCREEN.MAIN){
			var _x = title_param[# i, TITLEPARAM.X];	
			var _y = title_param[# i, TITLEPARAM.Y];
			var _w = title_param[# i, TITLEPARAM.WIDTH];
			var _h = title_param[# i, TITLEPARAM.HEIGHT];
			var _texten = title_param[# i, TITLEPARAM.TEXT];
			var _textjp = title_param[# i, TITLEPARAM.TEXTJP];
			var _on_mouse = title_param[# i, TITLEPARAM.ONMOUSE];
	
			if(!_on_mouse){
				//マウス上に無い
				var _text = _texten;
				var _text_color = text_color1;
				var _button_color = noone;
			
			}
			else{
				//マウス上にある
				if(global.language == language.English){
					var _text = _texten;
				}
				else{
					var _text = _textjp;
				}
		
				var _text_color = text_color2;
				var _button_color = button_color
			}
			
			//ヘルモード
			if(global.assist_mode = -1
			and i == TITLENAME.ASSISTMODE){
				_text = "HELLMODE"
				if(_on_mouse){
					if(global.true_hell){
						_button_color = true_hellmode_color;
					}
					else{
						_button_color = hellmode_color;
					}
					
				}
			}
			//セーブデータが存在しない場合ロードゲームは灰色になる
			if(!savedata_enable
			and i = TITLENAME.LOADGAME){
				_text_color = load_disable_color;
			}
		
		
			if(_text != 0){
				if(_button_color != noone){
					var _r_h = _h;
					draw_set_color(_button_color);
					draw_rectangle(_x-_w/2, _y-_r_h/2, _x+_w/2, _y+_r_h/2, false);
				}
		
				draw_set_color(_text_color);
				draw_text(_x, _y, _text);
			}
		}
	}

	draw_set_font(fo_ending32);
	draw_set_color(logo_color);
	var _logo_x = room_width/2;
	var _logo_y = room_height/5*2;
	draw_text(_logo_x, _logo_y, "HELLFROG");
	
	//実績リスト描画
	draw_achievement_list();
	
	draw_set_default();
	
break;
case TITLESCREEN.DIFFICULTY:
	
	draw_set_alpha(1);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_valign(fa_top);
	draw_set_halign(fa_middle);
	draw_set_font(fo_maruMonica);
	draw_set_color(diff_text_onmouse_color);
	
	if(global.language == language.English){
		var _text = "Select Difficulty";
	}
	else{
		var _text = "難易度選択"
	}
	draw_text(room_width/2, 0, _text);
	
	
	for(var i=0; i<_button_num; i++){
		if(title_param[# i, TITLEPARAM.SCREEN] == TITLESCREEN.DIFFICULTY){
			var _x = title_param[# i, TITLEPARAM.X];	
			var _y = title_param[# i, TITLEPARAM.Y];
			var _w = title_param[# i, TITLEPARAM.WIDTH];
			var _h = title_param[# i, TITLEPARAM.HEIGHT];
			var _on_mouse = title_param[# i, TITLEPARAM.ONMOUSE];
			
			if(_on_mouse){
				var _text_color = diff_text_onmouse_color;
				draw_set_color(diff_screen_button_color);
				draw_rectangle(_x-_w/2, _y-_h/2, _x+_w/2, _y+_h/2, false);
			}
			else{
				//難易度で色変える
				if(i = TITLENAME.DIFF_HARD){
					var _text_color = diff_text_hard_color;
				}
				else{
					var _text_color = diff_text_color;
				}
			}
			
			var _top = _y-_h/2;
			var _left = _x-_w/2;
			
			switch(i){
			case TITLENAME.DIFF_NORMAL:
			//ノーマル
				var _text_en ={
					standard : "Standard difficulty",
				}
				var _text_jp ={
					standard : "標準的な難易度"
				}
				
				if(global.language == language.English){
					var _text = _text_en;
				}
				else{
					var _text = _text_jp;
				}
				draw_set_halign(fa_middle);
				draw_set_font(fo_maruMonica);
				draw_set_color(_text_color);
				draw_text(_x, _top, "NORMAL");
				
				draw_set_color(_text_color);
				draw_set_halign(fa_left);
				draw_text(_left, _top+16*2, _text.standard);
				
			break
			case TITLENAME.DIFF_HARD:
			//ハード
				var _text_en ={
					difficulty : "VERY HARD",
					invincibility_time : string(HARD_INVINCIBLE_TIME_RATIO*100)+"% Invincibility Time",
					dot_damage : string(HARD_DOT_DAMAGE_RATIO*100)+"% Dot Damage",
					enemy_bullet : "Enemy attacks are difficult to dodge",
					more_enemy : "More Enemies"
				}
				var _text_jp ={
					difficulty : "VERY HARD",
					invincibility_time : string(HARD_INVINCIBLE_TIME_RATIO*100)+"% 無敵時間",
					dot_damage : string(HARD_DOT_DAMAGE_RATIO*100)+"% スリップダメージ",
					enemy_bullet : "敵の攻撃は回避困難になります",
					more_enemy : "より多くの敵"
				}
				
				if(global.language == language.English){
					var _text = _text_en;
				}
				else{
					var _text = _text_jp;
				}
				
				draw_set_font(fo_maruMonica);
				
				draw_set_color(_text_color);
				draw_set_halign(fa_middle);
				draw_text(_x, _top, _text.difficulty);
				
				draw_set_color(_text_color);
				draw_set_halign(fa_left);
				draw_text(_left, _top+16*2, _text.invincibility_time);
				draw_text(_left, _top+16*3, _text.dot_damage);
				draw_text(_left, _top+16*4, _text.enemy_bullet);
				draw_text(_left, _top+16*5, _text.more_enemy);
				
				
			break
			default:
			
			break
			}
		}
	}
	draw_set_default();
	
break;
}

