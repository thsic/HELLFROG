
var _color = mask_color;
if(collision_player){
	var _alpha = 1;
	
}
else{
	var _alpha = 0.1;
}

var _spr_w = sprite_get_width(sprite_index);
var _spr_h = sprite_get_height(sprite_index);

var _scale_x = mask_width / _spr_w;
var _scale_y = mask_height / _spr_h;


draw_sprite_ext(sprite_index, 0, x, y, _scale_x, _scale_y, 0, _color, _alpha);