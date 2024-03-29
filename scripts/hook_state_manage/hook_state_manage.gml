function hook_state_manage() {
	switch(hook_state){
	case hookState.Idle:
	
		//発射
		var _hook_mouse = key_check_pressed_within_certain_frame(eKLPF.m_hook, 5);
		var _hook_keyboard = key_check_pressed_within_certain_frame(eKLPF.k_hook, 5);
		var _hook_keyboard2 = key_check_pressed_within_certain_frame(eKLPF.k_hook2, 5);
		
		if(_hook_mouse or _hook_keyboard or _hook_keyboard2){
			var _hook_shot_key_check = true;
		}
		else{
			var _hook_shot_key_check = false;
		}
		
		if(can_hookshot and _hook_shot_key_check){
			can_hookshot = false;
			hookshot_cooldown = ds_grid_get(global.ds_player_hook, now_hook, eHK_param.Cooldown);
			hook_state = hookState.Shooting
		
			hook_point_x = x;
			hook_point_y = y;
			hook_point_x_default = x;
			hook_point_y_default = y;
			hook_length = 0;
			grab_enemy_id = noone;
			
			var _px = x - camera_get_view_x(view_camera[0]);
			var _py = y - camera_get_view_y(view_camera[0]);
			hook_direction = point_direction(_px, _py, global.vmouse_x, global.vmouse_y);
			
			//音
			se_play(SE_HOOKSTART, 60, AUDIO_SIMUL_DECAY_DEFAULT);
		}
		
	break
	case hookState.Cooldown:
	
	break
	case hookState.Shooting:
		var _hook_speed = ds_grid_get(global.ds_player_hook, now_hook, eHK_param.ShootingSpeed);
		
		if(abs(angle_difference(hook_direction, player_move_direction)) < 25
		and player_move_speed >= PLAYER_SPEED_DEFAULT){
				_hook_speed *= 1.5;//フックの方向に動いてるとフックが加速
		}
		
		var _collision_size_for_enemy = ds_grid_get(global.ds_player_hook, now_hook, eHK_param.CollisionSizeForEnemy);
		var _next_hook_point_x = hook_point_x + lengthdir_x(_hook_speed, hook_direction);
		var _next_hook_point_y = hook_point_y + lengthdir_y(_hook_speed, hook_direction);
		var _wall_collision_check = collision_line(hook_point_x, hook_point_y, _next_hook_point_x, _next_hook_point_y, o_wall, false, true);
		if(_wall_collision_check != noone){
			//現在位置から次の位置までの間に壁がある
			var _collision_point_length = collision_length_check(hook_point_x, hook_point_y, _hook_speed, hook_direction, o_wall);
			hook_length += _collision_point_length;
			hook_state = hookState.GrabWall;
		}
	
		//敵への当たり判定
		var _grab_enemy_id = hook_check_within_enemy(_hook_speed, _collision_size_for_enemy);
		//敵にフックがあたった
		if(_grab_enemy_id != noone){
		
			
			if(_grab_enemy_id.object_index == o_hookPole){
				//掴んだ敵がポールで、プレイヤーとポールが近い場合掴まない
				var _dis_for_pole = point_distance(o_player.x, o_player.y, _grab_enemy_id.x, _grab_enemy_id.y);
				var _enemy_invincible = false;
			}
			else{
				//掴んだ敵がポールではない
				var _dis_for_pole = 100;
				var _enemy_invincible = _grab_enemy_id.invincible_enable;
			}
			
			
			//敵の方向がフックの方向とずれすぎていない場合敵を掴む
			
			var _grab_enemy_direction = point_direction(hook_point_x_default, hook_point_y_default, _grab_enemy_id.x, _grab_enemy_id.y);
			if(abs(angle_difference(hook_direction, _grab_enemy_direction)) < 90
			and _dis_for_pole >= 24
			and !_enemy_invincible){//無敵の敵も掴まない
			
				if(_grab_enemy_id.object_index == o_hookPole
				and _grab_enemy_id.state == EnemyState.Aim){
					//隠し要素で口が閉じている時にフックを当てるとhp回復
					repeat(3){
						create_lifesteal_orb(_grab_enemy_id.x, _grab_enemy_id.y, false, 1);
					}
					
				}
				//敵を掴んだときは敵の方角にフックが吸い付く
				hook_direction = point_direction(hook_point_x_default, hook_point_y_default, _grab_enemy_id.x, _grab_enemy_id.y);
				hook_length = point_distance(hook_point_x_default, hook_point_y_default, _grab_enemy_id.x, _grab_enemy_id.y) - _grab_enemy_id.collision_size_for_hook;
				hook_state = hookState.GrabEnemy;
				
				//掴んだ敵がフックポールじゃない場合はノックバックとダメージ与える
				if(_grab_enemy_id.object_index != o_hookPole){
					/*
					var _knockback_speed = ds_grid_get(global.ds_player_hook, now_hook, eHK_param.KnockbackForEnemyPower);
					var _damage = ds_grid_get(global.ds_player_hook, now_hook, eHK_param.Damage);
					var _stun_damage = ds_grid_get(global.ds_player_hook, now_hook, eHK_param.StunDamage);
					enemy_knockback_start(_grab_enemy_id, _knockback_speed, hook_direction)//敵をノックバックさせる
					damage_to_enemy(_grab_enemy_id, _damage, _stun_damage);//敵にダメージを与える
					*/
					grab_enemy_id = _grab_enemy_id;
					//音
					se_play(SE_HOOKHITENEMY, 60, AUDIO_SIMUL_DECAY_DEFAULT);
					
					//対象が火属性の場合はフックするとダメージ
					if(_grab_enemy_id.effect_list[| EnemyEffect.Fire] > 0
					and invincible_time <= 0){
						damage_to_player(FIRE_DAMAGE, 0.33, player_direction+180);
					}
					
				}
				else{
					//フックポールの音は壁と同じ
					se_play(SE_HOOKHITWALL, 60, AUDIO_SIMUL_DECAY_DEFAULT);
				}
			}
			else{
				//敵の方向とフックの方向が逆なのであたってなかったことにする	
				_grab_enemy_id = noone;
			}
		}

	
		if(_wall_collision_check == noone and _grab_enemy_id == noone){
			//このフレームでは何にも衝突しなかった
			hook_length += _hook_speed;
			hook_point_x = hook_point_x_default+lengthdir_x(hook_length, hook_direction);
			hook_point_y = hook_point_y_default+lengthdir_y(hook_length, hook_direction);
			
			var _hook_range = ds_grid_get(global.ds_player_hook, now_hook, eHK_param.Range);
			var _distance_for_hook = point_distance(x, y, hook_point_x, hook_point_y);
			if(hook_length > _hook_range and _hook_range < _distance_for_hook){
				//フックが射程の限界まで達した かつ プレイヤーとフックの距離が遠い
				//まず近くに敵がいたら吸い付く
				var _stick_wall_success = hook_stick_near_wall()//近くの壁に吸い付く処理を入れる
				if(_stick_wall_success == true){
					hook_state = hookState.GrabWall;//すいついた
				}
				else{
					hook_state = hookState.Idle;//吸い付かなかった
				}
			}
		}
	
	break
	case hookState.GrabWall:
		hook_point_x = hook_point_x_default+lengthdir_x(hook_length, hook_direction);
		hook_point_y = hook_point_y_default+lengthdir_y(hook_length, hook_direction);
		shrink_speed = ds_grid_get(global.ds_player_hook, now_hook, eHK_param.ShrinkSpeedDefault);
		hook_state = hookState.Shrink;
		
		//壁にフックあてると銃チャージ
		gun_fullcharge();
		
		se_play(SE_HOOKHITWALL, 60, AUDIO_SIMUL_DECAY_DEFAULT);
	break
	case hookState.GrabEnemy:
		hook_point_x = hook_point_x_default+lengthdir_x(hook_length, hook_direction);
		hook_point_y = hook_point_y_default+lengthdir_y(hook_length, hook_direction);
		shrink_speed = ds_grid_get(global.ds_player_hook, now_hook, eHK_param.ShrinkSpeedDefault);
		
		//敵にフックあてると銃チャージする
		gun_fullcharge();
		
		hook_state = hookState.Shrink;

	break
	case hookState.Shrink:
		hook_direction = point_direction(x, y, hook_point_x, hook_point_y);
		tackle_time = 5;//フックで移動中はタックルの効果がある
		
		//フックボタンが離されたらフック離す
		if(mouse_check_button(global.hook_button) == false
		and keyboard_check(global.hook_button_keyboard) == false
		and keyboard_check(global.hook_button_keyboard2) == false){
			hook_state = hookState.Idle;
			player_start_knockback(eK_type.Hook);//小さいノックバックもする
		}
		var _shrink_speed = ds_grid_get(global.ds_player_hook, now_hook, eHK_param.ShrinkSpeedMax);
		//フックの位置とプレイヤーの位置が近いとフック離す
		if(point_distance(x, y, hook_point_x, hook_point_y) < _shrink_speed*2){
			hook_state = hookState.Idle;
			player_start_knockback(eK_type.HookSmall);//フックを離すよりさらに小さいノックバックする
			
			grab_enemy_id = noone;
		}
	break
	}

	if(hookshot_cooldown > 0){
		hookshot_cooldown--;
	}
	else{
		can_hookshot = true;
	}


	enum hookState{
		Idle,
		Cooldown,
		Shooting,
		GrabWall,
		GrabEnemy,
		Shrink
	}



}
