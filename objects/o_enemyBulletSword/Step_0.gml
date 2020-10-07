if(global.gamestop == false){
	life_time--;
	if(life_time <= 0){
		instance_destroy();
	}

	//弾強制消滅フラグ
	if(erasure_start == true and erasure_enable == false){
		erasure_enable = true;
	}
	if(erasure_enable == true){
		erasure_time--;
		speed = 0;
		if(erasure_time < 0){
			instance_destroy();
		}
	}
}
else{
	speed = 0;	
}