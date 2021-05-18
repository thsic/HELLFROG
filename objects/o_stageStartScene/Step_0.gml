
draw_stage_name_time--;

if(draw_stage_name_time <= -100){
	instance_destroy();
}
if(o_gameMgr.lag_enable == false and stagestart_lag == true and global.gamestate == gamestate.main){
	lagging_start(20, ac_lagRatioStageStart);
	stagestart_lag = false;
}

