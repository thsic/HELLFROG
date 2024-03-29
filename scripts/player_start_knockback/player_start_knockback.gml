///@param eK_type
function player_start_knockback(argument0) {
	with(o_player){
		var _knockback_type = argument0;

		inertia_enable = true;
		knockback_time = 0;

		//フックでのノックバックの場合はノックバック方向をプレイヤーの方向と同じ方向にノックバック
		if(_knockback_type != eK_type.Hook and _knockback_type != eK_type.HookSmall){
			knockback_direction = player_direction-180;
		}
		else{//フックの場合
			knockback_direction = hook_direction
		}
		if(_knockback_type == eK_type.Spike){
			knockback_direction = player_move_direction-180;
		}
		
		if(knockback_direction < 0){
			knockback_direction += 360;
		}
		
	
		now_knockback_type = argument0;
	
		//初期慣性
		inertia_power = 0;
		inertia_direction = knockback_direction;
		var _default_speed = ds_grid_get(global.ds_player_knockback, _knockback_type, eK_param.Speed);
		inertia_speed = _default_speed;
		knockback_time_limit = remaining_knockback_time_calculation(inertia_speed);//慣性があっていい時間の上限設定
	}

}
