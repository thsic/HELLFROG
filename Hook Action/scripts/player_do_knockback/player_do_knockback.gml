//プレイヤーのノックバック処理

if(knockback_start == true){
	//ノックバック始まりの処理
	knockback_start = false;
	inertia_enable = true;
	knockback_time = 0;
	knockback_direction = player_direction-180;
	
	//初期慣性 プレイヤーのキー入力で変動する
	inertia_direction = knockback_direction;
	var _default_speed = ds_grid_get(global.ds_player_knockback, eSGK_type.cursed_gun, eSGK_param.Speed);
	inertia_speed = _default_speed;
	knockback_speed_prev = _default_speed;
	
	if(knockback_direction < 0){
		knockback_direction += 360;
	}
}
if(inertia_enable == true){
	//ノックバック中
	var _speed = ds_grid_get(global.ds_player_knockback, eSGK_type.cursed_gun, eSGK_param.Speed);
	var _total_time = ds_grid_get(global.ds_player_knockback, eSGK_type.cursed_gun, eSGK_param.TotalTime);
	var _cant_action_total_time = ds_grid_get(global.ds_player_knockback, eSGK_type.cursed_gun, eSGK_param.CantActionTime);
	
	knockback_speed = ease_out_quad(knockback_time, 0, _speed, _total_time);
	knockback_speed = _speed - knockback_speed;
	knockback_time++;
	inertia_power = 1-(knockback_time / _total_time);
	
	//inertia_speed = knockback_speed * (1 - inertia_power * 0.5);
	
	inertia_speed -= knockback_speed_prev - knockback_speed;
	knockback_speed_prev = knockback_speed;
	
	
	if(knockback_time >= _total_time){
		knockback_time = 0;
		inertia_enable = false;
		knockback_power = 0;
	}
}