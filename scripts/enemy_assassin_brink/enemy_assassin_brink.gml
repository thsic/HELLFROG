// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_assassin_brink(){
	var _player_x = o_player.x;
	var _player_y = o_player.y;
	
	var _direction = point_direction(x, y, _player_x, _player_y);
	var _xx = lengthdir_x(16, _direction)+_player_x;
	var _yy = lengthdir_y(16, _direction)+_player_y;
	
	if(place_free(_xx, _yy)){
		x = _xx;
		y = _yy
	}
	else{
		//ワープ先が壁だとワープしない、やり直す
		enemy_change_state(EnemyState.Charging);
		weapon_charge_time = weapon_charge_time_default;
	}
}