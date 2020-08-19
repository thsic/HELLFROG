///@param movespeed,movedirection,inertiaspeed,inertiadirection,inertiapower,pressedOppoKey
function player_move_direction_synthesis(argument0, argument1, argument2, argument3, argument4) {
	//慣性の方角と速度をいい感じにキー入力に合わせていく感じ

	var _move_speed = argument0;
	var _move_direction = argument1;
	var _inertia_speed = argument2;
	var _inertia_direction = argument3;
	var _opposite_key_pressed = argument4;

	var _inertia_for_move_power = ds_grid_get(global.ds_player_knockback, now_knockback_type, eK_param.InertiaForMovePower);
	if(_opposite_key_pressed == true){
		_inertia_for_move_power *= OPPOSITEKEY_POWER_FOR_INERTIA//ボタンが押されてから数フレームの間はキー入力の慣性補正を倍にする
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
	//中間座標までの距離とmove_speedでどっちが高いか比べる
	if(_player_to_intermediate_distance < _move_speed){//finally_pointが半径move_speedの円の中にあるか確認
		var _finally_direction = point_direction(0, 0, _finally_point_x, _finally_point_y);
		return _finally_direction
	}
	else{//慣性にそれなりの速度があって、慣性とキー入力の方角が近いということなので慣性の値を変えずに進む
		//慣性の速度が速いのにその方向にキー入力していたら減速するようになって悲しいので
		return _inertia_direction
	}


	/*movespeed,movedirection,inertiaspeed,inertiadirection,inertiapower,stntspeed

	var _move_speed = argument0;
	var _move_direction = argument1;
	var _inertia_speed = argument2;
	var _inertia_direction = argument3;
	var _inertia_power = argument4//75だと75%ノックバックの力25%移動の力になる
	var _synthesized_speed = argument5;

	/*_inertia_speed *= inertia_power;

	//https://atarimae.biz/archives/18517
	var _hoge = power(_inertia_speed, 2) + power(_synthesized_speed, 2) - power(_move_speed, 2);
	var _hogehoge = 2 * _inertia_speed * _synthesized_speed;//2bc
	var _fuga = cos(_hoge / _hogehoge);


	///if(_inertia_direction > _move_direction){
		var _result = _inertia_direction - _fuga;
		//var _result = _fuga - _inertia_direction;
		sdm("iner")
	//}
	/*else{
		var _result = _move_direction - _fuga;
		//var _result = _fuga - _move_direction;
		sdm("move")
	}

	return _result*/



}
