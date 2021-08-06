function draw_instance_direction_indicator(){
	
	var _detect_dis, _detect_dir, _color, _alpha, _far_detect;
	
	var _circle_size = 100;
	var _ds_height = ds_grid_height(ds_direction_arrow);
	var _detect_length_min = global.camera_width/2;
	var _center_x = global.camera_width/2;
	var _center_y = global.camera_height/2;
	
	var _scale, _arrow_x, _arrow_y;
	
	for(var i=0; i<_ds_height; i++){
		var _draw_time = ds_grid_get(ds_direction_arrow, DirectionIndicator.DrawTime, i);
		if(_draw_time > 0){
			
			//取得
			_detect_dis = ds_grid_get(ds_direction_arrow, DirectionIndicator.Distance, i);
			_detect_dir = ds_grid_get(ds_direction_arrow, DirectionIndicator.Direction, i);
			_color = ds_grid_get(ds_direction_arrow, DirectionIndicator.Color, i);
			_far_detect = ds_grid_get(ds_direction_arrow, DirectionIndicator.FarDetect, i);
			_alpha = _draw_time/detect_draw_time_default*0.7;
			
			//ゴールへのインジケータ
			
			if(_color != 0){//このif文がないと最初に変な黒い右矢印が出る
				//描画
				//遠いほど矢印が小さくなる 
				if(_far_detect){
					_scale = 0.5;
				}
				else{
					_scale = (detect_length-_detect_dis) / (detect_length-_detect_length_min) * 0.5;
				}
				
				_arrow_x = lengthdir_x(_circle_size, _detect_dir) + _center_x;
				_arrow_y = lengthdir_y(_circle_size, _detect_dir) + _center_y;
				draw_sprite_ext(s_whiteArrow, 0, _arrow_x, _arrow_y, _scale, _scale, _detect_dir, _color, _alpha);
			}
		}
	}
}