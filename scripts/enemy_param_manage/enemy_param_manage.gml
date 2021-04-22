//
function enemy_param_manage(){
	life_time++;
	if(damage_flash_time > 0){
		damage_flash_time--;
	}
	
	var _distance_for_player = point_distance(o_player.x, o_player.y, x, y);
	if(_distance_for_player > 350){
		//プレイヤーとすごく離れていたら放置
		idle_mode = true;
	}
	else{
		idle_mode = false;
	}
	
	if(hitstop_time >= 0){
		hitstop_time--;
	}
	
}