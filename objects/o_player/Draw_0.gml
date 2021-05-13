if(draw_player){
	#region 残像描画
	var _data_height = ds_grid_height(trail_data);
	for(var i=0; i<_data_height; i++){
		if(trail_data[# TrailData.Enable, i] == true){
			var _x = trail_data[# TrailData.X, i];
			var _y = trail_data[# TrailData.Y, i];
			var _alpha = trail_data[# TrailData.Alpha, i];
			var _look_right = trail_data[# TrailData.LookRight, i];
		
			if(_look_right){
				var _x_scale = 1;
			}
			else{
				var _x_scale = -1;
			}
		
			draw_sprite_ext(s_playerFace, 0, _x, _y, _x_scale, 1, 0, trail_color, _alpha);
			draw_sprite_ext(s_playerWalk, 0, _x, _y, _x_scale, 1, 0, trail_color, _alpha);
		}
	}

	#endregion

	#region フック描画
	switch(hook_state){
	case hookState.Shooting:
	case hookState.GrabWall:
	case hookState.GrabEnemy:
	case hookState.Shrink:
		//ワイヤー描画
		//先端から描画していく(そうしないとワイヤーの進んでる感がでない)
		draw_set_color(c_white);
	
		var mouth_pos_y = y - 3;
	
		var _wire_sprite = s_hookWire;
		var _wire_radius = random_range(3, 3);//ワイヤーの半径
		var _sprite_width = sprite_get_width(_wire_sprite);
		var _hook_length = point_distance(x, mouth_pos_y, hook_point_x, hook_point_y);
		var _hook_point_direction = point_direction(hook_point_x, hook_point_y, x, mouth_pos_y);
		var _loop_amount = _hook_length/_sprite_width/2-1;
		var _tex = sprite_get_texture(_wire_sprite, 0);
	
		var _upside_x = lengthdir_x(_wire_radius, _hook_point_direction+90)+hook_point_x;
		var _upside_y = lengthdir_y(_wire_radius, _hook_point_direction+90)+hook_point_y;
		var _downside_x = lengthdir_x(_wire_radius, _hook_point_direction-90)+hook_point_x;
		var _downside_y = lengthdir_y(_wire_radius, _hook_point_direction-90)+hook_point_y;
	
		draw_primitive_begin_texture(pr_trianglestrip, _tex);
	
		var _leng_dir_x = lengthdir_x(_sprite_width, _hook_point_direction);
		var _leng_dir_y = lengthdir_y(_sprite_width, _hook_point_direction);
		for(var i=0; i<_loop_amount; i++){
		
		
			draw_vertex_texture(_upside_x, _upside_y, 0, 0);
			draw_vertex_texture(_downside_x, _downside_y, 0, 1);
		
			_upside_x += _leng_dir_x;
			_upside_y += _leng_dir_y;
			_downside_x += _leng_dir_x;
			_downside_y += _leng_dir_y;
		
			draw_vertex_texture(_upside_x, _upside_y, 1, 0);
			draw_vertex_texture(_downside_x, _downside_y, 1, 1);
		
			_upside_x += _leng_dir_x;
			_upside_y += _leng_dir_y;
			_downside_x += _leng_dir_x;
			_downside_y += _leng_dir_y;
		}
		//ワイヤー最後らへん描画
		//(↓ forの最後の処理を打ち消す)
		_upside_x -= _leng_dir_x;
		_upside_y -= _leng_dir_y;
		_downside_x -= _leng_dir_x;
		_downside_y -= _leng_dir_y;
	
		var _upside_tip_x = lengthdir_x(_wire_radius, _hook_point_direction+90)+x;
		var _upside_tip_y = lengthdir_y(_wire_radius, _hook_point_direction+90)+mouth_pos_y;
		var _downside_tip_x = lengthdir_x(_wire_radius, _hook_point_direction-90)+x;
		var _downside_tip_y = lengthdir_y(_wire_radius, _hook_point_direction-90)+mouth_pos_y;
	
		//この辺の処理よくわからん なんかうまくいった
		var _tip_length = point_distance(_upside_x, _upside_y, _upside_tip_x, _upside_tip_y);
		var _texture_width = _tip_length/(_sprite_width*2);
	
		draw_vertex_texture(_upside_x, _upside_y, 0, 0);
		draw_vertex_texture(_downside_x, _downside_y, 0, 1);
		draw_vertex_texture(_upside_tip_x, _upside_tip_y, _texture_width, 0);
		draw_vertex_texture(_downside_tip_x, _downside_tip_y, _texture_width, 1);
	
		draw_primitive_end();
		//フック先端描画
		if(_loop_amount > 0){//ワイヤーが短すぎると描画しない
			draw_sprite_ext(s_hookTip, 0, hook_point_x, hook_point_y, 1, 1, _hook_point_direction-180, c_white, 1);
		}
	}
	#endregion

	#region プレイヤー描画

	//通常時 歩行
	var _sprite = s_player;
	var _sprite_body_walk = s_playerWalk;
	var _sprite_body_stand = s_playerStand;
	var _sprite_face_normal = s_playerFace;
	var _sprite_face_hooking = s_playerFace2;
	var 
	var _face_up = false;


	//体スプライト
	if(walk_time > 0){
		//歩きスプライト
		var _sprite_body = _sprite_body_walk;
		var _frame_time = 5;
		var _t = walk_time mod (_frame_time*sprite_get_number(_sprite_body));
		var _body_subimage = floor(_t/_frame_time);
	
		//subimageが0のときだけ顔を上げる
		if(_body_subimage == 0){
			_face_up = true;
		}
	
	}
	else{
		//立ち
		var _sprite_body = _sprite_body_stand;
		var _body_subimage = 0
	}

	//顔スプライト
	if(hook_state == hookState.Idle){
		//通常時
		var _sprite_face = _sprite_face_normal;
	}
	else{
		var _sprite_face = _sprite_face_hooking;
	}

	var _sprite_width = sprite_get_width(_sprite);

	//無敵時間なら透明に
	if(invincible_enable){
		var _transparency_time = invincible_time_default/5;
		if(current_time mod 2 != 0){
			_alpha = 0;
		}
		else{
			_alpha = 1;
		}
		if(_transparency_time > invincible_time){
			_alpha = 1;//無敵時間切れる直前は透明にならない
		}
	}
	else{
		var _alpha = 1;
	}



	if(global.gamestate != gamestate.gameover){
		//通常時
		var _sprite_y = y;
		var _sprite_dir = 0;
	}
	else{
		//ゲームオーバー時
		var _gameover_time_ratio = 1-gameover_knockup_time/gameover_knockup_time_default;
		var _gameover_anim_curve = animcurve_get_channel(ac_gameoverKnockup, 0);
		var _knockup_height = animcurve_channel_evaluate(_gameover_anim_curve, _gameover_time_ratio);
		var _sprite_y = y+_knockup_height;
		var _sprite_dir = 90;
	
		//常に仰向けになる
		look_right = true;
	}

	var _face_y = _sprite_y;
	if(_face_up){
		//顔を1ドットだけ上げる
		var _face_y = _sprite_y-1;
	}

	if(look_right){
		var _x_scale = 1;
	}
	else{
		var _x_scale = -1;
	}

	//draw_sprite_ext(_sprite, subimage, x, _sprite_y, 1, 1, _sprite_dir, c_white, _alpha);
	draw_sprite_ext(_sprite_face, 0, x, _face_y, _x_scale, 1, _sprite_dir, c_white, _alpha);
	draw_sprite_ext(_sprite_body, _body_subimage, x, _sprite_y, _x_scale, 1, _sprite_dir, c_white, _alpha);



	#endregion

	#region 銃描画
	var _gun_sprite = s_cursedGun;
	if(look_right){
		draw_sprite_ext(_gun_sprite, 0, x, _sprite_y+2, 1, 1, player_direction+_sprite_dir, c_white, _alpha);
	}
	else{
		draw_sprite_ext(_gun_sprite, 0, x, _sprite_y+2, -1, 1, player_direction-180+_sprite_dir, c_white, _alpha);
	}

	#endregion

	if(gun_charge_enable == true){
	
	}
	draw_set_color(c_white);
}
