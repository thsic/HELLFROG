//
function draw_achievement_list(){
	
	var _on_mouse_icon = noone;
	var _on_mouse_icon_x = 0;
	var _on_mouse_icon_y = 0;
	
	var _achievement_num = ds_grid_width(global.achievement_param);
	var _sprite_size = sprite_get_width(s_achievement);
	var _icon_x_offset = 2+_sprite_size/2;
	var _icon_y_offset = global.camera_height - _sprite_size/2 - 2;
	for(var i=0; i<_achievement_num; i++){
		if(global.achievement_param[# i, ACHIEVEMENT_PARAM.ENABLE]){
			var _icon_x = _icon_x_offset + i * _sprite_size + 2;
			var _icon_y = _icon_y_offset;
			
			var _gray_icon = !global.achievement_param[# i, ACHIEVEMENT_PARAM.ACQUIRED];
			var _subimage = global.achievement_param[# i, ACHIEVEMENT_PARAM.SUBIMAGE];
			
			if(_gray_icon){
				shader_set(sh_decrementSaturation);
				var _sh_saturation_handle = shader_get_uniform(sh_decrementSaturation, "saturation");
				shader_set_uniform_f(_sh_saturation_handle, 0.0);
				
				draw_sprite(s_achievement, _subimage, _icon_x, _icon_y);
				
				shader_reset();
			}
			else{
				draw_sprite(s_achievement, _subimage, _icon_x, _icon_y);
			}
			
			if(is_in_place(_icon_x-_sprite_size/2, _icon_y-_sprite_size/2,
			_icon_x+_sprite_size/2+2, _icon_y+_sprite_size/2+2, global.vmouse_x, global.vmouse_y)){
				_on_mouse_icon = i;
				_on_mouse_icon_x = _icon_x;
				_on_mouse_icon_y = _icon_y;
				
			}
		}
	}
	
	if(_on_mouse_icon != noone){
		var _win_w = 130;
		var _win_h = 40;
		var _win_x = _on_mouse_icon_x-_win_w/2;
		var _win_y = _on_mouse_icon_y-_win_h-_sprite_size/2;
		
		_win_x = clamp(_win_x, 0, global.camera_width-_win_w);
		
		//実績取得状況でウィンドウの色が変わる
		if(global.achievement_param[# _on_mouse_icon, ACHIEVEMENT_PARAM.ACQUIRED]){
			var _window_color = 2565930;
		}
		else{
			var _window_color = 2039583;
		}
		
		var _title_color = c_white;
		var _description_color = c_gray;
		
		draw_achievement_window(_on_mouse_icon, _win_x, _win_y, _win_w, _win_h,
		_window_color, _window_color, _title_color, _description_color);
		
	}
	
	
	
}