function create_bullet(_bullet_speed, _bullet_direction, _bullet_type, _bullet_damage, _bullet_speed_atte,
_bullet_speed_mag, _knockback_direction, _collision_destroy, _instance_number, _charge_level) {


	with(instance_create_layer(x, y, "PlayerBullets", _instance_number)){
		bullet_speed = _bullet_speed;
		direction = _bullet_direction;
		bullet_type = _bullet_type;
		damage = _bullet_damage;
		speed_attenuation = _bullet_speed_atte;
		bullet_speed_mag = _bullet_speed_mag;
		knockback_direction_for_enemy = _knockback_direction;
		collision_destroy = _collision_destroy;
		charge_level = _charge_level;
	}




}
