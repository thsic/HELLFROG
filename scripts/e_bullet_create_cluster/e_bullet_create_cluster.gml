function e_bullet_create_cluster(_object_number, _bullet_speed, _bullet_direction, _life_time, _animation_curve, _enemy_id, _cluster_amount, _cluster_dir_max, _cluster_dir_min, _damage){
	with(instance_create_layer(x, y, "EnemyBullets", _object_number)){
		speed = _bullet_speed;
		speed_default = _bullet_speed;
		direction = _bullet_direction;
		life_time = _life_time;
		life_time_default = _life_time;
		speed_control_curve = _animation_curve;
		enemy_id = _enemy_id;
		cluster_amount = _cluster_amount;
		cluster_direction_max = _cluster_dir_max;
		cluster_direction_min = _cluster_dir_min;
		damage = _damage;
	}
}