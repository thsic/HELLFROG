

var _spr_w = sprite_get_width(sprite);
var _spr_h = sprite_get_height(sprite);

var _sprite_width_num = obj_width / _spr_w;
var _sprite_height_num = obj_height / _spr_h;

for(var i=0; i<_sprite_width_num; i++){
	for(var j=0; j<_sprite_height_num; j++){
		var _x = bbox_left + i*_spr_w+(_spr_w/2);
		var _y = bbox_top + j*_spr_h+(_spr_h/2);
		
		draw_sprite(sprite, 0, _x, _y);
	}
}
