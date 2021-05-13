function enemy_move_execution() {
	//移動の実行

	var _vspeed = v_speed;
	var _hspeed = h_speed;
	var _collision_wall_speed_magnification = 0.5;//壁にぶつかった時の減衰度合い

	//最後に壁との当たり判定
	//x軸で当たり判定確認して衝突したら壁にくっつける
	if(place_free(x, y+_vspeed) == false) {
	    var dir = point_direction(0, 0, 0, _vspeed);
	    move_contact_solid(dir, abs(_vspeed)); // 壁にぴったりくっつける
	    _vspeed = 0;
		_hspeed /= _collision_wall_speed_magnification;
	}
	//y軸で当たり判定
	if(place_free(x+_hspeed, y) == false) {
	    var dir = point_direction(0, 0, _hspeed, 0);
	    move_contact_solid(dir, abs(_hspeed)); // 壁にぴったりくっつける
	    _hspeed = 0;
		_hspeed /= _collision_wall_speed_magnification;
	}
	
	//チェックポイントマーカー内には入れない
	var _nearest_cm = instance_nearest(x, y, o_checkPointMarker);
	var _cmb_size = _nearest_cm.barrier_size;
	var _cmx = _nearest_cm.x - _cmb_size/2;
	var _cmy = _nearest_cm.y - _cmb_size/2;
	
	if(is_in_place(_cmx, _cmy, _cmx+_cmb_size, _cmy+_cmb_size, x+_hspeed, y+_vspeed)){
		_hspeed = 0;
		_vspeed = 0;
		
	}
	
	//ドアにも入れない
	if(instance_exists(o_door)){
		var _n_door = instance_nearest(x, y, o_door);
		var _wall_size = 16;
	
		if(is_in_place(_n_door.x-_wall_size, _n_door.y-_wall_size, _n_door.x+_wall_size, _n_door.y+_wall_size, 
		x+_hspeed, y+_vspeed)){
			_hspeed = 0;
			_vspeed = 0;
		}
	}

	x += _hspeed;
	y += _vspeed;





}
