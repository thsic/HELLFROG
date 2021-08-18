//
function enemy_effect_manage(){
	
	//エフェクトの時間減らす
	for(var i=0; i<ENEMY_EFFECT_TOTAL_NUMBER; i++){
		
		if(effect_list[| i] > 0){
			effect_list[| i]--;
			
		}
	}
	
	if(global.game_time mod 5 == 0
	and fire_passive){
		enemy_give_effect(id, EnemyEffect.Fire, 6);
	}
	
	if(effect_list[| EnemyEffect.AltarBuff] > 0){
		fire_damage = fire_damage_base * ENEMY_ALTAR_BUFF_RATE;
	}
	else{
		fire_damage = fire_damage_base;
		
	}

	enum EnemyEffect{
		Fire,
		UltraFire,
		AltarBuff,
		
	}
}