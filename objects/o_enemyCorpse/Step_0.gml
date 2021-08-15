
if(!global.gamestop){
	if(life_time > 15){//爆発エフェクトがでるまで死体はその場に留まる
		if(corpse_speed > 0){
			corpse_speed *= speed_mag_per_frame;
			corpse_speed -= speed_decay_per_frame;
		
			if(corpse_speed < 0){
				corpse_move = false;
				corpse_speed = 0;
			}
		}
	
		speed = corpse_speed;
	}
	else{
		speed = 0;
	}
	//壁に当たると跳ね返る
	if(position_meeting(x + lengthdir_x(speed+1, direction), y, o_wall)){
		direction = direction + irandom_range(70, 110);
		
	}
	
	if(position_meeting(x, y + lengthdir_y(speed+1, direction), o_wall)){
		direction = direction + irandom_range(70, 110);
		
	}
	life_time++;
	
	if(life_time > life_time_limit){
		instance_destroy();
	}
}
else{
	speed = 0;
}
