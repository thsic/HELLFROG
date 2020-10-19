// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_gameover_knockback(_speed){
	if(gameover_knockup_time <= 0){
		var _knockback_speed = 0;
	}
	else{
		var _knockback_speed = _speed;
		gameover_knockup_time--;
		
	}
	
	var _hspeed = lengthdir_x(_knockback_speed, gameover_knockback_direction);
	var _vspeed = lengthdir_y(_knockback_speed, gameover_knockback_direction);
	
	//壁との当たり判定
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
}