if(delay_time <= 0){
	
	
	if(floor(global.game_time/3) mod 2 == 0){
		var _color = marker_color;
	}
	else{
		var _color = marker_color2;
	}
	draw_set_color(_color);
	draw_circle(marker_x, marker_y, 4, true);
}
var _dir = point_direction(x, y, marker_x, marker_y);

if(stay_time < life_time){
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, _dir, c_white, alpha);
}

draw_set_default();