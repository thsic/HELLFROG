

//draw_sprite_ext(sprite_index, 0, x, y, 1, 1, sprite_dir, c_white, 1);

if(surface_exists(surf)){
	var _surf_w = surface_get_width(surf);
	var _surf_h = surface_get_height(surf);
	
	
	var _scale = ceil(scale*3)/3;//scaleを丸める
	
	var _x_offset = _surf_w/2*_scale;
	var _y_offset = _surf_h/2*_scale;
	
	
	
	draw_surface_ext(surf, x-_x_offset, y-_y_offset, _scale, _scale*0.66, 0, c_white, 1);
}
