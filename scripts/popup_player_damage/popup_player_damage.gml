//
function popup_player_damage(){
	
	if(popup_time > 0){
		var _x = o_player.x;
		var _y = o_player.y-46;
		var _alpha = 1;
		var _color = popup_damage_color;
		var _text = "- "+string(round(popup_damage))
		
		draw_set_font(fo_damage);
		draw_set_halign(fa_middle);
		draw_set_valign(fa_bottom)
		draw_set_alpha(_alpha);
		draw_set_color(_color);
		draw_text(_x, _y, _text);
		
	}
	
	draw_set_default();
	
}