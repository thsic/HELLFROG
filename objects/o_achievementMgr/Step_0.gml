
var _get_achievement_list = array_create(0);
var _achievement_num = ds_grid_width(global.achievement_param);

if(instance_exists(o_gameMgr)
and !global.gamestop){
	//実績取得不可にする処理
	
	//ヘルモードでクリア
	if(global.achievement_param[# ACHIEVEMENT_NAME.CLEAR_HELLMODE, ACHIEVEMENT_PARAM.GETTABLE] == true
	and global.assist_mode != -1){
		global.achievement_param[# ACHIEVEMENT_NAME.CLEAR_HELLMODE, ACHIEVEMENT_PARAM.GETTABLE] = false;
	}
	
	//トゥルーヘル
	if(global.achievement_param[# ACHIEVEMENT_NAME.ALLCLEAR_TRUEHELLMODE, ACHIEVEMENT_PARAM.GETTABLE] == true){
		if(global.assist_mode != -1
		or global.true_hell == false
		or global.difficulty != Difficulty.VeryHard){
			global.achievement_param[# ACHIEVEMENT_NAME.CLEAR_HELLMODE, ACHIEVEMENT_PARAM.GETTABLE] = false;
		}
	}
	
	//移動キー押さずにクリア
	var _up = keyboard_check(global.up_key);
	var _down = keyboard_check(global.down_key);
	var _left = keyboard_check(global.left_key);
	var _right = keyboard_check(global.right_key);	

	if(global.achievement_param[# ACHIEVEMENT_NAME.CLEAR_NO_MOVEKEY, ACHIEVEMENT_PARAM.GETTABLE] == true){
		if(_up or _down or _left or _right){
			global.achievement_param[# ACHIEVEMENT_NAME.CLEAR_NO_MOVEKEY, ACHIEVEMENT_PARAM.GETTABLE] = false;
		}
	}
}


for(var i=0; i<_achievement_num; i++){
	
	//取得可能で、取得済みでない
	if(global.achievement_param[# i, ACHIEVEMENT_PARAM.GETTABLE]
	and global.achievement_param[# i, ACHIEVEMENT_PARAM.ACQUIRED] == false){
		switch(i){
		case ACHIEVEMENT_NAME.REACH_HELLCAVE:
			if(room == r_stage1){
				array_push(_get_achievement_list, i);
			}
		break
		case ACHIEVEMENT_NAME.REACH_HELLFOREST:
			if(global.now_stage_param[STAGEPARAM.STAGETYPE] == STAGETYPE.HELLFOREST){
				array_push(_get_achievement_list, i);
			}
		break
		case ACHIEVEMENT_NAME.REACH_HELLLAKE:
			if(global.now_stage_param[STAGEPARAM.STAGETYPE] == STAGETYPE.HELLLAKE){
				array_push(_get_achievement_list, i);
			}
		break
		case ACHIEVEMENT_NAME.REACH_HELLMOUNTAIN:
			if(global.now_stage_param[STAGEPARAM.STAGETYPE] == STAGETYPE.HELLMOUNTAIN){
				array_push(_get_achievement_list, i);
			}
		break
		case ACHIEVEMENT_NAME.REACH_ALTAR:
			if(global.now_stage_param[STAGEPARAM.STAGETYPE] == STAGETYPE.ALTAR){
				array_push(_get_achievement_list, i);
			}
		break
		case ACHIEVEMENT_NAME.CLEAR_NORMAL:
			if(global.now_stage_param[STAGEPARAM.STAGETYPE] == STAGETYPE.VOID
			and instance_exists(o_clearGameScene)){
				global.achievement_param[# ACHIEVEMENT_NAME.CLEAR_NO_MOVEKEY, ACHIEVEMENT_PARAM.DRAWDESCRIPTION] = true;
				array_push(_get_achievement_list, i);
			}
		break
		case ACHIEVEMENT_NAME.CLEAR_VERYHARD:
			if(global.now_stage_param[STAGEPARAM.STAGETYPE] == STAGETYPE.VOID
			and instance_exists(o_clearGameScene)
			and global.difficulty == Difficulty.VeryHard){
				array_push(_get_achievement_list, i);
			}
		break
		case ACHIEVEMENT_NAME.FIND_HELLMODE:
			if(global.assist_mode == -1){
				global.achievement_param[# ACHIEVEMENT_NAME.CLEAR_HELLMODE, ACHIEVEMENT_PARAM.DRAWDESCRIPTION] = true;
				global.achievement_param[# ACHIEVEMENT_NAME.ALLCLEAR_TRUEHELLMODE, ACHIEVEMENT_PARAM.DRAWDESCRIPTION] = true;
				array_push(_get_achievement_list, i);
			}
		break
		case ACHIEVEMENT_NAME.CLEAR_HELLMODE:
			if(global.now_stage_param[STAGEPARAM.STAGETYPE] == STAGETYPE.VOID
			and instance_exists(o_clearGameScene)
			and global.assist_mode == -1){
				array_push(_get_achievement_list, i);
			}
		break
		case ACHIEVEMENT_NAME.ALLCLEAR_TRUEHELLMODE:
			if(global.now_stage_param[STAGEPARAM.STAGETYPE] == STAGETYPE.VOID
			and instance_exists(o_clearGameScene)
			and global.assist_mode == -1
			and global.true_hell){
				array_push(_get_achievement_list, i);
			}
		break
		case ACHIEVEMENT_NAME.CLEAR_NO_MOVEKEY:
			if(global.now_stage_param[STAGEPARAM.STAGETYPE] == STAGETYPE.VOID
			and instance_exists(o_clearGameScene)){
				array_push(_get_achievement_list, i);
			}
		break
		case ACHIEVEMENT_NAME.GET_ALL_ACHIEVEMENT:
		
			//ゲーム全体で取得可能な実績の数の取得
			var _other_achievement_acquired = true;
			for(var j=0; j<_achievement_num; j++){
				if(global.achievement_param[# j, ACHIEVEMENT_PARAM.ENABLE]){
					if(!global.achievement_param[# j, ACHIEVEMENT_PARAM.ACQUIRED]){
						//取得可能な実績を取得していない場合はfalse
						var _other_achievement_acquired = false;
					}
				}
			}
			
			if(_other_achievement_acquired){
				array_push(_get_achievement_list, i);
			}
		
		break
		default:
		
		break
		}
	}
}


var _length = array_length(_get_achievement_list);
for(var i=0; i<_length; i++){
	//実績の取得
	var _achievement = array_pop(_get_achievement_list);
	global.achievement_param[# _achievement, ACHIEVEMENT_PARAM.ACQUIRED] = true;
	global.achievement_param[# _achievement, ACHIEVEMENT_PARAM.DRAWDESCRIPTION] = true;
	
	var _array_length = array_length(draw_achievement_window_queue);
	for(var i=0; i<_array_length; i++){
		if(draw_achievement_window_queue[i] == noone){
			draw_achievement_window_queue[i] = _achievement;
			achievement_window_time = achievement_window_time_base;
			break;
		}
	}
	
	//セーブ
	save_achievement();
}

now_draw_achievement_window = noone;

//実績取得ウィンドウの描画
var _length = array_length(draw_achievement_window_queue);

if(draw_achievement_window_queue[0] != noone){
	now_draw_achievement_window = draw_achievement_window_queue[0];
	
	if(achievement_window_time <= 0){
		//キューから削除
		for(var i=0; i<_length; i++){
			if(i > 0){
				draw_achievement_window_queue[i-1] = draw_achievement_window_queue[i];
			}
			draw_achievement_window_queue[i] = noone;
		}
		achievement_window_time = achievement_window_time_base;
	}
	else{
		achievement_window_time--;
	}
}

//アシストモードをレベルmaxにした場合実績取得不可に
if(global.assist_level_max
and !global.gamestop){
	global.used_super_assistmode = true;
	var _length = ds_grid_width(global.achievement_param);
	
	for(var i=0; i<_length; i++){
		if(global.achievement_param[# i, ACHIEVEMENT_PARAM.ENABLE]){
			global.achievement_param[# i, ACHIEVEMENT_PARAM.GETTABLE] = false;
		}
	}
}


//初期化
if(room == r_boot){
	for(var i=0; i<_achievement_num; i++){
		global.achievement_param[# i, ACHIEVEMENT_PARAM.GETTABLE] = true;
	}
}

