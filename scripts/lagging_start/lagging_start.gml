
function lagging_start(_lag_time, _animation_curve){
	o_gameMgr.lag_curve = _animation_curve;
	o_gameMgr.lag_time = _lag_time;
	o_gameMgr.lag_time_default = _lag_time;
	o_gameMgr.lag_enable = true;
}