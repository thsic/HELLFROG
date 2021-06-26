//
function enemy_fire_totem_passive(){
	var _span = 5;
	
	//負荷軽減のために一定時間おきにエフェクトを付与
	if(global.game_time mod _span == 0){
		var _dis_for_player = point_distance(x, y, o_player.x, o_player.y);
		if(state != EnemyState.Stun
		and _dis_for_player < view_range){
			//プレイヤーの近くにいてスタン状態以外で発動
			var _enemy_num = instance_number(o_enemy);
			for(var i=0; i<_enemy_num; i++){
				var _id = instance_find(o_enemy, i);
				var _dis = point_distance(x, y, _id.x, _id.y);
				//射程内にいる敵を探す
				if(_dis < weapon_range
				and _id.object_index != o_hookPole
				and _id.object_index != o_enemyFireTotem){
					if(_id.fire_passive){
						//既にfire状態の敵には強化fireeffectを付与
						enemy_give_effect(_id, EnemyEffect.UltraFire, _span+1);
						
					}
					else{
						//fireeffectを付与
						enemy_give_effect(_id, EnemyEffect.Fire, _span+1);
					}
					
				}
			}
		}
	}
}