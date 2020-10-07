if(global.gamestop == false){
	var	_life_per = 1-life_time/life_time_default;
	var _anim_curve = animcurve_get_channel(speed_control_curve, 0);
	var _magnification = animcurve_channel_evaluate(_anim_curve, _life_per);
	//徐々に減速していく
	speed = speed_default*_magnification;

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