var _checkpoint_width_half = 32;
var _checkpoint_height_half = 16;
var _x1 = x-_checkpoint_width_half;
var _x2 = _checkpoint_width_half+x;
var _y1 = y-_checkpoint_height_half;
var _y2 = _checkpoint_height_half+y;

if(is_in_place(_x1, _y1, _x2, _y2, o_player.id) == true){
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