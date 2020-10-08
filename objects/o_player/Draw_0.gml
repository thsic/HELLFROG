
#region プレイヤー描画

//通常時 歩行
var _sprite = s_player;
var _sprite_width = sprite_get_width(_sprite);

if(mouse_x < x){
	look_direction = LookDirection.Left;
}
else{
	look_direction = LookDirection.Right;
}

switch(look_direction){
case LookDirection.Right:
	draw_sprite_ext(_sprite, 0, x, y, 1, 1, 0, c_white, 1);
break
case LookDirection.Left:
	
	draw_sprite_ext(_sprite, 0, x, y, -1, 1, 0, c_white, 1);
break
}

#endregion
#region 銃描画
var _gun_sprite = s_cursedGun;
switch(look_direction){
case LookDirection.Right:
	draw_sprite_ext(_gun_sprite, 0, x, y+2, 1, 1, player_direction, c_white, 1);
break
case LookDirection.Left:
	draw_sprite_ext(_gun_sprite, 0, x, y+2, -1, 1, player_direction-180, c_white, 1);
break
}
#endregion



if(debug_mode or DEBUGMODE){
	draw_sprite(s_playerCollisionMask, 0, x, y);
}

#region フック描画
switch(hook_state){
case hookState.Shooting:
case hookState.GrabWall:
case hookState.GrabEnemy:
case hookState.Shrink:
	/*draw_set_color(c_green);
	draw_line(x, y, hook_point_x, hook_point_y);*/
	//ワイヤー描画
	draw_set_color(c_white);
	
	var _wire_sprite = s_hookWire;
	var _wire_radius = random_range(1.1, 1.3);//ワイヤーの半径
	var _sprite_width = _wire_sprite;
	var _hook_length = point_distance(x, y, hook_point_x, hook_point_y);
	var _loop_amount = _hook_length/_sprite_width/2;
	var _hook_point_direction = point_direction(x, y, hook_point_x, hook_point_y);
	var _tex = sprite_get_texture(_wire_sprite, 0);
	
	var _upside_x = lengthdir_x(_wire_radius, _hook_point_direction+90)+x;
	var _upside_y = lengthdir_y(_wire_radius, _hook_point_direction+90)+y;
	var _downside_x = lengthdir_x(_wire_radius, _hook_point_direction-90)+x;
	var _downside_y = lengthdir_y(_wire_radius, _hook_point_direction-90)+y;
	
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
	
	var _upside_tip_x = lengthdir_x(_wire_radius, _hook_point_direction+90)+hook_point_x;
	var _upside_tip_y = lengthdir_y(_wire_radius, _hook_point_direction+90)+hook_point_y;
	var _downside_tip_x = lengthdir_x(_wire_radius, _hook_point_direction-90)+hook_point_x;
	var _downside_tip_y = lengthdir_y(_wire_radius, _hook_point_direction-90)+hook_point_y;
	
	var _tip_length = point_distance(_upside_x, _upside_y, _upside_tip_x, _upside_tip_y);
	var _texture_width = _tip_length/_sprite_width;
	
	draw_vertex_texture(_upside_tip_x, _upside_tip_y, 1-_texture_width, 0);
	draw_vertex_texture(_downside_tip_x, _downside_tip_y, 1-_texture_width, 1);
	draw_primitive_end();
	//フック先端描画
	draw_sprite_ext(s_hookTip, 0, hook_point_x, hook_point_y, 1, 1, _hook_point_direction, c_white, 1);
}
#endregion
if(gun_charge_enable == true){
	draw_charge_bar();
}
draw_set_color(c_white);
