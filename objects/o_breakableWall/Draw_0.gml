if(!break_enable){
	var _color = global.now_stage_param[STAGEPARAM.STAGECOLOR];
	var _alpha = 1;
	
	
	if(flash_time > 0){
		_color = c_white
		_alpha = 0;
		draw_set_color(c_white)
		draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
	}
	draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, _color,  _alpha);
}