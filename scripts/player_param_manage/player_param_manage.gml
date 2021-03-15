function player_param_manage() {
	//プレイヤーのいろんな状態の管理
	
	//プレイヤー座標を画面座標に変換して向いている方角計算
	var _x = x - camera_get_view_x(view_camera[0]);
	var _y = y - camera_get_view_y(view_camera[0]);
	var _mx = window_mouse_get_x()/global.window_magnification;
	var _my = window_mouse_get_y()/global.window_magnification;
	
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
		
	//subimage ライフスティール時
	/*if(subimage != 0){
		if(lifesteal_anim_time = 0){
			subimage++;
			lifesteal_anim_time = 5;
			if(subimage = 4){
				subimage = 0;
			}
		}
		else{
			lifesteal_anim_time--;
		}
	}*/
	

	

}
