//タックル
function player_tackle_manage(){
	var _tackle_range = 24;
	var _tackle_enable = false;
	
	if(tackle_time > 0){
		tackle_time--;
	}
	
	if(inertia_enable
	and player_move_speed > PLAYER_SPEED_DEFAULT * 1.1){
		_tackle_enable = true//慣性ついてる状態で速度が移動速度よりはやい状態
	}
	if(tackle_time > 0){
		_tackle_enable = true;
	}
	
	if(_tackle_enable){
		var _enemy_num = instance_number(o_enemy);
		for(var i=0; i<_enemy_num; i++){
			var _id = instance_find(o_enemy, i);
			if(_id.on_screen){
				var _dis = point_distance(_id.x, _id.y, o_player.x, o_player.y);
				if(_dis <= _tackle_range){
					tackle_to_enemy(_id);//タックルする
				}
			}
		}
	}
}