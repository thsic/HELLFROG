//-1にすることでgun_charge_timeを最大に
function gain_gun_charge_time(_time){
	if(_time == -1){
		var _gun_charge_max_count = ds_grid_get(global.ds_player_gun, o_player.now_shotgun, eG_param.ChargeCount);
		var _gun_charge_time_each_level = ds_grid_get(global.ds_player_gun, o_player.now_shotgun, eG_param.ChargeTime);
		o_player.gun_charge_time = _gun_charge_time_each_level * _gun_charge_max_count + 1;
		
	}
	else{
		o_player.gun_charge_time += _time;
	}
	
	
}