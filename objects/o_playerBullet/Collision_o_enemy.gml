
var _id = other.id;

if(instance_exists(other)){
	if(other.object_index != o_hookPole //フックポールには当たらない
	and global.gamestate != gamestate.incheckpointbarrier
	and _id.invincible_enable == false){//無敵の敵にも当たらない
	
		var _collided = false;
		//衝突した敵idの中からいま当たった敵を探す
		for(var _number=0; _number<30; _number++){
			if(collided_enemy[_number] != 0){
				if(collided_enemy[_number] = other){
					_collided = true;
					//すでに衝突済みのため衝突判定をスルー
					break
				}
			}
			else{
				//衝突していなかったため衝突
				_collided = false;
				break
			}
	
		}
		if(_collided == false){
			//衝突時の処理
			collided_enemy[_number] = other;
			var _knockback_speed = ds_grid_get(global.ds_player_bullet, bullet_type, ePB_param.KnockbackPower);
			var _bullet_damage = ds_grid_get(global.ds_player_bullet, bullet_type, ePB_param.Damage);
			var _stun_damage = ds_grid_get(global.ds_player_bullet, bullet_type, ePB_param.StunDamage);
			damage_to_enemy(other, _bullet_damage, _stun_damage);
			enemy_knockback_start(other, _knockback_speed, knockback_direction_for_enemy);
			hitstop_time = PLAYER_BULLET_HITSTOP_TIME;
		
			//衝突エフェクト
			var _size = random_range(6, 10);
			effect_create_blast(x, y, _size, 15, 5, hit_effect_color, 1, 15);
		
			//音
			se_play(SE_ENEMYHIT, 30, AUDIO_SIMUL_DECAY_DEFAULT);
		}
	}
}
else{
	debug_draw_variable(o_player.x, o_player.y, "ERROR o_playerBullet", c_white, 120);
}

