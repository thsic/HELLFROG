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
	
	
	//溶岩
	var _frame = floor(room_speed / LAVA_TICKS_PER_SECOND);
	if(global.game_time mod _frame == 0
	and !inertia_enable
	and hook_state != hookState.Shrink){
		var _on_damage_field = false;
		var _damage_field_num = instance_number(o_damageField);
		for(var i=0; i<_damage_field_num; i++){
			var _id = instance_find(o_damageField, i);
			var _x = _id.x;
			var _y = _id.y;
		
		
			//フィールドの当たり判定が四角形の場合
			var _w = _id.field_width;
			var _h = _id.field_height;
			
			if(is_in_place(_x-_w/2, _y-_h/2, _x+_w/2, _y+_h/2, x, y)){
				_on_damage_field = true;
				break;
			}
		}
	
		//ダメージ床踏んでいる
		if(_on_damage_field){
			damage_to_player(LAVA_DAMAGE * global.dot_damage, 0, player_direction+180);
			
			if(!audio_is_playing(a_lava)){
				se_play(a_lava, 70, 1);
			}
		}
	}
}
