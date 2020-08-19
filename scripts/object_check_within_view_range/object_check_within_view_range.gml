///@param view_number,objectid
function object_check_within_view_range(argument0, argument1) {
	//オブジェクトがview内にあるかどうかチェック
	var _view_number = argument0;
	var _target_object = argument1;

	var _target_sprite_width = _target_object.sprite_width;
	var _target_sprite_height = _target_object.sprite_height;
	var _view_x = view_xport[_view_number] - _target_sprite_width;
	var _view_y = view_yport[_view_number] - _target_sprite_height;
	var _view_width = view_wport[_view_number] + _target_sprite_width;
	var _view_height = view_hport[_view_number] + _target_sprite_height;

	var _target_x = _target_object.x;
	var _target_y = _target_object.y;

	var result = false
	if(number_check_within_range(_target_x, _view_x, _view_x+_view_width)){
		if(number_check_within_range(_target_y, _view_y, _view_y+_view_height)){
			result = true
		}
	}

	return result



}
