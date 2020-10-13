///@param view_number,objectid
function object_check_within_view_range(_camera_id, _target_object) {
	//オブジェクトがview内にあるかどうかチェック
	
	var _camera_width = camera_get_view_width(_camera_id);
	var _camera_height = camera_get_view_height(_camera_id);
	var _camera_x = o_camera.x-_camera_width/2;
	var _camera_y = o_camera.y-_camera_height/2;
	
	//スプライトが完全に見えないかどうか
	var _target_sprite_width = _target_object.sprite_width;
	var _target_sprite_height = _target_object.sprite_height;
	var _view_x = _camera_x - _target_sprite_width;
	var _view_y = _camera_y - _target_sprite_height;
	var _view_width = _camera_width + _target_sprite_width*2;
	var _view_height = _camera_height + _target_sprite_height*2;

	var _target_x = _target_object.x;
	var _target_y = _target_object.y;
	
	//debug_draw_rectnagle(_view_x, _view_y, _view_x+_view_width, _view_y+_view_height, true, c_orange, 1);
	var result = false
	if(number_check_within_range(_target_x, _view_x, _view_x+_view_width)){
		if(number_check_within_range(_target_y, _view_y, _view_y+_view_height)){
			result = true
		}
	}

	return result



}
