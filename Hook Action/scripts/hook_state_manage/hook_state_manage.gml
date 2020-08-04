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
		hook_direction = point_direction(x, y, mouse_x, mouse_y);
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
	if(_grab_enemy_id != noone){
		hook_state = hookState.GrabEnemy;
		//敵を掴んだときは敵の方角にフックが吸い付く
		hook_direction = point_direction(hook_point_x_default, hook_point_y_default, _grab_enemy_id.x, _grab_enemy_id.y);
		hook_length = point_distance(hook_point_x_default, hook_point_y_default, _grab_enemy_id.x, _grab_enemy_id.y) - _grab_enemy_id.collision_size_for_hook;
		
	}
	
	if(_wall_collision_check == noone and _grab_enemy_id == noone){
		//何にも衝突しなかった
		hook_length += _hook_speed;
		hook_point_x = hook_point_x_default+lengthdir_x(hook_length, hook_direction);
		hook_point_y = hook_point_y_default+lengthdir_y(hook_length, hook_direction);
		var _hook_range = ds_grid_get(global.ds_player_hook, now_hook, eHK_param.Range)
		if(hook_length > _hook_range){
			//フックが射程の限界まで達した
			
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
	if(can_hookshot == true){
		hook_state = hookState.Idle;
	}
break
case hookState.GrabEnemy:
	hook_point_x = hook_point_x_default+lengthdir_x(hook_length, hook_direction);
	hook_point_y = hook_point_y_default+lengthdir_y(hook_length, hook_direction);
	if(can_hookshot == true){
		hook_state = hookState.Idle;
	}
break
case hookState.Shrink:

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
