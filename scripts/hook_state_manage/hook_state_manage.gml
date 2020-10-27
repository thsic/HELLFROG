function hook_state_manage() {
	switch(hook_state){
	case hookState.Idle:
	
		//発射
		var hook_shot_key_check = key_check_pressed_within_certain_frame(eKLPF.m_hook, 5);
		if(can_hookshot and hook_shot_key_check){
			can_hookshot = false;
			hookshot_cooldown = ds_grid_get(global.ds_player_hook, now_hook, eHK_param.Cooldown);
			hook_state = hookState.Shooting
		
			hook_point_x = x;
			hook_point_y = y;
			hook_point_x_default = x;
			hook_point_y_default = y;
			hook_length = 0;
			
			var _px = x - camera_get_view_x(view_camera[0]);
			var _py = y - camera_get_view_y(view_camera[0]);
			hook_direction = point_direction(_px, _py, global.mx, global.my);
		}
	break
	case hookState.Cooldown:
	
	break
	case hookState.Shooting:
		var _hook_speed = ds_grid_get(global.ds_player_hook, now_hook, eHK_param.ShootingSpeed);
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
		
			//敵の方向がフックの方向とずれすぎていない場合敵を掴む
			var _grab_enemy_direction = point_direction(hook_point_x_default, hook_point_y_default, _grab_enemy_id.x, _grab_enemy_id.y);
			if(abs(angle_difference(hook_direction, _grab_enemy_direction)) < 90){
			
				if(_grab_enemy_id.object_index == o_hookPole){
					var _hookpole = true;
				}
				//敵を掴んだときは敵の方角にフックが吸い付く
				hook_direction = point_direction(hook_point_x_default, hook_point_y_default, _grab_enemy_id.x, _grab_enemy_id.y);
				hook_length = point_distance(hook_point_x_default, hook_point_y_default, _grab_enemy_id.x, _grab_enemy_id.y) - _grab_enemy_id.collision_size_for_hook;
				hook_state = hookState.GrabEnemy;
				
				//掴んだ敵がフックポールじゃない場合はノックバックとダメージ与える
				if(_grab_enemy_id.object_index == o_hookPole){
					var _knockback_speed = ds_grid_get(global.ds_player_hook, now_hook, eHK_param.KnockbackForEnemyPower);
					var _damage = ds_grid_get(global.ds_player_hook, now_hook, eHK_param.Damage);
					var _stun_damage = ds_grid_get(global.ds_player_hook, now_hook, eHK_param.StunDamage);
					enemy_knockback_start(_grab_enemy_id, _knockback_speed, hook_direction)//敵をノックバックさせる
					damage_to_enemy(_grab_enemy_id, _damage, _stun_damage);//敵にダメージを与える
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
	
	break
	case hookState.GrabEnemy:
		hook_point_x = hook_point_x_default+lengthdir_x(hook_length, hook_direction);
		hook_point_y = hook_point_y_default+lengthdir_y(hook_length, hook_direction);
		shrink_speed = ds_grid_get(global.ds_player_hook, now_hook, eHK_param.ShrinkSpeedDefault);
		
		hook_state = hookState.Shrink;

	break
	case hookState.Shrink:
		hook_direction = point_direction(x, y, hook_point_x, hook_point_y);
	
		//フックボタンが離されたらフック離す
		if(mouse_check_button(global.hook_button) == false){
			hook_state = hookState.Idle;
			player_start_knockback(eK_type.Hook);//小さいノックバックもする
		}
		var _shrink_speed = ds_grid_get(global.ds_player_hook, now_hook, eHK_param.ShrinkSpeedMax);
		//フックの位置とプレイヤーの位置が近いとフック離す
		if(point_distance(x, y, hook_point_x, hook_point_y) < _shrink_speed*1.5){
			hook_state = hookState.Idle;
			player_start_knockback(eK_type.HookSmall);//フックを離すよりさらに小さいノックバックする
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
