//
function enemy_follow_player(){
	if(movement_cooldown > 0){
		movement_cooldown -= 3;//通常よりはやくクールダウンが減ってく
	}
	else{
		/*var _random_var = random(1);
		if(movement_probability*3 > _random_var){//毎フレーム低確率で移動を実行*/
			//移動する
			var _ds_w = ds_grid_width(global.ds_footprint);
			var _move_to_footprint = false;
			var _footprint_x, _footprint_y
			
			for(var i=0; i<_ds_w; i++){
				var _x = global.ds_footprint[# i, FOOTPRINT.X];
				var _y = global.ds_footprint[# i, FOOTPRINT.Y];
				var _enable = global.ds_footprint[# i, FOOTPRINT.ENABLE];
				
				var _dis_for_footpoint = point_distance(x, y, _x, _y);
				
				if(_dis_for_footpoint < 400){
					var _collision_wall = collision_line(x, y, _x, _y, o_wall, false, true);
					if(_collision_wall == noone and _enable){
						//距離が400より近くて壁で遮られていない足跡を探す
						
						_move_to_footprint = true;
						_footprint_x = _x;
						_footprint_y = _y;
					
						break;
					}
				}
			}
			
			if(_move_to_footprint){
				var _dir = point_direction(x, y, _footprint_x, _footprint_y);
				_dir += irandom_range(-15, 15);
			}
			else{
				//足跡を見つけられなかった場合はランダム移動かプレイヤー追尾
				if(random(1) < 0.5){
					var _dir = irandom(360);
				}
				else{
					var _dir = point_direction(x, y, o_player.x, o_player.y);
				}
				
			}
			
			//移動実行
			_movement_length = irandom_range(movement_length_max, movement_length_min);
			enemy_set_movement(_movement_length*2, movement_speed, false, _dir);
			
	//	}
	}
	
	
}