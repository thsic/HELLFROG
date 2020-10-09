// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function is_in_place(_x1, _y1, _x2, _y2, _inst_id){
	var _inst_x = _inst_id.x;
	var _inst_y = _inst_id.y;
	if(_x1 < _inst_x and _inst_x < _x2 and _y1 < _inst_y and _inst_y < _y2){
		return true
	}
	else{
		return false
	}
}