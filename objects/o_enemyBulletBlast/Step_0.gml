if(global.gamestop == false){
	
	
	if(delay_time > 0){
		delay_time--;
	}
	else{
		life_time++;
		
		if(life_time == delay_time_default){
			//発射された時音ならす
			
		}
		
		//長い時間マーカーにたどり着かないと消滅
		if(life_time > 120){
			part_type_destroy(pt_type);
			part_system_destroy(pt_sys);
			instance_destroy();
		}
		
		//alpha
		var _dis_total = point_distance(enemy_id.x, enemy_id.y, marker_x, marker_y);
		var _dis_for_marker = point_distance(x, y, marker_x, marker_y);
		var _dis_per = _dis_for_marker / _dis_total;
		alpha = clamp(ceil((1-_dis_per) * 2) / 2, 0, 1)/2;
		
		var _rnd = irandom(100);
		if(_rnd > 10){
			//炎の軌道を出す
			part_type_alpha1(pt_type, alpha);
			part_particles_create(pt_sys, x, y, pt_type, 1);
		}
		
		if(stay_time < life_time){
			var _speed = 0.1 + power(1.05, life_time-stay_time);
		}
		else{
			//生成されて少しのあいだ動かない
			var _speed = 0;
		}
		if(stay_time == life_time){
			se_play(bullet_shoot_sound, 60, 1);
		}
		
		var _dir = point_direction(x, y, marker_x, marker_y);
		
		var _hspeed = lengthdir_x(_speed, _dir);
		var _vspeed = lengthdir_y(_speed, _dir);
		x += _hspeed;
		y += _vspeed;
		
		var _dis_for_marker = point_distance(x, y, marker_x, marker_y);
		if(_dis_for_marker <= 7){
			//マーカーにたどり着いた
			var _blast_x = marker_x-blast_size;
			var _blast_y = marker_y-blast_size;
			effect_create_blast(_blast_x, _blast_y, blast_size, 15, 5, blast_color, 1, 12);
			//音
			se_play(bullet_fire_sound, 60, 1);
			
			var _px = o_player.x;
			var _py = o_player.y;
			var _dis_for_player = point_distance(marker_x, marker_y, _px, _py);
			if(_dis_for_player < blast_size){
				//プレイヤーが爆発に当たった
				var _dir_for_player = point_direction(x, y, _px, _py);
				if(!o_player.invincible_enable){
					damage_to_player(damage, 1, _dir_for_player);
				}
			}
			part_type_destroy(pt_type);
			part_system_destroy(pt_sys);
			instance_destroy();
		}
	}

	//弾強制消滅フラグ 本体がスタンしたときなど
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