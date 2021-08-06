
if(global.game_time mod 3 == 0
and o_player.inertia_enable){
	var _s = 12;
	if(is_in_place(bbox_left-_s, bbox_top-_s, bbox_right+_s, bbox_bottom+_s, o_player.x, o_player.y)){
		instance_destroy();
	}
}

if(flash_time > 0){
	flash_time--;
}
