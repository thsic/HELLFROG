///@param spd,dir,type,dmg,spdAtte,spdMag,knockbackDir,colDest,instance
function create_bullet(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {

	var _bullet_speed = argument0;
	var _bullet_direction = argument1;
	var _bullet_type = argument2;
	var _bullet_damage = argument3;
	var _bullet_speed_atte = argument4;
	var _bullet_speed_mag = argument5;
	var _knockback_direction = argument6;
	var _collision_destroy = argument7;
	var _instance_number = argument8;

	with(instance_create_layer(x, y, "PlayerBullets", _instance_number)){
		bullet_speed = _bullet_speed;
		direction = _bullet_direction;
		bullet_type = _bullet_type;
		damage = _bullet_damage;
		speed_attenuation = _bullet_speed_atte;
		bullet_speed_mag = _bullet_speed_mag;
		knockback_direction_for_enemy = _knockback_direction;
		collision_destroy = _collision_destroy;
	}




}
