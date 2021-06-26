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
	
	

	enum EnemyEffect{
		Fire,
		UltraFire,
	}
}