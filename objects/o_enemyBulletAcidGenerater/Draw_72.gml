

//acidをいい感じに潰して描画するようにする
if(!surface_exists(acid_surf)){
	var _acid_sprite_width = sprite_get_width(s_acidBullet);
	acid_surf = surface_create(_acid_sprite_width*2, _acid_sprite_width*2);
	
	var _surf_w = surface_get_width(acid_surf);
	var _surf_h = surface_get_height(acid_surf);

	surface_set_target(acid_surf);

	draw_sprite_ext(s_acidBullet, 0, _surf_w/2, _surf_h/2, 1, 1, direction, c_white, 1);

	surface_reset_target();
}
