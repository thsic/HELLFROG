function player_param_manage() {
	//プレイヤーのいろんな状態の管理
	
	//プレイヤー座標を画面座標に変換して向いている方角計算
	var _x = x - camera_get_view_x(view_camera[0]);
	var _y = y - camera_get_view_y(view_camera[0]);
	var _mx = global.vmouse_x;
	var _my = global.vmouse_y;
	
	player_direction = point_direction(_x, _y, _mx, _my);
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
		
	//左右向く
	var _px = x - camera_get_view_x(view_camera[0]);
	if(global.vmouse_x < _px){
		look_right = false;
	}
	else{
		look_right = true;
	}

}
