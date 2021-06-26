//
function tackle_to_enemy(_id){
	
	if(instance_exists(_id)
	and _id.object_index != o_hookPole){
		if(_id.tackle_regist_time <= 0){
			var _damage = TACKLE_DAMAGE;
			var _stun_damage = TACKLE_STUN_DAMAGE;
			var _knockback_speed = TACKLE_KNOCKBACK_SPEED;
			if(player_move_speed < PLAYER_SPEED_DEFAULT){
				//フックでのタックル
				_damage *= 1;
				_knockback_speed *= 0.5;
			}
			else{
				//スピードが早い状態でのタックルは速度が早いほどタックルがつよい
				var _mag = player_move_speed / PLAYER_SPEED_DEFAULT;
				_damage *= _mag;
				_knockback_speed *= _mag;
			}
		
			damage_to_enemy(_id, _damage, _stun_damage);
			enemy_knockback_start(_id, _knockback_speed, player_move_direction);
			_id.tackle_regist_time = TACKLE_REGIST_TIME_BASE;
		}
	}
}