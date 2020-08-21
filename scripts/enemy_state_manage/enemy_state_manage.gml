function enemy_state_manage() {
	//敵のステート管理
	debug_draw_variable(x, y, state, c_white, 1);
	switch(state){
	case EnemyState.Idle:
		//ランダムウォークなどする
		var _distance_for_player = point_distance(x, y, o_player.x, o_player.y);
		var _see_player = !collision_line(x, y,　o_player.x,o_player.y, o_wall, false,true);
		if(_distance_for_player < view_range and _see_player){
			//視界範囲内にプレイヤーがいてかつ、プレイヤーとの間に壁が無い
			rigor_time = rigor_after_find_player_default;
			enemy_change_state(EnemyState.Approach);
		}
	break
	case EnemyState.Approach:
		if(rigor_time >= 0){
			//発見時の硬直
			rigor_time--;
		}
		else{
			//プレイヤーに近づく
			var _player_x = o_player.x;
			var _player_y = o_player.y;
			var _direction_for_player = point_direction(x, y, _player_x, _player_y);
			h_speed += lengthdir_x(move_speed, _direction_for_player);
			v_speed += lengthdir_y(move_speed, _direction_for_player);
			
			//プレイヤーが武器の射程内にいるなら武器のチャージ開始
			var _distance_for_player = point_distance(x, y, o_player.x, o_player.y);
			if(_distance_for_player < weapon_range){
				weapon_charge_time = weapon_charge_time_default;
				enemy_change_state(EnemyState.Charging);
			}
			else if(_distance_for_player > view_range){
				//プレイヤーが視界内からいなくなったらidleにもどる
				enemy_change_state(EnemyState.Idle);
			}
			var _see_player = !collision_line(x, y, _player_x, _player_y, o_wall, false,true);
			if(_see_player == false){
				//プレイヤーが見えなくなった
				enemy_change_state(EnemyState.Idle);
			}
		}
		
	break
	case EnemyState.Stun:
		
	break
	case EnemyState.Charging:
		//武器のチャージ中
		weapon_charge_time--;
		if(weapon_charge_time <= 0){
			aim_time = aim_time_default;
			enemy_change_state(EnemyState.Aim);
		}
		var _see_player = !collision_line(x, y, o_player.x, o_player.y, o_wall, false,true);
		if(_see_player == false){
			//プレイヤーが見えなくなった
			enemy_change_state(EnemyState.Idle);
		}
	break
	case EnemyState.Aim:
		//エイム中
		aim_time--;
		if(aim_time <= 0){
			enemy_change_state(EnemyState.Fire);
		}
	break
	case EnemyState.Fire:
		var _player_x = o_player.x;
		var _player_y = o_player.y;
		var _bullet_direction = point_direction(x, y, _player_x, _player_y,);
		e_bullet_create_normal(o_enemyBulletTest, 5, _bullet_direction, 20, ac_enemyBullet);
		
		var _distance_for_player = point_distance(x, y, _player_x, _player_y);
		//武器使用後のステート設定
		if(_distance_for_player < weapon_range){
			//プレイヤーが射程内ならもう一回武器使う
			weapon_charge_time = weapon_charge_time_default;
			enemy_change_state(EnemyState.Charging);
		}
		else{
			if(_distance_for_player < view_range){
				//視界内なら移動
				enemy_change_state(EnemyState.Approach);
			}
			else{
				//視界外ならidle
				enemy_change_state(EnemyState.Idle);
			}
		}
		
	break
	case EnemyState.Dead:
		instance_destroy();
	break
	}

	


}
