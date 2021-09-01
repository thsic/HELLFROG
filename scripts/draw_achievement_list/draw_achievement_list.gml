//
function draw_achievement_list(){
	
	var _on_mouse_icon = noone;
	var _on_mouse_icon_x = 0;
	var _on_mouse_icon_y = 0;
	
	var _achievement_num = ds_grid_width(global.achievement_param);
	var _sprite_size = sprite_get_width(s_achievement);
	var _icon_x_offset = 2+_sprite_size;
	var _icon_y_offset = global.camera_height - _sprite_size;
	for(var i=0; i<_achievement_num; i++){
		if(global.achievement_param[# i, ACHIEVEMENT_PARAM.ENABLE]){
			var _icon_x = _icon_x_offset + i * _sprite_size + 2;
			var _icon_y = _icon_y_offset;
			
			var _gray_icon = !global.achievement_param[# i, ACHIEVEMENT_PARAM.ACQUIRED];
			
			
			if(_gray_icon){
				shader_set(sh_decrementSaturation);
				var _sh_saturation_handle = shader_get_uniform(sh_decrementSaturation, "saturation");
				shader_set_uniform_f(_sh_saturation_handle, 0.0);
				
				draw_sprite(s_achievement, i, _icon_x, _icon_y);
				
				shader_reset();
			}
			else{
				draw_sprite(s_achievement, i, _icon_x, _icon_y);
			}
			
			if(is_in_place(_icon_x-_sprite_size/2, _icon_y-_sprite_size/2,
			_icon_x+_sprite_size/2, _icon_y+_sprite_size/2, global.vmouse_x, global.vmouse_y)){
				_on_mouse_icon = i;
				_on_mouse_icon_x = _icon_x;
				_on_mouse_icon_y = _icon_y;
				
			}
		}
		else{
			draw_circle(_icon_x_offset, _icon_y_offset, 5+i*3, true);
		}
	}
	
	if(_on_mouse_icon != noone){
		var _win_w = 120;
		var _win_h = 32;
		var _win_x = _on_mouse_icon_x-_win_w/2;
		var _win_y = _on_mouse_icon_y-_win_h-_sprite_size/2;
		draw_circle(_win_x, _win_y, 10, false);
		
		var _window_color = c_gray;
		var _title_color = c_white;
		var _description_color = c_white;
		
		draw_achievement_window(_on_mouse_icon, _win_x, _win_y, _win_w, _win_h,
		_window_color, _window_color, _title_color, _description_color);
		
	}
	
	
	
}