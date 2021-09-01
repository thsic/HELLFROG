//
	function draw_achievement_window(_achiev_id, _x, _y, _w, _h, _win_c1, _win_c2, _title_col, _descrip_col){
	if(_achiev_id != noone){
		if(global.game_time mod 12 < 6){
			var _window_color = _win_c1;
		}
		else{
			var _window_color = _win_c2;
		}

		var _achievement_id = _achiev_id;
		var _subimage = global.achievement_param[# _achievement_id, ACHIEVEMENT_PARAM.SUBIMAGE];


		var _window_x = _x;
		var _window_y = _y;
		var _window_w = _w;
		var _window_h = _h;

		//ウィンドウ描画
		draw_set_color(_window_color);
		draw_rectangle(_window_x, _window_y, _window_x+_window_w, _window_y+_window_h, false);


		//アイコン描画
		var _icon_x = _window_x+2+8;
		var _icon_y = _window_y+_window_h/2;
		var _subimage = global.achievement_param[# _achievement_id, ACHIEVEMENT_PARAM.SUBIMAGE];
		
		//未取得だと灰色に
		if(global.achievement_param[# _achievement_id, ACHIEVEMENT_PARAM.ACQUIRED]){
			draw_sprite(s_achievementFrame, 1, _icon_x, _icon_y);
			draw_sprite(s_achievement, _subimage, _icon_x, _icon_y);
		}
		else{
			draw_sprite(s_achievementFrame, 0, _icon_x, _icon_y);
			shader_set(sh_decrementSaturation);
			var _sh_saturation_handle = shader_get_uniform(sh_decrementSaturation, "saturation");
			shader_set_uniform_f(_sh_saturation_handle, 0.0);
			
			draw_sprite(s_achievement, _subimage, _icon_x, _icon_y);
			
			shader_reset();
		}


		//テキスト描画
		var _title_x = _icon_x+16;
		var _title_y = _window_y+0;
		
		
		if(global.language == language.English){
			var _title = global.achievement_param[# _achievement_id, ACHIEVEMENT_PARAM.NAMEEN];
			var _description = global.achievement_param[# _achievement_id, ACHIEVEMENT_PARAM.DESCRIPTION_EN];
		}
		else{
			var _title = global.achievement_param[# _achievement_id, ACHIEVEMENT_PARAM.NAMEEN];
			var _description = global.achievement_param[# _achievement_id, ACHIEVEMENT_PARAM.DESCRIPTION_JP];
		}
		
		if(!global.achievement_param[# _achievement_id, ACHIEVEMENT_PARAM.DRAWDESCRIPTION]){
			_description = "???"
		}

		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_set_font(fo_kagurazaka12);

		draw_set_color(_title_col);
		draw_text(_title_x, _title_y, _title);

		var _description_x = _title_x;
		var _description_y = _title_y+16;
		draw_set_color(_descrip_col);
		draw_set_font(fo_misakiGothic);
		
		_description = string_replace(_description, "@", chr(13));
		_description = string_replace(_description, "@", chr(13));
		
		draw_text(_description_x, _description_y, _description);

		draw_set_default();
	}
}