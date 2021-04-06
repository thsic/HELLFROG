//
function room_lock_reset(){
	//ロックされた部屋を開放
	if(instance_exists(o_lockMgr)){
		with(o_lockMgr){
			var _list_size = ds_list_size(lock_list_data);
			for(var i=0; i<_list_size; i++){
				//閉じている部屋を開ける ------(嘘)クリアした部屋は開けない(嘘)
				if(lock_list_data[| i] == 1){
					lock_list_data[| i] = 0;
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