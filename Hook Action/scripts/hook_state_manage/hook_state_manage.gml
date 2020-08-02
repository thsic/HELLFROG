
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
		hook_length = 0;
		hook_direction = point_direction(x, y, mouse_x, mouse_y);
	}
break
case hookState.Cooldown:
	
break
case hookState.Shooting:
	
break
case hookState.Grab:

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
	Grab,
	Shrink
}
