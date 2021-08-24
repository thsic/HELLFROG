
if(break_enable){
	if(!dust_setting_enable){
		//破片の初期設定
		dust_setting_enable = true;
		var _speed_min = dust_speed_base-dust_speed_base*0.5;
		var _speed_max = dust_speed_base+dust_speed_base;
		var _dir_min = dust_direction_base-20;
		var _dir_max = dust_direction_base+20;
		
		for(var i=0; i<dust_number; i++){
			dust_param[# i, DUSTPARAM.SPEED] = random_range(_speed_min, _speed_max);
			dust_param[# i, DUSTPARAM.DIRECTION] = random_range(_dir_min, _dir_max);
			dust_param[# i, DUSTPARAM.ENABLE] = true;
		}
	}
	
	if(global.game_time mod 3 == 0){
		wall_collision = true;
	}
	else{
		wall_collision = false
	}
	
	//破片の移動
	var _dust_enable = false;
	for(var i=0; i<dust_number; i++){
		if(dust_param[# i, DUSTPARAM.ENABLE]){
			var _dust_enable = true;
			var _speed = dust_param[# i, DUSTPARAM.SPEED];
			var _direction = dust_param[# i, DUSTPARAM.DIRECTION];
			var _x = dust_param[# i, DUSTPARAM.X];
			var _y = dust_param[# i, DUSTPARAM.Y];
		
		
			//壁に当たると跳ね返る
			if(wall_collision){
				if(position_meeting(_x + lengthdir_x(_speed+1, _direction), _y, o_wall)){
					_direction = _direction + irandom_range(70, 110);
				}
	
				if(position_meeting(_x, _y + lengthdir_y(_speed+1, _direction), o_wall)){
					_direction = _direction + irandom_range(70, 110);
				}
			}
			
			_x = _x + lengthdir_x(_speed, _direction);
			_y = _y + lengthdir_y(_speed, _direction);
			
			_speed = clamp(_speed * 0.95 - 0.01, 0, 14);
			if(_speed <= 0){
				dust_param[# i, DUSTPARAM.ENABLE] = false;
			}
			
			dust_param[# i, DUSTPARAM.X] = _x;
			dust_param[# i, DUSTPARAM.Y] = _y;
			dust_param[# i, DUSTPARAM.SPEED] = _speed;
			dust_param[# i, DUSTPARAM.DIRECTION] = _direction;
			
		}
		
	}
	if(!_dust_enable){
		instance_destroy();
	}
}