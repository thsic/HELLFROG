// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function lagging_game(){//room_speedを下げてラグっぽくする処理
	var	_time_per = 1-lag_time/lag_time_default;
	var _anim_curve = animcurve_get_channel(lag_curve, 0);
	var _lag_ratio = animcurve_channel_evaluate(_anim_curve, _time_per);
	/*
	var _rnd = random_range(0, 1);
	if(_lag_probability > _rnd){
		global.gamestop = false;
	}
	else{
		global.gamestop = true;
	}*/
	/*if(lag_time mod 2 = 1){
		global.gamestop = true;
	}
	else{
		global.gamestop = false;
	}*/
	var _room_speed = 60*_lag_ratio;
	room_speed = _room_speed;
	
}