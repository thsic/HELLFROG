///@param moveDir

var _move_direction = argument0;

if(_move_direction+45 > knockback_direction-180){
	if(_move_direction-45 < knockback_direction-180){
		knockback_time++;
	}
}
