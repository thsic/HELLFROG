///@param movespeed,movedirection,inertiaspeed,inertiadirection,inertiapower,pressedOppoKey
function player_move_speed_synthesis(argument0, argument1, argument2, argument3, argument4) {
	//慣性の方角と速度をいい感じにキー入力に合わせていく感じ

	var _move_speed = argument0;
	var _move_direction = argument1;
	var _inertia_speed = argument2;
	var _inertia_direction = argument3;
	var _opposite_key_pressed = argument4;

	var _inertia_for_move_power = ds_grid_get(global.ds_player_knockback, now_knockback_type, eK_param.InertiaForMovePower);
	if(_opposite_key_pressed == true){
		_inertia_for_move_power *= OPPOSITEKEY_POWER_FOR_INERTIA
	}

	//移動方向と速さを座標に変換
	var _move_point_x = lengthdir_x(_move_speed, _move_direction);
	var _move_point_y = lengthdir_y(_move_speed, _move_direction);
	var _inertia_point_x = lengthdir_x(_inertia_speed, _inertia_direction);
	var _inertia_point_y = lengthdir_y(_inertia_speed, _inertia_direction);

	//inertia_pointを起点としてmove_pointの方角を計算
	var _corrected_direction = point_direction(_inertia_point_x, _inertia_point_y, _move_point_x, _move_point_y);
	//補正する距離
	var _corrected_distance = _move_speed*_inertia_for_move_power;//慣性に対してのキー入力の影響力(1で100%)

	//inertiapointから上で計算した距離と方角に向かって座標計算
	var _finally_point_x = _inertia_point_x + lengthdir_x(_corrected_distance, _corrected_direction);
	var _finally_point_y = _inertia_point_y + lengthdir_y(_corrected_distance, _corrected_direction);



	//inertia_pointとmove_pointの中間の座標を求める
	var _inertia_to_intermediate_distance = point_distance(_inertia_point_x, _inertia_point_y, _move_point_x, _move_point_y);
	_inertia_to_intermediate_distance /= 2;
	var _intermediate_point_x = _inertia_point_x + lengthdir_x(_inertia_to_intermediate_distance, _corrected_direction);
	var _intermediate_point_y = _inertia_point_y + lengthdir_y(_inertia_to_intermediate_distance, _corrected_direction);
	//プレイヤーの位置から中間の座標までの距離を計算
	var _player_to_intermediate_distance = point_distance(0, 0, _intermediate_point_x, _intermediate_point_y);

	//計算した座標から距離を求める
	//var _finally_distance = point_distance(0, 0, _finally_point_x, _finally_point_y);

	debug_intermediate_point_x = _intermediate_point_x;
	debug_intermediate_point_y = _intermediate_point_y;

	if(_player_to_intermediate_distance < _move_speed){//finally_pointが半径move_speedの円の中にあるか確認
		var _finally_speed = point_distance(0, 0, _finally_point_x, _finally_point_y);
		//sdm("finnally")
		return _finally_speed
	}
	else{//慣性にそれなりの速度があって、慣性とキー入力の方角が近いということなので慣性の値を変えずに進む
		//慣性の速度が速いのにその方向にキー入力していたら減速するようになって悲しいので
		//sdm("inertia")
		return _inertia_speed
	}


	/*
	//力の合成を使う
	//シータを求める
	var _theta = angle_difference(_inertia_direction, _move_direction);
	//(P1 cos(θ)+P2)2+ (P1 sin(θ))2

	var _hoge = _inertia_speed * cos(_theta) + _move_speed;
	var _hoge = power(_hoge, 2);

	var _hogehoge = _inertia_speed + sin(_theta)
	var _hogehoge = power(_hogehoge, 2);

	var _huga = _hoge + _hogehoge;
	var _synthesized_speed = sqrt(_huga);

	//_synthesized_speed *= 1 - inertia_power * 0.5;
	*/



}
