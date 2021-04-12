function player_move(){
	//移動関連

	var _key_direction = player_move_direction_acquisition()//押してるキーからの移動方向取得 キーが押されていないと-1が出力される
	var _player_speed = PLAYER_SPEED_DEFAULT;
	if(_key_direction = -1){
		var _player_speed = 0;
	}

	var _finally_direction = 0;
	var _finally_speed = 0;
	var _walking = false;
	
	if(now_knockback_type != noone){
		var _cant_move_time = ds_grid_get(global.ds_player_knockback, now_knockback_type, eK_param.CantActionTime);
	}

	//デバッグ用------------
	debug_intermediate_point_x = lengthdir_x(inertia_speed, inertia_direction);
	debug_intermediate_point_y = lengthdir_y(inertia_speed, inertia_direction);
	//---------------------


	//if(check_knockback_opposite_key == true){//慣性中に
		//inertia_enable = false;
	//}

	if(inertia_enable == true){//慣性中なら速度の合成
	
		//キーが押されていて、ノックバックしてから一定時間以上経っている or ノックバックと逆方向のキーが押されている
		var _synthesis_enable = false;
		if(_key_direction != -1){
			var _opposite_key_check = keyboard_check(player_get_knockback_opposite_direction_key())
			if(knockback_time >= _cant_move_time or _opposite_key_check){
				_synthesis_enable = true
			}
		}
	
		//-------------------------
	
		var _pressed_opposite_key = knockback_opposite_key_check_pressed()//ノックバックと逆方向のキーが押されてから一定フレーム以内かどうか
	
		if(_synthesis_enable){
			//速度と方角合成
			_finally_speed = player_move_speed_synthesis(_player_speed, _key_direction, inertia_speed, inertia_direction, _pressed_opposite_key);
			_finally_direction = player_move_direction_synthesis(_player_speed, _key_direction, inertia_speed, inertia_direction, _pressed_opposite_key);
		}
		else{//キーが押されていない
			_finally_speed = inertia_speed;
			_finally_direction = inertia_direction;
		}
		//慣性へ代入
		inertia_direction = _finally_direction;
		inertia_speed = _finally_speed;
		player_inertia_decay();
	

	}
	else{//ノックバック中じゃないなら速度の合成をしない
		if(_key_direction != -1){//キー押されてる
			_finally_direction = _key_direction;
			if(global.slow_enable){
				_player_speed *= 0.25;
			}
			_finally_speed = _player_speed;
			_walking = true;
			//sdm("keymove")
		}
		else{//押されてない
			_finally_direction = player_direction;
			_finally_speed = 0;
			//sdm("stop")
		}
	
	}

	if(hook_state = hookState.Shrink){
		//フックで移動中はすべての慣性とキー入力を無視する
		_finally_direction = hook_direction;
	
		//加速度
		shrink_speed += ds_grid_get(global.ds_player_hook, now_hook, eHK_param.ShrinkAcceleration);
		if(shrink_speed > ds_grid_get(global.ds_player_hook, now_hook, eHK_param.ShrinkSpeedMax)){
			shrink_speed = ds_grid_get(global.ds_player_hook, now_hook, eHK_param.ShrinkSpeedMax)
		}
		_finally_speed = shrink_speed;
	}
	
	//あるき続けているとwalk_timeが上昇
	if(_walking){
		walk_time++
	}
	else{
		walk_time = 0;
	}
	
	//debug---------------
	debug_draw_synspd = _finally_speed;
	debug_draw_movespd = _player_speed;
	debug_draw_direction = _finally_direction;
	//--------------------

	player_move_execution(_finally_direction, inertia_enable, _finally_speed);//移動の実行

}
