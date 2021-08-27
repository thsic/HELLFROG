

if(title_screen_button){
	var _button_num = ds_grid_width(title_param);

	draw_set_alpha(1);
	draw_set_font(fo_menu);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	
	for(var i=0; i<_button_num; i++){
		var _x = title_param[# i, TITLEPARAM.X];	
		var _y = title_param[# i, TITLEPARAM.Y];
		var _w = title_param[# i, TITLEPARAM.WIDTH];
		var _h = title_param[# i, TITLEPARAM.HEIGHT];
		var _texten = title_param[# i, TITLEPARAM.TEXT];
		var _textjp = title_param[# i, TITLEPARAM.TEXTJP];
		var _on_mouse = title_param[# i, TITLEPARAM.ONMOUSE]
	
		if(!_on_mouse){
			//マウス上に無い
			var _text = _texten;
			var _text_color = text_color1;
			var _button_color = noone;
		
		}
		else{
			//マウス上にある
			if(global.launguage == Launguage.English){
				var _text = _texten;
			}
			else{
				var _text = _textjp;
			}
		
			var _text_color = text_color2;
			var _button_color = button_color
		}
	
		if(_text != 0){
			if(_button_color != noone){
				var _r_h = _h;
				draw_set_color(_button_color);
				draw_rectangle(_x-_w/2, _y-_r_h/2, _x+_w/2, _y+_r_h/2, false);
			}
		
			draw_set_color(_text_color);
			draw_text(_x, _y, _text);
		}
	}

	draw_set_font(fo_ending32);
	draw_set_color(logo_color);
	var _logo_x = room_width/2;
	var _logo_y = room_height/5*2;
	draw_text(_logo_x, _logo_y, "HELLFROG");
}

