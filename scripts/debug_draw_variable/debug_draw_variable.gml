///@param x,y,var,color,time
function debug_draw_variable(argument0, argument1, argument2, argument3, argument4) {

	var _x = argument0;
	var _y = argument1;
	var _variable = argument2;
	var _color = argument3;
	var _time = argument4;

	with(instance_create_layer(0, 0, "Effects", o_debugEffect)){
		type = eDebEffectType.Variable;
		x1 = _x;
		y1 = _y;
		variable = _variable;
		color = _color;
		alarm[0] = _time;
	}



}
