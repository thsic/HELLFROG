
global.game_time++;
global.gamestop = true;

global.vmouse_x = mouse_x;
global.vmouse_y = mouse_y;
	
function title_put_onmouse_param(_screen){
	if(pressed_button = -1){
		var _button_num = ds_grid_width(title_param);
		on_mouse_button = -1;

		for(var i=0; i<_button_num; i++){
			if(title_param[# i, TITLEPARAM.SCREEN] == _screen){
				var _x = title_param[# i, TITLEPARAM.X];
				var _y = title_param[# i, TITLEPARAM.Y];
				var _w = title_param[# i, TITLEPARAM.WIDTH];
				var _h = title_param[# i, TITLEPARAM.HEIGHT];
			
	
				if(is_in_place(_x-_w/2, _y-_h/2, _x+_w/2, _y+_h/2, mouse_x, mouse_y)){
					title_param[# i, TITLEPARAM.ONMOUSE] = true;
					on_mouse_button = i;
				}
				else{
					title_param[# i, TITLEPARAM.ONMOUSE] = false;
				}
			}
		}
	}
}

switch(now_screen){
case TITLESCREEN.SETLANGUAGE:
	title_put_onmouse_param(TITLESCREEN.SETLANGUAGE);
	
	if(mouse_check_button(global.shotgun_button)
	and on_mouse_button != -1){
		pressed_button = on_mouse_button;
		now_screen = TITLESCREEN.MAIN;
		save_config();
	}
	
	switch(pressed_button){
	case TITLENAME.LANGUAGE_EN:
		global.language_setting_done = true;
		global.language = language.English;
		pressed_button = -1;
	break
	case TITLENAME.LANGUAGE_JP:
		global.language_setting_done = true;
		global.language = language.Japanese;
		pressed_button = -1;
	break
	}
	
break
case TITLESCREEN.MAIN:
	//ボタン設定
	
	title_put_onmouse_param(TITLESCREEN.MAIN);

	if(mouse_check_button_pressed(global.shotgun_button)){
		switch(on_mouse_button){
		case TITLENAME.GAMESTART:
			pressed_button = TITLENAME.GAMESTART;
			fade_time = 0;
		break
		case TITLENAME.LOADGAME:
			if(savedata_enable){
				pressed_button = TITLENAME.LOADGAME;
				fade_time = 0;
			}
		break
		case TITLENAME.OPTION:
			now_screen = TITLESCREEN.OPTION;
			o_menuMgr.state = Menustate.Option;
			fade_time = 0;
		break
		case TITLENAME.ASSISTMODE:
			now_screen = TITLESCREEN.ASSISTMODE;
			o_menuMgr.state = Menustate.AssistMode;
			fade_time = 0;
		break
		case TITLENAME.EXITGAME:
			game_end();
		break
		default:
		
		break
		}
		
		//音鳴らす
		if(on_mouse_button != -1){
			se_play(a_buttonClick, 0.7, 1);
		}
	}

	switch(pressed_button){
	case TITLENAME.GAMESTART:
		now_screen = TITLESCREEN.DIFFICULTY;
		pressed_button = -1;
	
	break
	case TITLENAME.LOADGAME:
		if(fadein_time <= 0){
			load_game(true);
		}
		else{
			fadein_time--;
			if(!bgm_fadeout_enable){
				bgm_fadeout_enable = true;
				audio_sound_gain(global.now_bgm, 0, 1000);
			}
			
		}
	break
	}
	
	
	if(fade_time > 0){
		fade_time--;
	}
	
	//deleteキー+A or C or Gでそれぞれデータ削除
	if(keyboard_check(vk_delete)){
		if(keyboard_check(ord("A"))
		and file_exists("achievements")){
			file_delete("achievements");
			se_play(a_damaged, 95, 1);
		}
		if(keyboard_check(ord("G"))
		and file_exists("save")){
			file_delete("save");
			se_play(a_damaged, 95, 1);
		}
		if(keyboard_check(ord("C"))
		and file_exists("config")){
			file_delete("config");
			se_play(a_damaged, 95, 1);
		}
	}
break
case TITLESCREEN.DIFFICULTY:
//難易度選択画面
	title_put_onmouse_param(TITLESCREEN.DIFFICULTY);
	
	if(mouse_check_button_pressed(global.shotgun_button)
	and on_mouse_button != -1){
		pressed_button = on_mouse_button;
		se_play(a_buttonClick, 0.7, 1);
	}
	
	switch(pressed_button){
	case TITLENAME.DIFF_HARD:
		global.difficulty = Difficulty.VeryHard;
		
	break
	case TITLENAME.DIFF_NORMAL:
		global.difficulty = Difficulty.Normal;
	break
	default:
		//戻るキーおされたら戻る
		if(keyboard_check_pressed(global.menu_key)
		or mouse_check_button_pressed(global.hook_button)
		or keyboard_check_pressed(global.hook_button_keyboard)
		or keyboard_check_pressed(global.hook_button_keyboard2)){
			now_screen = TITLESCREEN.MAIN;
			se_play(a_cancel, 0.7, 1);
		}
	break
	}
	
	if(pressed_button != -1){
		if(fadein_time <= 0){
			start_game();
			//startgameの場合はbgmはそのまま
			/*if(!bgm_fadeout_enable){
				bgm_fadeout_enable = true;
				audio_sound_gain(global.now_bgm, 0, 1000);
			}*/
		}
		else{
			fadein_time--;
		}
	}
	
	

break
case TITLESCREEN.OPTION:
	if(o_menuMgr.state != Menustate.Option){
		now_screen = TITLESCREEN.MAIN;
	}
break
case TITLESCREEN.ASSISTMODE:
	if(o_menuMgr.state != Menustate.AssistMode){
		now_screen = TITLESCREEN.MAIN;
	}
break
}

var _rnd = random(1);
var _num = 25;

if(_rnd < 0.5){
	repeat(_num){
		var _x = irandom_range(0, room_width);
		part_particles_create(pt_sys, _x, room_height+16, pt_type, 1);
	}
}
