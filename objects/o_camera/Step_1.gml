//カーソルにはややゆっくり追従するけどプレイヤーにはぴったりついてくカメラ

if(follow != noone){
	var _fx = follow.x - camera_get_view_x(view_camera[0]);
	var _fy = follow.y - camera_get_view_y(view_camera[0]);
	var _mx = global.mx;
	var _my = global.my;
	
	var _view_direction = point_direction(_fx, _fy, _mx, _my);//照準向いている方向
	var _view_distance = point_distance(_fx, _fy, _mx, _my)//中心からどれだけ離れているか
	var _collection_x = lengthdir_x(_view_distance/6, _view_direction);
	var _collection_y = lengthdir_y(_view_distance/6, _view_direction);
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
