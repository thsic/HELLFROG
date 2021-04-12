//
function start_screen_shake(_power, _time, _dir){
	o_camera.screen_shake_time = _time;
	o_camera.screen_shake_time_base = _time;
	o_camera.screen_shake_power = _power;
	o_camera.screen_shake_direction = _dir;
}