if(global.gamestop == false){
	speed = speed_default;
	
	if(acid_gen_time <= 0){
		life_time--;
		if(life_time <= 0){
			instance_destroy();
			surface_free(acid_surf);//acidが全部消えてからsurfaceをfreeにする acid_gen_timeとlife_timeが分かれているのはそのため
		}
	}
	else{
		acid_gen_time--;
		
		//acidを生成する
		var _acid_timer = ceil((sprite_get_width(s_acidBullet)*0.5) / speed);
		if(acid_gen_time mod _acid_timer == 0){
			//生成処理---------------
			var _acid_dir = direction
			var _surf_id = acid_surf;
			var _acid_lifetime = acid_lifetime;
			with(instance_create_layer(x, y, "MapObject", o_enemyBulletAcid)){
				direction = _acid_dir;
				surf = _surf_id;
				life_time = _acid_lifetime;
				life_time_default = _acid_lifetime;
			}
		
			//------------------------
		}
	}
	
	//壁にあたると消える
	var _id = instance_nearest(x, y, o_wall);
	var _dis = point_distance(x, y, _id.x, _id.y);
	if(_dis < 16){
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