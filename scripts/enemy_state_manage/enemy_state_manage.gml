function enemy_state_manage() {
	//敵のステート管理
	//debug_draw_variable(x, y, invincible_enable, c_white, 1);
	switch(state){
	case EnemyState.Idle:
		//ランダムウォークなどする
		var _distance_for_player = point_distance(x, y, o_player.x, o_player.y);
		var _see_player = collision_line(x, y, o_player.x, o_player.y, o_wall, false, true);
		var _collision_door = collision_line(x, y, o_player.x, o_player.y, o_door, false, true);
		if(finded_player){
			//プレイヤーを見つけている場合追いかける
			enemy_follow_player();
			
		}
		else if(!idle_mode){
			enemy_movement_manage(false, 1);//ランダムウォーク
		}
		if(_distance_for_player < view_range 
		and _see_player == noone 
		and _collision_door == noone){
			//視界範囲内にプレイヤーがいてかつ、プレイヤーとの間に壁とドアが無い
			rigor_time = rigor_after_find_player_default;
			enemy_change_state(EnemyState.Approach);
		}
		invincible_enable = false;
	break
	case EnemyState.Movement:
		invincible_enable = false;
		enemy_movement();
	break
	case EnemyState.Approach:
		invincible_enable = false;
		finded_player = true;
		if(rigor_time >= 0){
			//発見時の硬直
			rigor_time--;
		}
		else{
			var _player_x = o_player.x;
			var _player_y = o_player.y;
			enemy_movement_manage(true, 2);
			
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
		stun_time--;
		invincible_enable = false;
		if(stun_time < 0){
			stun_resistance = stun_resistance_default;
			enemy_change_state(EnemyState.Idle);
		}
	break
	case EnemyState.Charging:
		//武器のチャージ中
		invincible_enable = false;
		weapon_charge_time--;
		if(weapon_charge_time <= 0){
			
			//エイム時の特殊動作
			if(aim_script != noone){
				script_execute(aim_script);
			}
			
			aim_time = aim_time_default;
			enemy_change_state(EnemyState.Aim);
			fire_direction = point_direction(x, y, o_player.x, o_player.y);//攻撃の方向決める
			
		}
		var _see_player = !collision_line(x, y, o_player.x, o_player.y, o_wall, false,true);
		if(_see_player == false){
			//プレイヤーが見えなくなった
			enemy_change_state(EnemyState.Idle);
		}
	break
	case EnemyState.Aim:
		//エイム中
		invincible_enable = false;
		aim_time--;
		if(aim_time <= 0){
			enemy_change_state(EnemyState.Fire);
		}
	break
	case EnemyState.Fire:
		invincible_enable = false;
		if(fire_script != noone){
			script_execute(fire_script);
		}
		
		afterfire_time = afterfire_time_default;
		enemy_change_state(EnemyState.AfterFire);
	break
	case EnemyState.AfterFire:
		invincible_enable = false;
		afterfire_time--;
		if(afterfire_time <= 0){
			//武器使用後のステート設定
			var _player_x = o_player.x;
			var _player_y = o_player.y;
			var _distance_for_player = point_distance(x, y, _player_x, _player_y);
			
			if(_distance_for_player < weapon_range){
				/*//プレイヤーが射程内ならもう一回武器使う
				weapon_charge_time = weapon_charge_time_default;
				enemy_change_state(EnemyState.Charging);*/
			
				//プレイヤーが射程内ならランダム移動を挟む
				enemy_change_state(EnemyState.WaitForMovement);
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
		}
	break
	case EnemyState.WaitForMovement:
		invincible_enable = false;
		if(homing_player == true){
			enemy_change_state(EnemyState.Idle);
		}
		enemy_movement_manage(false, 6);
		
	break
	case EnemyState.Dead:
		enemy_dead(id, true);
		
	break
	case EnemyState.WaitForSpawn://スポーン待ち
		invincible_enable = true;
		if(lock_spawn_time <= 0){
			enemy_change_state(EnemyState.Invincible);
			invincible_time = 30;
			
		}
		if(lock_number == -1){
			lock_spawn_time--;
		}
	break
	case EnemyState.Invincible://無敵
		invincible_enable = true;
		if(invincible_time <= 0){
			enemy_change_state(EnemyState.Idle);
		}
		else{
			invincible_time--;
		}
	break
	}
	
	//例外としてスタン耐性が0以下になると強制的にスタンステートになる
	if(stun_resistance <= 0 and state != EnemyState.Stun){
		enemy_stun_start();
	}

	switch(state){
	case EnemyState.Approach:
	case EnemyState.Charging:
	case EnemyState.Aim:
	case EnemyState.Fire:
	case EnemyState.AfterFire:
	case EnemyState.Idle:
	case EnemyState.WaitForMovement:
		if(homing_player == true){
			enemy_homing_player();//ホーミングプレイヤーの場合は常に移動
		}
		break;
	}
	
}



