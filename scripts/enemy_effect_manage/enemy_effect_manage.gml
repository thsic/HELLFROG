//
function enemy_effect_manage(){
	
	//エフェクトの時間減らす
	for(var i=0; i<ENEMY_EFFECT_TOTAL_NUMBER; i++){
		
		if(effect_list[| i] > 0){
			effect_list[| i]--;
			
		}
	}
	

	enum EnemyEffect{
		Fire,
		UltraFire,
	}
}