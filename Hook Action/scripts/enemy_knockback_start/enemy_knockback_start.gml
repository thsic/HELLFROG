///@param enemyId,Speed,direction

var _enemy_id = argument0;
var _knockback_speed = argument1;
var _knockback_direction = argument2;

with(_enemy_id){
	
	_knockback_speed *= weight;//ノックバックの速さは敵の重さによって変わる
	
	if(knockback_enable == false){
		//停止状態からノックバック開始
		knockback_enable = true;
		knockback_speed = _knockback_speed;
		knockback_direction = _knockback_direction;
		knockback_speed_default = _knockback_speed;
		knockback_direction_default = _knockback_direction;
		
	}
	else{
		//ノックバック中に追加のノックバックが発生した時
		knockback_speed += _knockback_speed/2;
		knockback_direction = angle_mean(knockback_direction, _knockback_direction);
	}
}
