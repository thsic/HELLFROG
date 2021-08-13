
if(!global.gamestop){
	if(global.game_time mod footprint_span == 0){
		
		//設置の前にずらす
		var _ds_w = ds_grid_width(global.ds_footprint);
		for(var i=0; i<_ds_w+1; i++){
			var _ds_x = clamp(_ds_w - i, 0, _ds_w-1);
			var _x = global.ds_footprint[# _ds_x, FOOTPRINT.X];
			var _y = global.ds_footprint[# _ds_x, FOOTPRINT.Y];
			var _enable = global.ds_footprint[# _ds_x, FOOTPRINT.ENABLE];
			
			global.ds_footprint[# _ds_x+1, FOOTPRINT.X] = _x;
			global.ds_footprint[# _ds_x+1, FOOTPRINT.Y] = _y;
			global.ds_footprint[# _ds_x+1, FOOTPRINT.ENABLE] = _enable;
			
		}
		
		//足跡を設置
		global.ds_footprint[# 0, FOOTPRINT.X] = o_player.x;
		global.ds_footprint[# 0, FOOTPRINT.Y] = o_player.y;
		global.ds_footprint[# 0, FOOTPRINT.ENABLE] = true;
	}
}