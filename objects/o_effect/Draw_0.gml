switch(effect_type){
case EffectType.Brink:
	var _sprite_width = sprite_get_width(s_brinkEffect);
	var _xscale = length/_sprite_width;
	draw_sprite_ext(s_brinkEffect, 0, x, y, _xscale, 1, direction, color, 1);
break

}
