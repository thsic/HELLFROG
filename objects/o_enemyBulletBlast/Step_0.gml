if(global.gamestop == false){
	
	
	if(aim_time <= 0){
		//爆発
		var _px = o_player.x;
		var _py = o_player.y;
		
		var _blast_x = x-blast_size;
		var _blast_y = y-blast_size;
		effect_create_blast(_blast_x, _blast_y, blast_size, 10, 6, blast_color, 1, 20);
		var _dis_for_player = point_distance(x, y, _px, _py);
		
		if(_dis_for_player < blast_size){
			//プレイヤーが爆発に当たった
			var _dir_for_player = point_direction(x, y, _px, _py);
			if(!o_player.invincible_enable){
				damage_to_player(damage, 1, _dir_for_player);
			}
		}
		
		instance_destroy();
	}
	else{
		aim_time--;
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