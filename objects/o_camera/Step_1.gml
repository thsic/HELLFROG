//カーソルにはややゆっくり追従するけどプレイヤーにはぴったりついてくカメラ

if(follow != noone){

	var _fx = follow.x - camera_get_view_x(view_camera[0]);
	var _fy = follow.y - camera_get_view_y(view_camera[0]);
	var _mx = global.vmouse_x;
	var _my = global.vmouse_y;
	
	var _view_direction = point_direction(_fx, _fy, _mx, _my);//照準向いている方向
	var _view_distance = point_distance(_fx, _fy, _mx, _my)//中心からどれだけ離れているか
	
	if(camera_lock){
		//カメラロック中は部屋外にカメラが行きにくくなる
		var _lock_pos_camera_x = lock_pos_x - camera_get_view_x(view_camera[0]);
		var _lock_pos_camera_y = lock_pos_y - camera_get_view_y(view_camera[0]);
		
		var _dir_for_lock_pos = point_direction(_fx, _fy, _lock_pos_camera_x, _lock_pos_camera_y);
		var _strength = angle_difference(_view_direction, _dir_for_lock_pos);
		_strength = 1 - abs(_strength) / 180;
	}
	else{
		var _strength = 1;
	}
	
	if(global.gamestate == gamestate.stagestartscene or global.gamestate == gamestate.goalscene){
		//ステージ移行中はカメラがうごきにくく
		_strength = 0.5;
	}
	
	var _collection_x = lengthdir_x(_view_distance/6*_strength, _view_direction);
	var _collection_y = lengthdir_y(_view_distance/6*_strength, _view_direction);
	xTo = follow.x + _collection_x;
	yTo = follow.y + _collection_y;
	
	//プレイヤーにぴったりついてく
	x += follow.x - follow_xprev;
	y += follow.y - follow_yprev;
	follow_xprev = follow.x;
	follow_yprev = follow.y;
	

}

//var _vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
//camera_set_view_mat(camera, _vm);

//画面振動
if(screen_shake_time > 0){
	screen_shake_time--;
	
	var _channel = animcurve_get_channel(ac_screenShake, 0);
	var _power = animcurve_channel_evaluate(_channel, 1-screen_shake_time/screen_shake_time_base);
	_power *= screen_shake_power;
	
	var _shake_x = lengthdir_x(_power, screen_shake_direction);
	var _shake_y = lengthdir_y(_power, screen_shake_direction);
	
	x += _shake_x;
	y += _shake_y;
	
}


var _camx = x-camera_get_view_width(camera)/2;
var _camy = y-camera_get_view_height(camera)/2;

/*_camx = clamp(_camx, 0, room_width - camera_get_view_width(camera));
_camy = clamp(_camy, 0, room_height - camera_get_view_height(camera));*/

/*view_xport[0] = _camx;
view_yport[0] = _camy;*/

camera_set_view_pos(camera, _camx, _camy);

if(global.gamestate != gamestate.menu){
	//カーソルにはゆっくり メニューが表示されてる時は動かない
	x += (xTo - x) / 4;
	y += (yTo - y) / 4;
}


var _cw = camera_w;
var _ch = camera_h;
global.camera_width = _cw;
global.camera_height = _ch;
global.camera_x = x+_cw/2;
global.camera_y = y+_ch/2
