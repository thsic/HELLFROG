function player_param_manage() {
	//プレイヤーのいろんな状態の管理
	if(global.gamestate = gamestate.main){
		player_direction = point_direction(x, y, mouse_x, mouse_y);
		can_knockback = true;
		can_shotgun_fire = true;
	}



}