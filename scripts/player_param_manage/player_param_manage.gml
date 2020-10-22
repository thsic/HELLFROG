function player_param_manage() {
	//プレイヤーのいろんな状態の管理
	//if(global.gamestate = gamestate.main){
		player_direction = point_direction(x, y, mouse_x, mouse_y);
		can_knockback = true;
		can_shotgun_fire = true;
		if(invincible_time > 0){//無敵時間
			invincible_time--;
			invincible_enable = true;
		}
		else{
			invincible_enable = false;
			invincible_time_default = 0;
		}
		
	//}

	

}
