///@param x,y,size,len,dir,objId
//消しゴムみたいな範囲の中にに指定したobjectがあるかどうかチェック Cｺ　←こんなかんじの範囲
var _center_x = argument0;
var _center_y = argument1;
var _collision_size = argument2;
var _length = argument3;
var _direction = argument4;
var _target_object_id = argument5;
var result = true;

var _topside_x = _center_x + lengthdir_x(_collision_size/2, _direction+90);
var _topside_y = _center_y + lengthdir_y(_collision_size/2, _direction+90);
var _downside_x = _center_x + lengthdir_x(_collision_size/2, _direction-90);
var _downside_y = _center_y + lengthdir_y(_collision_size/2, _direction-90);

var _target_x = _target_object_id.x;
var _target_y = _target_object_id.y;

//角度内にtargetがいるかどうか
var _temp_direction = point_direction(_topside_x, _topside_y, _target_x, _target_y);
var _direction_within_target = false;
if(number_check_within_range(_temp_direction, _direction, _direction-90)){
	var _temp_direction2 = point_direction(_downside_x, _downside_y, _target_x, _target_y)
	if(number_check_within_range(_temp_direction2, _direction+90, _direction)){
		_direction_within_target = true;
	}
}

//敵との距離チェック
if(_direction_within_target == true){
	var _distance_for_target = point_distance(_center_x, _center_y, _target_x, _target_y);
	if(_distance_for_target < _length){
		//敵との距離が一定以下ならtrueにする
		result = true;
	}
}

return result
