//
function start_shockwave(_x, _y, _range, _damage, _stundamage, _knockback_speed, _play_se){
	var _enemy_num = instance_number(o_enemy);
	
	for(var i=0; i<_enemy_num; i++){
		var _id = instance_find(o_enemy, i);
		if(_id.idle_mode == false){
			var _dis = point_distance(_x, _y, _id.x, _id.y);
			
			if(_dis < _range){
				
				//ダメージをあたえる ショックウェーブにダメージupが乗るとたのしさが減るので倒せないように
				var _dir = point_direction(_x, _y, _id.x, _id.y);
				damage_to_enemy(_id, _damage/global.player_damage, _stundamage);
				enemy_knockback_start(_id, _knockback_speed, _dir);
			}
		}
	}
	
	if(_play_se){
		//だめーじ判定があるときだめおとならす
		se_play(a_shockwave, 80, 1);
	}
	
	//壊せる石とか
	var _breakable_object_num = instance_number(o_breakableObject);
	
	for(var i=0; i<_breakable_object_num; i++){
		var _id = instance_find(o_breakableObject, i);
		var _dis = point_distance(_x, _y, _id.x, _id.y);
		
		//ちょっと射程が広い
		if(_dis < _range*1.3){
			
			var _dir = point_direction(_x, _y, _id.x, _id.y);
			with(_id){
				break_enable = true;
				dust_speed_base = 4;
				dust_direction_base = _dir;
				
			}
		}
		
	}
}