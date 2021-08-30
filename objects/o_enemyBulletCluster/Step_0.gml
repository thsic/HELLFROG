if(global.gamestop == false){
	var	_life_per = 1-life_time/life_time_default;
	var _anim_curve = animcurve_get_channel(speed_control_curve, 0);
	var _magnification = animcurve_channel_evaluate(_anim_curve, _life_per);
	//徐々に減速していく
	speed = speed_default*_magnification;

	life_time--;
	if(life_time <= 0){
		//クラスター弾は消滅時に大量の弾を放つ
		if(erasure_enable == false){
			
			if(global.difficulty == Difficulty.VeryHard){
				//ハード
				var _bullet_speed_base = 15;
			}
			else{
				var _bullet_speed_base = 10;
			}
			
			for(var i=0; i<cluster_amount; i++){
				var _cluster_direction = irandom_range(cluster_direction_min, cluster_direction_max)+direction;
				var _bullet_speed = random_range(_bullet_speed_base-10, _bullet_speed_base+10);
				e_bullet_create_normal(o_enemyBulletCluster2, 20, _cluster_direction, _bullet_speed, ac_enemyBullet, enemy_id, damage);
			}
		}
		//音
		if(bullet_create_sound != noone){
			se_play(bullet_fire_sound, 60, AUDIO_SIMUL_DECAY_DEFAULT);
		}
		
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