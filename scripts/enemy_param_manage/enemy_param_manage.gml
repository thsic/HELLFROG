//
function enemy_param_manage(){
	life_time++;
	if(damage_flash_time > 0){
		damage_flash_time--;
	}
	
	var _distance_for_player = point_distance(o_player.x, o_player.y, x, y);
	if(_distance_for_player > 350){
		//プレイヤーとすごく離れていたら放置
		idle_mode = true;
	}
	else{
		idle_mode = false;
	}
	
	if(hitstop_time >= 0){
		hitstop_time--;
	}
	//タックル耐性
	if(tackle_regist_time > 0){
		tackle_regist_time--;
	}
	
	//パッシブ
	if(passive_script != noone){
		script_execute(passive_script);
	}
	
	//ブルーオーラが適用されていない場合適用する
	if(blue_aura
	and blue_aura_effect_enable = false){
		blue_aura_effect_enable = true;
		
		hp *= BLUEAURA_HP_RATIO;
		max_hp *= BLUEAURA_HP_RATIO;
		
		rigor_after_find_player_default *= BLUEAURA_FIRE_COOLDOWN;
		weapon_charge_time_default *= BLUEAURA_FIRE_COOLDOWN;
		stun_time_default *= BLUEAURA_FIRE_COOLDOWN;
		weapon_charge_time_default *= BLUEAURA_FIRE_COOLDOWN;
		aim_time_default *= BLUEAURA_FIRE_COOLDOWN;
		movement_speed *= BLUEAURA_MOVEMENT_SPEED_RATIO;
		orb_quantity_mag *= BLUEAURA_ORB_QUANTITY_MAG;
	}
	
}