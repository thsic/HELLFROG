///@param movespeed,movedirection,inertiaspeed,inertiadirection,inertiapower,stntspeed

var _move_speed = argument0;
var _move_direction = argument1;
var _inertia_speed = argument2;
var _inertia_direction = argument3;
var _inertia_power = argument4//75だと75%ノックバックの力25%移動の力になる
var _synthesized_speed = argument5;

_inertia_speed *= inertia_power;

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
}*/


return _result
