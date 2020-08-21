////@param obj,spd,dir,lifeTime,ac
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function e_bullet_create_normal(){
	var _object_number = argument0;
	var _bullet_speed = argument1;
	var _bullet_direction = argument2;
	var _life_time = argument3;
	var _animation_curve = argument4;
	
	with(instance_create_layer(x, y, "EnemyBullets", _object_number)){
		speed = _bullet_speed;
		speed_default = _bullet_speed;
		direction = _bullet_direction;
		life_time = _life_time;
		life_time_default = _life_time;
		speed_control_curve = _animation_curve;
		
	}
}