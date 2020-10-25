var _checkpoint_width_half = 32;
var _checkpoint_height_half = 16;
var _x1 = x-_checkpoint_width_half;
var _x2 = _checkpoint_width_half+x;
var _y1 = y-_checkpoint_height_half;
var _y2 = _checkpoint_height_half+y;
var _px = o_player.x;
var _py = o_player.y;

if(is_in_place(_x1, _y1, _x2, _y2, o_player.x, o_player.y) == true){
	//hp回復とかいれる
	debug_draw_rectnagle(_x1, _y1, _x2, _y2, true, c_green, 1)
	//
	if(checkpoint_active == false){
		//チェックポイントを設定
		set_respawn_point(x, y);
		var _checkpoint_number = instance_number(o_checkPointMarker);
		
		//全てのチェックポイントを一旦パッシブにする
		for(var i=0; i<_checkpoint_number; i++){
			var _id = instance_find(o_checkPointMarker, i);
			_id.checkpoint_active = false;
		}
		checkpoint_active = true
	}
}

if(checkpoint_active == true){
	if(subimage_change_time >= 0){
		subimage_change_time--;
	}
	else{
		subimage_change_time = subimage_change_time_default;
		if(subimage < subimage_total){
			subimage++;
		}
		else{
			subimage = 0;
		}
	}
}

switch(global.gamestate){
	case gamestate.main:
	case gamestate.incheckpointbarrier:
	
	var _distance_for_player = point_distance(x, y, _px, _py);
	var _in_barrier = false;
	if(_distance_for_player < barrier_size){
		_in_barrier = true;
		change_gamestate(gamestate.incheckpointbarrier);
	}
	else{
		change_gamestate(gamestate.main);
	}
}
