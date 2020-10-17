//カーソルにはややゆっくり追従するけどプレイヤーにはぴったりついてくカメラ

if(follow != noone){
	var _view_direction = point_direction(follow.x, follow.y, mouse_x, mouse_y);//照準向いている方向
	var _view_distance = point_distance(follow.x, follow.y, mouse_x, mouse_y)//中心からどれだけ離れているか
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

var _vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, _vm);

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
