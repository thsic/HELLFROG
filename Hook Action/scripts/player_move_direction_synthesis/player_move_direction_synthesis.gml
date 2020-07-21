///@param movespeed,movedirection,knockbackspeed,knockbackdirection,knockbackpower,stntspeed

var _move_speed = argument0;
var _move_direction = argument1;
var _knockback_speed = argument2;
var _knockback_direction = argument3;
var _knockback_power = argument4//75だと75%ノックバックの力25%移動の力になる
var _synthesized_speed = argument5;

_knockback_speed *= knockback_power;

//https://atarimae.biz/archives/18517
var _hoge = power(_knockback_speed, 2) + power(_synthesized_speed, 2) - power(_move_speed, 2);
var _hogehoge = 2 * _knockback_speed * _synthesized_speed;//2bc
var _fuga = cos(_hoge / _hogehoge);

if(_knockback_direction > _move_direction){
	var _result = _knockback_direction - _fuga;
	//var _result = _fuga - _knockback_direction;
	sdm(_knockback_direction)
}
else{
	var _result = _move_direction - _fuga;
	//var _result = _fuga - _move_direction;
	sdm(_move_direction)
}


return _result
