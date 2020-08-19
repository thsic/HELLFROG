///@param eKLPF,frame
function key_check_pressed_within_certain_frame(argument0, argument1) {
	//指定のキーが一定時間内におされたかどうか

	var _key = argument0;
	var _specified_frame = argument1;

	var _ds_frame = ds_grid_get(global.ds_keyboard_last_pressed_frame, 0, _key);
	if(_ds_frame <= _specified_frame){
		var result = true;
	}
	else{
		var result = false;
	}
	return result



}
