//
function enemy_effect_manage(){
	
	//エフェクトの時間減らす
	for(var i=0; i<ENEMY_EFFECT_TOTAL_NUMBER; i++){
		var _effect_time = effect_list[| i];
		if(_effect_time > 0){
			_effect_time--;
			
		}
	}

	enum EnemyEffect{
		TotemFire,
		SkeletonFire,
	}
}