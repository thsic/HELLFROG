// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function lagging_start(_lag_time, _animation_curve){
	o_gameMgr.lag_curve = _animation_curve;
	o_gameMgr.lag_time = _lag_time;
	o_gameMgr.lag_time_default = _lag_time;
	change_gamestate(gamestate.lagging);
}