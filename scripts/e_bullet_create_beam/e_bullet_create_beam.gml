// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function e_bullet_create_beam(_object_number, _beforebeam_drawtime, _afterbeam_drawtime, _bullet_direction, _enemy_id, _start_length, _range, _damage){
	var _x = lengthdir_x(_start_length, _bullet_direction)+x;
	var _y = lengthdir_y(_start_length, _bullet_direction)+y;
	
	var _length = collision_length_check(_x, _y, _range, _bullet_direction, o_wall);
	
	with(instance_create_layer(_x, _y, "EnemyBullets", _object_number)){
		direction = _bullet_direction;
		length = _length;
		beforebeam_drawtime = _beforebeam_drawtime;
		beforebeam_drawtime_default = _beforebeam_drawtime;
		afterbeam_drawtime = _afterbeam_drawtime;
		afterbeam_drawtime_default = _afterbeam_drawtime;
		life_time = _beforebeam_drawtime + _afterbeam_drawtime;
		life_time_default = life_time;
		enemy_id = _enemy_id;
		damage = _damage;
	}
}