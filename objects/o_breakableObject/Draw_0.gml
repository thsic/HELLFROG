
var _color = global.now_stage_param[STAGEPARAM.STAGECOLOR];
if(break_enable){
	for(var i=0; i<dust_number; i++){
		if(dust_param[# i, DUSTPARAM.ENABLE]){
			var _x = dust_param[# i, DUSTPARAM.X];
			var _y = dust_param[# i, DUSTPARAM.Y];
			var _spr_dir = dust_param[# i, DUSTPARAM.SPRITE_DIR];
			var _dir = dust_param[# i, DUSTPARAM.DIRECTION];
			
			draw_sprite_ext(dust_sprite, 0, _x, _y, 1, 1, _spr_dir+_dir, _color, 1);
		}
	}
}
else{
	draw_sprite_ext(sprite_index, subimage, x, y, 1, 1, 0, _color, 1);
	
}