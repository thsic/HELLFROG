///@param direction,inertia,speed
function player_move_execution(argument0, argument1, argument2) {
	//移動の実行

	var _direction = argument0;
	var _inertia = argument1;//慣性がついてるかどうか
	var _speed = argument2;

	var _vspeed = lengthdir_y(_speed, _direction);
	var _hspeed = lengthdir_x(_speed, _direction);
	var _vspeed_temp = 0;
	var _hspeed_temp = 0;
	var _vspeed_default = _vspeed;
	var _hspeed_default = _hspeed;

	var _collision_width = sprite_get_width(s_playerCollisionMask);
	var _collision_height = sprite_get_height(s_playerCollisionMask);
	
	#region 壁当たり判定
	//壁とくっついているときに進行方向の斜め左右方向のどちらかに空間があればそっちにスライドする
	if(place_free(x+_hspeed, y) == false) {
	
		//ぎりぎり壁に引っかかったときはいい感じに空間の方へスライドさせる
		//空間の方へ近づくほど速くなる
		for(var i=0; i<5; i++){
			if(place_free(x+_hspeed_default, y+_collision_height*(1+i*0.5)) == true){
				_vspeed_temp += abs(_hspeed_default)/8;
			}
			if(place_free(x+_hspeed_default, y-_collision_height*(1+i*0.5)) == true){
				_vspeed_temp -= abs(_hspeed_default)/8;
			}
		}
	}
	if(place_free(x, y+_vspeed) == false) {
	
		//ぎりぎり壁に引っかかったときはいい感じに空間の方へスライドさせる
		for(var i=0; i<5; i++){
			if(place_free(x+_collision_width*(1+i*0.5), y+_vspeed_default) == true){
				_hspeed_temp += abs(_vspeed_default)/8;
			}
			if(place_free(x-_collision_width*(1+i*0.5), y+_vspeed_default) == true){
				_hspeed_temp -= abs(_vspeed_default)/8;
			}
		}
	}


	_vspeed += _vspeed_temp;
	_hspeed += _hspeed_temp;

	//最後に壁との当たり判定
	//x軸で当たり判定確認して衝突したら壁にくっつける
	if(place_free(x, y+_vspeed) == false) {
	    var dir = point_direction(0, 0, 0, _vspeed);
	    move_contact_solid(dir, abs(_vspeed)); // 壁にぴったりくっつける
	    _vspeed = 0;
	}
	//y軸で当たり判定
	if(place_free(x+_hspeed, y) == false) {
	    var dir = point_direction(0, 0, _hspeed, 0);
	    move_contact_solid(dir, abs(_hspeed)); // 壁にぴったりくっつける
	    _hspeed = 0;
	}
	//斜めの当たり判定(これがないと壁にはまる)
	if(place_free(x+_hspeed, y+_vspeed) == false) {
	    var dir = point_direction(0, 0, _hspeed, _vspeed);
		var _diagonal_speed = point_distance(0, 0, _hspeed, _vspeed);
	    move_contact_solid(dir, _diagonal_speed); // 壁にぴったりくっつける
		
		
		if(place_free(x+sign(_hspeed), y) and place_free(x, y+sign(_vspeed))){
			//完全に斜めにくっついた場合(あんまりない)は_vspeed を+1する
			_vspeed = sign(_vspeed);
		}
		else{
			_vspeed = 0;
		}
		
	    _hspeed = 0;
		
		
	}
	#endregion
	
	#region 穴当たり判定
	/*
	var _hole_number = instance_number(o_hole);
	var _px = o_player.x;
	var _py = o_player.y;
	var _hole_id, _ht, _hb, _hl, _hr, _nht, _nhb, _nhl, _nhr;
	var _on_hole_now_id = noone;
	var _on_hole_next_frame_id = noone;
	var _arm_len = 32;
	
	//今穴の上に居るかどうかと次フレームで穴に落ちるかどうか判定
	for(var i=0;i<_hole_number; i++){
		_hole_id = instance_find(o_hole, i);
		_hl = _hole_id.bbox_left;
		_ht = _hole_id.bbox_top;
		_hr = _hole_id.bbox_right;
		_hb = _hole_id.bbox_bottom;
		
		if(is_in_place(_hl, _ht, _hr, _hb, _px, _py)){
			_on_hole_now_id = _hole_id;
		}
		if(is_in_place(_hl, _ht, _hr, _hb, _px+_hspeed, _py+_vspeed)){
			_on_hole_next_frame_id = _hole_id;
		}
		
	}
	
	if(_on_hole_now_id != noone){
		_hl = _on_hole_now_id.bbox_left;
		_ht = _on_hole_now_id.bbox_top;
		_hr = _on_hole_now_id.bbox_right;
		_hb = _on_hole_now_id.bbox_bottom;
	}
	if(_on_hole_next_frame_id != noone){
		_nhl = _on_hole_next_frame_id.bbox_left;
		_nht = _on_hole_next_frame_id.bbox_top;
		_nhr = _on_hole_next_frame_id.bbox_right;
		_nhb = _on_hole_next_frame_id.bbox_bottom;
	}
	
	if(_on_hole_now_id == noone and _on_hole_next_frame_id != noone and !_inertia){
		//今は穴に落ちてないけど次フレームで落ちることになる + 慣性がない 穴に落ちないようにする
		if(_px <= _nhl){
			_hspeed = _nhl - _px - 1;
		}
		if(_nhr <= _px){
			_hspeed = _nhr - _px + 1;
		}
		if(_py <= _nht){
			_vspeed = _nht - _py - 1;
		}
		if(_nhb <= _py){
			_vspeed = _nhb - _py + 1;
		}
		
		
	}
	
	if(_on_hole_now_id != noone and !_inertia){
		//慣性がない状態で穴の上に居ると停止
		_hspeed = 0;
		_vspeed = 0;
		debug_draw_rectnagle(_hl, _ht, _hr, _hb, true, c_green, 1);
	}
	*/
	/*var _near_ground = !is_in_place(_hl+_arm_len, _ht-_arm_len, _hr+_arm_len, _hb+_arm_len, _px, _py);
	if(_on_hole_now_id != noone and !_inertia and _on_hole_next_frame_id != noone and _near_ground){
		//穴の上に居る + 慣性が働いていない + 次フレームで穴から出ない + 崖に近い所
		var _base_direction = _direction+180;
		var _add_angle = 0;
		var _decision_number = 4;
		var _test_dir, _test_x, _test_y, _on_hole, _on_wall;
		var _warp_dir = noone;
		
		for(var i=0; i<_decision_number; i++){
			_add_angle = 180/_decision_number+i;
			_test_dir = _base_direction + _add_angle;
			
			_test_x = lengthdir_x(_arm_len, _test_dir)+_px;
			_test_y = lengthdir_y(_arm_len, _test_dir)+_py;
			
			_on_hole = is_in_place(_hl, _ht, _hr, _hb, _px+_test_x, _py+_test_y);
			_on_wall = place_meeting(_px+_test_x, _py+_test_y, o_wall);
			
			if(!_on_hole and !_on_wall){
				//地面にいる+壁に衝突しない
				
				
			}
		}
	}*/

	#endregion
	
	x += _hspeed;//壁に当たらなかった
	y += _vspeed;



	//var _collision_dicision = wall_collision_decision(x, y, _xtemp, _ytemp)
	/*switch(_collision_dicision){
	case 0:
		x = _xtemp;//壁に当たらなかった
		y = _ytemp;
	
	break
	case 1:
		move_contact_solid(_direction, abs(_speed));//壁にあたった
		x = _xtemp;
	break
	case 2:
		move_contact_solid(_direction, abs(_speed));
		y = _ytemp;
	break
	case 3:
		move_contact_solid(_direction, abs(_speed));
	break	
	}*/




}
