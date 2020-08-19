function hook_stick_near_wall() {
	//近くの壁を探して、そこに吸い付く
	//すべての壁が同じ大きさ前提
	var _nearest_wall_id = instance_nearest(hook_point_x, hook_point_y, o_wall);
	var _nearest_wall_x = _nearest_wall_id.x;
	var _nearest_wall_y = _nearest_wall_id.y;
	var _collision_size = ds_grid_get(global.ds_player_hook, now_hook, eHK_param.CollisionSizeForWall);
	var result = false;//吸い付きが成功したかどうか

	//最寄りの壁が遠すぎてくっつくわけない場合は処理を全部飛ばす
	if(point_distance(hook_point_x, hook_point_y, _nearest_wall_x, _nearest_wall_y) < _collision_size*2){

	//壁への角度を求める
		var _direction_for_nearest_wall = point_direction(hook_point_x, hook_point_y, _nearest_wall_x, _nearest_wall_y);

		//上下左右で最も近い方角を計算
		for(var i=0; i<4; i++){
			if(abs(angle_difference(_direction_for_nearest_wall, i*90) < 45)){
				var _stick_direction = i*90//stick = 吸い付く
				break
			}
		}
		//debug_draw_circle(hook_point_x, hook_point_y, 2, false, c_orange, 10);
		var _temp_x = hook_point_x + lengthdir_x(_collision_size, _stick_direction);
		var _temp_y = hook_point_y + lengthdir_y(_collision_size, _stick_direction);
		if(collision_line(hook_point_x, hook_point_y, _temp_x, _temp_y, o_wall, false, true)){
			//90度刻みで壁にぶつかった場合
			var _distance_for_wall = point_distance(hook_point_x, hook_point_y, _temp_x, _temp_y);//壁までの距離
			var _stick_distance = collision_length_check(hook_point_x, hook_point_y, _distance_for_wall, _stick_direction, o_wall);
		
		}
		else{
			//90度刻みではぶつからなかった場合、o_wallの角に吸い付くことになる
			//まず右上右下左上左下のどの方角が一番近いか計算
		
			for(var i=0; i<8; i++){
				if(abs(angle_difference(_direction_for_nearest_wall, i*90+45)) < 45){
					var _direction_for_wall_corner = i*90+45;
					break
				}
			}
		
			/*debug_draw_line(hook_point_x, hook_point_y, hook_point_x+lengthdir_x(32, _direction_for_nearest_wall), hook_point_y+lengthdir_y(32, _direction_for_nearest_wall), c_orange, 10)
			debug_draw_line(hook_point_x, hook_point_y, hook_point_x+lengthdir_x(32, _direction_for_wall_corner), hook_point_y+lengthdir_y(32, _direction_for_wall_corner), c_blue, 10)
			debug_draw_variable(hook_point_x, hook_point_y, _direction_for_wall_corner, c_green, 20)*/
		
			//次に上で計算した方角を反転させてo_wallのどの角に吸い付けばいいか計算
			var _wall_width = _nearest_wall_id.sprite_width/2;
			var _wall_height = _nearest_wall_id.sprite_height/2;
			//↓ +180で反転、signでwidthとかの値を+するか-するか計算
			var _width_sign = sign(lengthdir_x(1, _direction_for_wall_corner+180));
			var _height_sign = sign(lengthdir_y(1, _direction_for_wall_corner+180));
		
			//debug_draw_line(_nearest_wall_x, _nearest_wall_y, _nearest_wall_x+_direction_for_wall_corner, _nearest_wall_y+_direction_for_wall_corner, c_blue, 10)
		
			//o_wallの角の座標を計算
			var _wall_corner_point_x = _nearest_wall_x + _width_sign * _wall_width;
			var _wall_corner_point_y = _nearest_wall_y + _height_sign * _wall_height;
		
			var _stick_distance = point_distance(hook_point_x, hook_point_y, _wall_corner_point_x, _wall_corner_point_y);
			var _stick_direction = point_direction(hook_point_x, hook_point_y, _wall_corner_point_x, _wall_corner_point_y);
		}
	
		//最後に、吸い付く距離が当たり判定の中にある場合吸い付く処理をいれる
		if(_stick_distance < _collision_size){
			hook_point_x += lengthdir_x(_stick_distance, _stick_direction);
			hook_point_y += lengthdir_y(_stick_distance, _stick_direction);
			hook_length = point_distance(hook_point_x_default, hook_point_y_default, hook_point_x, hook_point_y);
			hook_direction = point_direction(hook_point_x_default, hook_point_y_default, hook_point_x, hook_point_y);
			result = true;
		}
	}
	return result



}
