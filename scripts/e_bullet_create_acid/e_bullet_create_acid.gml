function e_bullet_create_acid(_object_number, _bullet_speed, _bullet_direction, _acid_gen_time, _enemy_id){
	with(instance_create_layer(x, y+8, "EnemyBullets", _object_number)){
		speed = _bullet_speed;
		speed_default = _bullet_speed;
		direction = _bullet_direction;
		acid_gen_time = _acid_gen_time;
		acid_gen_time_default = _acid_gen_time;
		enemy_id = _enemy_id;
	}
}