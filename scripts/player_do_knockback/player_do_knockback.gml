function player_do_knockback() {
	//プレイヤーのノックバック処理

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


}
