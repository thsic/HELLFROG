//プレイヤーのノックバック処理

if(knockback_start == true){
	//ノックバック始まりの処理
	knockback_start = false;
	/*inertia_enable = true;
	knockback_time = 0;
	knockback_direction = player_direction-180;
	if(knockback_direction < 0){
		knockback_direction += 360;
	}
	
	now_knockback_type = eK_type.cursed_gun;
	
	//初期慣性
	inertia_power = 0;
	inertia_direction = knockback_direction;
	var _default_speed = ds_grid_get(global.ds_player_knockback, eK_type.cursed_gun, eK_param.Speed);
	inertia_speed = _default_speed;
	knockback_time_limit = remaining_knockback_time_calculation(inertia_speed);//慣性があっていい時間の上限設定*/
}

if(inertia_enable){
	knockback_time++;
	
	if(inertia_speed < PLAYER_SPEED_DEFAULT){//inersia_speedが低い時にあと何フレームで慣性の効果がなくなるか計算
		var _knockback_time_limit_temp = knockback_time + remaining_knockback_time_calculation(inertia_speed);
		
		if(_knockback_time_limit_temp < knockback_time_limit){
			//比較して、小さい方を優先する(上限は減少するけど増加はしない)
			knockback_time_limit = _knockback_time_limit_temp;
		}
	}
	
	if(knockback_time_limit <= knockback_time){//knockbacktimeが上限を突破したら慣性を無くす
		inertia_enable = false;
	}
}