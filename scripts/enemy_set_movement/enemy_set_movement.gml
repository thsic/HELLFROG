// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_set_movement(_length, _speed, _player_finded, _dir){
	if(homing_player == false){
		if(_player_finded == true){
			var _direction_for_player = point_direction(x, y, o_player.x, o_player.y);
			var _max_angle = _direction_for_player + 22;
			var _min_angle = _direction_for_player - 22;
			var _direction = irandom_range(_max_angle, _min_angle);
		}
		else{
			var _direction = _dir;
		}
		movement_length = _length;
		movement_speed = _speed;
		movement_direction = _direction;
		movement_enable = true;
		enemy_change_state(EnemyState.Movement);
	}
}