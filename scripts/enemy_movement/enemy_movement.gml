// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_movement(){
	if(movement_length > movement_speed){
		movement_length -= movement_speed;
		h_speed += lengthdir_x(movement_speed, movement_direction);
		v_speed += lengthdir_y(movement_speed, movement_direction);
	}
	else{
		//移動が終了
		h_speed += lengthdir_x(movement_length, movement_direction);
		v_speed += lengthdir_y(movement_length, movement_direction);
		movement_enable = false;
		movement_cooldown = movement_cooldown_default;
		enemy_change_state(EnemyState.Idle);
	}
}