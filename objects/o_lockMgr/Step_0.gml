function room_lock_start(_lock_num){
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
		room_lock_start(_lock_num);
		break;
	}
}

//ルームロック中の処理
var _list_size = ds_list_size(lock_list_data);

//現在のロック中の部屋にいる敵を数える
var _alive_lock_room_enemy_number = 0;
var _in_lock_room_enemy_number = 0;

for(var i=0; i<_list_size; i++){
	if(lock_list_data[| i] == 1){
		var _enemy_num = instance_number(o_enemy);
		for(var j=0; j<_enemy_num; j++){
			var _id = instance_find(o_enemy, j)
			if(_id.lock_number == i
			and _id.state != EnemyState.WaitForSpawn){
				_alive_lock_room_enemy_number++;//今生きているt系を数える
			}
			
			if(_id.lock_number == i){
				_in_lock_room_enemy_number++;//スポーンしていない敵も含めて数える
			}
		}
	}
}

//ロックルームに居るスポーンしている敵の数に応じてロックカウントが早くなる
if(_alive_lock_room_enemy_number = 1){//1体の時は2倍の速度でスポーン
	lock_spawn_count += 1;
}
if(_alive_lock_room_enemy_number = 0){//居ない時は4倍の速度
	lock_spawn_count += 3;
}

for(var i=0; i<_list_size; i++){
	if(lock_list_data[| i] == 1){
		//ロック中の部屋の処理
		
		//スポーンしていない敵のスポーン時間を進める
		var _enemy_num = instance_number(o_enemy);
		for(var j=0; j<_enemy_num; j++){
			var _id = instance_find(o_enemy, j);
			if(_id.lock_number == i
			and _id.lock_spawn_time > 0){
				//ロックidが同じで、スポーン時間が設定されている場合に進める
				_id.lock_spawn_time -= lock_spawn_count;
			}
		}
	}
}

sdm(_in_lock_room_enemy_number)
if(_in_lock_room_enemy_number == 0){
	//ロックルーム内の敵が全員死んでいる場合ロックを解除する
	for(var i=0; i<_list_size; i++){
		if(lock_list_data[| i] == 1){
			lock_list_data[| i] = 2;
			camera_anlock();
		}
	}
}

lock_spawn_count = 1;