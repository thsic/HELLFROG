//
function start_game(){
	
	global.time_milisecond = 0;
	global.time_second = 0;
	global.death_count = 0;
	
	var _achievement_num = ds_grid_width(global.achievement_param);
	for(var i=0; i<_achievement_num; i++){
		global.achievement_param[# i, ACHIEVEMENT_PARAM.GETTABLE] = true;
	}
	
	room_goto(FIRST_STAGE);
}