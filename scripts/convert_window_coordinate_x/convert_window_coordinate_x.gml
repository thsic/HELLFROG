//画面座標をマップ座標に変換
function convert_window_coordinate_x(_x){
	var _topleft_x = o_camera.x-global.camera_width/2;
	var _result = _topleft_x+_x;

	return _result
}