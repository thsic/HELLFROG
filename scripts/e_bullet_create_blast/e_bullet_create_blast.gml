function e_bullet_create_blast(_object_number, _x, _y, _blast_size, _fire_delay, _enemy_id, _marker_length_max, _fire_damage){
	var _px = o_player.x;
	var _py = o_player.y;
	var _dis_for_player = point_distance(_px, _py, _enemy_id.x, _enemy_id.y);
	if(_dis_for_player < 100){
		//この弾は近くには撃てない
		//近くに撃つときはプレイヤーが距離100離れたところにいるものとして撃つ
		var _dir_for_player = point_direction(_x, _y, _px, _py);
		_px = lengthdir_x(100, _dir_for_player)+_x;
		_py = lengthdir_y(100, _dir_for_player)+_y;
	}
	
	//マーカーの位置決める
	var _random_angle = random(360);
	var _random_length = random(_marker_length_max);
	var _marker_x = lengthdir_x(_random_length, _random_angle)+_px;
	var _marker_y = lengthdir_y(_random_length, _random_angle)+_py;
	
	
	with(instance_create_layer(_x, _y, "EnemyBullets", _object_number)){
		enemy_id = _enemy_id;
		blast_size = _blast_size;
		damage = _fire_damage;
		marker_x = _marker_x;
		marker_y = _marker_y;
		delay_time = _fire_delay;
	}
	
}