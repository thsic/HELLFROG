//プレイヤーのノックバック処理

if(knockback_start == true){
	//ノックバック始まりの処理
	knockback_start = false;
	knockbacking = true;
	knockback_time = 0;
	knockback_direction = player_direction-180;
	if(knockback_direction < 0){
		knockback_direction += 360;
	}
}
if(knockbacking == true){
	//ノックバック中
	var _speed = ds_grid_get(global.ds_player_knockback, eSGK_type.cursed_gun, eSGK_param.Speed);
	var _total_time = ds_grid_get(global.ds_player_knockback, eSGK_type.cursed_gun, eSGK_param.TotalTime);
	var _cant_action_total_time = ds_grid_get(global.ds_player_knockback, eSGK_type.cursed_gun, eSGK_param.CantActionTime);
	
	knockback_speed = ease_out_quad(knockback_time, 0, _speed, _total_time);
	knockback_speed = _speed-knockback_speed;
	//motion_set(knockback_direction, knockback_speed);
	knockback_time++;
	knockback_power = 1-(knockback_time / _total_time)
	
	if(knockback_time >= _total_time){
		knockback_time = 0;
		knockbacking = false;
		knockback_power = 0;
		motion_set(0, 0);
	}
}