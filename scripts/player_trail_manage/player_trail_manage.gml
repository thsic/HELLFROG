//
function player_trail_manage(){
	var _data_width = ds_grid_width(trail_data);
	var _data_height = ds_grid_height(trail_data);
	var _lifeTime = 25;
	var _alpha_base = 0.9;
	if(trail_time > 0){
		//残像生成タイム中
		trail_time--;
		if(trail_time mod 3 == 0){
			
			//残像生成
			//先にデータをひとつずらす
			var _i = _data_height-1;
			
			repeat(_i){
				_i -= 1;
				if(_i != _data_height){
					for(var j=0; j<_data_width; j++){
						trail_data[# j, _i+1] = trail_data[# j, _i];
					}
				}
			}
			
			//データ入れる
			trail_data[# TrailData.X, 0] = x;
			trail_data[# TrailData.Y, 0] = y;
			trail_data[# TrailData.Enable, 0] = true;
			trail_data[# TrailData.LifeTime, 0] = _lifeTime;
			trail_data[# TrailData.Alpha, 0] = _alpha_base;
			trail_data[# TrailData.LookRight, 0] = look_right;
			
		}
	}
	
	//残像データ処理
	for(var i=0; i<_data_height; i++){
		if(trail_data[# TrailData.Enable, i] = true){
			trail_data[# TrailData.LifeTime, i] -= 1;
			//時間経つにつれてalphaが薄く
			trail_data[# TrailData.Alpha, i] = (_alpha_base * trail_data[# TrailData.LifeTime, i] / _lifeTime)
			
			if(trail_data[# TrailData.LifeTime, i] <= 0){
				//残像のライフタイムが終了したら消す
				trail_data[# TrailData.Enable, i] = false;
				
				trail_data[# TrailData.X, i] = 0;
				trail_data[# TrailData.Y, i] = 0;
				trail_data[# TrailData.LifeTime, i] = 0;
				trail_data[# TrailData.Alpha, i] = 0;
				trail_data[# TrailData.LookRight, i] = 0;
				
			}
		}
	}
}

enum TrailData{
	X,
	Y,
	LifeTime,
	Alpha,
	Enable,
	LookRight,
}