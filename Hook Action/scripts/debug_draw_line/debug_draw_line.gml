///@param x1,y1,x2,y2,color,time

var _x1 = argument0;
var _y1 = argument1;
var _x2 = argument2;
var _y2 = argument3;
var _color = argument4;
var _time = argument5;

with(instance_create_layer(0, 0, "Effects", o_debugEffect)){
	type = eDebEffectType.Line;
	x1 = _x1;
	y1 = _y1;
	x2 = _x2;
	y2 = _y2;
	color = _color;
	alarm[0] = _time;
}
