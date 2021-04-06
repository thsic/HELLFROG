
if(door_lock){
	if(!wall_enable){//見えない壁を2つ生成
		for(var i=0; i<2; i++){
			wall_id[i] = instance_create_layer(x, y-16*i, "Walls", o_testWall);
		}
		wall_enable = true;
	}
	lock_time++;
	
	var _sprite_total_subimage = sprite_get_number(door_sprite);
	var _subimage = 0;
	var _frame_time = 5;
	for(var i=0; i<_sprite_total_subimage; i++){
		if(_frame_time * i < lock_time){
			_subimage++//locktimeが進むほど後のほうのsubimageにする
		}
		else{
			break;
		}
	}
	subimage = _subimage - 1;
}
else{
	if(wall_enable and exit_door){
		//壁を消す
		for(var i=0; i<2; i++){
			if(instance_exists(wall_id[i])){
				instance_destroy(wall_id[i]);
			}
		}
		subimage = 0;
	}
}



if(door_reset){//ドアの状態を初期に戻す 死んだ時など
	door_reset = false;
	//壁を消す
	for(var i=0; i<2; i++){
		if(instance_exists(wall_id[i])){
			instance_destroy(wall_id[i]);
		}
		
	}
	
	//リセット処理
	subimage = 0;
	door_lock = false;
	lock_time = 0;
	wall_enable = false;
	for(var i=0 ; i<2; i++){
		wall_id[i] = noone;
	}
}


