//
function draw_timer(){
	if(global.draw_time_enable){
		
		var _total_second = global.time_second;
		
		var _milisecond = global.time_milisecond*1000;
		if(_milisecond > 1000){
			_milisecond -= 1000;
			_total_second++;
		}
		
		var _second = _total_second mod 60;
		var _minute = floor(_total_second / 60);
		var _hour_str = string(floor(_minute / 60));
		
		var _milisecond_str = string_format(_milisecond, 3, 0);
		if(_milisecond < 100){
			_milisecond_str = "0"+string_format(_milisecond, 2, 0);
		}
		if(_milisecond < 10){
			_milisecond_str = "00"+string_format(_milisecond, 1, 0);
		}
		
		
		var _second_str = string(_second);
		if(_second < 10){
			_second_str = "0"+string(_second);
		}
		
		var _minute_str = string(_minute);
		if(_minute < 10){
			_minute_str = "0"+string(_minute);
		}
		
		var _text =_hour_str+":"+_minute_str+":"+_second_str+"."+_milisecond_str;
		
		draw_set_color(c_white);
		draw_set_font(fo_uiText);
		draw_set_halign(fa_right);
		draw_set_valign(fa_bottom);
		draw_text(global.camera_width, global.camera_height-16, _text);
				
	}
}