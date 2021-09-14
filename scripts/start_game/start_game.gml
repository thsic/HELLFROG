//
function start_game(){
	
	global.time_milisecond = 0;
	global.time_second = 0;
	global.death_count = 0;
	global.used_super_assistmode = false;
	
	var _achievement_num = ds_grid_width(global.achievement_param);
	for(var i=0; i<_achievement_num; i++){
		global.achievement_param[# i, ACHIEVEMENT_PARAM.GETTABLE] = true;
	}
	
	if(global.hell_enemy_damage_enable == true
	and global.hell_dot_damage_enable == true
	and global.hell_player_damage_enable = true){
		//すべてオンの時はtrue hell 状態にする
		global.true_hell = true;
	}
	else{
		global.true_hell = false;
	}
	
	room_goto(FIRST_STAGE);
}