/// @description Insert description here
// You can write your code in this editor

var	_life_per = life_time/life_time_default;
var _anim_curve = animcurve_get_channel(speed_control_curve, 0);
var _magnification = animcurve_channel_evaluate(_anim_curve, _life_per);
//徐々に減速していく
speed = speed_default*_magnification;

life_time--;
if(life_time <= 0){
	instance_destroy();
}
