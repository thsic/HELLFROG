function gun_charging() {
	//銃のチャージ中

	var _gun_charge_max_count = ds_grid_get(global.ds_player_gun, now_shotgun, eG_param.ChargeCount);
	var _gun_charge_time_each_level = ds_grid_get(global.ds_player_gun, now_shotgun, eG_param.ChargeTime);
	var _gun_charge_time_limit = ds_grid_get(global.ds_player_gun, now_shotgun, eG_param.ChargeTimeLimit);
	var _gun_cooldown = ds_grid_get(global.ds_player_gun, now_shotgun, eG_param.Cooldown);
	
	if(mouse_check_button_pressed(global.shotgun_button) == false){
		//ショットガンボタン押されていない
		
		//銃のチャージが最大値以下だと銃をチャージする
		if(gun_charge_time < _gun_charge_time_each_level * _gun_charge_max_count + 1){
			
			if(supp_point <= 0){
				gun_charge_time++;
			}
			else{
				gun_charge_time += SUPP_GUN_CHARGE_MAG;
			}
			
		}
		else if(!drawed_charge_fin_effect){
			effect_create_charge_fin_effect();
			drawed_charge_fin_effect = true;
		}
		
		var _charge_level = 0;
		for(var i=0; i<_gun_charge_max_count; i++){
			if(gun_charge_time > _gun_charge_time_each_level*(i+1)){
				_charge_level++;
			}
		}
		gun_charge_level = _charge_level;
		
	}
	if(mouse_check_button_pressed(global.shotgun_button)
	and now_shotgun != eG_type.Empty){
		///発射された
		player_shotgun_fire();
		start_trail_time(10);
		gun_charge_time = 0;
		gun_charge_enable = false;
		gun_charge_level = 0;
		drawed_charge_fin_effect = false;
	}

	/*if(mouse_check_button(global.shotgun_button) <= 1){
		//ショットガンボタン押されている
		gun_charge_time++;
		var _charge_level = 0;
		for(var i=0; i<_gun_charge_max_count; i++){
			if(gun_charge_time > _gun_charge_time_each_level*(i+1)){
				_charge_level++;
			}
		}
		gun_charge_level = _charge_level;
	}
	if(mouse_check_button_released(global.shotgun_button)){
		///発射された
		player_shotgun_fire();
		gun_charge_time = 0;
		gun_charge_enable = 0;
		gun_charge_level = 0;

	}*/


}
