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