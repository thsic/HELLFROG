//移動関連

var _key_direction = player_move_direction_acquisition()//押してるキーからの移動方向取得 キーが押されていないと-1が出力される
var _player_speed = PLAYER_SPEED_DEFAULT;
if(_key_direction = -1){
	var _player_speed = 0;
}

var _finally_direction = 0;
var _finally_speed = 0;
var _cant_move_time = ds_grid_get(global.ds_player_knockback, eSGK_type.cursed_gun, eSGK_param.CantActionTime);

//デバッグ用------------
debug_intermediate_point_x = lengthdir_x(inertia_speed, inertia_direction);
debug_intermediate_point_y = lengthdir_y(inertia_speed, inertia_direction);
//---------------------


if(inertia_enable == true){//慣性中なら速度の合成
	if(_key_direction != -1 and knockback_time >= _cant_move_time){//キーが押されていて慣性がある
		_finally_speed = player_move_speed_synthesis(_player_speed, _key_direction, inertia_speed, inertia_direction);
		_finally_direction = player_move_direction_synthesis(_player_speed, _key_direction, inertia_speed, inertia_direction);
		//sdm("inertia + move")
	}
	else{//キーが押されていない
		_finally_speed = inertia_speed;
		_finally_direction = inertia_direction;
		//sdm("inertia")
	}
	//慣性へ代入
	inertia_direction = _finally_direction;
	inertia_speed = _finally_speed;
	player_inertia_decay();
	

}
else{//ノックバック中じゃないなら速度の合成をしない
	if(_key_direction != -1){//キー押されてる
		_finally_direction = _key_direction;
		_finally_speed = _player_speed;
		//sdm("keymove")
	}
	else{//押されてない
		_finally_direction = player_direction;
		_finally_speed = 0;
		//sdm("stop")
	}
	
}



debug_draw_synspd = _finally_speed;
debug_draw_movespd = _player_speed;
debug_draw_direction = _finally_direction;


player_move_execution(_finally_direction, false, _finally_speed);//移動の実行


