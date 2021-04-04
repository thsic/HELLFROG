function room_lock(_lock_num){
	//ロックする
	
	lock_list_data[| _lock_num] = 1;
	
	//ロックマーカーを探す
	var _lock_marker_num = instance_number(o_lockMarker);
	var _marker_find = false;
	var _marker_duplication = false;
	
	for(var i=0; i<_lock_marker_num; i++){
		var _id = instance_find(o_lockMarker, i);
		
		if(_id.lock_number == _lock_num){
			//カメラの固定
			camera_lock_position(_id.x, _id.y);
			
			if(!_marker_find){
				_marker_find = true;
			}
			else{
				_marker_duplication = true;
			}
			
		}
	}
	
	if(!_marker_find){
		debug_message("マーカーが見つかりませんでした。o_lockMarkerのlock_numberが正しいかどうか確認してください")
	}
	if(_marker_duplication){
		debug_message("o_lockMarkerのlock_numberの重複を確認しました。")
	}
	
}


var _locker_num = instance_number(o_roomLocker);
var _px = o_player.x;
var _py = o_player.y;

for(var i=0; i<_locker_num; i++){
	var _id = instance_find(o_roomLocker, i);
	debug_draw_rectnagle(_id.bbox_left, _id.bbox_top, _id.bbox_right, _id.bbox_bottom, true, c_white, 3);
	if(is_in_place(_id.bbox_left, _id.bbox_top, _id.bbox_right, _id.bbox_bottom, _px, _py)){
		
		var _lock_num = _id.lock_number;
		room_lock(_lock_num);
		break;
	}
}
