///@param x,y,size,outline,color,time

var _x = argument0;
var _y = argument1;
var _size = argument2;
var _outline = argument3;
var _color = argument4;
var _time = argument5;

with(instance_create_layer(0, 0, "Effects", o_debugEffect)){
	type = eDebEffectType.Line;
	x1 = _x;
	y1 = _y;
	size = _size;
	outline = _outline;
	color = _color;
	alarm[0] = _time;
}
