
//
function door_lock_manage(_lock, _lock_num, _door_reset){
	//ドアのロック
	var _door_num = instance_number(o_door);
	for(var i=0; i<_door_num; i++){
		var _id = instance_find(o_door, i);
		if(_id.lock_number == _lock_num){
			
			if(_door_reset){
				_id.door_reset = true;
			}
			else
			{
				//ロック状態の変更
				_id.door_lock = _lock;
			}
			
		}
	}
}