//バフ・デバフ等
function player_effect_manage(){
	var _px = o_player.x;
	var _py = o_player.y;
	
	//スロー
	var _on_slow_field = false;
	var _slow_field_num = instance_number(o_slowField);
	for(var i=0; i<_slow_field_num; i++){
		var _id = instance_find(o_slowField, i);
		var _r = _id.range;
		var _range_square = _id.range_square;
		var _x = _id.x;
		var _y = _id.y;
		
		if(_range_square){
			//フィールドの当たり判定が四角形の場合
			if(is_in_place(_x-_r, _y-_r, _x+_r, _y+_r, _px, _py)){
				_on_slow_field = true;
				break;
			}
		}
		else{
			//円形の場合
			var _dis = point_distance(_x, _y, _px, _py);
			if(_dis < _r){
				_on_slow_field = true;
				break;
			}
		}
	}
	
	//スローフィールドの上に居るとスロー状態になる、ただし慣性がついている状態だとフィールドの上でもスローはつかない
	if(_on_slow_field and !inertia_enable){
		on_slow_field_time++;//スローフィールドの上に居た時間
		global.slow_enable = true;
	}
	else{
		
		//スローフィールドから離れた時にスローの時間を決める
		//スローフィールドに触れていた時間が5f以内ならフィールドから出てからのスローは発生しない
		if(on_slow_field_time > 5){
			player_slow_time += on_slow_field_time*GAIN_SLOW_TIME_PER_FRAME;
			player_slow_time = clamp(player_slow_time, 0, SLOW_TIME_LIMIT);//スロータイムの上限設定
		}
		
		if(player_slow_time > 0){
			global.slow_enable = true;
			player_slow_time--;
		}
		else{
			//スローが発生していない ゲーム中はだいたいこれ
			player_slow_time = 0;
			global.slow_enable = false;
		}
		on_slow_field_time = 0;//フィールドにいた時間リセット
	}
	
}