if(sprite != noone){
	var _spr_w = sprite_get_width(sprite);
	var _spr_h = sprite_get_height(sprite);
	
	if(width == -1){
		var _xscale = 1;
	}
	else{
		var _xscale = width / _spr_w;
	}
	if(height == -1){
		var _yscale = 1;
	}
	else{
		var _yscale = height / _spr_h;
	}

	draw_sprite_ext(sprite, subimage, x, y, _xscale, _yscale, 0, button_color, 1);
	
}
else{
	var amount = 0;
	var _alpha = 0.7;
	switch(state){
	case ButtonState.Released:
		amount = 0;
	break
	case ButtonState.OnMouse:
		amount = 0.25;
	break
	case ButtonState.Pressed:
		amount = 0.5;
	break
	}
	var _color = merge_color(button_color, c_white, amount)
	draw_set_color(_color);
	draw_set_alpha(_alpha);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	draw_rectangle(x, y, x+width, y+height, false);
	draw_set_color(c_white);
	draw_text(x+width/2, y+height/2, text);
	draw_set_default();
}