///@param x1,y1,x2,y2,outline,color,time
function debug_draw_rectnagle(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {

	var _x = argument0;
	var _y = argument1;
	var _x2 = argument2;
	var _y2 = argument3;
	var _outline = argument4;
	var _color = argument5;
	var _time = argument6;

	with(instance_create_layer(0, 0, "DebugEffects", o_debugEffect)){
		type = eDebEffectType.Rectangle;
		x1 = _x;
		y1 = _y;
		x2 = _x2;
		y2 = _y2;
		outline = _outline;
		color = _color;
		alarm[0] = _time;
	}



}
