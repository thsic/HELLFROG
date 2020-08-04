///@param x,y,len,dir,objId
//どれぐらいの長さでobjにあたっているか計算
//2分の1を続けていって求める

var _x = argument0;
var _y = argument1;
var _length = argument2;
var _direction = argument3;
var _target_object = argument4;

var _loop_limit = 8;
var _center_point_length = _length/2;//中間までのながさ　
var _backside_point_length = 0;//一番うしろ
var _frontside_point_length = _length;//先端

for(var i=0; i<_loop_limit; i++){
	var _backside_point_x = _x + lengthdir_x(_backside_point_length, _direction);
	var _backside_point_y = _y + lengthdir_y(_backside_point_length, _direction);
	var _center_point_x = _x + lengthdir_x(_center_point_length, _direction);
	var _center_point_y = _y + lengthdir_y(_center_point_length, _direction);
	var _collision_backside_object_id = collision_line(_backside_point_x, _backside_point_y, _center_point_x, _center_point_y, _target_object, false, true);
	
	//壁の位置が中心点よりも後ろにあるか前にあるか
	if(_collision_backside_object_id != noone){
		//後ろ側に壁がある
		_length /= 2;//ながさ半分に
		//後ろ側の点(backside_point_length)は動かないのでそれを基準に
		_center_point_length = _backside_point_length + _length/2;
		_frontside_point_length = _backside_point_length + _length;
		
	}
	else{
		//前側にある
		_length /= 2;//長さ半分に
		//前側の点は動かないのでそれを基準にする
		_center_point_length = _frontside_point_length - _length/2;
		_backside_point_length = _frontside_point_length - _length;
		
	}
	if(_length < 1){
		break//forからぬける
	}
}

return _center_point_length;
