///@param movespeed,movedirection,inertiaspeed,inertiadirection,inertiapower
//ノックバックスピードと移動スピードの合成

var _move_speed = argument0;
var _move_direction = argument1;
var _inertia_speed = argument2;
var _inertia_direction = argument3;
var _inertia_power = argument4//75だと75%ノックバックの力25%移動の力になる

//inertiapowerの値によっていろいろ変える
_inertia_speed *= inertia_power;

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


return _synthesized_speed;