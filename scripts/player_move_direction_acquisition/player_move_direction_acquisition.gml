function player_move_direction_acquisition() {
	var _up = false;
	var _down = false;
	var _left = false;
	var _right = false;
	if(keyboard_check(global.up_key)){
		_up = true;
	}
	if(keyboard_check(global.down_key)){
		_down = true;
	}
	if(keyboard_check(global.right_key)){
		_right = true;
	}
	if(keyboard_check(global.left_key)){
		_left = true;
	}

	var _vspeed = 0;
	var _hspeed = 0;
	if(_up){_vspeed += -1};
	if(_down){_vspeed += 1};
	if(_left){_hspeed += -1};
	if(_right){_hspeed += 1};

	//総当り
	var _player_move_direction = 0;
	var _pressing_key = true;
	switch(_vspeed){
	case -1:
		switch(_hspeed){
		case -1:
			_player_move_direction = 90+45;
		break
		case 0:
			_player_move_direction = 90;
		break
		case 1:
			_player_move_direction = 90-45;
		break
		}
	break
	case 0:
		switch(_hspeed){
		case -1:
			_player_move_direction = 180;
		break
		case 0:
			_pressing_key = false;
		break
		case 1:
			_player_move_direction = 0;
		break
		}
	break
	case 1:
		switch(_hspeed){
		case -1:
			_player_move_direction = 270-45;
		break
		case 0:
			_player_move_direction = 270;
		break
		case 1:
			_player_move_direction = 270+45;
		break
		}
	break
	}

	if(_pressing_key = false){
		_player_move_direction = -1;
	}
	return _player_move_direction


}
