///@param inertia_speed
function remaining_knockback_time_calculation(argument0) {
	//あと何フレームで(停止状態で)慣性の効果が切れるか計算する

	var _inertia_speed_test_default = argument0;
	var _decay_value = ds_grid_get(global.ds_player_knockback, now_knockback_type, eK_param.decay_fixed_value);
	var _decay_per = ds_grid_get(global.ds_player_knockback, now_knockback_type, eK_param.decay_per);
	var _inertia_speed_test = _inertia_speed_test_default;

	var result = 10000;


	for(var i=0; i<30; i++){
		_inertia_speed_test = _inertia_speed_test_default;
	
		_inertia_speed_test *= power(_decay_per, i);//減らす
		_inertia_speed_test -= _decay_value*i;
			
		if(_inertia_speed_test < 0){//0以下ならその時のiフレームで切れることがわかる
			result = i;
			break;
		}
	}

	return result



}
