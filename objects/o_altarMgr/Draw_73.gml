
if(totem_text_time > 0){
	if(floor(global.game_time/8) mod 2 == 0){
		var _color = totem_text_color;
	}
	else{
		var _color = global.now_stage_param[STAGEPARAM.STAGECOLOR];
	}
	
	var _text = global.ds_text[# TEXT.ALTAR_TOTEM, global.language];
	draw_set_alpha(1);
	
	draw_set_font(fo_kagurazaka12);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_bottom)
	
	
	var _x = o_player.x;
	var _y = o_player.y+22;
	
	if(random(1) < 0.05){
		_x = irandom_range(_x+2, _x-2);
	}
	var _w = string_width(_text)+4;
	var _h = string_height(_text);
	
	draw_set_color(c_white);
	draw_rectangle(_x-_w/2, _y-_h, _x+_w/2, _y, false);
	
	draw_set_color(_color);
	draw_text(_x, _y, _text);
	
}