//バフ・デバフ等
function player_effect_manage(){
	var _px = o_player.x;
	var _py = o_player.y;
	
	#region スロー
	var _on_slow_field = false;
	var _slow_field_num = instance_number(o_slowField);
	for(var i=0; i<_slow_field_num; i++){
		var _id = instance_find(o_slowField, i);
		var _range_square = _id.range_square;
		var _x = _id.x;
		var _y = _id.y;
		
		if(_range_square){
			//フィールドの当たり判定が四角形の場合
			var _w = _id.field_width;
			var _h = _id.field_height;
			
			if(is_in_place(_x-_w/2, _y-_h/2, _x+_w/2, _y+_h/2, _px, _py)){
				_on_slow_field = true;
				break;
			}
		}
		else{
			//円形の場合
			var _r = _id.range;
			var _dis = point_distance(_x, _y, _px, _py);
			if(_dis < _r){
				_on_slow_field = true;
				break;
			}
		}
	}
	
	//スローフィールドの上に居るとスロー状態になる
	//やっぱなし→ ただし慣性がついている状態だとフィールドの上でもスローはつかない
	if(_on_slow_field){
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
	#endregion
	
	#region 呪い
	
	if(global.difficulty == Difficulty.Normal){
		var _curse_point_limit = CURSE_POINT_LIMIT;
	}
	else{
		var _curse_point_limit = HARD_CURSE_POINT_LIMIT;
	}
	
	if(add_curse_point){
		var _curse_max_level = 16;
		curse_point = clamp(curse_point + 1, 0, _curse_point_limit)
		
		
		if(curse_point >= _curse_point_limit
		and curse_level < _curse_max_level){
			//curse_pointが一定たまったらレベルあげる
			curse_level++;
			curse_point = 0;
			se_play(a_curseLevelUp, 0.7, 0);
		}
		
		//効果音
		if(global.game_time mod 45 == 0){
			se_play(a_cursePointUp, 0.7, 1);
		}
	}
	else{
		//呪いフィールドにいないときは下がってく
		if(global.difficulty == Difficulty.Normal){
			var _down_curse_point = 3;;
		}
		else{
			var _down_curse_point = 2;
		}
		
		curse_point = clamp(curse_point - _down_curse_point, 0, _curse_point_limit);
		
		if(curse_point <= 0
		and curse_level > 0){
			curse_level--;
			curse_point = _curse_point_limit;
		}
	}
	add_curse_point = false;
	
	#endregion
	
	#region サプレッション
	
	if(add_supp_point){
		//サプレッションポイント上がってく
		supp_point = clamp(supp_point + 1, 0, SUPP_POINT_LIMIT);
		
	}
	else{
		//サプレッションポイント下がってく
		supp_point = clamp(supp_point - 0.25, 0, SUPP_POINT_LIMIT);
	}

	add_supp_point = false;
	#endregion
	
	enum PLAYEREFFECT{
		SLOW,
		CURSE,
		SUPPRESSION,
	}
}