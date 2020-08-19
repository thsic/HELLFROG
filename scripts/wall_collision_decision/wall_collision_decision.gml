///@param x,y,x2,y2,dir,spd
function wall_collision_decision(argument0, argument1, argument2, argument3) {
	//何にも衝突してないなら0 上下の壁に衝突してたら1 左右だと2 どっちもに壁があるなら3

	var _x = argument0;
	var _y = argument1;
	var _x2 = argument2;
	var _y2 = argument3;

	var _result = 0;

	if(place_meeting(_x2, _y2, o_wall)){
		_result = 3;
	}
	if(place_meeting(_x, _y2, o_wall)){
		_result = 2;
	}
	if(place_meeting(_x2, _y, o_wall)){
		_result = 1;
	}
	return _result



}
