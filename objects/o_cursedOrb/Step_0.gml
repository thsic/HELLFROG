if(!global.gamestop){
	var _magnet_time_max = 30;
	var _magnet_time_per = magnet_time/_magnet_time_max;
	var _anim_curve = animcurve_get_channel(ac_lifestealOrbMagnetismRatio, 0);
	var _magnet_power = animcurve_channel_evaluate(_anim_curve, _magnet_time_per);

	var _player_direction = point_direction(x, y, o_player.x, o_player.y);
	var _magnet_speed = 4;

	speed_synthesis(id, diffusion_speed, diffusion_direction, _magnet_speed, _player_direction, _magnet_power);
	
	orb_speed = speed;
	/*
	var _base_magnet_speed = 0.05;
	var _magnet_speed = _base_magnet_speed*_magnet_power;


	motion_add(_player_direction, _magnet_speed);
	*/
	magnet_time++;

	var _player_distance = point_distance(x, y, o_player.x, o_player.y);
	var _player_size = 8;
	if(_player_size < orb_speed){//プレイヤーの大きさがspeedよりも小さいと困る
		_player_size = orb_speed*2;
	}
	
	//プレイヤーがオーブを吸収
	if(_player_distance < _player_size){
		instance_destroy();
	}


	if(life_time > 0){
		life_time--;
	}
	else{
		//90fオーブが吸収されなかった場合強制的に吸収
		instance_destroy()
	}

	//オーブの軌道？みたいなエフェクト
	var i = effect_number-1;
	repeat(effect_number){
		if(i <= 0){
			//値の代入
			effect_x[i] = x;
			effect_y[i] = y;
			effect_dir[i] = direction;
		
		}
		else{
			//値を一個ずらす
			effect_x[i] = effect_x[i-1];
			effect_y[i] = effect_y[i-1];
			effect_dir[i] = effect_dir[i-1];
		
		}
		i--;
	}
	
	speed = orb_speed;
	
	if(!o_player.add_curse_point){
		alpha -= 0.05;
		if(alpha <= 0){
			instance_destroy();
		}
	}
	else{
		alpha = 1;
	}
}
else{
	speed = 0;
}

