//ゴール出現
function pop_goal(_x, _y){
	
	/*var _w = ds_grid_width(global.ds_stage_param);
	var _next_room = noone;
	var _
	
	for(var i=0; i<_w; i++){
		var _id = global.ds_stage_param[# i, STAGEPARAM.STAGEID];
		if(_id == global){
			_next_room = global.ds_Stage_param[# i, STAGEPARAM.];
			break;
		}
	}*/
	
	with(instance_create_layer(_x, _y, "MapObject", o_goal)){
		next_room = global.now_stage_param[STAGEPARAM.NEXTSTAGE];
	}
	
}