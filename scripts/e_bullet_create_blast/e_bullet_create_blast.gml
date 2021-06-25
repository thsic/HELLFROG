function e_bullet_create_blast(_object_number, _blast_size, _enemy_id, _fire_damage){
	var _px = o_player.x;
	var _py = o_player.y;
	var _dis_for_enemy = point_distance(_px, _py, _enemy_id.x, _enemy_id.y);
	var _aim_time_base = 45;
	
	if(_dis_for_enemy < 100){
		//本体と弾の位置が近いならaim_timeを遅くしてサイズを小さくする
		var _aim_time_default = _aim_time_base*1.5;
		_blast_size *= 0.66;
	}
	else{
		var _aim_time_default = _aim_time_base;
	}

	var _aim_time = _aim_time_default;
	
	
	with(instance_create_layer(_px, _py, "EnemyBullets", _object_number)){
		enemy_id = _enemy_id;
		blast_size = _blast_size;
		aim_time = _aim_time;
		aim_time_default = _aim_time_default;
		damage = _fire_damage;
	}
	
}