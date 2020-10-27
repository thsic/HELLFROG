///@param x,y,dir,len,color,time
function debug_draw_angle(argument0, argument1, argument2, argument3, argument4, argument5) {

	var _x1 = argument0;
	var _y1 = argument1;
	var _direction = argument2;
	var _length = argument3;
	var _color = argument4;
	var _time = argument5;

	var _x2 = _x1 + lengthdir_x(_length, _direction);
	var _y2 = _y1 + lengthdir_y(_length, _direction);

	with(instance_create_layer(0, 0, "DebugEffects", o_debugEffect)){
		type = eDebEffectType.Line;
		x1 = _x1;
		y1 = _y1;
		x2 = _x2;
		y2 = _y2;
		color = _color;
		alarm[0] = _time;
	}



}
