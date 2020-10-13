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
