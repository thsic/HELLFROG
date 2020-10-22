// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function is_in_place(_x1, _y1, _x2, _y2, _target_x, _target_y){
	if(_x1 < _target_x and _target_x < _x2 and _y1 < _target_y and _target_y < _y2){
		return true
	}
	else{
		return false
	}
}