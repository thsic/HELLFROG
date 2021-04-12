//
function room_lock_reset(){
	//ロックされた部屋を開放
	if(instance_exists(o_lockMgr)){
		with(o_lockMgr){
			var _list_size = ds_list_size(lock_list_data);
			for(var i=0; i<_list_size; i++){
				//閉じている部屋を開ける クリアした部屋は開けない チェックポイントに到達できてない場合はあける
				if(lock_list_data[| i] == lock_state.Locking
				or lock_list_data[| i] == lock_state.TempCleared){
					lock_list_data[| i] = lock_state.NotReached;
					door_lock_manage(false, i, true);
				}
				
			}
			camera_unlock();
		}
		
	}
	else{
		debug_message("o_lockMgrが存在しないためルームロック状態の変更ができませんでした")
	}
}