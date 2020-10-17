///@param hookSpeed,collisionSize
function hook_check_within_enemy(argument0, argument1) {
	//敵がフックにあたっているか判定、あたっていたらidを返す
	var _hook_speed = argument0;
	var _hook_collision_size = argument1;

	var _enemy_number = instance_number(o_enemy);
	var _collision_enemy_id = noone;
	var _distance_for_collision_enemy = 10000;
	var _distance_for_collision_nearest_enemy = 10000;

	//全敵を対象にして調べる
	for(var i=0; i<_enemy_number; i++){
		var _enemy_id = instance_find(o_enemy, i);
		if(_enemy_id.on_screen == true){//敵が画面内にいるかチェック
		
			var _collision_size = _hook_collision_size + _enemy_id.collision_size_for_hook;
			var _collision_enemy = false;
			var _distance_for_enemy = point_distance(hook_point_x, hook_point_y, _enemy_id.x, _enemy_id.y)
			if(_distance_for_enemy < _hook_speed*2){//敵がフックの近くにいるかチェック　余裕をもって2倍にしておく
				//敵が範囲内にいるかどうかチェック
			
				_collision_enemy = square_collision_check_within_object(hook_point_x, hook_point_y, _collision_size, _hook_speed, hook_direction, _enemy_id);
			}
		
			if(_collision_enemy == true){
				//とりあえず代入
				_distance_for_collision_enemy = _distance_for_enemy;
				//同時に複数の敵にフックがあたった場合近い方を捕まえる、そのための距離の比較
				if(_distance_for_collision_enemy < _distance_for_collision_nearest_enemy){
					_collision_enemy_id = _enemy_id;
					_distance_for_collision_nearest_enemy= _distance_for_enemy;
				}
			}
		}
	}
	
	
	return _collision_enemy_id



}
