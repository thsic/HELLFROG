// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function instance_direction_indicator(_object_type, _color){
	var _px = o_player.x;
	var _py = o_player.y;
	var _detect_max = 3;
	
	var _ins_x, _ins_y, _ins_id, _distance_for_instance, _direction_for_instance;
	
	if(is_array(_object_type)){//配列かどうかチェック
		var _object_type_number = array_length(_object_type);
	}
	else{
		var _object_type_number = 1;
	}
	
	var _detect_number = 0;

	
	for(var i=0; i<_object_type_number; i++){
		if(is_array(_object_type)){
			var _ins_n = instance_number(_object_type[i]);
		}
		else{
			var _ins_n = instance_number(_object_type);
		}
		
		for(var j=0; j<_ins_n; j++){
			if(is_array(_object_type)){
				_ins_id = instance_find(_object_type[i], j);
			}
			else{
				_ins_id = instance_find(_object_type, j);
			}
			
			_ins_x = _ins_id.x;
			_ins_y = _ins_id.y;
			_distance_for_instance = point_distance(_px, _py, _ins_x, _ins_y);
			if(detect_length > _distance_for_instance 
			and !_ins_id.on_screen 
			and _ins_id.object_index != o_hookPole
			and _ins_id.state != EnemyState.WaitForSpawn){
				//一定距離内にいる画面に写ってない敵をds_indicatorにいれる hookpoleは敵として判定しない
				_direction_for_instance = point_direction(_px, _py, _ins_x, _ins_y);
				ds_grid_set(ds_out_of_screen_enemy, DirectionIndicator.Id, _detect_number, _ins_id);
				ds_grid_set(ds_out_of_screen_enemy, DirectionIndicator.Distance, _detect_number, _distance_for_instance);
				ds_grid_set(ds_out_of_screen_enemy, DirectionIndicator.Direction, _detect_number, _direction_for_instance);
				
				if(is_array(_color)){
					ds_grid_set(ds_out_of_screen_enemy, DirectionIndicator.Color, _detect_number, _color[i]);
				}
				else{
					ds_grid_set(ds_out_of_screen_enemy, DirectionIndicator.Color, _detect_number, _color);
				}
				
				_detect_number++;
			}
		}
	}
	//ソート
	ds_grid_sort(ds_out_of_screen_enemy, DirectionIndicator.Distance, true);
	
	
	var _ds_height = ds_grid_height(ds_direction_arrow);
	//drawtimeを減らす　drawtimeが0になったら消える
	//(画面内に居なくて近い敵のステータスを取得し続ける、対象じゃなくなった敵は数フレーム後インジケータが消える)
	
	for(var i=0; i<_ds_height; i++){
		
		var _draw_time = ds_grid_get(ds_direction_arrow, DirectionIndicator.DrawTime, i);
		
		if(_draw_time > 0){
			//タイム減らす
			ds_grid_add(ds_direction_arrow, DirectionIndicator.DrawTime, i, -1);
			
			if(_draw_time <= 0){
				//消える
				ds_grid_set(ds_direction_arrow, DirectionIndicator.Id, i, noone);
				ds_grid_set(ds_direction_arrow, DirectionIndicator.Direction, i, noone);
				ds_grid_set(ds_direction_arrow, DirectionIndicator.Distance, i, noone);
				ds_grid_set(ds_direction_arrow, DirectionIndicator.Color, i, noone);
				ds_grid_set(ds_direction_arrow, DirectionIndicator.DrawTime, i, 0);
			}
		}
	}
	
	
	if(_detect_max >= _detect_number){
		_detect_max = _detect_number;
	}
	
	//移し替える detect_maxが代入個数
	for(var i=0; i<_detect_max; i++){
		var _detect_id = ds_grid_get(ds_out_of_screen_enemy, DirectionIndicator.Id, i);
		var _detect_dir = ds_grid_get(ds_out_of_screen_enemy, DirectionIndicator.Direction, i);
		var _detect_dis = ds_grid_get(ds_out_of_screen_enemy, DirectionIndicator.Distance, i);
		var _detect_color = ds_grid_get(ds_out_of_screen_enemy, DirectionIndicator.Color, i);
		var _finded = false;
		
		//同じIDのとこ探す処理
		for(var j=0; j<_ds_height; j++){
			if(_detect_id == ds_grid_get(ds_direction_arrow, DirectionIndicator.Id, j)){
				ds_grid_set(ds_direction_arrow, DirectionIndicator.Id, j, _detect_id);
				ds_grid_set(ds_direction_arrow, DirectionIndicator.Direction, j, _detect_dir);
				ds_grid_set(ds_direction_arrow, DirectionIndicator.Distance, j, _detect_dis);
				ds_grid_set(ds_direction_arrow, DirectionIndicator.Color, j, _detect_color);
				
				//タイムをデフォルトに設定
				ds_grid_set(ds_direction_arrow, DirectionIndicator.DrawTime, j, detect_draw_time_default);
				
				//設定が終わったのでfor(jのほう)から抜ける
				_finded = true;
				break;
			}
		}
		
		//同じidが見つからないならdrawtimeが0のところ探して入れる
		if(!_finded){
			for(var j=0; j<_ds_height; j++){
				var _draw_time = ds_grid_get(ds_direction_arrow, DirectionIndicator.DrawTime, j);
				//var _detect_id = ds_grid_get(ds_direction_arrow, DirectionIndicator.Id, j);
				if(_draw_time <= 0){
				
					ds_grid_set(ds_direction_arrow, DirectionIndicator.Id, j, _detect_id);
					ds_grid_set(ds_direction_arrow, DirectionIndicator.Direction, j, _detect_dir);
					ds_grid_set(ds_direction_arrow, DirectionIndicator.Distance, j, _detect_dis);
					ds_grid_set(ds_direction_arrow, DirectionIndicator.Color, j, _detect_color);
				
					//タイムをデフォルトに設定
					ds_grid_set(ds_direction_arrow, DirectionIndicator.DrawTime, j, detect_draw_time_default);
				
					//設定が終わったのでfor(jのほう)から抜ける
					break;
				}
			}
		}
	}
//	ds_grid_set_region(ds_out_of_screen_enemy, 0, 0, 5, 100, 0);
}