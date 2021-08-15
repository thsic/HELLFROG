//
function enemy_fire_totem_passive(){//炎のトーテムの効果はシールドに
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
				and _id.soul_enemy == true){
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
	/*
	var _span = 5;
	var _dis_for_player = point_distance(x, y, o_player.x, o_player.x);
	var _range = weapon_range;
	
	if(_dis_for_player > _range
	and global.game_time mod _span == 0){
		//プレイヤーが範囲外にいるときだけ効果発動
		
		var _bullet_num = instance_number(o_playerBullet);
		for(var i=0; i<_bullet_num; i++){
			
			var _id = instance_find(o_playerBullet, i);
			with(_id){
				var _dis = point_distance(x, y, other.x, other.y);
				if(_dis < _range){
					//弾をけす
					var _size = random_range(6, 10);
					effect_create_blast(x, y, _size, 10, 5, wall_collision_effect_color, 1, 10);
					instance_destroy();
				}
			}
		}
	}*/
}