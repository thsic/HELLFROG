// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_assassin_brink(){
	var _player_x = o_player.x;
	var _player_y = o_player.y;
	
	var _direction = point_direction(x, y, _player_x, _player_y);
	var _xx = lengthdir_x(16, _direction)+_player_x;
	var _yy = lengthdir_y(16, _direction)+_player_y;
	var _warp_possible = true;
	
	if(place_free(_xx, _yy)){
		//ワープ先壁が無く、普通にワープできる
		var _warp_x = _xx;
		var _warp_y = _yy;
	}
	else{
		//ワープ先が壁なら16回place_freeしてもとの座標に一番近い座標にワープ
		var _decision = 16;
		var _angle = 0;
		var _nearest_position_length = 10000;
		
		for(var i=0; i<_decision; i++){
			var _test_x = lengthdir_x(16, _angle) + _player_x;
			var _test_y = lengthdir_y(16, _angle) + _player_y;
			
			if(place_free(_test_x, _test_y)){
				//今まで測った一番近い所と比べてtestが近かったらそれをnearest_position_lengthにする
				var _test_position_length = point_distance(_xx, _yy, _test_x, _test_y);
				if(_test_position_length < _nearest_position_length){
					_nearest_position_length = _test_position_length;
					var _nearest_position_x = _test_x;
					var _nearest_position_y = _test_y;
				}
			}
			_angle += 360/_decision;
			
		}
		if(_nearest_position_length < 10000){
			var _warp_x = _nearest_position_x;
			var _warp_y = _nearest_position_y;
			_direction = point_direction(x, y, _warp_x, _warp_y);
			
		}
		else{
			//16回判定して全部だめだった場合　ほぼ無い 一応バグ防止
			enemy_change_state(EnemyState.WaitForMovement);
			weapon_charge_time = weapon_charge_time_default;
			_warp_possible = false;
		}
	}
	
	if(_warp_possible == true){
		//ブリンクのエフェクト生成
		var _brink_length = point_distance(x, y, _warp_x, _warp_y);
		var _effect_amount = _brink_length/16;
		var _effect_sprite_width = sprite_get_width(s_brinkEffect);
		
		for(var i=0; i<_effect_amount; i++){
			//エフェクト場所決める
			var _effect_wposition = random(_brink_length - _effect_sprite_width) + _effect_sprite_width/2;
			var _effect_hposition = random_range(-8, 8);
			
			var _effect_x = lengthdir_x(_effect_wposition, _direction)+x;//⇔
			var _effect_y = lengthdir_y(_effect_wposition, _direction)+y;
			
			_effect_x += lengthdir_x(_effect_hposition, 45);//上下
			_effect_y += lengthdir_y(_effect_hposition, 45);
			
			//エフェクト長さと生存時間決める
			var _effect_length = irandom_range(48, 64);
			var _effect_lifetime = irandom_range(4, 7);
			var _brink_color = make_color_rgb(120, 80, 120);
			
			effect_create_brink(_effect_x, _effect_y, _direction, _effect_lifetime, _effect_length, _brink_color);
		}
		
		//ワープ
		x = _warp_x;
		y = _warp_y;
	}
}