//
function draw_player_effect_ui(){
	//スロー、呪いになったときになんか文字が出る
	var _draw_effect_order = 0;
	var _bar_point = 0;
	var _bar_max = 0;
	var _effect_text = 0;
	var _order = 0;
	var _text_color = 0;
	var _bar_color = 0;
	var _bar_width = 0;
	var _alpha = 0;
	
	if(o_player.curse_level > 0
	or o_player.curse_point > 0){
		//呪い
		_draw_effect_order[_order] = PLAYEREFFECT.CURSE;
		
		if(o_player.curse_level <= 0){
			var _damage_mag = 1;
			_alpha[_order] = 1;
		}
		else{
			var _damage_mag = power(2, o_player.curse_level);
			_alpha[_order] = 1;
		}
		
		var _merge_ratio = o_player.curse_level / 16 *0.75;
		if(o_player.curse_level >= 16){
			_merge_ratio = 1;
		}
		
		_text_color[_order] = merge_color(effect_curse_text_color, effect_curse_merge_color, _merge_ratio);
		_bar_color[_order] = merge_color(effect_curse_bar_color, effect_curse_merge_color, _merge_ratio);
		_effect_text[_order] = global.ds_text[# TEXT.EFFECT_CURSE, global.language]+" x"+string(_damage_mag);
		_bar_point[_order] = o_player.curse_point;
		
		if(global.difficulty == Difficulty.VeryHard){
			_bar_max[_order] = HARD_CURSE_POINT_LIMIT;
		}
		else{
			_bar_max[_order] = CURSE_POINT_LIMIT;
		}
		
		if(o_player.curse_point <= 20
		and o_player.curse_point > curse_point_prev){
			_text_color[_order] = c_white;
			_bar_color[_order] = c_white;
		}
		
		_order++;
	}
	if(global.slow_enable){
		_draw_effect_order[_order] = PLAYEREFFECT.SLOW;
		_text_color[_order] = effect_slow_text_color;
		_bar_color[_order] = effect_slow_bar_color;
		_effect_text[_order] = global.ds_text[# TEXT.EFFECT_SLOW, global.language];
		_bar_point[_order] = clamp(o_player.player_slow_time + o_player.on_slow_field_time * GAIN_SLOW_TIME_PER_FRAME, 0, SLOW_TIME_LIMIT);
		_bar_max[_order] = SLOW_TIME_LIMIT;
		_alpha[_order] = 1;
		
		_order++;
		
	}
	if(o_player.supp_point > 0){
		_draw_effect_order[_order] = PLAYEREFFECT.SUPPRESSION;
		_text_color[_order] = effect_supp_text_color;
		_bar_color[_order] = effect_supp_bar_color;
		_effect_text[_order] = global.ds_text[# TEXT.EFFECT_SUPP, global.language];
		_bar_point[_order] = clamp(o_player.supp_point, 0, SUPP_POINT_LIMIT);
		_bar_max[_order] = SUPP_POINT_LIMIT;
		_alpha[_order] = 1;
		
		_order++;
	}
	
	
	if(_order > 0){
		draw_set_font(fo_misakiGothic);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		var _x = 6;
		var _y = 40;
		var _bar_width = 80;
		var _bar_height = 0;
	
		for(var i=0; i<_order; i++){
			var _text_y = _y+i*20;
			draw_set_alpha(_alpha[i]);
			
			draw_set_color(_text_color[i]);
			draw_text(_x, _text_y, _effect_text[i]);
			
			draw_bar(_bar_point[i], _bar_max[i], _x-2, _text_y+10, _bar_width, _bar_height, 0, _bar_color[i], false);
		
		}
	}
	
	curse_point_prev = o_player.curse_point;
}