// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_homing_player(){
	var _player_direction = point_direction(x, y, o_player.x, o_player.y);
	h_speed += lengthdir_x(movement_speed, _player_direction);
	v_speed += lengthdir_y(movement_speed, _player_direction);
}